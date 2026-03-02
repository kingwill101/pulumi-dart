// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VmwareVmDetails describes a VM in vCenter.
class VmwareVmDetailsResponseVmmigrationV1alpha1 {
  /// The VM Boot Option.
  final pulumi.Input<String> bootOption;
  /// The total size of the storage allocated to the VM in MB.
  final pulumi.Input<String> committedStorage;
  /// The total size of the storage allocated to the VM in MB.
  final pulumi.Input<String> committedStorageMb;
  /// The number of cpus in the VM.
  final pulumi.Input<int> cpuCount;
  /// The descriptive name of the vCenter's datacenter this VM is contained in.
  final pulumi.Input<String> datacenterDescription;
  /// The id of the vCenter's datacenter this VM is contained in.
  final pulumi.Input<String> datacenterId;
  /// The number of disks the VM has.
  final pulumi.Input<int> diskCount;
  /// The display name of the VM. Note that this is not necessarily unique.
  final pulumi.Input<String> displayName;
  /// The VM's OS. See for example https://vdc-repo.vmware.com/vmwb-repository/dcr-public/da47f910-60ac-438b-8b9b-6122f4d14524/16b7274a-bf8b-4b4c-a05e-746f2aa93c8c/doc/vim.vm.GuestOsDescriptor.GuestOsIdentifier.html for types of strings this might hold.
  final pulumi.Input<String> guestDescription;
  /// The size of the memory of the VM in MB.
  final pulumi.Input<int> memoryMb;
  /// The power state of the VM at the moment list was taken.
  final pulumi.Input<String> powerState;
  /// The unique identifier of the VM in vCenter.
  final pulumi.Input<String> uuid;
  /// The VM's id in the source (note that this is not the MigratingVm's id). This is the moref id of the VM.
  final pulumi.Input<String> vmId;

  /// Creates a new [VmwareVmDetailsResponseVmmigrationV1alpha1].
  /// [bootOption] The VM Boot Option.
  /// [committedStorage] The total size of the storage allocated to the VM in MB.
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
  VmwareVmDetailsResponseVmmigrationV1alpha1({
    required this.bootOption,
    required this.committedStorage,
    required this.committedStorageMb,
    required this.cpuCount,
    required this.datacenterDescription,
    required this.datacenterId,
    required this.diskCount,
    required this.displayName,
    required this.guestDescription,
    required this.memoryMb,
    required this.powerState,
    required this.uuid,
    required this.vmId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bootOption': bootOption,
      'committedStorage': committedStorage,
      'committedStorageMb': committedStorageMb,
      'cpuCount': cpuCount,
      'datacenterDescription': datacenterDescription,
      'datacenterId': datacenterId,
      'diskCount': diskCount,
      'displayName': displayName,
      'guestDescription': guestDescription,
      'memoryMb': memoryMb,
      'powerState': powerState,
      'uuid': uuid,
      'vmId': vmId,
    };
  }

  factory VmwareVmDetailsResponseVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return VmwareVmDetailsResponseVmmigrationV1alpha1(
      bootOption: (map['bootOption'] as String).input(),
      committedStorage: (map['committedStorage'] as String).input(),
      committedStorageMb: (map['committedStorageMb'] as String).input(),
      cpuCount: (map['cpuCount'] as int).input(),
      datacenterDescription: (map['datacenterDescription'] as String).input(),
      datacenterId: (map['datacenterId'] as String).input(),
      diskCount: (map['diskCount'] as int).input(),
      displayName: (map['displayName'] as String).input(),
      guestDescription: (map['guestDescription'] as String).input(),
      memoryMb: (map['memoryMb'] as int).input(),
      powerState: (map['powerState'] as String).input(),
      uuid: (map['uuid'] as String).input(),
      vmId: (map['vmId'] as String).input(),
    );
  }
}

