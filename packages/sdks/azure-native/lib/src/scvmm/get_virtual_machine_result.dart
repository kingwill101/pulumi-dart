// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'checkpoint_response.dart';
import 'extended_location_response.dart';
import 'guest_agent_profile_response.dart';
import 'hardware_profile_response.dart';
import 'identity_response.dart';
import 'network_profile_response.dart';
import 'os_profile_response.dart';
import 'storage_profile_response.dart';
import 'system_data_response.dart';
import 'virtual_machine_properties_response_availability_sets.dart';

/// Result data returned by getVirtualMachine.
class GetVirtualMachineResult {
  /// Availability Sets in vm.
  final List<VirtualMachinePropertiesResponseAvailabilitySets>? availabilitySets;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Type of checkpoint supported for the vm.
  final String? checkpointType;
  /// Checkpoints in the vm.
  final List<CheckpointResponse>? checkpoints;
  /// ARM Id of the cloud resource to use for deploying the vm.
  final String? cloudId;
  /// The extended location.
  final ExtendedLocationResponse extendedLocation;
  /// Gets or sets the generation for the vm.
  final int? generation;
  /// Guest agent status properties.
  final GuestAgentProfileResponse? guestAgentProfile;
  /// Hardware properties.
  final HardwareProfileResponse? hardwareProfile;
  /// Resource Id
  final String id;
  /// The identity of the resource.
  final IdentityResponse? identity;
  /// Gets or sets the inventory Item ID for the resource.
  final String? inventoryItemId;
  /// Last restored checkpoint in the vm.
  final CheckpointResponse lastRestoredVMCheckpoint;
  /// Gets or sets the location.
  final String location;
  /// Resource Name
  final String name;
  /// Network properties.
  final NetworkProfileResponse? networkProfile;
  /// OS properties.
  final OsProfileResponse? osProfile;
  /// Gets the power state of the virtual machine.
  final String powerState;
  /// Gets or sets the provisioning state.
  final String provisioningState;
  /// Storage properties.
  final StorageProfileResponse? storageProfile;
  /// The system data.
  final SystemDataResponse systemData;
  /// Resource tags
  final Map<String, String>? tags;
  /// ARM Id of the template resource to use for deploying the vm.
  final String? templateId;
  /// Resource Type
  final String type;
  /// Unique ID of the virtual machine.
  final String? uuid;
  /// VMName is the name of VM on the SCVMM server.
  final String? vmName;
  /// ARM Id of the vmmServer resource in which this resource resides.
  final String? vmmServerId;

