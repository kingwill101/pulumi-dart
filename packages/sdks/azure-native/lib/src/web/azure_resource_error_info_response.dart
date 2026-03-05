// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The azure resource error info.
class AzureResourceErrorInfoResponse {
  /// The error code.
  final pulumi.Input<String> code;
  /// The error details.
  final pulumi.Input<List<AzureResourceErrorInfoResponse>>? details;
  /// The error message.
  final pulumi.Input<String> message;

  /// Creates a new [AzureResourceErrorInfoResponse].
  /// [code] The error code.
  /// [details] The error details.
  /// [message] The error message.
  AzureResourceErrorInfoResponse({
    required this.code,
    this.details,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'details': ?pulumi.Input.mapOptionalInputValue<List<AzureResourceErrorInfoResponse>, List<Map<String, dynamic>>>(details, (value) => pulumi.Input.encodeList<AzureResourceErrorInfoResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'message': message,
    };
  }

  factory AzureResourceErrorInfoResponse.fromMap(Map<String, dynamic> map) {
    return AzureResourceErrorInfoResponse(
      code: pulumi.Input.fromValue(map['code'] as String),
      details: (() { final guardedValue = map['details']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AzureResourceErrorInfoResponse>(guardedValue, (value) => AzureResourceErrorInfoResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      message: pulumi.Input.fromValue(map['message'] as String),
    );
  }
}

