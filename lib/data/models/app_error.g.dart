// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AppError> _$appErrorSerializer = new _$AppErrorSerializer();

class _$AppErrorSerializer implements StructuredSerializer<AppError> {
  @override
  final Iterable<Type> types = const [AppError, _$AppError];
  @override
  final String wireName = 'AppError';

  @override
  Iterable<Object?> serialize(Serializers serializers, AppError object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.code;
    if (value != null) {
      result
        ..add('code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.message;
    if (value != null) {
      result
        ..add('message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AppError deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppErrorBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$AppError extends AppError {
  @override
  final String? code;
  @override
  final String? message;

  factory _$AppError([void Function(AppErrorBuilder)? updates]) =>
      (new AppErrorBuilder()..update(updates))._build();

  _$AppError._({this.code, this.message}) : super._();

  @override
  AppError rebuild(void Function(AppErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppErrorBuilder toBuilder() => new AppErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppError && code == other.code && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AppError')
          ..add('code', code)
          ..add('message', message))
        .toString();
  }
}

class AppErrorBuilder implements Builder<AppError, AppErrorBuilder> {
  _$AppError? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  AppErrorBuilder();

  AppErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppError;
  }

  @override
  void update(void Function(AppErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AppError build() => _build();

  _$AppError _build() {
    final _$result = _$v ?? new _$AppError._(code: code, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
