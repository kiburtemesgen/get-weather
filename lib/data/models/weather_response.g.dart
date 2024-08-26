// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WeatherResponse> _$weatherResponseSerializer =
    new _$WeatherResponseSerializer();

class _$WeatherResponseSerializer
    implements StructuredSerializer<WeatherResponse> {
  @override
  final Iterable<Type> types = const [WeatherResponse, _$WeatherResponse];
  @override
  final String wireName = 'WeatherResponse';

  @override
  Iterable<Object?> serialize(Serializers serializers, WeatherResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'list',
      serializers.serialize(object.list,
          specifiedType:
              const FullType(BuiltList, const [const FullType(WeatherModel)])),
    ];
    Object? value;
    value = object.cod;
    if (value != null) {
      result
        ..add('cod')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.message;
    if (value != null) {
      result
        ..add('message')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  WeatherResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'cod':
          result.cod = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'list':
          result.list.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(WeatherModel)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$WeatherResponse extends WeatherResponse {
  @override
  final String? cod;
  @override
  final int? message;
  @override
  final BuiltList<WeatherModel> list;

  factory _$WeatherResponse([void Function(WeatherResponseBuilder)? updates]) =>
      (new WeatherResponseBuilder()..update(updates))._build();

  _$WeatherResponse._({this.cod, this.message, required this.list})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(list, r'WeatherResponse', 'list');
  }

  @override
  WeatherResponse rebuild(void Function(WeatherResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherResponseBuilder toBuilder() =>
      new WeatherResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherResponse &&
        cod == other.cod &&
        message == other.message &&
        list == other.list;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cod.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, list.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WeatherResponse')
          ..add('cod', cod)
          ..add('message', message)
          ..add('list', list))
        .toString();
  }
}

class WeatherResponseBuilder
    implements Builder<WeatherResponse, WeatherResponseBuilder> {
  _$WeatherResponse? _$v;

  String? _cod;
  String? get cod => _$this._cod;
  set cod(String? cod) => _$this._cod = cod;

  int? _message;
  int? get message => _$this._message;
  set message(int? message) => _$this._message = message;

  ListBuilder<WeatherModel>? _list;
  ListBuilder<WeatherModel> get list =>
      _$this._list ??= new ListBuilder<WeatherModel>();
  set list(ListBuilder<WeatherModel>? list) => _$this._list = list;

  WeatherResponseBuilder();

  WeatherResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cod = $v.cod;
      _message = $v.message;
      _list = $v.list.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WeatherResponse;
  }

  @override
  void update(void Function(WeatherResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WeatherResponse build() => _build();

  _$WeatherResponse _build() {
    _$WeatherResponse _$result;
    try {
      _$result = _$v ??
          new _$WeatherResponse._(
              cod: cod, message: message, list: list.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'list';
        list.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'WeatherResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
