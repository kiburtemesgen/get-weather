import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'weather_model.dart';

part 'weather_response.g.dart';

abstract class WeatherResponse
    implements Built<WeatherResponse, WeatherResponseBuilder> {
  String? get cod;
  int? get message;
  BuiltList<WeatherModel> get list;

  WeatherResponse._();
  factory WeatherResponse([void Function(WeatherResponseBuilder) updates]) =
      _$WeatherResponse;

  static Serializer<WeatherResponse> get serializer =>
      _$weatherResponseSerializer;
}
