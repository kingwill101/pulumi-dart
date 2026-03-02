// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BackupInstanceDisk resources.
class BackupInstanceDiskState {
  /// The ID of the Backup Policy.
  final pulumi.Input<String>? backupPolicyId;
  /// The ID of the source Disk. Changing this forces a new Backup Instance Disk to be created.
  final pulumi.Input<String>? diskId;
  /// The Azure Region where the Backup Instance Disk should exist. Changing this forces a new Backup Instance Disk to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Backup Instance Disk. Changing this forces a new Backup Instance Disk to be created.
  final pulumi.Input<String>? name;
  /// The protection state of the Backup Instance Disk.
  final pulumi.Input<String>? protectionState;
  /// The name of the Resource Group where snapshots are stored. Changing this forces a new Backup Instance Disk to be created.
  final pulumi.Input<String>? snapshotResourceGroupName;
  /// The subscription ID of the Resource Group where snapshots are stored. The default value is the subscription ID of the Backup Vault. Changing this forces a new Backup Instance Disk to be created.
  final pulumi.Input<String>? snapshotSubscriptionId;
  /// The ID of the Backup Vault within which the Backup Instance Disk should exist. Changing this forces a new Backup Instance Disk to be created.
  final pulumi.Input<String>? vaultId;

  /// Creates a new [BackupInstanceDiskState].
  /// [backupPolicyId] The ID of the Backup Policy.
  /// [diskId] The ID of the source Disk. Changing this forces a new Backup Instance Disk to be created.
  /// [location] The Azure Region where the Backup Instance Disk should exist. Changing this forces a new Backup Instance Disk to be created.
  /// [name] The name which should be used for this Backup Instance Disk. Changing this forces a new Backup Instance Disk to be created.
  /// [protectionState] The protection state of the Backup Instance Disk.
  /// [snapshotResourceGroupName] The name of the Resource Group where snapshots are stored. Changing this forces a new Backup Instance Disk to be created.
  /// [snapshotSubscriptionId] The subscription ID of the Resource Group where snapshots are stored. The default value is the subscription ID of the Backup Vault. Changing this forces a new Backup Instance Disk to be created.
  /// [vaultId] The ID of the Backup Vault within which the Backup Instance Disk should exist. Changing this forces a new Backup Instance Disk to be created.
  BackupInstanceDiskState({
    this.backupPolicyId,
    this.diskId,
    this.location,
    this.name,
    this.protectionState,
    this.snapshotResourceGroupName,
    this.snapshotSubscriptionId,
    this.vaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPolicyId': ?backupPolicyId,
      'diskId': ?diskId,
      'location': ?location,
      'name': ?name,
      'protectionState': ?protectionState,
      'snapshotResourceGroupName': ?snapshotResourceGroupName,
      'snapshotSubscriptionId': ?snapshotSubscriptionId,
      'vaultId': ?vaultId,
    };
  }

  factory BackupInstanceDiskState.fromMap(Map<String, dynamic> map) {
    return BackupInstanceDiskState(
      backupPolicyId: map['backupPolicyId'] == null ? null : (map['backupPolicyId']! as String).input(),
      diskId: map['diskId'] == null ? null : (map['diskId']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      protectionState: map['protectionState'] == null ? null : (map['protectionState']! as String).input(),
      snapshotResourceGroupName: map['snapshotResourceGroupName'] == null ? null : (map['snapshotResourceGroupName']! as String).input(),
      snapshotSubscriptionId: map['snapshotSubscriptionId'] == null ? null : (map['snapshotSubscriptionId']! as String).input(),
      vaultId: map['vaultId'] == null ? null : (map['vaultId']! as String).input(),
    );
  }
}

