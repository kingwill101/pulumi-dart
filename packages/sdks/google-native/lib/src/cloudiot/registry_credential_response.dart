// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_key_certificate_response.dart';

/// A server-stored registry credential used to validate device credentials.
class RegistryCredentialResponse {
  /// A public key certificate used to verify the device credentials.
  final pulumi.Input<PublicKeyCertificateResponse> publicKeyCertificate;

  /// Creates a new [RegistryCredentialResponse].
  /// [publicKeyCertificate] A public key certificate used to verify the device credentials.
  RegistryCredentialResponse({
    required this.publicKeyCertificate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicKeyCertificate': pulumi.Input.mapInputValue<PublicKeyCertificateResponse, Map<String, dynamic>>(publicKeyCertificate, (value) => value.toMap()),
    };
  }

  factory RegistryCredentialResponse.fromMap(Map<String, dynamic> map) {
    return RegistryCredentialResponse(
      publicKeyCertificate: pulumi.Input.fromValue(PublicKeyCertificateResponse.fromMap((map['publicKeyCertificate']! as Map).cast<String, dynamic>())),
    );
  }
}

