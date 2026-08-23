// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replicated_vmmanaged_disk.dart';
import 'replicated_vmnetwork_interface.dart';
import 'replicated_vmunmanaged_disk.dart';

/// {@template pulumi_siterecovery_replicated_vm_replicated_vmargs_doc}
/// The set of arguments for ReplicatedVM.
/// {@endtemplate}
/// {@macro pulumi_siterecovery_replicated_vm_replicated_vmargs_doc}
class ReplicatedVMArgs {
  /// One or more `managedDisk` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<ReplicatedVMManagedDisk>>? managedDisks;
  /// Name of group in which all machines will replicate together and have shared crash consistent and app-consistent recovery points when failed over.
  final pulumi.Input<String>? multiVmGroupName;
  /// The name of the replication for the replicated VM. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// One or more `networkInterface` block as defined below.
  final pulumi.Input<List<ReplicatedVMNetworkInterface>>? networkInterfaces;
  /// Id of the policy to use for this replicated vm. Changing this forces a new resource to be created.
  final pulumi.Input<String> recoveryReplicationPolicyId;
  /// The name of the vault that should be updated. Changing this forces a new resource to be created.
  final pulumi.Input<String> recoveryVaultName;
  /// Name of the resource group where the vault that should be updated is located. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Name of fabric that should contain this replication. Changing this forces a new resource to be created.
  final pulumi.Input<String> sourceRecoveryFabricName;
  /// Name of the protection container to use. Changing this forces a new resource to be created.
  final pulumi.Input<String> sourceRecoveryProtectionContainerName;
  /// Id of the VM to replicate Changing this forces a new resource to be created.
  final pulumi.Input<String> sourceVmId;
  /// Id of availability set that the new VM should belong to when a failover is done.
  final pulumi.Input<String>? targetAvailabilitySetId;
  /// Id of the storage account which the new VM should used for boot diagnostic when a failover is done.
  final pulumi.Input<String>? targetBootDiagnosticStorageAccountId;
  /// Id of the Capacity reservation group where the new VM should belong to when a failover is done.
  final pulumi.Input<String>? targetCapacityReservationGroupId;
  /// Specifies the Edge Zone within the Azure Region where this Managed Kubernetes Cluster should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? targetEdgeZone;
  /// Network to use when a failover is done (recommended to set if any networkInterface is configured for failover).
  final pulumi.Input<String>? targetNetworkId;
  /// Id of Proximity Placement Group the new VM should belong to when a failover is done.
  final pulumi.Input<String>? targetProximityPlacementGroupId;
  /// Id of fabric where the VM replication should be handled when a failover is done. Changing this forces a new resource to be created.
  final pulumi.Input<String> targetRecoveryFabricId;
  /// Id of protection container where the VM replication should be created when a failover is done. Changing this forces a new resource to be created.
  final pulumi.Input<String> targetRecoveryProtectionContainerId;
  /// Id of resource group where the VM should be created when a failover is done. Changing this forces a new resource to be created.
  final pulumi.Input<String> targetResourceGroupId;
  /// Id of the Virtual Machine Scale Set which the new Vm should belong to when a failover is done.
  final pulumi.Input<String>? targetVirtualMachineScaleSetId;
  /// Specifies the size the Virtual Machine should have.
  final pulumi.Input<String>? targetVirtualMachineSize;
  /// Specifies the Availability Zone where the Failover VM should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? targetZone;
  /// Network to use when a test failover is done.
  final pulumi.Input<String>? testNetworkId;
  /// One or more `unmanagedDisk` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<ReplicatedVMUnmanagedDisk>>? unmanagedDisks;

