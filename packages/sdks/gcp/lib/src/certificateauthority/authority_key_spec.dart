// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AuthorityKeySpec {
  /// The algorithm to use for creating a managed Cloud KMS key for a for a simplified
  /// experience. All managed keys will be have their ProtectionLevel as HSM.
  /// Possible values are: `SIGN_HASH_ALGORITHM_UNSPECIFIED`, `RSA_PSS_2048_SHA256`, `RSA_PSS_3072_SHA256`, `RSA_PSS_4096_SHA256`, `RSA_PKCS1_2048_SHA256`, `RSA_PKCS1_3072_SHA256`, `RSA_PKCS1_4096_SHA256`, `EC_P256_SHA256`, `EC_P384_SHA384`.
  final pulumi.Input<String?>? algorithm;
  /// The resource name for an existing Cloud KMS CryptoKeyVersion in the format
  /// `projects/*/locations/*/keyRings/*/cryptoKeys/*/cryptoKeyVersions/*`.
  final pulumi.Input<String?>? cloudKmsKeyVersion;

  /// Creates a new [AuthorityKeySpec].
  /// [algorithm] The algorithm to use for creating a managed Cloud KMS key for a for a simplified
  /// [cloudKmsKeyVersion] The resource name for an existing Cloud KMS CryptoKeyVersion in the format
  const AuthorityKeySpec({
    this.algorithm,
    this.cloudKmsKeyVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': ?algorithm,
      'cloudKmsKeyVersion': ?cloudKmsKeyVersion,
    };
  }

  factory AuthorityKeySpec.fromMap(Map<String, dynamic> map) {
    return AuthorityKeySpec(
      algorithm: (() { final guardedValue = map['algorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cloudKmsKeyVersion: (() { final guardedValue = map['cloudKmsKeyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
