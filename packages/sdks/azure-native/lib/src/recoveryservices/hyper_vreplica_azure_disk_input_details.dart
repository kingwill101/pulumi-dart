// ignore_for_file: unused_element, unnecessary_cast


/// Disk input details.
class HyperVReplicaAzureDiskInputDetails {
  /// The DiskEncryptionSet ARM ID.
  final String? diskEncryptionSetId;
  /// The DiskId.
  final String? diskId;
  /// The disk type.
  final String? diskType;
  /// The LogStorageAccountId.
  final String? logStorageAccountId;
  /// The logical sector size (in bytes), 512 by default.
  final int? sectorSizeInBytes;

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
      diskEncryptionSetId: map['diskEncryptionSetId'] == null ? null : map['diskEncryptionSetId'] as String,
      diskId: map['diskId'] == null ? null : map['diskId'] as String,
      diskType: map['diskType'] == null ? null : map['diskType'] as String,
      logStorageAccountId: map['logStorageAccountId'] == null ? null : map['logStorageAccountId'] as String,
      sectorSizeInBytes: map['sectorSizeInBytes'] == null ? null : map['sectorSizeInBytes'] as int,
    );
  }
}

