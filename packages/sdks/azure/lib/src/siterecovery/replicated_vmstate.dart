// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replicated_vmmanaged_disk.dart';
import 'replicated_vmnetwork_interface.dart';
import 'replicated_vmunmanaged_disk.dart';

/// Input properties used for looking up and filtering ReplicatedVM resources.
class ReplicatedVMState {
  /// One or more `managed_disk` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<ReplicatedVMManagedDisk>>? managedDisks;
  /// Name of group in which all machines will replicate together and have shared crash consistent and app-consistent recovery points when failed over.
  final pulumi.Input<String>? multiVmGroupName;
  /// The name of the replication for the replicated VM. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// One or more `network_interface` block as defined below.
  final pulumi.Input<List<ReplicatedVMNetworkInterface>>? networkInterfaces;
  /// Id of the policy to use for this replicated vm. Changing this forces a new resource to be created.
  final pulumi.Input<String>? recoveryReplicationPolicyId;
  /// The name of the vault that should be updated. Changing this forces a new resource to be created.
  final pulumi.Input<String>? recoveryVaultName;
  /// Name of the resource group where the vault that should be updated is located. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Name of fabric that should contain this replication. Changing this forces a new resource to be created.
  final pulumi.Input<String>? sourceRecoveryFabricName;
  /// Name of the protection container to use. Changing this forces a new resource to be created.
  final pulumi.Input<String>? sourceRecoveryProtectionContainerName;
  /// Id of the VM to replicate Changing this forces a new resource to be created.
  final pulumi.Input<String>? sourceVmId;
  /// Id of availability set that the new VM should belong to when a failover is done.
  final pulumi.Input<String>? targetAvailabilitySetId;
  /// Id of the storage account which the new VM should used for boot diagnostic when a failover is done.
  final pulumi.Input<String>? targetBootDiagnosticStorageAccountId;
  /// Id of the Capacity reservation group where the new VM should belong to when a failover is done.
  final pulumi.Input<String>? targetCapacityReservationGroupId;
  /// Specifies the Edge Zone within the Azure Region where this Managed Kubernetes Cluster should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? targetEdgeZone;
  /// Network to use when a failover is done (recommended to set if any network_interface is configured for failover).
  final pulumi.Input<String>? targetNetworkId;
  /// Id of Proximity Placement Group the new VM should belong to when a failover is done.
  final pulumi.Input<String>? targetProximityPlacementGroupId;
  /// Id of fabric where the VM replication should be handled when a failover is done. Changing this forces a new resource to be created.
  final pulumi.Input<String>? targetRecoveryFabricId;
  /// Id of protection container where the VM replication should be created when a failover is done. Changing this forces a new resource to be created.
  final pulumi.Input<String>? targetRecoveryProtectionContainerId;
  /// Id of resource group where the VM should be created when a failover is done. Changing this forces a new resource to be created.
  final pulumi.Input<String>? targetResourceGroupId;
  /// Id of the Virtual Machine Scale Set which the new Vm should belong to when a failover is done.
  final pulumi.Input<String>? targetVirtualMachineScaleSetId;
  /// Specifies the size the Virtual Machine should have.
  final pulumi.Input<String>? targetVirtualMachineSize;
  /// Specifies the Availability Zone where the Failover VM should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? targetZone;
  /// Network to use when a test failover is done.
  final pulumi.Input<String>? testNetworkId;
  /// One or more `unmanaged_disk` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<ReplicatedVMUnmanagedDisk>>? unmanagedDisks;

