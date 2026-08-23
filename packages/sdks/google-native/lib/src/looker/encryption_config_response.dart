// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Encryption configuration (i.e. CMEK).
class EncryptionConfigResponse {
  /// Name of the CMEK key in KMS (input parameter).
  final pulumi.Input<String> kmsKeyName;
  /// Full name and version of the CMEK key currently in use to encrypt Looker data. Format: `projects/{project}/locations/{location}/keyRings/{ring}/cryptoKeys/{key}/cryptoKeyVersions/{version}`. Empty if CMEK is not configured in this instance.
  final pulumi.Input<String> kmsKeyNameVersion;
  /// Status of the CMEK key.
  final pulumi.Input<String> kmsKeyState;

  /// Creates a new [EncryptionConfigResponse].
  /// [kmsKeyName] Name of the CMEK key in KMS (input parameter).
  /// [kmsKeyNameVersion] Full name and version of the CMEK key currently in use to encrypt Looker data. Format: `projects/{project}/locations/{location}/keyRings/{ring}/cryptoKeys/{key}/cryptoKeyVersions/{version}`. Empty if CMEK is not configured in this instance.
  /// [kmsKeyState] Status of the CMEK key.
  const EncryptionConfigResponse({
    required this.kmsKeyName,
    required this.kmsKeyNameVersion,
    required this.kmsKeyState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': kmsKeyName,
      'kmsKeyNameVersion': kmsKeyNameVersion,
      'kmsKeyState': kmsKeyState,
    };
  }

  factory EncryptionConfigResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionConfigResponse(
      kmsKeyName: pulumi.Input.fromValue(map['kmsKeyName'] as String),
      kmsKeyNameVersion: pulumi.Input.fromValue(map['kmsKeyNameVersion'] as String),
      kmsKeyState: pulumi.Input.fromValue(map['kmsKeyState'] as String),
    );
  }
}
