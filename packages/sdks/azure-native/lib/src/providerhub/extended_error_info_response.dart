// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'typed_error_info_response.dart';

/// Error information.
class ExtendedErrorInfoResponse {
  /// The additional error information.
  final pulumi.Input<List<TypedErrorInfoResponse>>? additionalInfo;
  /// The error code.
  final pulumi.Input<String>? code;
  /// The error details.
  final pulumi.Input<List<ExtendedErrorInfoResponse>>? details;
  /// The error message.
  final pulumi.Input<String>? message;
  /// The target of the error.
  final pulumi.Input<String>? target;

  /// Creates a new [ExtendedErrorInfoResponse].
  /// [additionalInfo] The additional error information.
  /// [code] The error code.
  /// [details] The error details.
  /// [message] The error message.
  /// [target] The target of the error.
  ExtendedErrorInfoResponse({
    this.additionalInfo,
    this.code,
    this.details,
    this.message,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalInfo': ?pulumi.Input.mapOptionalInputValue<List<TypedErrorInfoResponse>, List<Map<String, dynamic>>>(additionalInfo, (value) => pulumi.Input.encodeList<TypedErrorInfoResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'code': ?code,
      'details': ?pulumi.Input.mapOptionalInputValue<List<ExtendedErrorInfoResponse>, List<Map<String, dynamic>>>(details, (value) => pulumi.Input.encodeList<ExtendedErrorInfoResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'message': ?message,
      'target': ?target,
    };
  }

  factory ExtendedErrorInfoResponse.fromMap(Map<String, dynamic> map) {
    return ExtendedErrorInfoResponse(
      additionalInfo: map['additionalInfo'] == null ? null : (pulumi.Input.decodeList<TypedErrorInfoResponse>(map['additionalInfo']!, (value) => TypedErrorInfoResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      code: map['code'] == null ? null : (map['code']! as String).input(),
      details: map['details'] == null ? null : (pulumi.Input.decodeList<ExtendedErrorInfoResponse>(map['details']!, (value) => ExtendedErrorInfoResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      message: map['message'] == null ? null : (map['message']! as String).input(),
      target: map['target'] == null ? null : (map['target']! as String).input(),
    );
  }
}

