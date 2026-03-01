// ignore_for_file: unused_element, unnecessary_cast

import 'public_key_certificate.dart';

/// A server-stored registry credential used to validate device credentials.
class RegistryCredential {
  /// A public key certificate used to verify the device credentials.
  final PublicKeyCertificate? publicKeyCertificate;

  /// Creates a new [RegistryCredential].
  /// [publicKeyCertificate] A public key certificate used to verify the device credentials.
  RegistryCredential({
    this.publicKeyCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicKeyCertificate': ?publicKeyCertificate == null ? null : publicKeyCertificate!.toMap(),
    };
  }

  factory RegistryCredential.fromMap(Map<String, dynamic> map) {
    return RegistryCredential(
      publicKeyCertificate: map['publicKeyCertificate'] == null ? null : PublicKeyCertificate.fromMap((map['publicKeyCertificate'] as Map).cast<String, dynamic>()),
    );
  }
}

