// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// InMageRcm disk input.
class InMageRcmDiskInput {
  /// The DiskEncryptionSet ARM Id.
  final pulumi.Input<String>? diskEncryptionSetId;
  /// The disk Id.
  final pulumi.Input<String> diskId;
  /// The disk type.
  final pulumi.Input<String> diskType;
  /// The log storage account ARM Id.
  final pulumi.Input<String> logStorageAccountId;
  /// The logical sector size (in bytes), 512 by default.
  final pulumi.Input<int>? sectorSizeInBytes;

  /// Creates a new [InMageRcmDiskInput].
  /// [diskEncryptionSetId] The DiskEncryptionSet ARM Id.
  /// [diskId] The disk Id.
  /// [diskType] The disk type.
  /// [logStorageAccountId] The log storage account ARM Id.
  /// [sectorSizeInBytes] The logical sector size (in bytes), 512 by default.
  const InMageRcmDiskInput({
    this.diskEncryptionSetId,
    required this.diskId,
    required this.diskType,
    required this.logStorageAccountId,
    this.sectorSizeInBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionSetId': ?diskEncryptionSetId,
      'diskId': diskId,
      'diskType': diskType,
      'logStorageAccountId': logStorageAccountId,
      'sectorSizeInBytes': ?sectorSizeInBytes,
    };
  }

  factory InMageRcmDiskInput.fromMap(Map<String, dynamic> map) {
    return InMageRcmDiskInput(
      diskEncryptionSetId: (() { final guardedValue = map['diskEncryptionSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskId: pulumi.Input.fromValue(map['diskId'] as String),
      diskType: pulumi.Input.fromValue(map['diskType'] as String),
      logStorageAccountId: pulumi.Input.fromValue(map['logStorageAccountId'] as String),
      sectorSizeInBytes: (() { final guardedValue = map['sectorSizeInBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

