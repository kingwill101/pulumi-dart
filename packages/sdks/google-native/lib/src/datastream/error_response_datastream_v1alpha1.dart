// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represent a user-facing Error.
class ErrorResponseDatastreamV1alpha1 {
  /// Additional information about the error.
  final pulumi.Input<Map<String, String>> details;
  /// The time when the error occurred.
  final pulumi.Input<String> errorTime;
  /// A unique identifier for this specific error, allowing it to be traced throughout the system in logs and API responses.
  final pulumi.Input<String> errorUuid;
  /// A message containing more information about the error that occurred.
  final pulumi.Input<String> message;
  /// A title that explains the reason for the error.
  final pulumi.Input<String> reason;

  /// Creates a new [ErrorResponseDatastreamV1alpha1].
  /// [details] Additional information about the error.
  /// [errorTime] The time when the error occurred.
  /// [errorUuid] A unique identifier for this specific error, allowing it to be traced throughout the system in logs and API responses.
  /// [message] A message containing more information about the error that occurred.
  /// [reason] A title that explains the reason for the error.
  const ErrorResponseDatastreamV1alpha1({
    required this.details,
    required this.errorTime,
    required this.errorUuid,
    required this.message,
    required this.reason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': details,
      'errorTime': errorTime,
      'errorUuid': errorUuid,
      'message': message,
      'reason': reason,
    };
  }

  factory ErrorResponseDatastreamV1alpha1.fromMap(Map<String, dynamic> map) {
    return ErrorResponseDatastreamV1alpha1(
      details: pulumi.Input.fromValue((map['details'] as Map).cast<String, String>()),
      errorTime: pulumi.Input.fromValue(map['errorTime'] as String),
      errorUuid: pulumi.Input.fromValue(map['errorUuid'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
      reason: pulumi.Input.fromValue(map['reason'] as String),
    );
  }
}
