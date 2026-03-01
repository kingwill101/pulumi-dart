// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'typed_error_info.dart';

/// Error information.
class ExtendedErrorInfo {
  /// The additional error information.
  final List<TypedErrorInfo>? additionalInfo;
  /// The error code.
  final String? code;
  /// The error details.
  final List<ExtendedErrorInfo>? details;
  /// The error message.
  final String? message;
  /// The target of the error.
  final String? target;

  /// Creates a new [ExtendedErrorInfo].
  /// [additionalInfo] The additional error information.
  /// [code] The error code.
  /// [details] The error details.
  /// [message] The error message.
  /// [target] The target of the error.
  ExtendedErrorInfo({
    this.additionalInfo,
    this.code,
    this.details,
    this.message,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalInfo': ?additionalInfo == null ? null : pulumi.Input.encodeList<TypedErrorInfo, Map<String, dynamic>>(additionalInfo!, (value) => value.toMap()),
      'code': ?code,
      'details': ?details == null ? null : pulumi.Input.encodeList<ExtendedErrorInfo, Map<String, dynamic>>(details!, (value) => value.toMap()),
      'message': ?message,
      'target': ?target,
    };
  }

  factory ExtendedErrorInfo.fromMap(Map<String, dynamic> map) {
    return ExtendedErrorInfo(
      additionalInfo: map['additionalInfo'] == null ? null : pulumi.Input.decodeList<TypedErrorInfo>(map['additionalInfo'], (value) => TypedErrorInfo.fromMap((value as Map).cast<String, dynamic>())),
      code: map['code'] == null ? null : map['code'] as String,
      details: map['details'] == null ? null : pulumi.Input.decodeList<ExtendedErrorInfo>(map['details'], (value) => ExtendedErrorInfo.fromMap((value as Map).cast<String, dynamic>())),
      message: map['message'] == null ? null : map['message'] as String,
      target: map['target'] == null ? null : map['target'] as String,
    );
  }
}

