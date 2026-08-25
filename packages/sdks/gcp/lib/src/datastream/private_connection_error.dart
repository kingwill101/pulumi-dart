// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PrivateConnectionError {
  /// A list of messages that carry the error details.
  final pulumi.Input<Map<String, String>?>? details;
  /// A message containing more information about the error that occurred.
  final pulumi.Input<String?>? message;

  /// Creates a new [PrivateConnectionError].
  /// [details] A list of messages that carry the error details.
  /// [message] A message containing more information about the error that occurred.
  const PrivateConnectionError({
    this.details,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': ?details,
      'message': ?message,
    };
  }

  factory PrivateConnectionError.fromMap(Map<String, dynamic> map) {
    return PrivateConnectionError(
      details: (() { final guardedValue = map['details']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
