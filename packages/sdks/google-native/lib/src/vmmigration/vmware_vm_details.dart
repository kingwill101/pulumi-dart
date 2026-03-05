// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_vm_details_power_state.dart';

/// VmwareVmDetails describes a VM in vCenter.
class VmwareVmDetails {
  /// The total size of the storage allocated to the VM in MB.
  final pulumi.Input<String>? committedStorageMb;
  /// The number of cpus in the VM.
  final pulumi.Input<int>? cpuCount;
  /// The descriptive name of the vCenter's datacenter this VM is contained in.
  final pulumi.Input<String>? datacenterDescription;
  /// The id of the vCenter's datacenter this VM is contained in.
  final pulumi.Input<String>? datacenterId;
  /// The number of disks the VM has.
  final pulumi.Input<int>? diskCount;
  /// The display name of the VM. Note that this is not necessarily unique.
  final pulumi.Input<String>? displayName;
  /// The VM's OS. See for example https://vdc-repo.vmware.com/vmwb-repository/dcr-public/da47f910-60ac-438b-8b9b-6122f4d14524/16b7274a-bf8b-4b4c-a05e-746f2aa93c8c/doc/vim.vm.GuestOsDescriptor.GuestOsIdentifier.html for types of strings this might hold.
  final pulumi.Input<String>? guestDescription;
  /// The size of the memory of the VM in MB.
  final pulumi.Input<int>? memoryMb;
  /// The power state of the VM at the moment list was taken.
  final pulumi.Input<VmwareVmDetailsPowerState>? powerState;
  /// The unique identifier of the VM in vCenter.
  final pulumi.Input<String>? uuid;
  /// The VM's id in the source (note that this is not the MigratingVm's id). This is the moref id of the VM.
  final pulumi.Input<String>? vmId;

  /// Creates a new [VmwareVmDetails].
  /// [committedStorageMb] The total size of the storage allocated to the VM in MB.
  /// [cpuCount] The number of cpus in the VM.
  /// [datacenterDescription] The descriptive name of the vCenter's datacenter this VM is contained in.
  /// [datacenterId] The id of the vCenter's datacenter this VM is contained in.
  /// [diskCount] The number of disks the VM has.
  /// [displayName] The display name of the VM. Note that this is not necessarily unique.
  /// [guestDescription] The VM's OS. See for example https://vdc-repo.vmware.com/vmwb-repository/dcr-public/da47f910-60ac-438b-8b9b-6122f4d14524/16b7274a-bf8b-4b4c-a05e-746f2aa93c8c/doc/vim.vm.GuestOsDescriptor.GuestOsIdentifier.html for types of strings this might hold.
  /// [memoryMb] The size of the memory of the VM in MB.
  /// [powerState] The power state of the VM at the moment list was taken.
  /// [uuid] The unique identifier of the VM in vCenter.
  /// [vmId] The VM's id in the source (note that this is not the MigratingVm's id). This is the moref id of the VM.
  VmwareVmDetails({
    this.committedStorageMb,
    this.cpuCount,
    this.datacenterDescription,
    this.datacenterId,
    this.diskCount,
    this.displayName,
    this.guestDescription,
    this.memoryMb,
    this.powerState,
    this.uuid,
    this.vmId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'committedStorageMb': ?committedStorageMb,
      'cpuCount': ?cpuCount,
      'datacenterDescription': ?datacenterDescription,
      'datacenterId': ?datacenterId,
      'diskCount': ?diskCount,
      'displayName': ?displayName,
      'guestDescription': ?guestDescription,
      'memoryMb': ?memoryMb,
      'powerState': ?pulumi.Input.mapOptionalInputValue<VmwareVmDetailsPowerState, String>(powerState, (value) => value.wireValue),
      'uuid': ?uuid,
      'vmId': ?vmId,
    };
  }

  factory VmwareVmDetails.fromMap(Map<String, dynamic> map) {
    return VmwareVmDetails(
      committedStorageMb: (() { final guardedValue = map['committedStorageMb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cpuCount: (() { final guardedValue = map['cpuCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      datacenterDescription: (() { final guardedValue = map['datacenterDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      datacenterId: (() { final guardedValue = map['datacenterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskCount: (() { final guardedValue = map['diskCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      guestDescription: (() { final guardedValue = map['guestDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memoryMb: (() { final guardedValue = map['memoryMb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      powerState: (() { final guardedValue = map['powerState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VmwareVmDetailsPowerState.fromValue(guardedValue as String)); })(),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmId: (() { final guardedValue = map['vmId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

