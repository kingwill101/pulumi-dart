// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCertificatePacksResultValidationError {
  /// A domain validation error.
  final pulumi.Input<String> message;

  /// Creates a new [GetCertificatePacksResultValidationError].
  /// [message] A domain validation error.
  const GetCertificatePacksResultValidationError({
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': message,
    };
  }

  factory GetCertificatePacksResultValidationError.fromMap(Map<String, dynamic> map) {
    return GetCertificatePacksResultValidationError(
      message: pulumi.Input.fromValue(map['message'] as String),
    );
  }
}
