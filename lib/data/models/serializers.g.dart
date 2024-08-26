// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(AppError.serializer)
      ..add(MainWeather.serializer)
      ..add(WeatherDetail.serializer)
      ..add(WeatherModel.serializer)
      ..add(WeatherResponse.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(WeatherDetail)]),
          () => new ListBuilder<WeatherDetail>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(WeatherModel)]),
          () => new ListBuilder<WeatherModel>()))
    .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
