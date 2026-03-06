// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'typed_error_info.dart';

/// Error information.
class ExtendedErrorInfo {
  /// The additional error information.
  final pulumi.Input<List<TypedErrorInfo>>? additionalInfo;
  /// The error code.
  final pulumi.Input<String>? code;
  /// The error details.
  final pulumi.Input<List<ExtendedErrorInfo>>? details;
  /// The error message.
  final pulumi.Input<String>? message;
  /// The target of the error.
  final pulumi.Input<String>? target;

  /// Creates a new [ExtendedErrorInfo].
  /// [additionalInfo] The additional error information.
  /// [code] The error code.
  /// [details] The error details.
  /// [message] The error message.
  /// [target] The target of the error.
  const ExtendedErrorInfo({
    this.additionalInfo,
    this.code,
    this.details,
    this.message,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalInfo': ?pulumi.Input.mapOptionalInputValue<List<TypedErrorInfo>, List<Map<String, dynamic>>>(additionalInfo, (value) => pulumi.Input.encodeList<TypedErrorInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'code': ?code,
      'details': ?pulumi.Input.mapOptionalInputValue<List<ExtendedErrorInfo>, List<Map<String, dynamic>>>(details, (value) => pulumi.Input.encodeList<ExtendedErrorInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'message': ?message,
      'target': ?target,
    };
  }

  factory ExtendedErrorInfo.fromMap(Map<String, dynamic> map) {
    return ExtendedErrorInfo(
      additionalInfo: (() { final guardedValue = map['additionalInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TypedErrorInfo>(guardedValue, (value) => TypedErrorInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      details: (() { final guardedValue = map['details']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExtendedErrorInfo>(guardedValue, (value) => ExtendedErrorInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

