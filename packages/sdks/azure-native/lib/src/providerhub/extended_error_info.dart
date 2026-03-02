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
  ExtendedErrorInfo({
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
      additionalInfo: map['additionalInfo'] == null ? null : (pulumi.Input.decodeList<TypedErrorInfo>(map['additionalInfo']!, (value) => TypedErrorInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      code: map['code'] == null ? null : (map['code']! as String).input(),
      details: map['details'] == null ? null : (pulumi.Input.decodeList<ExtendedErrorInfo>(map['details']!, (value) => ExtendedErrorInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      message: map['message'] == null ? null : (map['message']! as String).input(),
      target: map['target'] == null ? null : (map['target']! as String).input(),
    );
  }
}

