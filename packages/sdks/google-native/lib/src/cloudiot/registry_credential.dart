// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_key_certificate.dart';

/// A server-stored registry credential used to validate device credentials.
class RegistryCredential {
  /// A public key certificate used to verify the device credentials.
  final pulumi.Input<PublicKeyCertificate>? publicKeyCertificate;

  /// Creates a new [RegistryCredential].
  /// [publicKeyCertificate] A public key certificate used to verify the device credentials.
  const RegistryCredential({
    this.publicKeyCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicKeyCertificate': ?pulumi.Input.mapOptionalInputValue<PublicKeyCertificate, Map<String, dynamic>>(publicKeyCertificate, (value) => value.toMap()),
    };
  }

  factory RegistryCredential.fromMap(Map<String, dynamic> map) {
    return RegistryCredential(
      publicKeyCertificate: (() { final guardedValue = map['publicKeyCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PublicKeyCertificate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

