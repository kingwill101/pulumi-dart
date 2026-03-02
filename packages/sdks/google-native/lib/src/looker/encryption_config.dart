// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Encryption configuration (i.e. CMEK).
class EncryptionConfig {
  /// Name of the CMEK key in KMS (input parameter).
  final pulumi.Input<String>? kmsKeyName;

  /// Creates a new [EncryptionConfig].
  /// [kmsKeyName] Name of the CMEK key in KMS (input parameter).
  EncryptionConfig({
    this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': ?kmsKeyName,
    };
  }

  factory EncryptionConfig.fromMap(Map<String, dynamic> map) {
    return EncryptionConfig(
      kmsKeyName: map['kmsKeyName'] == null ? null : (map['kmsKeyName']! as String).input(),
    );
  }
}

