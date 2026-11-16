// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketCmekSettings {
  /// The resource name for the configured Cloud KMS key. The format is: projects/[PROJECT_ID]/locations/[LOCATION]/keyRings/[KEYRING]/cryptoKeys/[KEY]
  final pulumi.Input<String?>? kmsKey;
  /// (Output)
  /// The CryptoKeyVersion resource name for the configured Cloud KMS key. The format is: projects/[PROJECT_ID]/locations/[LOCATION]/keyRings/[KEYRING]/cryptoKeys/[KEY]/cryptoKeyVersions/[VERSION]
  final pulumi.Input<String?>? kmsKeyVersion;
  /// (Output)
  /// The service account used to access the key.
  final pulumi.Input<String?>? serviceAccountId;

  /// Creates a new [BucketCmekSettings].
  /// [kmsKey] The resource name for the configured Cloud KMS key. The format is: projects/[PROJECT_ID]/locations/[LOCATION]/keyRings/[KEYRING]/cryptoKeys/[KEY]
  /// [kmsKeyVersion] (Output)
  /// [serviceAccountId] (Output)
  const BucketCmekSettings({
    this.kmsKey,
    this.kmsKeyVersion,
    this.serviceAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKey': ?kmsKey,
      'kmsKeyVersion': ?kmsKeyVersion,
      'serviceAccountId': ?serviceAccountId,
    };
  }

  factory BucketCmekSettings.fromMap(Map<String, dynamic> map) {
    return BucketCmekSettings(
      kmsKey: (() { final guardedValue = map['kmsKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyVersion: (() { final guardedValue = map['kmsKeyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccountId: (() { final guardedValue = map['serviceAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
