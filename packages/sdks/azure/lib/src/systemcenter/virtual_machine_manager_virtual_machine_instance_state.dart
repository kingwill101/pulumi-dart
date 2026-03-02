// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_manager_virtual_machine_instance_hardware.dart';
import 'virtual_machine_manager_virtual_machine_instance_infrastructure.dart';
import 'virtual_machine_manager_virtual_machine_instance_network_interface.dart';
import 'virtual_machine_manager_virtual_machine_instance_operating_system.dart';
import 'virtual_machine_manager_virtual_machine_instance_storage_disk.dart';

/// Input properties used for looking up and filtering VirtualMachineManagerVirtualMachineInstance resources.
class VirtualMachineManagerVirtualMachineInstanceState {
  /// The ID of the Custom Location for the System Center Virtual Machine Manager Virtual Machine Instance. Changing this forces a new resource to be created.
  final pulumi.Input<String>? customLocationId;
  /// A `hardware` block as defined below. Changing this forces a new resource to be created.
  ///
  /// > **Note:** This resource will be restarted while updating `hardware`.
  final pulumi.Input<VirtualMachineManagerVirtualMachineInstanceHardware>? hardware;
  /// An `infrastructure` block as defined below.
  final pulumi.Input<VirtualMachineManagerVirtualMachineInstanceInfrastructure>? infrastructure;
  /// A `network_interface` block as defined below.
  ///
  /// > **Note:** This resource will be restarted while updating `network_interface`.
  final pulumi.Input<List<VirtualMachineManagerVirtualMachineInstanceNetworkInterface>>? networkInterfaces;
  /// An `operating_system` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<VirtualMachineManagerVirtualMachineInstanceOperatingSystem>? operatingSystem;
  /// The ID of the Hybrid Compute Machine where this System Center Virtual Machine Manager Virtual Machine Instance is stored. Changing this forces a new resource to be created.
  final pulumi.Input<String>? scopedResourceId;
  /// A `storage_disk` block as defined below.
  ///
  /// > **Note:** This resource will be restarted while updating `storage_disk`.
  final pulumi.Input<List<VirtualMachineManagerVirtualMachineInstanceStorageDisk>>? storageDisks;
  /// A list of IDs of System Center Virtual Machine Manager Availability Set.
  final pulumi.Input<List<String>>? systemCenterVirtualMachineManagerAvailabilitySetIds;

  /// Creates a new [VirtualMachineManagerVirtualMachineInstanceState].
  /// [customLocationId] The ID of the Custom Location for the System Center Virtual Machine Manager Virtual Machine Instance. Changing this forces a new resource to be created.
  /// [hardware] A `hardware` block as defined below. Changing this forces a new resource to be created.
  /// [infrastructure] An `infrastructure` block as defined below.
  /// [networkInterfaces] A `network_interface` block as defined below.
  /// [operatingSystem] An `operating_system` block as defined below. Changing this forces a new resource to be created.
  /// [scopedResourceId] The ID of the Hybrid Compute Machine where this System Center Virtual Machine Manager Virtual Machine Instance is stored. Changing this forces a new resource to be created.
  /// [storageDisks] A `storage_disk` block as defined below.
  /// [systemCenterVirtualMachineManagerAvailabilitySetIds] A list of IDs of System Center Virtual Machine Manager Availability Set.
  VirtualMachineManagerVirtualMachineInstanceState({
    this.customLocationId,
    this.hardware,
    this.infrastructure,
    this.networkInterfaces,
    this.operatingSystem,
    this.scopedResourceId,
    this.storageDisks,
    this.systemCenterVirtualMachineManagerAvailabilitySetIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customLocationId': ?customLocationId,
      'hardware': ?pulumi.Input.mapOptionalInputValue<VirtualMachineManagerVirtualMachineInstanceHardware, Map<String, dynamic>>(hardware, (value) => value.toMap()),
      'infrastructure': ?pulumi.Input.mapOptionalInputValue<VirtualMachineManagerVirtualMachineInstanceInfrastructure, Map<String, dynamic>>(infrastructure, (value) => value.toMap()),
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<VirtualMachineManagerVirtualMachineInstanceNetworkInterface>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<VirtualMachineManagerVirtualMachineInstanceNetworkInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'operatingSystem': ?pulumi.Input.mapOptionalInputValue<VirtualMachineManagerVirtualMachineInstanceOperatingSystem, Map<String, dynamic>>(operatingSystem, (value) => value.toMap()),
      'scopedResourceId': ?scopedResourceId,
      'storageDisks': ?pulumi.Input.mapOptionalInputValue<List<VirtualMachineManagerVirtualMachineInstanceStorageDisk>, List<Map<String, dynamic>>>(storageDisks, (value) => pulumi.Input.encodeList<VirtualMachineManagerVirtualMachineInstanceStorageDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'systemCenterVirtualMachineManagerAvailabilitySetIds': ?systemCenterVirtualMachineManagerAvailabilitySetIds,
    };
  }

  factory VirtualMachineManagerVirtualMachineInstanceState.fromMap(Map<String, dynamic> map) {
    return VirtualMachineManagerVirtualMachineInstanceState(
      customLocationId: map['customLocationId'] == null ? null : (map['customLocationId']! as String).input(),
      hardware: map['hardware'] == null ? null : (VirtualMachineManagerVirtualMachineInstanceHardware.fromMap((map['hardware']! as Map).cast<String, dynamic>())).input(),
      infrastructure: map['infrastructure'] == null ? null : (VirtualMachineManagerVirtualMachineInstanceInfrastructure.fromMap((map['infrastructure']! as Map).cast<String, dynamic>())).input(),
      networkInterfaces: map['networkInterfaces'] == null ? null : (pulumi.Input.decodeList<VirtualMachineManagerVirtualMachineInstanceNetworkInterface>(map['networkInterfaces']!, (value) => VirtualMachineManagerVirtualMachineInstanceNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))).input(),
      operatingSystem: map['operatingSystem'] == null ? null : (VirtualMachineManagerVirtualMachineInstanceOperatingSystem.fromMap((map['operatingSystem']! as Map).cast<String, dynamic>())).input(),
      scopedResourceId: map['scopedResourceId'] == null ? null : (map['scopedResourceId']! as String).input(),
      storageDisks: map['storageDisks'] == null ? null : (pulumi.Input.decodeList<VirtualMachineManagerVirtualMachineInstanceStorageDisk>(map['storageDisks']!, (value) => VirtualMachineManagerVirtualMachineInstanceStorageDisk.fromMap((value as Map).cast<String, dynamic>()))).input(),
      systemCenterVirtualMachineManagerAvailabilitySetIds: map['systemCenterVirtualMachineManagerAvailabilitySetIds'] == null ? null : ((map['systemCenterVirtualMachineManagerAvailabilitySetIds']! as List).cast<String>()).input(),
    );
  }
}

