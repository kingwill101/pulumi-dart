// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A Cloud KMS key configuration that a CertificateAuthority will use.
class KeyVersionSpecResponse {
  /// The algorithm to use for creating a managed Cloud KMS key for a for a simplified experience. All managed keys will be have their ProtectionLevel as `HSM`.
  final pulumi.Input<String> algorithm;

  /// The resource name for an existing Cloud KMS CryptoKeyVersion in the format `projects/*/locations/*/keyRings/*/cryptoKeys/*/cryptoKeyVersions/*`. This option enables full flexibility in the key's capabilities and properties.
  final pulumi.Input<String> cloudKmsKeyVersion;

  /// Creates a new [KeyVersionSpecResponse].
  /// [algorithm] The algorithm to use for creating a managed Cloud KMS key for a for a simplified experience. All managed keys will be have their ProtectionLevel as `HSM`.
  /// [cloudKmsKeyVersion] The resource name for an existing Cloud KMS CryptoKeyVersion in the format `projects/*/locations/*/keyRings/*/cryptoKeys/*/cryptoKeyVersions/*`. This option enables full flexibility in the key's capabilities and properties.
  KeyVersionSpecResponse({
    required this.algorithm,
    required this.cloudKmsKeyVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': algorithm,
      'cloudKmsKeyVersion': cloudKmsKeyVersion,
    };
  }

  factory KeyVersionSpecResponse.fromMap(Map<String, dynamic> map) {
    return KeyVersionSpecResponse(
      algorithm: pulumi.Input.fromValue(map['algorithm'] as String),
      cloudKmsKeyVersion: pulumi.Input.fromValue(
        map['cloudKmsKeyVersion'] as String,
      ),
    );
  }
}
