// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// EncryptionInfo describes the encryption information of a cluster or a backup.
class EncryptionInfoResponseAlloydbV1alpha {
  /// Type of encryption.
  final pulumi.Input<String> encryptionType;
  /// Cloud KMS key versions that are being used to protect the database or the backup.
  final pulumi.Input<List<String>> kmsKeyVersions;

  /// Creates a new [EncryptionInfoResponseAlloydbV1alpha].
  /// [encryptionType] Type of encryption.
  /// [kmsKeyVersions] Cloud KMS key versions that are being used to protect the database or the backup.
  const EncryptionInfoResponseAlloydbV1alpha({
    required this.encryptionType,
    required this.kmsKeyVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionType': encryptionType,
      'kmsKeyVersions': kmsKeyVersions,
    };
  }

  factory EncryptionInfoResponseAlloydbV1alpha.fromMap(Map<String, dynamic> map) {
    return EncryptionInfoResponseAlloydbV1alpha(
      encryptionType: pulumi.Input.fromValue(map['encryptionType'] as String),
      kmsKeyVersions: pulumi.Input.fromValue((map['kmsKeyVersions'] as List).cast<String>()),
    );
  }
}
