// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'checkpoint.dart';
import 'extended_location.dart';
import 'guest_agent_profile.dart';
import 'hardware_profile.dart';
import 'identity.dart';
import 'network_profile.dart';
import 'os_profile.dart';
import 'storage_profile.dart';
import 'virtual_machine_properties_availability_sets.dart';

/// {@template pulumi_scvmm_virtual_machine_args_doc}
/// The set of arguments for VirtualMachine.
/// {@endtemplate}
/// {@macro pulumi_scvmm_virtual_machine_args_doc}
class VirtualMachineArgs {
  /// Availability Sets in vm.
  final pulumi.Input<List<VirtualMachinePropertiesAvailabilitySets>>? availabilitySets;
  /// Type of checkpoint supported for the vm.
  final pulumi.Input<String>? checkpointType;
  /// Checkpoints in the vm.
  final pulumi.Input<List<Checkpoint>>? checkpoints;
  /// ARM Id of the cloud resource to use for deploying the vm.
  final pulumi.Input<String>? cloudId;
  /// The extended location.
  final pulumi.Input<ExtendedLocation> extendedLocation;
  /// Gets or sets the generation for the vm.
  final pulumi.Input<int>? generation;
  /// Guest agent status properties.
  final pulumi.Input<GuestAgentProfile>? guestAgentProfile;
  /// Hardware properties.
  final pulumi.Input<HardwareProfile>? hardwareProfile;
  /// The identity of the resource.
  final pulumi.Input<Identity>? identity;
  /// Gets or sets the inventory Item ID for the resource.
  final pulumi.Input<String>? inventoryItemId;
  /// Gets or sets the location.
  final pulumi.Input<String>? location;
  /// Network properties.
  final pulumi.Input<NetworkProfile>? networkProfile;
  /// OS properties.
  final pulumi.Input<OsProfile>? osProfile;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Storage properties.
  final pulumi.Input<StorageProfile>? storageProfile;
  /// Resource tags
  final pulumi.Input<Map<String, String>>? tags;
  /// ARM Id of the template resource to use for deploying the vm.
  final pulumi.Input<String>? templateId;
  /// Unique ID of the virtual machine.
  final pulumi.Input<String>? uuid;
  /// Name of the VirtualMachine.
  final pulumi.Input<String>? virtualMachineName;
  /// VMName is the name of VM on the SCVMM server.
  final pulumi.Input<String>? vmName;
  /// ARM Id of the vmmServer resource in which this resource resides.
  final pulumi.Input<String>? vmmServerId;

