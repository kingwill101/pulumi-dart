// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_manager_virtual_machine_instance_hardware.dart';
import 'virtual_machine_manager_virtual_machine_instance_infrastructure.dart';
import 'virtual_machine_manager_virtual_machine_instance_network_interface.dart';
import 'virtual_machine_manager_virtual_machine_instance_operating_system.dart';
import 'virtual_machine_manager_virtual_machine_instance_storage_disk.dart';

/// {@template pulumi_systemcenter_virtual_machine_manager_virtual_machine_instance_virtual_machine_manager_virtual_machine_instance_args_doc}
/// The set of arguments for VirtualMachineManagerVirtualMachineInstance.
/// {@endtemplate}
/// {@macro pulumi_systemcenter_virtual_machine_manager_virtual_machine_instance_virtual_machine_manager_virtual_machine_instance_args_doc}
class VirtualMachineManagerVirtualMachineInstanceArgs {
  /// The ID of the Custom Location for the System Center Virtual Machine Manager Virtual Machine Instance. Changing this forces a new resource to be created.
  final pulumi.Input<String> customLocationId;
  /// A `hardware` block as defined below. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** This resource will be restarted while updating `hardware`.
  final pulumi.Input<VirtualMachineManagerVirtualMachineInstanceHardware?>? hardware;
  /// An `infrastructure` block as defined below.
  final pulumi.Input<VirtualMachineManagerVirtualMachineInstanceInfrastructure> infrastructure;
  /// A `networkInterface` block as defined below.
  ///
  /// &gt; **Note:** This resource will be restarted while updating `networkInterface`.
  final pulumi.Input<List<VirtualMachineManagerVirtualMachineInstanceNetworkInterface>?>? networkInterfaces;
  /// An `operatingSystem` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<VirtualMachineManagerVirtualMachineInstanceOperatingSystem?>? operatingSystem;
  /// The ID of the Hybrid Compute Machine where this System Center Virtual Machine Manager Virtual Machine Instance is stored. Changing this forces a new resource to be created.
  final pulumi.Input<String> scopedResourceId;
  /// A `storageDisk` block as defined below.
  ///
  /// &gt; **Note:** This resource will be restarted while updating `storageDisk`.
  final pulumi.Input<List<VirtualMachineManagerVirtualMachineInstanceStorageDisk>?>? storageDisks;
  /// A list of IDs of System Center Virtual Machine Manager Availability Set.
  final pulumi.Input<List<String>?>? systemCenterVirtualMachineManagerAvailabilitySetIds;

  /// Creates a new [VirtualMachineManagerVirtualMachineInstanceArgs].
  /// [customLocationId] The ID of the Custom Location for the System Center Virtual Machine Manager Virtual Machine Instance. Changing this forces a new resource to be created.
  /// [hardware] A `hardware` block as defined below. Changing this forces a new resource to be created.
  /// [infrastructure] An `infrastructure` block as defined below.
  /// [networkInterfaces] A `networkInterface` block as defined below.
  /// [operatingSystem] An `operatingSystem` block as defined below. Changing this forces a new resource to be created.
  /// [scopedResourceId] The ID of the Hybrid Compute Machine where this System Center Virtual Machine Manager Virtual Machine Instance is stored. Changing this forces a new resource to be created.
  /// [storageDisks] A `storageDisk` block as defined below.
  /// [systemCenterVirtualMachineManagerAvailabilitySetIds] A list of IDs of System Center Virtual Machine Manager Availability Set.
  const VirtualMachineManagerVirtualMachineInstanceArgs({
    required this.customLocationId,
    this.hardware,
    required this.infrastructure,
    this.networkInterfaces,
    this.operatingSystem,
    required this.scopedResourceId,
    this.storageDisks,
    this.systemCenterVirtualMachineManagerAvailabilitySetIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customLocationId': customLocationId,
      'hardware': ?pulumi.Input.mapOptionalInputValue<VirtualMachineManagerVirtualMachineInstanceHardware, Map<String, dynamic>>(hardware, (value) => value.toMap()),
      'infrastructure': pulumi.Input.mapInputValue<VirtualMachineManagerVirtualMachineInstanceInfrastructure, Map<String, dynamic>>(infrastructure, (value) => value.toMap()),
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<VirtualMachineManagerVirtualMachineInstanceNetworkInterface>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<VirtualMachineManagerVirtualMachineInstanceNetworkInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'operatingSystem': ?pulumi.Input.mapOptionalInputValue<VirtualMachineManagerVirtualMachineInstanceOperatingSystem, Map<String, dynamic>>(operatingSystem, (value) => value.toMap()),
      'scopedResourceId': scopedResourceId,
      'storageDisks': ?pulumi.Input.mapOptionalInputValue<List<VirtualMachineManagerVirtualMachineInstanceStorageDisk>, List<Map<String, dynamic>>>(storageDisks, (value) => pulumi.Input.encodeList<VirtualMachineManagerVirtualMachineInstanceStorageDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'systemCenterVirtualMachineManagerAvailabilitySetIds': ?systemCenterVirtualMachineManagerAvailabilitySetIds,
    };
  }

  factory VirtualMachineManagerVirtualMachineInstanceArgs.fromMap(Map<String, dynamic> map) {
    return VirtualMachineManagerVirtualMachineInstanceArgs(
      customLocationId: pulumi.Input.fromValue(map['customLocationId'] as String),
      hardware: (() { final guardedValue = map['hardware']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachineManagerVirtualMachineInstanceHardware.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      infrastructure: pulumi.Input.fromValue(VirtualMachineManagerVirtualMachineInstanceInfrastructure.fromMap((map['infrastructure']! as Map).cast<String, dynamic>())),
      networkInterfaces: (() { final guardedValue = map['networkInterfaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualMachineManagerVirtualMachineInstanceNetworkInterface>(guardedValue, (value) => VirtualMachineManagerVirtualMachineInstanceNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))); })(),
      operatingSystem: (() { final guardedValue = map['operatingSystem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachineManagerVirtualMachineInstanceOperatingSystem.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scopedResourceId: pulumi.Input.fromValue(map['scopedResourceId'] as String),
      storageDisks: (() { final guardedValue = map['storageDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualMachineManagerVirtualMachineInstanceStorageDisk>(guardedValue, (value) => VirtualMachineManagerVirtualMachineInstanceStorageDisk.fromMap((value as Map).cast<String, dynamic>()))); })(),
      systemCenterVirtualMachineManagerAvailabilitySetIds: (() { final guardedValue = map['systemCenterVirtualMachineManagerAvailabilitySetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
