// ignore_for_file: unused_element, unnecessary_cast


/// InMageAzureV2 Managed disk details.
class InMageAzureV2ManagedDiskDetailsResponse {
  /// The DiskEncryptionSet ARM ID.
  final String? diskEncryptionSetId;
  /// The disk id.
  final String? diskId;
  /// The replica disk type.
  final String? replicaDiskType;
  /// Seed managed disk Id.
  final String? seedManagedDiskId;
  /// The target disk name.
  final String? targetDiskName;

  /// Creates a new [InMageAzureV2ManagedDiskDetailsResponse].
  /// [diskEncryptionSetId] The DiskEncryptionSet ARM ID.
  /// [diskId] The disk id.
  /// [replicaDiskType] The replica disk type.
  /// [seedManagedDiskId] Seed managed disk Id.
  /// [targetDiskName] The target disk name.
  InMageAzureV2ManagedDiskDetailsResponse({
    this.diskEncryptionSetId,
    this.diskId,
    this.replicaDiskType,
    this.seedManagedDiskId,
    this.targetDiskName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionSetId': ?diskEncryptionSetId,
      'diskId': ?diskId,
      'replicaDiskType': ?replicaDiskType,
      'seedManagedDiskId': ?seedManagedDiskId,
      'targetDiskName': ?targetDiskName,
    };
  }

  factory InMageAzureV2ManagedDiskDetailsResponse.fromMap(Map<String, dynamic> map) {
    return InMageAzureV2ManagedDiskDetailsResponse(
      diskEncryptionSetId: map['diskEncryptionSetId'] == null ? null : map['diskEncryptionSetId'] as String,
      diskId: map['diskId'] == null ? null : map['diskId'] as String,
      replicaDiskType: map['replicaDiskType'] == null ? null : map['replicaDiskType'] as String,
      seedManagedDiskId: map['seedManagedDiskId'] == null ? null : map['seedManagedDiskId'] as String,
      targetDiskName: map['targetDiskName'] == null ? null : map['targetDiskName'] as String,
    );
  }
}

