// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Certificate data for a SelfManaged Certificate. SelfManaged Certificates are uploaded by the user. Updating such certificates before they expire remains the user's responsibility.
class SelfManagedCertificateResponse {
  /// Input only. The PEM-encoded certificate chain. Leaf certificate comes first, followed by intermediate ones if any.
  final pulumi.Input<String> pemCertificate;
  /// Input only. The PEM-encoded private key of the leaf certificate.
  final pulumi.Input<String> pemPrivateKey;

  /// Creates a new [SelfManagedCertificateResponse].
  /// [pemCertificate] Input only. The PEM-encoded certificate chain. Leaf certificate comes first, followed by intermediate ones if any.
  /// [pemPrivateKey] Input only. The PEM-encoded private key of the leaf certificate.
  const SelfManagedCertificateResponse({
    required this.pemCertificate,
    required this.pemPrivateKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pemCertificate': pemCertificate,
      'pemPrivateKey': pemPrivateKey,
    };
  }

  factory SelfManagedCertificateResponse.fromMap(Map<String, dynamic> map) {
    return SelfManagedCertificateResponse(
      pemCertificate: pulumi.Input.fromValue(map['pemCertificate'] as String),
      pemPrivateKey: pulumi.Input.fromValue(map['pemPrivateKey'] as String),
    );
  }
}