  /// Creates a new [ReplicatedVMArgs].
  /// [managedDisks] One or more `managedDisk` block as defined below. Changing this forces a new resource to be created.
  /// [multiVmGroupName] Name of group in which all machines will replicate together and have shared crash consistent and app-consistent recovery points when failed over.
  /// [name] The name of the replication for the replicated VM. Changing this forces a new resource to be created.
  /// [networkInterfaces] One or more `networkInterface` block as defined below.
  /// [recoveryReplicationPolicyId] Id of the policy to use for this replicated vm. Changing this forces a new resource to be created.
  /// [recoveryVaultName] The name of the vault that should be updated. Changing this forces a new resource to be created.
  /// [resourceGroupName] Name of the resource group where the vault that should be updated is located. Changing this forces a new resource to be created.
  /// [sourceRecoveryFabricName] Name of fabric that should contain this replication. Changing this forces a new resource to be created.
  /// [sourceRecoveryProtectionContainerName] Name of the protection container to use. Changing this forces a new resource to be created.
  /// [sourceVmId] Id of the VM to replicate Changing this forces a new resource to be created.
  /// [targetAvailabilitySetId] Id of availability set that the new VM should belong to when a failover is done.
  /// [targetBootDiagnosticStorageAccountId] Id of the storage account which the new VM should used for boot diagnostic when a failover is done.
  /// [targetCapacityReservationGroupId] Id of the Capacity reservation group where the new VM should belong to when a failover is done.
  /// [targetEdgeZone] Specifies the Edge Zone within the Azure Region where this Managed Kubernetes Cluster should exist. Changing this forces a new resource to be created.
  /// [targetNetworkId] Network to use when a failover is done (recommended to set if any networkInterface is configured for failover).
  /// [targetProximityPlacementGroupId] Id of Proximity Placement Group the new VM should belong to when a failover is done.
  /// [targetRecoveryFabricId] Id of fabric where the VM replication should be handled when a failover is done. Changing this forces a new resource to be created.
  /// [targetRecoveryProtectionContainerId] Id of protection container where the VM replication should be created when a failover is done. Changing this forces a new resource to be created.
  /// [targetResourceGroupId] Id of resource group where the VM should be created when a failover is done. Changing this forces a new resource to be created.
  /// [targetVirtualMachineScaleSetId] Id of the Virtual Machine Scale Set which the new Vm should belong to when a failover is done.
  /// [targetVirtualMachineSize] Specifies the size the Virtual Machine should have.
  /// [targetZone] Specifies the Availability Zone where the Failover VM should exist. Changing this forces a new resource to be created.
  /// [testNetworkId] Network to use when a test failover is done.
  /// [unmanagedDisks] One or more `unmanagedDisk` block as defined below. Changing this forces a new resource to be created.
  const ReplicatedVMArgs({
    this.managedDisks,
    this.multiVmGroupName,
    this.name,
    this.networkInterfaces,
    required this.recoveryReplicationPolicyId,
    required this.recoveryVaultName,
    required this.resourceGroupName,
    required this.sourceRecoveryFabricName,
    required this.sourceRecoveryProtectionContainerName,
    required this.sourceVmId,
    this.targetAvailabilitySetId,
    this.targetBootDiagnosticStorageAccountId,
    this.targetCapacityReservationGroupId,
    this.targetEdgeZone,
    this.targetNetworkId,
    this.targetProximityPlacementGroupId,
    required this.targetRecoveryFabricId,
    required this.targetRecoveryProtectionContainerId,
    required this.targetResourceGroupId,
    this.targetVirtualMachineScaleSetId,
    this.targetVirtualMachineSize,
    this.targetZone,
    this.testNetworkId,
    this.unmanagedDisks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedDisks': ?pulumi.Input.mapOptionalInputValue<List<ReplicatedVMManagedDisk>, List<Map<String, dynamic>>>(managedDisks, (value) => pulumi.Input.encodeList<ReplicatedVMManagedDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'multiVmGroupName': ?multiVmGroupName,
      'name': ?name,
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<ReplicatedVMNetworkInterface>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<ReplicatedVMNetworkInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'recoveryReplicationPolicyId': recoveryReplicationPolicyId,
      'recoveryVaultName': recoveryVaultName,
      'resourceGroupName': resourceGroupName,
      'sourceRecoveryFabricName': sourceRecoveryFabricName,
      'sourceRecoveryProtectionContainerName': sourceRecoveryProtectionContainerName,
      'sourceVmId': sourceVmId,
      'targetAvailabilitySetId': ?targetAvailabilitySetId,
      'targetBootDiagnosticStorageAccountId': ?targetBootDiagnosticStorageAccountId,
      'targetCapacityReservationGroupId': ?targetCapacityReservationGroupId,
      'targetEdgeZone': ?targetEdgeZone,
      'targetNetworkId': ?targetNetworkId,
      'targetProximityPlacementGroupId': ?targetProximityPlacementGroupId,
      'targetRecoveryFabricId': targetRecoveryFabricId,
      'targetRecoveryProtectionContainerId': targetRecoveryProtectionContainerId,
      'targetResourceGroupId': targetResourceGroupId,
      'targetVirtualMachineScaleSetId': ?targetVirtualMachineScaleSetId,
      'targetVirtualMachineSize': ?targetVirtualMachineSize,
      'targetZone': ?targetZone,
      'testNetworkId': ?testNetworkId,
      'unmanagedDisks': ?pulumi.Input.mapOptionalInputValue<List<ReplicatedVMUnmanagedDisk>, List<Map<String, dynamic>>>(unmanagedDisks, (value) => pulumi.Input.encodeList<ReplicatedVMUnmanagedDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ReplicatedVMArgs.fromMap(Map<String, dynamic> map) {
    return ReplicatedVMArgs(
      managedDisks: (() { final guardedValue = map['managedDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReplicatedVMManagedDisk>(guardedValue, (value) => ReplicatedVMManagedDisk.fromMap((value as Map).cast<String, dynamic>()))); })(),
      multiVmGroupName: (() { final guardedValue = map['multiVmGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfaces: (() { final guardedValue = map['networkInterfaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReplicatedVMNetworkInterface>(guardedValue, (value) => ReplicatedVMNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))); })(),
      recoveryReplicationPolicyId: pulumi.Input.fromValue(map['recoveryReplicationPolicyId'] as String),
      recoveryVaultName: pulumi.Input.fromValue(map['recoveryVaultName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sourceRecoveryFabricName: pulumi.Input.fromValue(map['sourceRecoveryFabricName'] as String),
      sourceRecoveryProtectionContainerName: pulumi.Input.fromValue(map['sourceRecoveryProtectionContainerName'] as String),
      sourceVmId: pulumi.Input.fromValue(map['sourceVmId'] as String),
      targetAvailabilitySetId: (() { final guardedValue = map['targetAvailabilitySetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetBootDiagnosticStorageAccountId: (() { final guardedValue = map['targetBootDiagnosticStorageAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetCapacityReservationGroupId: (() { final guardedValue = map['targetCapacityReservationGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetEdgeZone: (() { final guardedValue = map['targetEdgeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetNetworkId: (() { final guardedValue = map['targetNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetProximityPlacementGroupId: (() { final guardedValue = map['targetProximityPlacementGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetRecoveryFabricId: pulumi.Input.fromValue(map['targetRecoveryFabricId'] as String),
      targetRecoveryProtectionContainerId: pulumi.Input.fromValue(map['targetRecoveryProtectionContainerId'] as String),
      targetResourceGroupId: pulumi.Input.fromValue(map['targetResourceGroupId'] as String),
      targetVirtualMachineScaleSetId: (() { final guardedValue = map['targetVirtualMachineScaleSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetVirtualMachineSize: (() { final guardedValue = map['targetVirtualMachineSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetZone: (() { final guardedValue = map['targetZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      testNetworkId: (() { final guardedValue = map['testNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      unmanagedDisks: (() { final guardedValue = map['unmanagedDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReplicatedVMUnmanagedDisk>(guardedValue, (value) => ReplicatedVMUnmanagedDisk.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
