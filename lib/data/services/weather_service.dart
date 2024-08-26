import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get_weather/data/models/app_error.dart';
import 'package:get_weather/data/models/serializers.dart';
import 'package:get_weather/data/models/weather_response.dart';
import 'package:injectable/injectable.dart';


@injectable
class WeatherService {
  final Dio _dio;

  WeatherService(@Named('apiClient') this._dio);

  Future<Either<AppError, WeatherResponse?>> getWeather(
      Position position) async {
    try {
      final lat = position.latitude;
      final long = position.longitude;
      final response = await _dio.get('/data/2.5/forecast?lat=$lat&lon=$long');

      // Check if response is successful
      if (response.statusCode == 200) {
        // Deserialize response data
        final weatherResponse = serializers.deserializeWith(
            WeatherResponse.serializer, response.data);

        // Return deserialized object
        return Right(weatherResponse);
      } else {
        // Handle non-200 responses
        return Left(AppError((b) => b
          ..code = 'API_ERROR'
          ..message = 'Failed to load weather data'));
      }
    } on DioException catch (_) {
      // Handle Dio-specific exceptions
      return Left(AppError((b) => b
        ..code = 'NETWORK_ERROR'
        ..message = 'Network error occurred'));
    } catch (e) {
      // Handle other types of exceptions
      return Left(AppError((b) => b
        ..code = 'UNKNOWN_ERROR'
        ..message = 'An unexpected error occurred'));
    }
  }
}
