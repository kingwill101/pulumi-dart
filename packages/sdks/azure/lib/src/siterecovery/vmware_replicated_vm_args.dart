// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_replicated_vm_managed_disk.dart';
import 'vmware_replicated_vm_network_interface.dart';

/// {@template pulumi_siterecovery_vmware_replicated_vm_vmware_replicated_vm_args_doc}
/// The set of arguments for VmwareReplicatedVm.
/// {@endtemplate}
/// {@macro pulumi_siterecovery_vmware_replicated_vm_vmware_replicated_vm_args_doc}
class VmwareReplicatedVmArgs {
  /// The name of VMWare appliance which handles the replication. Changing this forces a new resource to be created.
  final pulumi.Input<String> applianceName;
  /// The ID of the stroage account that should be used for logging during replication.
  ///
  /// > **Note:** Only standard types of storage accounts are allowed.
  ///
  /// > **Note:** Only one of `default_log_storage_account_id` or `managed_disk` must be specified.
  ///
  /// > **Note:** Changing `default_log_storage_account_id` forces a new resource to be created. But removing it does not.
  ///
  /// > **Note:** When `default_log_storage_account_id` co-exist with `managed_disk`, the value of `default_log_storage_account_id` must be as same as `log_storage_account_id` of every `managed_disk` or it forces a new resource to be created.
  final pulumi.Input<String>? defaultLogStorageAccountId;
  /// The type of storage account that should be used for recovery disks when a failover is done. Possible values are `Premium_LRS`, `PremiumV2_LRS`, `Premium_ZRS`, `Standard_LRS`, `StandardSSD_LRS`, `StandardSSD_ZRS` and `UltraSSD_LRS`.
  ///
  /// > **Note:** Only one of `default_recovery_disk_type` or `managed_disk` must be specified.
  ///
  /// > **Note:** Changing `default_recovery_disk_type` forces a new resource to be created. But removing it does not.
  ///
  /// > **Note:** When `default_recovery_disk_type` co-exist with `managed_disk`, the value of `default_recovery_disk_type` must be as same as `target_disk_type` of every `managed_disk` or it forces a new resource to be created.
  final pulumi.Input<String>? defaultRecoveryDiskType;
  /// The ID of the default Disk Encryption Set that should be used for the disks when a failover is done.
  ///
  /// > **Note:** Changing `default_target_disk_encryption_set_id` forces a new resource to be created. But removing it does not.
  ///
  /// > **Note:** When `default_target_disk_encryption_set_id` co-exist with `managed_disk`, the value of `default_target_disk_encryption_set_id` must be as same as `target_disk_encryption_set_id` of every `managed_disk` or it forces a new resource to be created.
  final pulumi.Input<String>? defaultTargetDiskEncryptionSetId;
  /// The license type of the VM. Possible values are `NoLicenseType`, `NotSpecified` and `WindowsServer`. Defaults to `NotSpecified`.
  final pulumi.Input<String>? licenseType;
  /// One or more `managed_disk` block as defined below. It's available only if mobility service is already installed on the source VM.
  ///
  /// > **Note:** A replicated VM could be created without `managed_disk` block, once the block has been specified, changing it expect removing it forces a new resource to be created.
  final pulumi.Input<List<VmwareReplicatedVmManagedDisk>>? managedDisks;
  /// Name of group in which all machines will replicate together and have shared crash consistent and app-consistent recovery points when failed over.
  final pulumi.Input<String>? multiVmGroupName;
  /// The name of the replicated VM. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// One or more `network_interface` block as defined below.
  final pulumi.Input<List<VmwareReplicatedVmNetworkInterface>>? networkInterfaces;
  /// The name of the credential to access the source VM. Changing this forces a new resource to be created. More information about the credentials could be found [here](https://learn.microsoft.com/en-us/azure/site-recovery/deploy-vmware-azure-replication-appliance-modernized).
  final pulumi.Input<String> physicalServerCredentialName;
  /// The ID of the policy to use for this replicated VM.
  final pulumi.Input<String> recoveryReplicationPolicyId;
  /// The ID of the Recovery Services Vault where the replicated VM is created.
  final pulumi.Input<String> recoveryVaultId;
  /// The name of the source VM in VMWare. Changing this forces a new resource to be created.
  final pulumi.Input<String> sourceVmName;
  /// The ID of availability set that the new VM should belong to when a failover is done.
  final pulumi.Input<String>? targetAvailabilitySetId;
  /// The ID of the storage account that should be used for boot diagnostics when a failover is done.
  final pulumi.Input<String>? targetBootDiagnosticsStorageAccountId;
  /// The ID of network to use when a failover is done.
  ///
  /// > **Note:** `target_network_id` is required when `network_interface` is specified.
  final pulumi.Input<String>? targetNetworkId;
  /// The ID of Proximity Placement Group the new VM should belong to when a failover is done.
  ///
  /// > **Note:** Only one of `target_availability_set_id` or `target_zone` can be specified.
  final pulumi.Input<String>? targetProximityPlacementGroupId;
  /// The ID of resource group where the VM should be created when a failover is done.
  final pulumi.Input<String> targetResourceGroupId;
  /// Name of the VM that should be created when a failover is done. Changing this forces a new resource to be created.
  final pulumi.Input<String> targetVmName;
  /// Size of the VM that should be created when a failover is done, such as `Standard_F2`. If it's not specified, it will automatically be set by detecting the source VM size.
  final pulumi.Input<String>? targetVmSize;
  /// Specifies the Availability Zone where the Failover VM should exist.
  final pulumi.Input<String>? targetZone;
  /// The ID of network to use when a test failover is done.
  final pulumi.Input<String>? testNetworkId;

