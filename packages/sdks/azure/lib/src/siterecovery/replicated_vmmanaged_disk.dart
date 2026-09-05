// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replicated_vmmanaged_disk_target_disk_encryption.dart';

class ReplicatedVMManagedDisk {
  /// Id of disk that should be replicated. Changing this forces a new resource to be created.
  final pulumi.Input<String> diskId;
  /// Storage account that should be used for caching. Changing this forces a new resource to be created.
  final pulumi.Input<String> stagingStorageAccountId;
  /// A `targetDiskEncryption` block as defined below.
  final pulumi.Input<ReplicatedVMManagedDiskTargetDiskEncryption?>? targetDiskEncryption;
  /// The Disk Encryption Set that the Managed Disk will be associated with. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Creating replicated vm with `targetDiskEncryptionSetId` wil take more time (up to 5 hours), please extend the `timeout` for `create`.
  final pulumi.Input<String?>? targetDiskEncryptionSetId;
  /// What type should the disk be when a failover is done. Possible values are `Standard_LRS`, `Premium_LRS`, `PremiumV2_LRS`, `StandardSSD_LRS`, `UltraSSD_LRS`, `StandardSSD_ZRS` and `Premium_ZRS`. Changing this forces a new resource to be created.
  final pulumi.Input<String> targetDiskType;
  /// What type should the disk be that holds the replication data. Possible values are `Standard_LRS`, `Premium_LRS`, `PremiumV2_LRS`, `StandardSSD_LRS`, `UltraSSD_LRS`, `StandardSSD_ZRS` and `Premium_ZRS`. Changing this forces a new resource to be created.
  final pulumi.Input<String> targetReplicaDiskType;
  /// Resource group disk should belong to when a failover is done. Changing this forces a new resource to be created.
  final pulumi.Input<String> targetResourceGroupId;

  /// Creates a new [ReplicatedVMManagedDisk].
  /// [diskId] Id of disk that should be replicated. Changing this forces a new resource to be created.
  /// [stagingStorageAccountId] Storage account that should be used for caching. Changing this forces a new resource to be created.
  /// [targetDiskEncryption] A `targetDiskEncryption` block as defined below.
  /// [targetDiskEncryptionSetId] The Disk Encryption Set that the Managed Disk will be associated with. Changing this forces a new resource to be created.
  /// [targetDiskType] What type should the disk be when a failover is done. Possible values are `Standard_LRS`, `Premium_LRS`, `PremiumV2_LRS`, `StandardSSD_LRS`, `UltraSSD_LRS`, `StandardSSD_ZRS` and `Premium_ZRS`. Changing this forces a new resource to be created.
  /// [targetReplicaDiskType] What type should the disk be that holds the replication data. Possible values are `Standard_LRS`, `Premium_LRS`, `PremiumV2_LRS`, `StandardSSD_LRS`, `UltraSSD_LRS`, `StandardSSD_ZRS` and `Premium_ZRS`. Changing this forces a new resource to be created.
  /// [targetResourceGroupId] Resource group disk should belong to when a failover is done. Changing this forces a new resource to be created.
  const ReplicatedVMManagedDisk({
    required this.diskId,
    required this.stagingStorageAccountId,
    this.targetDiskEncryption,
    this.targetDiskEncryptionSetId,
    required this.targetDiskType,
    required this.targetReplicaDiskType,
    required this.targetResourceGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskId': diskId,
      'stagingStorageAccountId': stagingStorageAccountId,
      'targetDiskEncryption': ?pulumi.Input.mapOptionalInputValue<ReplicatedVMManagedDiskTargetDiskEncryption, Map<String, dynamic>>(targetDiskEncryption, (value) => value.toMap()),
      'targetDiskEncryptionSetId': ?targetDiskEncryptionSetId,
      'targetDiskType': targetDiskType,
      'targetReplicaDiskType': targetReplicaDiskType,
      'targetResourceGroupId': targetResourceGroupId,
    };
  }

  factory ReplicatedVMManagedDisk.fromMap(Map<String, dynamic> map) {
    return ReplicatedVMManagedDisk(
      diskId: pulumi.Input.fromValue(map['diskId'] as String),
      stagingStorageAccountId: pulumi.Input.fromValue(map['stagingStorageAccountId'] as String),
      targetDiskEncryption: (() { final guardedValue = map['targetDiskEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReplicatedVMManagedDiskTargetDiskEncryption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetDiskEncryptionSetId: (() { final guardedValue = map['targetDiskEncryptionSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetDiskType: pulumi.Input.fromValue(map['targetDiskType'] as String),
      targetReplicaDiskType: pulumi.Input.fromValue(map['targetReplicaDiskType'] as String),
      targetResourceGroupId: pulumi.Input.fromValue(map['targetResourceGroupId'] as String),
    );
  }
}