  /// Creates a new [ReplicatedVMState].
  /// [managedDisks] One or more `managed_disk` block as defined below. Changing this forces a new resource to be created.
  /// [multiVmGroupName] Name of group in which all machines will replicate together and have shared crash consistent and app-consistent recovery points when failed over.
  /// [name] The name of the replication for the replicated VM. Changing this forces a new resource to be created.
  /// [networkInterfaces] One or more `network_interface` block as defined below.
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
  /// [targetNetworkId] Network to use when a failover is done (recommended to set if any network_interface is configured for failover).
  /// [targetProximityPlacementGroupId] Id of Proximity Placement Group the new VM should belong to when a failover is done.
  /// [targetRecoveryFabricId] Id of fabric where the VM replication should be handled when a failover is done. Changing this forces a new resource to be created.
  /// [targetRecoveryProtectionContainerId] Id of protection container where the VM replication should be created when a failover is done. Changing this forces a new resource to be created.
  /// [targetResourceGroupId] Id of resource group where the VM should be created when a failover is done. Changing this forces a new resource to be created.
  /// [targetVirtualMachineScaleSetId] Id of the Virtual Machine Scale Set which the new Vm should belong to when a failover is done.
  /// [targetVirtualMachineSize] Specifies the size the Virtual Machine should have.
  /// [targetZone] Specifies the Availability Zone where the Failover VM should exist. Changing this forces a new resource to be created.
  /// [testNetworkId] Network to use when a test failover is done.
  /// [unmanagedDisks] One or more `unmanaged_disk` block as defined below. Changing this forces a new resource to be created.
  ReplicatedVMState({
    this.managedDisks,
    this.multiVmGroupName,
    this.name,
    this.networkInterfaces,
    this.recoveryReplicationPolicyId,
    this.recoveryVaultName,
    this.resourceGroupName,
    this.sourceRecoveryFabricName,
    this.sourceRecoveryProtectionContainerName,
    this.sourceVmId,
    this.targetAvailabilitySetId,
    this.targetBootDiagnosticStorageAccountId,
    this.targetCapacityReservationGroupId,
    this.targetEdgeZone,
    this.targetNetworkId,
    this.targetProximityPlacementGroupId,
    this.targetRecoveryFabricId,
    this.targetRecoveryProtectionContainerId,
    this.targetResourceGroupId,
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
      'recoveryReplicationPolicyId': ?recoveryReplicationPolicyId,
      'recoveryVaultName': ?recoveryVaultName,
      'resourceGroupName': ?resourceGroupName,
      'sourceRecoveryFabricName': ?sourceRecoveryFabricName,
      'sourceRecoveryProtectionContainerName': ?sourceRecoveryProtectionContainerName,
      'sourceVmId': ?sourceVmId,
      'targetAvailabilitySetId': ?targetAvailabilitySetId,
      'targetBootDiagnosticStorageAccountId': ?targetBootDiagnosticStorageAccountId,
      'targetCapacityReservationGroupId': ?targetCapacityReservationGroupId,
      'targetEdgeZone': ?targetEdgeZone,
      'targetNetworkId': ?targetNetworkId,
      'targetProximityPlacementGroupId': ?targetProximityPlacementGroupId,
      'targetRecoveryFabricId': ?targetRecoveryFabricId,
      'targetRecoveryProtectionContainerId': ?targetRecoveryProtectionContainerId,
      'targetResourceGroupId': ?targetResourceGroupId,
      'targetVirtualMachineScaleSetId': ?targetVirtualMachineScaleSetId,
      'targetVirtualMachineSize': ?targetVirtualMachineSize,
      'targetZone': ?targetZone,
      'testNetworkId': ?testNetworkId,
      'unmanagedDisks': ?pulumi.Input.mapOptionalInputValue<List<ReplicatedVMUnmanagedDisk>, List<Map<String, dynamic>>>(unmanagedDisks, (value) => pulumi.Input.encodeList<ReplicatedVMUnmanagedDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ReplicatedVMState.fromMap(Map<String, dynamic> map) {
    return ReplicatedVMState(
      managedDisks: map['managedDisks'] == null ? null : (pulumi.Input.decodeList<ReplicatedVMManagedDisk>(map['managedDisks'], (value) => ReplicatedVMManagedDisk.fromMap((value as Map).cast<String, dynamic>()))).input(),
      multiVmGroupName: map['multiVmGroupName'] == null ? null : (map['multiVmGroupName'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      networkInterfaces: map['networkInterfaces'] == null ? null : (pulumi.Input.decodeList<ReplicatedVMNetworkInterface>(map['networkInterfaces'], (value) => ReplicatedVMNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))).input(),
      recoveryReplicationPolicyId: map['recoveryReplicationPolicyId'] == null ? null : (map['recoveryReplicationPolicyId'] as String).input(),
      recoveryVaultName: map['recoveryVaultName'] == null ? null : (map['recoveryVaultName'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      sourceRecoveryFabricName: map['sourceRecoveryFabricName'] == null ? null : (map['sourceRecoveryFabricName'] as String).input(),
      sourceRecoveryProtectionContainerName: map['sourceRecoveryProtectionContainerName'] == null ? null : (map['sourceRecoveryProtectionContainerName'] as String).input(),
      sourceVmId: map['sourceVmId'] == null ? null : (map['sourceVmId'] as String).input(),
      targetAvailabilitySetId: map['targetAvailabilitySetId'] == null ? null : (map['targetAvailabilitySetId'] as String).input(),
      targetBootDiagnosticStorageAccountId: map['targetBootDiagnosticStorageAccountId'] == null ? null : (map['targetBootDiagnosticStorageAccountId'] as String).input(),
      targetCapacityReservationGroupId: map['targetCapacityReservationGroupId'] == null ? null : (map['targetCapacityReservationGroupId'] as String).input(),
      targetEdgeZone: map['targetEdgeZone'] == null ? null : (map['targetEdgeZone'] as String).input(),
      targetNetworkId: map['targetNetworkId'] == null ? null : (map['targetNetworkId'] as String).input(),
      targetProximityPlacementGroupId: map['targetProximityPlacementGroupId'] == null ? null : (map['targetProximityPlacementGroupId'] as String).input(),
      targetRecoveryFabricId: map['targetRecoveryFabricId'] == null ? null : (map['targetRecoveryFabricId'] as String).input(),
      targetRecoveryProtectionContainerId: map['targetRecoveryProtectionContainerId'] == null ? null : (map['targetRecoveryProtectionContainerId'] as String).input(),
      targetResourceGroupId: map['targetResourceGroupId'] == null ? null : (map['targetResourceGroupId'] as String).input(),
      targetVirtualMachineScaleSetId: map['targetVirtualMachineScaleSetId'] == null ? null : (map['targetVirtualMachineScaleSetId'] as String).input(),
      targetVirtualMachineSize: map['targetVirtualMachineSize'] == null ? null : (map['targetVirtualMachineSize'] as String).input(),
      targetZone: map['targetZone'] == null ? null : (map['targetZone'] as String).input(),
      testNetworkId: map['testNetworkId'] == null ? null : (map['testNetworkId'] as String).input(),
      unmanagedDisks: map['unmanagedDisks'] == null ? null : (pulumi.Input.decodeList<ReplicatedVMUnmanagedDisk>(map['unmanagedDisks'], (value) => ReplicatedVMUnmanagedDisk.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

