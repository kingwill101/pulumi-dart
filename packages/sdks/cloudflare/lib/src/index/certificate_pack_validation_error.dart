// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertificatePackValidationError {
  /// A domain validation error.
  final pulumi.Input<String?>? message;

  /// Creates a new [CertificatePackValidationError].
  /// [message] A domain validation error.
  const CertificatePackValidationError({
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': ?message,
    };
  }

  factory CertificatePackValidationError.fromMap(Map<String, dynamic> map) {
    return CertificatePackValidationError(
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
