// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines an intermediate CA.
class IntermediateCAResponse {
  /// PEM intermediate certificate used for building up paths for validation. Each certificate provided in PEM format may occupy up to 5kB.
  final pulumi.Input<String> pemCertificate;

  /// Creates a new [IntermediateCAResponse].
  /// [pemCertificate] PEM intermediate certificate used for building up paths for validation. Each certificate provided in PEM format may occupy up to 5kB.
  const IntermediateCAResponse({
    required this.pemCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pemCertificate': pemCertificate,
    };
  }

  factory IntermediateCAResponse.fromMap(Map<String, dynamic> map) {
    return IntermediateCAResponse(
      pemCertificate: pulumi.Input.fromValue(map['pemCertificate'] as String),
    );
  }
}
