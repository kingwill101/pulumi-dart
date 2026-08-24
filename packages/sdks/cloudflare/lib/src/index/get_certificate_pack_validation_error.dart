// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCertificatePackValidationError {
  /// A domain validation error.
  final pulumi.Input<String> message;

  /// Creates a new [GetCertificatePackValidationError].
  /// [message] A domain validation error.
  const GetCertificatePackValidationError({
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': message,
    };
  }

  factory GetCertificatePackValidationError.fromMap(Map<String, dynamic> map) {
    return GetCertificatePackValidationError(
      message: pulumi.Input.fromValue(map['message'] as String),
    );
  }
}
