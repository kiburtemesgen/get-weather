// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WeatherModel> _$weatherModelSerializer =
    new _$WeatherModelSerializer();
Serializer<MainWeather> _$mainWeatherSerializer = new _$MainWeatherSerializer();
Serializer<WeatherDetail> _$weatherDetailSerializer =
    new _$WeatherDetailSerializer();

class _$WeatherModelSerializer implements StructuredSerializer<WeatherModel> {
  @override
  final Iterable<Type> types = const [WeatherModel, _$WeatherModel];
  @override
  final String wireName = 'WeatherModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, WeatherModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'main',
      serializers.serialize(object.main,
          specifiedType: const FullType(MainWeather)),
      'weather',
      serializers.serialize(object.weather,
          specifiedType:
              const FullType(BuiltList, const [const FullType(WeatherDetail)])),
      'dt',
      serializers.serialize(object.dt, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  WeatherModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'main':
          result.main.replace(serializers.deserialize(value,
              specifiedType: const FullType(MainWeather))! as MainWeather);
          break;
        case 'weather':
          result.weather.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(WeatherDetail)]))!
              as BuiltList<Object?>);
          break;
        case 'dt':
          result.dt = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$MainWeatherSerializer implements StructuredSerializer<MainWeather> {
  @override
  final Iterable<Type> types = const [MainWeather, _$MainWeather];
  @override
  final String wireName = 'MainWeather';

  @override
  Iterable<Object?> serialize(Serializers serializers, MainWeather object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.temp;
    if (value != null) {
      result
        ..add('temp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  MainWeather deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MainWeatherBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'temp':
          result.temp = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$WeatherDetailSerializer implements StructuredSerializer<WeatherDetail> {
  @override
  final Iterable<Type> types = const [WeatherDetail, _$WeatherDetail];
  @override
  final String wireName = 'WeatherDetail';

  @override
  Iterable<Object?> serialize(Serializers serializers, WeatherDetail object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.main;
    if (value != null) {
      result
        ..add('main')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.icon;
    if (value != null) {
      result
        ..add('icon')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  WeatherDetail deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherDetailBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'main':
          result.main = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'icon':
          result.icon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$WeatherModel extends WeatherModel {
  @override
  final MainWeather main;
  @override
  final BuiltList<WeatherDetail> weather;
  @override
  final int dt;

  factory _$WeatherModel([void Function(WeatherModelBuilder)? updates]) =>
      (new WeatherModelBuilder()..update(updates))._build();

  _$WeatherModel._(
      {required this.main, required this.weather, required this.dt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(main, r'WeatherModel', 'main');
    BuiltValueNullFieldError.checkNotNull(weather, r'WeatherModel', 'weather');
    BuiltValueNullFieldError.checkNotNull(dt, r'WeatherModel', 'dt');
  }

  @override
  WeatherModel rebuild(void Function(WeatherModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherModelBuilder toBuilder() => new WeatherModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherModel &&
        main == other.main &&
        weather == other.weather &&
        dt == other.dt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, main.hashCode);
    _$hash = $jc(_$hash, weather.hashCode);
    _$hash = $jc(_$hash, dt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WeatherModel')
          ..add('main', main)
          ..add('weather', weather)
          ..add('dt', dt))
        .toString();
  }
}

class WeatherModelBuilder
    implements Builder<WeatherModel, WeatherModelBuilder> {
  _$WeatherModel? _$v;

  MainWeatherBuilder? _main;
  MainWeatherBuilder get main => _$this._main ??= new MainWeatherBuilder();
  set main(MainWeatherBuilder? main) => _$this._main = main;

  ListBuilder<WeatherDetail>? _weather;
  ListBuilder<WeatherDetail> get weather =>
      _$this._weather ??= new ListBuilder<WeatherDetail>();
  set weather(ListBuilder<WeatherDetail>? weather) => _$this._weather = weather;

  int? _dt;
  int? get dt => _$this._dt;
  set dt(int? dt) => _$this._dt = dt;

  WeatherModelBuilder();

  WeatherModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _main = $v.main.toBuilder();
      _weather = $v.weather.toBuilder();
      _dt = $v.dt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WeatherModel;
  }

  @override
  void update(void Function(WeatherModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WeatherModel build() => _build();

  _$WeatherModel _build() {
    _$WeatherModel _$result;
    try {
      _$result = _$v ??
          new _$WeatherModel._(
              main: main.build(),
              weather: weather.build(),
              dt: BuiltValueNullFieldError.checkNotNull(
                  dt, r'WeatherModel', 'dt'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'main';
        main.build();
        _$failedField = 'weather';
        weather.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'WeatherModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$MainWeather extends MainWeather {
  @override
  final double? temp;

  factory _$MainWeather([void Function(MainWeatherBuilder)? updates]) =>
      (new MainWeatherBuilder()..update(updates))._build();

  _$MainWeather._({this.temp}) : super._();

  @override
  MainWeather rebuild(void Function(MainWeatherBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MainWeatherBuilder toBuilder() => new MainWeatherBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MainWeather && temp == other.temp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, temp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MainWeather')..add('temp', temp))
        .toString();
  }
}

class MainWeatherBuilder implements Builder<MainWeather, MainWeatherBuilder> {
  _$MainWeather? _$v;

  double? _temp;
  double? get temp => _$this._temp;
  set temp(double? temp) => _$this._temp = temp;

  MainWeatherBuilder();

  MainWeatherBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _temp = $v.temp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MainWeather other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MainWeather;
  }

  @override
  void update(void Function(MainWeatherBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MainWeather build() => _build();

  _$MainWeather _build() {
    final _$result = _$v ?? new _$MainWeather._(temp: temp);
    replace(_$result);
    return _$result;
  }
}

class _$WeatherDetail extends WeatherDetail {
  @override
  final String? main;
  @override
  final String? description;
  @override
  final String? icon;

  factory _$WeatherDetail([void Function(WeatherDetailBuilder)? updates]) =>
      (new WeatherDetailBuilder()..update(updates))._build();

  _$WeatherDetail._({this.main, this.description, this.icon}) : super._();

  @override
  WeatherDetail rebuild(void Function(WeatherDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherDetailBuilder toBuilder() => new WeatherDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherDetail &&
        main == other.main &&
        description == other.description &&
        icon == other.icon;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, main.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WeatherDetail')
          ..add('main', main)
          ..add('description', description)
          ..add('icon', icon))
        .toString();
  }
}

class WeatherDetailBuilder
    implements Builder<WeatherDetail, WeatherDetailBuilder> {
  _$WeatherDetail? _$v;

  String? _main;
  String? get main => _$this._main;
  set main(String? main) => _$this._main = main;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  WeatherDetailBuilder();

  WeatherDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _main = $v.main;
      _description = $v.description;
      _icon = $v.icon;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherDetail other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WeatherDetail;
  }

  @override
  void update(void Function(WeatherDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WeatherDetail build() => _build();

  _$WeatherDetail _build() {
    final _$result = _$v ??
        new _$WeatherDetail._(main: main, description: description, icon: icon);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
