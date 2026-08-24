// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCustomHostnameSslValidationError {
  /// A domain validation error.
  final pulumi.Input<String> message;

  /// Creates a new [GetCustomHostnameSslValidationError].
  /// [message] A domain validation error.
  const GetCustomHostnameSslValidationError({
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': message,
    };
  }

  factory GetCustomHostnameSslValidationError.fromMap(Map<String, dynamic> map) {
    return GetCustomHostnameSslValidationError(
      message: pulumi.Input.fromValue(map['message'] as String),
    );
  }
}
