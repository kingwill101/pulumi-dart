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
    pulumi.Output<String>? backupPolicyId,
    pulumi.Output<String>? diskId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? protectionState,
    pulumi.Output<String>? snapshotResourceGroupName,
    pulumi.Output<String>? snapshotSubscriptionId,
    pulumi.Output<String>? vaultId,
  }) :
      backupPolicyId = pulumi.Input.asOptionalInput<String>(backupPolicyId),
      diskId = pulumi.Input.asOptionalInput<String>(diskId),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      protectionState = pulumi.Input.asOptionalInput<String>(protectionState),
      snapshotResourceGroupName = pulumi.Input.asOptionalInput<String>(snapshotResourceGroupName),
      snapshotSubscriptionId = pulumi.Input.asOptionalInput<String>(snapshotSubscriptionId),
      vaultId = pulumi.Input.asOptionalInput<String>(vaultId);

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
      backupPolicyId: map['backupPolicyId'] == null ? null : pulumi.Output.create<String>(map['backupPolicyId'] as String),
      diskId: map['diskId'] == null ? null : pulumi.Output.create<String>(map['diskId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      protectionState: map['protectionState'] == null ? null : pulumi.Output.create<String>(map['protectionState'] as String),
      snapshotResourceGroupName: map['snapshotResourceGroupName'] == null ? null : pulumi.Output.create<String>(map['snapshotResourceGroupName'] as String),
      snapshotSubscriptionId: map['snapshotSubscriptionId'] == null ? null : pulumi.Output.create<String>(map['snapshotSubscriptionId'] as String),
      vaultId: map['vaultId'] == null ? null : pulumi.Output.create<String>(map['vaultId'] as String),
    );
  }
}