  /// Creates a new [GetVirtualMachineResult].
  /// [availabilitySets] Availability Sets in vm.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [checkpointType] Type of checkpoint supported for the vm.
  /// [checkpoints] Checkpoints in the vm.
  /// [cloudId] ARM Id of the cloud resource to use for deploying the vm.
  /// [extendedLocation] The extended location.
  /// [generation] Gets or sets the generation for the vm.
  /// [guestAgentProfile] Guest agent status properties.
  /// [hardwareProfile] Hardware properties.
  /// [id] Resource Id
  /// [identity] The identity of the resource.
  /// [inventoryItemId] Gets or sets the inventory Item ID for the resource.
  /// [lastRestoredVMCheckpoint] Last restored checkpoint in the vm.
  /// [location] Gets or sets the location.
  /// [name] Resource Name
  /// [networkProfile] Network properties.
  /// [osProfile] OS properties.
  /// [powerState] Gets the power state of the virtual machine.
  /// [provisioningState] Gets or sets the provisioning state.
  /// [storageProfile] Storage properties.
  /// [systemData] The system data.
  /// [tags] Resource tags
  /// [templateId] ARM Id of the template resource to use for deploying the vm.
  /// [type] Resource Type
  /// [uuid] Unique ID of the virtual machine.
  /// [vmName] VMName is the name of VM on the SCVMM server.
  /// [vmmServerId] ARM Id of the vmmServer resource in which this resource resides.
  GetVirtualMachineResult({
    this.availabilitySets,
    required this.azureApiVersion,
    this.checkpointType,
    this.checkpoints,
    this.cloudId,
    required this.extendedLocation,
    this.generation,
    this.guestAgentProfile,
    this.hardwareProfile,
    required this.id,
    this.identity,
    this.inventoryItemId,
    required this.lastRestoredVMCheckpoint,
    required this.location,
    required this.name,
    this.networkProfile,
    this.osProfile,
    required this.powerState,
    required this.provisioningState,
    this.storageProfile,
    required this.systemData,
    this.tags,
    this.templateId,
    required this.type,
    this.uuid,
    this.vmName,
    this.vmmServerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilitySets': ?availabilitySets == null ? null : pulumi.Input.encodeList<VirtualMachinePropertiesResponseAvailabilitySets, Map<String, dynamic>>(availabilitySets!, (value) => value.toMap()),
      'azureApiVersion': azureApiVersion,
      'checkpointType': ?checkpointType,
      'checkpoints': ?checkpoints == null ? null : pulumi.Input.encodeList<CheckpointResponse, Map<String, dynamic>>(checkpoints!, (value) => value.toMap()),
      'cloudId': ?cloudId,
      'extendedLocation': extendedLocation.toMap(),
      'generation': ?generation,
      'guestAgentProfile': ?guestAgentProfile == null ? null : guestAgentProfile!.toMap(),
      'hardwareProfile': ?hardwareProfile == null ? null : hardwareProfile!.toMap(),
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'inventoryItemId': ?inventoryItemId,
      'lastRestoredVMCheckpoint': lastRestoredVMCheckpoint.toMap(),
      'location': location,
      'name': name,
      'networkProfile': ?networkProfile == null ? null : networkProfile!.toMap(),
      'osProfile': ?osProfile == null ? null : osProfile!.toMap(),
      'powerState': powerState,
      'provisioningState': provisioningState,
      'storageProfile': ?storageProfile == null ? null : storageProfile!.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'templateId': ?templateId,
      'type': type,
      'uuid': ?uuid,
      'vmName': ?vmName,
      'vmmServerId': ?vmmServerId,
    };
  }

  factory GetVirtualMachineResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineResult(
      availabilitySets: map['availabilitySets'] == null ? null : pulumi.Input.decodeList<VirtualMachinePropertiesResponseAvailabilitySets>(map['availabilitySets']!, (value) => VirtualMachinePropertiesResponseAvailabilitySets.fromMap((value as Map).cast<String, dynamic>())),
      azureApiVersion: map['azureApiVersion'] as String,
      checkpointType: map['checkpointType'] == null ? null : map['checkpointType']! as String,
      checkpoints: map['checkpoints'] == null ? null : pulumi.Input.decodeList<CheckpointResponse>(map['checkpoints']!, (value) => CheckpointResponse.fromMap((value as Map).cast<String, dynamic>())),
      cloudId: map['cloudId'] == null ? null : map['cloudId']! as String,
      extendedLocation: ExtendedLocationResponse.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      generation: map['generation'] == null ? null : map['generation']! as int,
      guestAgentProfile: map['guestAgentProfile'] == null ? null : GuestAgentProfileResponse.fromMap((map['guestAgentProfile']! as Map).cast<String, dynamic>()),
      hardwareProfile: map['hardwareProfile'] == null ? null : HardwareProfileResponse.fromMap((map['hardwareProfile']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      identity: map['identity'] == null ? null : IdentityResponse.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      inventoryItemId: map['inventoryItemId'] == null ? null : map['inventoryItemId']! as String,
      lastRestoredVMCheckpoint: CheckpointResponse.fromMap((map['lastRestoredVMCheckpoint'] as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      name: map['name'] as String,
      networkProfile: map['networkProfile'] == null ? null : NetworkProfileResponse.fromMap((map['networkProfile']! as Map).cast<String, dynamic>()),
      osProfile: map['osProfile'] == null ? null : OsProfileResponse.fromMap((map['osProfile']! as Map).cast<String, dynamic>()),
      powerState: map['powerState'] as String,
      provisioningState: map['provisioningState'] as String,
      storageProfile: map['storageProfile'] == null ? null : StorageProfileResponse.fromMap((map['storageProfile']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      templateId: map['templateId'] == null ? null : map['templateId']! as String,
      type: map['type'] as String,
      uuid: map['uuid'] == null ? null : map['uuid']! as String,
      vmName: map['vmName'] == null ? null : map['vmName']! as String,
      vmmServerId: map['vmmServerId'] == null ? null : map['vmmServerId']! as String,
    );
  }
}

