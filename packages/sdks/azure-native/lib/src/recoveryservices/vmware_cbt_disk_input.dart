// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VMwareCbt disk input.
class VMwareCbtDiskInput {
  /// The DiskEncryptionSet ARM Id.
  final pulumi.Input<String>? diskEncryptionSetId;
  /// The disk Id.
  final pulumi.Input<String> diskId;
  /// The disk type.
  final pulumi.Input<String>? diskType;
  /// A value indicating whether the disk is the OS disk.
  final pulumi.Input<String> isOSDisk;
  /// The log storage account ARM Id.
  final pulumi.Input<String> logStorageAccountId;
  /// The key vault secret name of the log storage account.
  final pulumi.Input<String> logStorageAccountSasSecretName;
  /// The logical sector size (in bytes), 512 by default.
  final pulumi.Input<int>? sectorSizeInBytes;

  /// Creates a new [VMwareCbtDiskInput].
  /// [diskEncryptionSetId] The DiskEncryptionSet ARM Id.
  /// [diskId] The disk Id.
  /// [diskType] The disk type.
  /// [isOSDisk] A value indicating whether the disk is the OS disk.
  /// [logStorageAccountId] The log storage account ARM Id.
  /// [logStorageAccountSasSecretName] The key vault secret name of the log storage account.
  /// [sectorSizeInBytes] The logical sector size (in bytes), 512 by default.
  const VMwareCbtDiskInput({
    this.diskEncryptionSetId,
    required this.diskId,
    this.diskType,
    required this.isOSDisk,
    required this.logStorageAccountId,
    required this.logStorageAccountSasSecretName,
    this.sectorSizeInBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionSetId': ?diskEncryptionSetId,
      'diskId': diskId,
      'diskType': ?diskType,
      'isOSDisk': isOSDisk,
      'logStorageAccountId': logStorageAccountId,
      'logStorageAccountSasSecretName': logStorageAccountSasSecretName,
      'sectorSizeInBytes': ?sectorSizeInBytes,
    };
  }

  factory VMwareCbtDiskInput.fromMap(Map<String, dynamic> map) {
    return VMwareCbtDiskInput(
      diskEncryptionSetId: (() { final guardedValue = map['diskEncryptionSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskId: pulumi.Input.fromValue(map['diskId'] as String),
      diskType: (() { final guardedValue = map['diskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isOSDisk: pulumi.Input.fromValue(map['isOSDisk'] as String),
      logStorageAccountId: pulumi.Input.fromValue(map['logStorageAccountId'] as String),
      logStorageAccountSasSecretName: pulumi.Input.fromValue(map['logStorageAccountSasSecretName'] as String),
      sectorSizeInBytes: (() { final guardedValue = map['sectorSizeInBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
