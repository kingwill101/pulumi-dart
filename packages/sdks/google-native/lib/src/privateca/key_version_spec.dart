// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_version_spec_algorithm.dart';

/// A Cloud KMS key configuration that a CertificateAuthority will use.
class KeyVersionSpec {
  /// The algorithm to use for creating a managed Cloud KMS key for a for a simplified experience. All managed keys will be have their ProtectionLevel as `HSM`.
  final pulumi.Input<KeyVersionSpecAlgorithm>? algorithm;

  /// The resource name for an existing Cloud KMS CryptoKeyVersion in the format `projects/*/locations/*/keyRings/*/cryptoKeys/*/cryptoKeyVersions/*`. This option enables full flexibility in the key's capabilities and properties.
  final pulumi.Input<String>? cloudKmsKeyVersion;

  /// Creates a new [KeyVersionSpec].
  /// [algorithm] The algorithm to use for creating a managed Cloud KMS key for a for a simplified experience. All managed keys will be have their ProtectionLevel as `HSM`.
  /// [cloudKmsKeyVersion] The resource name for an existing Cloud KMS CryptoKeyVersion in the format `projects/*/locations/*/keyRings/*/cryptoKeys/*/cryptoKeyVersions/*`. This option enables full flexibility in the key's capabilities and properties.
  KeyVersionSpec({this.algorithm, this.cloudKmsKeyVersion});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm':
          ?pulumi.Input.mapOptionalInputValue<KeyVersionSpecAlgorithm, String>(
            algorithm,
            (value) => value.wireValue,
          ),
      'cloudKmsKeyVersion': ?cloudKmsKeyVersion,
    };
  }

  factory KeyVersionSpec.fromMap(Map<String, dynamic> map) {
    return KeyVersionSpec(
      algorithm: (() {
        final guardedValue = map['algorithm'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          KeyVersionSpecAlgorithm.fromValue(guardedValue as String),
        );
      })(),
      cloudKmsKeyVersion: (() {
        final guardedValue = map['cloudKmsKeyVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
