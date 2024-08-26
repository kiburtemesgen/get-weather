import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'app_error.g.dart';

abstract class AppError implements Built<AppError, AppErrorBuilder> {
  // Error code
  String? get code;

  // Error message
  String? get message;

  AppError._();
  factory AppError([void Function(AppErrorBuilder) updates]) = _$AppError;

  static Serializer<AppError> get serializer => _$appErrorSerializer;
}
