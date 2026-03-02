// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Include to use an existing data crypto key wrapped by KMS. The wrapped key must be a 128-, 192-, or 256-bit key. The key must grant the Cloud IAM permission `cloudkms.cryptoKeyVersions.useToDecrypt` to the project's Cloud Healthcare Service Agent service account. For more information, see [Creating a wrapped key] (https://cloud.google.com/dlp/docs/create-wrapped-key).
class KmsWrappedCryptoKeyHealthcareV1beta1 {
  /// The resource name of the KMS CryptoKey to use for unwrapping. For example, `projects/{project_id}/locations/{location_id}/keyRings/{keyring}/cryptoKeys/{key}`.
  final pulumi.Input<String> cryptoKey;
  /// The wrapped data crypto key.
  final pulumi.Input<String> wrappedKey;

  /// Creates a new [KmsWrappedCryptoKeyHealthcareV1beta1].
  /// [cryptoKey] The resource name of the KMS CryptoKey to use for unwrapping. For example, `projects/{project_id}/locations/{location_id}/keyRings/{keyring}/cryptoKeys/{key}`.
  /// [wrappedKey] The wrapped data crypto key.
  KmsWrappedCryptoKeyHealthcareV1beta1({
    required this.cryptoKey,
    required this.wrappedKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cryptoKey': cryptoKey,
      'wrappedKey': wrappedKey,
    };
  }

  factory KmsWrappedCryptoKeyHealthcareV1beta1.fromMap(Map<String, dynamic> map) {
    return KmsWrappedCryptoKeyHealthcareV1beta1(
      cryptoKey: (map['cryptoKey'] as String).input(),
      wrappedKey: (map['wrappedKey'] as String).input(),
    );
  }
}

