// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCustomHostnamesResultSslValidationError {
  /// A domain validation error.
  final pulumi.Input<String> message;

  /// Creates a new [GetCustomHostnamesResultSslValidationError].
  /// [message] A domain validation error.
  const GetCustomHostnamesResultSslValidationError({
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': message,
    };
  }

  factory GetCustomHostnamesResultSslValidationError.fromMap(Map<String, dynamic> map) {
    return GetCustomHostnamesResultSslValidationError(
      message: pulumi.Input.fromValue(map['message'] as String),
    );
  }
}
