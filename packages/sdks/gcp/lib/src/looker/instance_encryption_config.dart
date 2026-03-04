// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceEncryptionConfig {
  /// Name of the customer managed encryption key (CMEK) in KMS.
  final pulumi.Input<String>? kmsKeyName;

  /// (Output)
  /// Full name and version of the CMEK key currently in use to encrypt Looker data.
  final pulumi.Input<String>? kmsKeyNameVersion;

  /// (Output)
  /// Status of the customer managed encryption key (CMEK) in KMS.
  final pulumi.Input<String>? kmsKeyState;

  /// Creates a new [InstanceEncryptionConfig].
  /// [kmsKeyName] Name of the customer managed encryption key (CMEK) in KMS.
  /// [kmsKeyNameVersion] (Output)
  /// [kmsKeyState] (Output)
  InstanceEncryptionConfig({
    this.kmsKeyName,
    this.kmsKeyNameVersion,
    this.kmsKeyState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': ?kmsKeyName,
      'kmsKeyNameVersion': ?kmsKeyNameVersion,
      'kmsKeyState': ?kmsKeyState,
    };
  }

  factory InstanceEncryptionConfig.fromMap(Map<String, dynamic> map) {
    return InstanceEncryptionConfig(
      kmsKeyName: (() {
        final guardedValue = map['kmsKeyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kmsKeyNameVersion: (() {
        final guardedValue = map['kmsKeyNameVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kmsKeyState: (() {
        final guardedValue = map['kmsKeyState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
