import 'package:get_weather/data/models/app_error.dart';
import 'package:get_weather/data/models/serializers.dart';
import 'package:get_weather/data/models/weather_response.dart';
import 'package:get_weather/data/repositories/weather_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

part 'weather_state.dart';
part 'weather_event.dart';
part 'weather_bloc.freezed.dart';

@injectable
class WeatherBloc extends HydratedBloc<WeatherEvent, WeatherState> {
  final IWeatherRepository weatherRepository;

  WeatherBloc(this.weatherRepository) : super(WeatherState()) {
    on<GetWeather>(_onGetWeather);
  }

  Future<void> _onGetWeather(
  GetWeather event,
  Emitter<WeatherState> emit,
) async {
  emit(state.copyWith(isLoading: true, error: null));

  
  // Get Users current location
  final positionEither = await weatherRepository.getLocation();
  
  await positionEither.fold(
    (error) async {
      emit(state.copyWith(isLoading: false, error: error));
    },
    (position) async {
      final weatherEither = await weatherRepository.getWeather(position);
      
      await weatherEither.fold(
        (error) async {
          emit(state.copyWith(isLoading: false, error: error));
        },
        (response) async {
          emit(state.copyWith(isLoading: false, weatherResponse: response));
        },
      );
    },
  );
}

  @override
  WeatherState? fromJson(Map<String, dynamic> json) {
    try {
      final WeatherResponse? weatherResponse = serializers.deserializeWith(
        WeatherResponse.serializer,
        json['weatherResponse'],
      );

      final AppError? error = serializers.deserializeWith(
        AppError.serializer,
        json['error'],
      );

      return WeatherState(
        isLoading: json['isLoading'] as bool,
        weatherResponse: weatherResponse,
        error: error,
      );
    } catch (_) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(WeatherState state) {
    try {
      return {
        'isLoading': state.isLoading,
        'weatherResponse': serializers.serializeWith(
          WeatherResponse.serializer,
          state.weatherResponse,
        ),
        'error': serializers.serializeWith(
          AppError.serializer,
          state.error,
        ),
      };
    } catch (_) {
      return null;
    }
  }
}