  /// Creates a new [VmwareReplicatedVmArgs].
  /// [applianceName] The name of VMWare appliance which handles the replication. Changing this forces a new resource to be created.
  /// [defaultLogStorageAccountId] The ID of the stroage account that should be used for logging during replication.
  /// [defaultRecoveryDiskType] The type of storage account that should be used for recovery disks when a failover is done. Possible values are `Premium_LRS`, `PremiumV2_LRS`, `Premium_ZRS`, `Standard_LRS`, `StandardSSD_LRS`, `StandardSSD_ZRS` and `UltraSSD_LRS`.
  /// [defaultTargetDiskEncryptionSetId] The ID of the default Disk Encryption Set that should be used for the disks when a failover is done.
  /// [licenseType] The license type of the VM. Possible values are `NoLicenseType`, `NotSpecified` and `WindowsServer`. Defaults to `NotSpecified`.
  /// [managedDisks] One or more `managed_disk` block as defined below. It's available only if mobility service is already installed on the source VM.
  /// [multiVmGroupName] Name of group in which all machines will replicate together and have shared crash consistent and app-consistent recovery points when failed over.
  /// [name] The name of the replicated VM. Changing this forces a new resource to be created.
  /// [networkInterfaces] One or more `network_interface` block as defined below.
  /// [physicalServerCredentialName] The name of the credential to access the source VM. Changing this forces a new resource to be created. More information about the credentials could be found [here](https://learn.microsoft.com/en-us/azure/site-recovery/deploy-vmware-azure-replication-appliance-modernized).
  /// [recoveryReplicationPolicyId] The ID of the policy to use for this replicated VM.
  /// [recoveryVaultId] The ID of the Recovery Services Vault where the replicated VM is created.
  /// [sourceVmName] The name of the source VM in VMWare. Changing this forces a new resource to be created.
  /// [targetAvailabilitySetId] The ID of availability set that the new VM should belong to when a failover is done.
  /// [targetBootDiagnosticsStorageAccountId] The ID of the storage account that should be used for boot diagnostics when a failover is done.
  /// [targetNetworkId] The ID of network to use when a failover is done.
  /// [targetProximityPlacementGroupId] The ID of Proximity Placement Group the new VM should belong to when a failover is done.
  /// [targetResourceGroupId] The ID of resource group where the VM should be created when a failover is done.
  /// [targetVmName] Name of the VM that should be created when a failover is done. Changing this forces a new resource to be created.
  /// [targetVmSize] Size of the VM that should be created when a failover is done, such as `Standard_F2`. If it's not specified, it will automatically be set by detecting the source VM size.
  /// [targetZone] Specifies the Availability Zone where the Failover VM should exist.
  /// [testNetworkId] The ID of network to use when a test failover is done.
  VmwareReplicatedVmArgs({
    required this.applianceName,
    this.defaultLogStorageAccountId,
    this.defaultRecoveryDiskType,
    this.defaultTargetDiskEncryptionSetId,
    this.licenseType,
    this.managedDisks,
    this.multiVmGroupName,
    this.name,
    this.networkInterfaces,
    required this.physicalServerCredentialName,
    required this.recoveryReplicationPolicyId,
    required this.recoveryVaultId,
    required this.sourceVmName,
    this.targetAvailabilitySetId,
    this.targetBootDiagnosticsStorageAccountId,
    this.targetNetworkId,
    this.targetProximityPlacementGroupId,
    required this.targetResourceGroupId,
    required this.targetVmName,
    this.targetVmSize,
    this.targetZone,
    this.testNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applianceName': applianceName,
      'defaultLogStorageAccountId': ?defaultLogStorageAccountId,
      'defaultRecoveryDiskType': ?defaultRecoveryDiskType,
      'defaultTargetDiskEncryptionSetId': ?defaultTargetDiskEncryptionSetId,
      'licenseType': ?licenseType,
      'managedDisks': ?pulumi.Input.mapOptionalInputValue<List<VmwareReplicatedVmManagedDisk>, List<Map<String, dynamic>>>(managedDisks, (value) => pulumi.Input.encodeList<VmwareReplicatedVmManagedDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'multiVmGroupName': ?multiVmGroupName,
      'name': ?name,
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<VmwareReplicatedVmNetworkInterface>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<VmwareReplicatedVmNetworkInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'physicalServerCredentialName': physicalServerCredentialName,
      'recoveryReplicationPolicyId': recoveryReplicationPolicyId,
      'recoveryVaultId': recoveryVaultId,
      'sourceVmName': sourceVmName,
      'targetAvailabilitySetId': ?targetAvailabilitySetId,
      'targetBootDiagnosticsStorageAccountId': ?targetBootDiagnosticsStorageAccountId,
      'targetNetworkId': ?targetNetworkId,
      'targetProximityPlacementGroupId': ?targetProximityPlacementGroupId,
      'targetResourceGroupId': targetResourceGroupId,
      'targetVmName': targetVmName,
      'targetVmSize': ?targetVmSize,
      'targetZone': ?targetZone,
      'testNetworkId': ?testNetworkId,
    };
  }

  factory VmwareReplicatedVmArgs.fromMap(Map<String, dynamic> map) {
    return VmwareReplicatedVmArgs(
      applianceName: (map['applianceName'] as String).input(),
      defaultLogStorageAccountId: map['defaultLogStorageAccountId'] == null ? null : (map['defaultLogStorageAccountId']! as String).input(),
      defaultRecoveryDiskType: map['defaultRecoveryDiskType'] == null ? null : (map['defaultRecoveryDiskType']! as String).input(),
      defaultTargetDiskEncryptionSetId: map['defaultTargetDiskEncryptionSetId'] == null ? null : (map['defaultTargetDiskEncryptionSetId']! as String).input(),
      licenseType: map['licenseType'] == null ? null : (map['licenseType']! as String).input(),
      managedDisks: map['managedDisks'] == null ? null : (pulumi.Input.decodeList<VmwareReplicatedVmManagedDisk>(map['managedDisks']!, (value) => VmwareReplicatedVmManagedDisk.fromMap((value as Map).cast<String, dynamic>()))).input(),
      multiVmGroupName: map['multiVmGroupName'] == null ? null : (map['multiVmGroupName']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      networkInterfaces: map['networkInterfaces'] == null ? null : (pulumi.Input.decodeList<VmwareReplicatedVmNetworkInterface>(map['networkInterfaces']!, (value) => VmwareReplicatedVmNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))).input(),
      physicalServerCredentialName: (map['physicalServerCredentialName'] as String).input(),
      recoveryReplicationPolicyId: (map['recoveryReplicationPolicyId'] as String).input(),
      recoveryVaultId: (map['recoveryVaultId'] as String).input(),
      sourceVmName: (map['sourceVmName'] as String).input(),
      targetAvailabilitySetId: map['targetAvailabilitySetId'] == null ? null : (map['targetAvailabilitySetId']! as String).input(),
      targetBootDiagnosticsStorageAccountId: map['targetBootDiagnosticsStorageAccountId'] == null ? null : (map['targetBootDiagnosticsStorageAccountId']! as String).input(),
      targetNetworkId: map['targetNetworkId'] == null ? null : (map['targetNetworkId']! as String).input(),
      targetProximityPlacementGroupId: map['targetProximityPlacementGroupId'] == null ? null : (map['targetProximityPlacementGroupId']! as String).input(),
      targetResourceGroupId: (map['targetResourceGroupId'] as String).input(),
      targetVmName: (map['targetVmName'] as String).input(),
      targetVmSize: map['targetVmSize'] == null ? null : (map['targetVmSize']! as String).input(),
      targetZone: map['targetZone'] == null ? null : (map['targetZone']! as String).input(),
      testNetworkId: map['testNetworkId'] == null ? null : (map['testNetworkId']! as String).input(),
    );
  }
}

