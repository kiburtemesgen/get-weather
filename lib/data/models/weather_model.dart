import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'weather_model.g.dart';

abstract class WeatherModel implements Built<WeatherModel, WeatherModelBuilder> {
  MainWeather get main;
  BuiltList<WeatherDetail> get weather;
  int get dt;

  WeatherModel._();
  factory WeatherModel([void Function(WeatherModelBuilder) updates]) =
      _$WeatherModel;

  static Serializer<WeatherModel> get serializer => _$weatherModelSerializer;
}

abstract class MainWeather implements Built<MainWeather, MainWeatherBuilder> {
  double? get temp;

  MainWeather._();
  factory MainWeather([void Function(MainWeatherBuilder) updates]) =
      _$MainWeather;

  static Serializer<MainWeather> get serializer => _$mainWeatherSerializer;
}


abstract class WeatherDetail implements Built<WeatherDetail, WeatherDetailBuilder> {
  String? get main;
  String? get description;
  String? get icon;

  WeatherDetail._();
  factory WeatherDetail([void Function(WeatherDetailBuilder) updates]) =
      _$WeatherDetail;

  static Serializer<WeatherDetail> get serializer => _$weatherDetailSerializer;
}
