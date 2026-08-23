// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Encryption configuration (i.e. CMEK).
class EncryptionConfig {
  /// Name of the CMEK key in KMS (input parameter).
  final pulumi.Input<String>? kmsKeyName;

  /// Creates a new [EncryptionConfig].
  /// [kmsKeyName] Name of the CMEK key in KMS (input parameter).
  const EncryptionConfig({
    this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': ?kmsKeyName,
    };
  }

  factory EncryptionConfig.fromMap(Map<String, dynamic> map) {
    return EncryptionConfig(
      kmsKeyName: (() { final guardedValue = map['kmsKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
