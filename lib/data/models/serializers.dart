import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_collection/built_collection.dart';
import 'package:get_weather/data/models/app_error.dart';

import 'weather_model.dart';
import 'weather_response.dart';

part 'serializers.g.dart';

@SerializersFor([
  WeatherResponse,
  WeatherModel,
  MainWeather,
  WeatherDetail,
  AppError
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
