// ignore_for_file: unused_element, unnecessary_cast


class VmwareReplicatedVmManagedDisk {
  /// The ID of the disk to be replicated.
  final String diskId;
  /// The ID of the storage account that should be used for logging during replication.
  final String? logStorageAccountId;
  /// The ID of the Disk Encryption Set that should be used for the disks when a failover is done.
  final String? targetDiskEncryptionSetId;
  /// The disk type of the disk to be created when a failover is done. Possible values are `Premium_LRS`, `PremiumV2_LRS`, `Premium_ZRS`, `Standard_LRS`, `StandardSSD_LRS`, `StandardSSD_ZRS` and `UltraSSD_LRS`.
  final String targetDiskType;

  /// Creates a new [VmwareReplicatedVmManagedDisk].
  /// [diskId] The ID of the disk to be replicated.
  /// [logStorageAccountId] The ID of the storage account that should be used for logging during replication.
  /// [targetDiskEncryptionSetId] The ID of the Disk Encryption Set that should be used for the disks when a failover is done.
  /// [targetDiskType] The disk type of the disk to be created when a failover is done. Possible values are `Premium_LRS`, `PremiumV2_LRS`, `Premium_ZRS`, `Standard_LRS`, `StandardSSD_LRS`, `StandardSSD_ZRS` and `UltraSSD_LRS`.
  VmwareReplicatedVmManagedDisk({
    required this.diskId,
    this.logStorageAccountId,
    this.targetDiskEncryptionSetId,
    required this.targetDiskType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskId': diskId,
      'logStorageAccountId': ?logStorageAccountId,
      'targetDiskEncryptionSetId': ?targetDiskEncryptionSetId,
      'targetDiskType': targetDiskType,
    };
  }

  factory VmwareReplicatedVmManagedDisk.fromMap(Map<String, dynamic> map) {
    return VmwareReplicatedVmManagedDisk(
      diskId: map['diskId'] as String,
      logStorageAccountId: map['logStorageAccountId'] == null ? null : map['logStorageAccountId'] as String,
      targetDiskEncryptionSetId: map['targetDiskEncryptionSetId'] == null ? null : map['targetDiskEncryptionSetId'] as String,
      targetDiskType: map['targetDiskType'] as String,
    );
  }
}

