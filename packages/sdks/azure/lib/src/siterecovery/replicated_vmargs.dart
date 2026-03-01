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
  /// One or more `managed_disk` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<ReplicatedVMManagedDisk>>? managedDisks;
  /// Name of group in which all machines will replicate together and have shared crash consistent and app-consistent recovery points when failed over.
  final pulumi.Input<String>? multiVmGroupName;
  /// The name of the replication for the replicated VM. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// One or more `network_interface` block as defined below.
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
  /// Network to use when a failover is done (recommended to set if any network_interface is configured for failover).
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
  /// One or more `unmanaged_disk` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<ReplicatedVMUnmanagedDisk>>? unmanagedDisks;

  /// Creates a new [ReplicatedVMArgs].
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
  ReplicatedVMArgs({
    pulumi.Output<List<ReplicatedVMManagedDisk>>? managedDisks,
    pulumi.Output<String>? multiVmGroupName,
    pulumi.Output<String>? name,
    pulumi.Output<List<ReplicatedVMNetworkInterface>>? networkInterfaces,
    required pulumi.Output<String> recoveryReplicationPolicyId,
    required pulumi.Output<String> recoveryVaultName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> sourceRecoveryFabricName,
    required pulumi.Output<String> sourceRecoveryProtectionContainerName,
    required pulumi.Output<String> sourceVmId,
    pulumi.Output<String>? targetAvailabilitySetId,
    pulumi.Output<String>? targetBootDiagnosticStorageAccountId,
    pulumi.Output<String>? targetCapacityReservationGroupId,
    pulumi.Output<String>? targetEdgeZone,
    pulumi.Output<String>? targetNetworkId,
    pulumi.Output<String>? targetProximityPlacementGroupId,
    required pulumi.Output<String> targetRecoveryFabricId,
    required pulumi.Output<String> targetRecoveryProtectionContainerId,
    required pulumi.Output<String> targetResourceGroupId,
    pulumi.Output<String>? targetVirtualMachineScaleSetId,
    pulumi.Output<String>? targetVirtualMachineSize,
    pulumi.Output<String>? targetZone,
    pulumi.Output<String>? testNetworkId,
    pulumi.Output<List<ReplicatedVMUnmanagedDisk>>? unmanagedDisks,
  }) :
      managedDisks = pulumi.Input.asOptionalInput<List<ReplicatedVMManagedDisk>>(managedDisks),
      multiVmGroupName = pulumi.Input.asOptionalInput<String>(multiVmGroupName),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkInterfaces = pulumi.Input.asOptionalInput<List<ReplicatedVMNetworkInterface>>(networkInterfaces),
      recoveryReplicationPolicyId = pulumi.Input.asInput<String>(recoveryReplicationPolicyId),
      recoveryVaultName = pulumi.Input.asInput<String>(recoveryVaultName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sourceRecoveryFabricName = pulumi.Input.asInput<String>(sourceRecoveryFabricName),
      sourceRecoveryProtectionContainerName = pulumi.Input.asInput<String>(sourceRecoveryProtectionContainerName),
      sourceVmId = pulumi.Input.asInput<String>(sourceVmId),
      targetAvailabilitySetId = pulumi.Input.asOptionalInput<String>(targetAvailabilitySetId),
      targetBootDiagnosticStorageAccountId = pulumi.Input.asOptionalInput<String>(targetBootDiagnosticStorageAccountId),
      targetCapacityReservationGroupId = pulumi.Input.asOptionalInput<String>(targetCapacityReservationGroupId),
      targetEdgeZone = pulumi.Input.asOptionalInput<String>(targetEdgeZone),
      targetNetworkId = pulumi.Input.asOptionalInput<String>(targetNetworkId),
      targetProximityPlacementGroupId = pulumi.Input.asOptionalInput<String>(targetProximityPlacementGroupId),
      targetRecoveryFabricId = pulumi.Input.asInput<String>(targetRecoveryFabricId),
      targetRecoveryProtectionContainerId = pulumi.Input.asInput<String>(targetRecoveryProtectionContainerId),
      targetResourceGroupId = pulumi.Input.asInput<String>(targetResourceGroupId),
      targetVirtualMachineScaleSetId = pulumi.Input.asOptionalInput<String>(targetVirtualMachineScaleSetId),
      targetVirtualMachineSize = pulumi.Input.asOptionalInput<String>(targetVirtualMachineSize),
      targetZone = pulumi.Input.asOptionalInput<String>(targetZone),
      testNetworkId = pulumi.Input.asOptionalInput<String>(testNetworkId),
      unmanagedDisks = pulumi.Input.asOptionalInput<List<ReplicatedVMUnmanagedDisk>>(unmanagedDisks);

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
      managedDisks: map['managedDisks'] == null ? null : pulumi.Output.create<List<ReplicatedVMManagedDisk>>(pulumi.Input.decodeList<ReplicatedVMManagedDisk>(map['managedDisks'], (value) => ReplicatedVMManagedDisk.fromMap((value as Map).cast<String, dynamic>()))),
      multiVmGroupName: map['multiVmGroupName'] == null ? null : pulumi.Output.create<String>(map['multiVmGroupName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkInterfaces: map['networkInterfaces'] == null ? null : pulumi.Output.create<List<ReplicatedVMNetworkInterface>>(pulumi.Input.decodeList<ReplicatedVMNetworkInterface>(map['networkInterfaces'], (value) => ReplicatedVMNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))),
      recoveryReplicationPolicyId: pulumi.Output.create<String>(map['recoveryReplicationPolicyId'] as String),
      recoveryVaultName: pulumi.Output.create<String>(map['recoveryVaultName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sourceRecoveryFabricName: pulumi.Output.create<String>(map['sourceRecoveryFabricName'] as String),
      sourceRecoveryProtectionContainerName: pulumi.Output.create<String>(map['sourceRecoveryProtectionContainerName'] as String),
      sourceVmId: pulumi.Output.create<String>(map['sourceVmId'] as String),
      targetAvailabilitySetId: map['targetAvailabilitySetId'] == null ? null : pulumi.Output.create<String>(map['targetAvailabilitySetId'] as String),
      targetBootDiagnosticStorageAccountId: map['targetBootDiagnosticStorageAccountId'] == null ? null : pulumi.Output.create<String>(map['targetBootDiagnosticStorageAccountId'] as String),
      targetCapacityReservationGroupId: map['targetCapacityReservationGroupId'] == null ? null : pulumi.Output.create<String>(map['targetCapacityReservationGroupId'] as String),
      targetEdgeZone: map['targetEdgeZone'] == null ? null : pulumi.Output.create<String>(map['targetEdgeZone'] as String),
      targetNetworkId: map['targetNetworkId'] == null ? null : pulumi.Output.create<String>(map['targetNetworkId'] as String),
      targetProximityPlacementGroupId: map['targetProximityPlacementGroupId'] == null ? null : pulumi.Output.create<String>(map['targetProximityPlacementGroupId'] as String),
      targetRecoveryFabricId: pulumi.Output.create<String>(map['targetRecoveryFabricId'] as String),
      targetRecoveryProtectionContainerId: pulumi.Output.create<String>(map['targetRecoveryProtectionContainerId'] as String),
      targetResourceGroupId: pulumi.Output.create<String>(map['targetResourceGroupId'] as String),
      targetVirtualMachineScaleSetId: map['targetVirtualMachineScaleSetId'] == null ? null : pulumi.Output.create<String>(map['targetVirtualMachineScaleSetId'] as String),
      targetVirtualMachineSize: map['targetVirtualMachineSize'] == null ? null : pulumi.Output.create<String>(map['targetVirtualMachineSize'] as String),
      targetZone: map['targetZone'] == null ? null : pulumi.Output.create<String>(map['targetZone'] as String),
      testNetworkId: map['testNetworkId'] == null ? null : pulumi.Output.create<String>(map['testNetworkId'] as String),
      unmanagedDisks: map['unmanagedDisks'] == null ? null : pulumi.Output.create<List<ReplicatedVMUnmanagedDisk>>(pulumi.Input.decodeList<ReplicatedVMUnmanagedDisk>(map['unmanagedDisks'], (value) => ReplicatedVMUnmanagedDisk.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

