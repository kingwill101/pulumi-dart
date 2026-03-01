// ignore_for_file: unused_element, unnecessary_cast


/// VmwareVmDetails describes a VM in vCenter.
class VmwareVmDetailsResponse {
  /// The VM Boot Option.
  final String bootOption;
  /// The total size of the storage allocated to the VM in MB.
  final String committedStorageMb;
  /// The number of cpus in the VM.
  final int cpuCount;
  /// The descriptive name of the vCenter's datacenter this VM is contained in.
  final String datacenterDescription;
  /// The id of the vCenter's datacenter this VM is contained in.
  final String datacenterId;
  /// The number of disks the VM has.
  final int diskCount;
  /// The display name of the VM. Note that this is not necessarily unique.
  final String displayName;
  /// The VM's OS. See for example https://vdc-repo.vmware.com/vmwb-repository/dcr-public/da47f910-60ac-438b-8b9b-6122f4d14524/16b7274a-bf8b-4b4c-a05e-746f2aa93c8c/doc/vim.vm.GuestOsDescriptor.GuestOsIdentifier.html for types of strings this might hold.
  final String guestDescription;
  /// The size of the memory of the VM in MB.
  final int memoryMb;
  /// The power state of the VM at the moment list was taken.
  final String powerState;
  /// The unique identifier of the VM in vCenter.
  final String uuid;
  /// The VM's id in the source (note that this is not the MigratingVm's id). This is the moref id of the VM.
  final String vmId;

  /// Creates a new [VmwareVmDetailsResponse].
  /// [bootOption] The VM Boot Option.
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
  VmwareVmDetailsResponse({
    required this.bootOption,
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

  factory VmwareVmDetailsResponse.fromMap(Map<String, dynamic> map) {
    return VmwareVmDetailsResponse(
      bootOption: map['bootOption'] as String,
      committedStorageMb: map['committedStorageMb'] as String,
      cpuCount: map['cpuCount'] as int,
      datacenterDescription: map['datacenterDescription'] as String,
      datacenterId: map['datacenterId'] as String,
      diskCount: map['diskCount'] as int,
      displayName: map['displayName'] as String,
      guestDescription: map['guestDescription'] as String,
      memoryMb: map['memoryMb'] as int,
      powerState: map['powerState'] as String,
      uuid: map['uuid'] as String,
      vmId: map['vmId'] as String,
    );
  }
}

