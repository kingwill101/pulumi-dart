// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvironmentConfigEncryptionConfig {
  /// Optional. Customer-managed Encryption Key available through Google's Key Management Service. Cannot be updated.
  final pulumi.Input<String> kmsKeyName;

  /// Creates a new [EnvironmentConfigEncryptionConfig].
  /// [kmsKeyName] Optional. Customer-managed Encryption Key available through Google's Key Management Service. Cannot be updated.
  const EnvironmentConfigEncryptionConfig({
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': kmsKeyName,
    };
  }

  factory EnvironmentConfigEncryptionConfig.fromMap(Map<String, dynamic> map) {
    return EnvironmentConfigEncryptionConfig(
      kmsKeyName: pulumi.Input.fromValue(map['kmsKeyName'] as String),
    );
  }
}