  /// Creates a new [VirtualMachineArgs].
  /// [availabilitySets] Availability Sets in vm.
  /// [checkpointType] Type of checkpoint supported for the vm.
  /// [checkpoints] Checkpoints in the vm.
  /// [cloudId] ARM Id of the cloud resource to use for deploying the vm.
  /// [extendedLocation] The extended location.
  /// [generation] Gets or sets the generation for the vm.
  /// [guestAgentProfile] Guest agent status properties.
  /// [hardwareProfile] Hardware properties.
  /// [identity] The identity of the resource.
  /// [inventoryItemId] Gets or sets the inventory Item ID for the resource.
  /// [location] Gets or sets the location.
  /// [networkProfile] Network properties.
  /// [osProfile] OS properties.
  /// [resourceGroupName] The name of the resource group.
  /// [storageProfile] Storage properties.
  /// [tags] Resource tags
  /// [templateId] ARM Id of the template resource to use for deploying the vm.
  /// [uuid] Unique ID of the virtual machine.
  /// [virtualMachineName] Name of the VirtualMachine.
  /// [vmName] VMName is the name of VM on the SCVMM server.
  /// [vmmServerId] ARM Id of the vmmServer resource in which this resource resides.
  VirtualMachineArgs({
    this.availabilitySets,
    this.checkpointType,
    this.checkpoints,
    this.cloudId,
    required this.extendedLocation,
    this.generation,
    this.guestAgentProfile,
    this.hardwareProfile,
    this.identity,
    this.inventoryItemId,
    this.location,
    this.networkProfile,
    this.osProfile,
    required this.resourceGroupName,
    this.storageProfile,
    this.tags,
    this.templateId,
    this.uuid,
    this.virtualMachineName,
    this.vmName,
    this.vmmServerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilitySets': ?pulumi.Input.mapOptionalInputValue<List<VirtualMachinePropertiesAvailabilitySets>, List<Map<String, dynamic>>>(availabilitySets, (value) => pulumi.Input.encodeList<VirtualMachinePropertiesAvailabilitySets, Map<String, dynamic>>(value, (value) => value.toMap())),
      'checkpointType': ?checkpointType,
      'checkpoints': ?pulumi.Input.mapOptionalInputValue<List<Checkpoint>, List<Map<String, dynamic>>>(checkpoints, (value) => pulumi.Input.encodeList<Checkpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cloudId': ?cloudId,
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'generation': ?generation,
      'guestAgentProfile': ?pulumi.Input.mapOptionalInputValue<GuestAgentProfile, Map<String, dynamic>>(guestAgentProfile, (value) => value.toMap()),
      'hardwareProfile': ?pulumi.Input.mapOptionalInputValue<HardwareProfile, Map<String, dynamic>>(hardwareProfile, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<Identity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'inventoryItemId': ?inventoryItemId,
      'location': ?location,
      'networkProfile': ?pulumi.Input.mapOptionalInputValue<NetworkProfile, Map<String, dynamic>>(networkProfile, (value) => value.toMap()),
      'osProfile': ?pulumi.Input.mapOptionalInputValue<OsProfile, Map<String, dynamic>>(osProfile, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'storageProfile': ?pulumi.Input.mapOptionalInputValue<StorageProfile, Map<String, dynamic>>(storageProfile, (value) => value.toMap()),
      'tags': ?tags,
      'templateId': ?templateId,
      'uuid': ?uuid,
      'virtualMachineName': ?virtualMachineName,
      'vmName': ?vmName,
      'vmmServerId': ?vmmServerId,
    };
  }

  factory VirtualMachineArgs.fromMap(Map<String, dynamic> map) {
    return VirtualMachineArgs(
      availabilitySets: map['availabilitySets'] == null ? null : (pulumi.Input.decodeList<VirtualMachinePropertiesAvailabilitySets>(map['availabilitySets'], (value) => VirtualMachinePropertiesAvailabilitySets.fromMap((value as Map).cast<String, dynamic>()))).input(),
      checkpointType: map['checkpointType'] == null ? null : (map['checkpointType'] as String).input(),
      checkpoints: map['checkpoints'] == null ? null : (pulumi.Input.decodeList<Checkpoint>(map['checkpoints'], (value) => Checkpoint.fromMap((value as Map).cast<String, dynamic>()))).input(),
      cloudId: map['cloudId'] == null ? null : (map['cloudId'] as String).input(),
      extendedLocation: (ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())).input(),
      generation: map['generation'] == null ? null : (map['generation'] as int).input(),
      guestAgentProfile: map['guestAgentProfile'] == null ? null : (GuestAgentProfile.fromMap((map['guestAgentProfile'] as Map).cast<String, dynamic>())).input(),
      hardwareProfile: map['hardwareProfile'] == null ? null : (HardwareProfile.fromMap((map['hardwareProfile'] as Map).cast<String, dynamic>())).input(),
      identity: map['identity'] == null ? null : (Identity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      inventoryItemId: map['inventoryItemId'] == null ? null : (map['inventoryItemId'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      networkProfile: map['networkProfile'] == null ? null : (NetworkProfile.fromMap((map['networkProfile'] as Map).cast<String, dynamic>())).input(),
      osProfile: map['osProfile'] == null ? null : (OsProfile.fromMap((map['osProfile'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      storageProfile: map['storageProfile'] == null ? null : (StorageProfile.fromMap((map['storageProfile'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      templateId: map['templateId'] == null ? null : (map['templateId'] as String).input(),
      uuid: map['uuid'] == null ? null : (map['uuid'] as String).input(),
      virtualMachineName: map['virtualMachineName'] == null ? null : (map['virtualMachineName'] as String).input(),
      vmName: map['vmName'] == null ? null : (map['vmName'] as String).input(),
      vmmServerId: map['vmmServerId'] == null ? null : (map['vmmServerId'] as String).input(),
    );
  }
}

