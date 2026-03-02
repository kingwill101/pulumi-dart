// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Disk input details.
class HyperVReplicaAzureDiskInputDetails {
  /// The DiskEncryptionSet ARM ID.
  final pulumi.Input<String>? diskEncryptionSetId;
  /// The DiskId.
  final pulumi.Input<String>? diskId;
  /// The disk type.
  final pulumi.Input<String>? diskType;
  /// The LogStorageAccountId.
  final pulumi.Input<String>? logStorageAccountId;
  /// The logical sector size (in bytes), 512 by default.
  final pulumi.Input<int>? sectorSizeInBytes;

  /// Creates a new [HyperVReplicaAzureDiskInputDetails].
  /// [diskEncryptionSetId] The DiskEncryptionSet ARM ID.
  /// [diskId] The DiskId.
  /// [diskType] The disk type.
  /// [logStorageAccountId] The LogStorageAccountId.
  /// [sectorSizeInBytes] The logical sector size (in bytes), 512 by default.
  HyperVReplicaAzureDiskInputDetails({
    this.diskEncryptionSetId,
    this.diskId,
    this.diskType,
    this.logStorageAccountId,
    this.sectorSizeInBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionSetId': ?diskEncryptionSetId,
      'diskId': ?diskId,
      'diskType': ?diskType,
      'logStorageAccountId': ?logStorageAccountId,
      'sectorSizeInBytes': ?sectorSizeInBytes,
    };
  }

  factory HyperVReplicaAzureDiskInputDetails.fromMap(Map<String, dynamic> map) {
    return HyperVReplicaAzureDiskInputDetails(
      diskEncryptionSetId: map['diskEncryptionSetId'] == null ? null : (map['diskEncryptionSetId']! as String).input(),
      diskId: map['diskId'] == null ? null : (map['diskId']! as String).input(),
      diskType: map['diskType'] == null ? null : (map['diskType']! as String).input(),
      logStorageAccountId: map['logStorageAccountId'] == null ? null : (map['logStorageAccountId']! as String).input(),
      sectorSizeInBytes: map['sectorSizeInBytes'] == null ? null : (map['sectorSizeInBytes']! as int).input(),
    );
  }
}

