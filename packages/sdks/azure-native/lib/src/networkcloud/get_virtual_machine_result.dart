// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location_response.dart';
import 'image_repository_credentials_response.dart';
import 'network_attachment_response.dart';
import 'ssh_public_key_response.dart';
import 'storage_profile_response.dart';
import 'system_data_response.dart';
import 'virtual_machine_placement_hint_response.dart';

/// Result data returned by getVirtualMachine.
class GetVirtualMachineResult {
  /// The name of the administrator to which the ssh public keys will be added into the authorized keys.
  final String adminUsername;
  /// The cluster availability zone containing this virtual machine.
  final String availabilityZone;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The resource ID of the bare metal machine that hosts the virtual machine.
  final String bareMetalMachineId;
  /// Selects the boot method for the virtual machine.
  final String? bootMethod;
  /// The cloud service network that provides platform-level services for the virtual machine.
  final NetworkAttachmentResponse cloudServicesNetworkAttachment;
  /// The resource ID of the cluster the virtual machine is created for.
  final String clusterId;
  /// The extended location to use for creation of a VM console resource.
  final ExtendedLocationResponse? consoleExtendedLocation;
  /// The number of CPU cores in the virtual machine.
  final double cpuCores;
  /// The more detailed status of the virtual machine.
  final String detailedStatus;
  /// The descriptive message about the current detailed status.
  final String detailedStatusMessage;
  /// Resource ETag.
  final String etag;
  /// The extended location of the cluster associated with the resource.
  final ExtendedLocationResponse extendedLocation;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Field Deprecated, the value will be ignored if provided. The indicator of whether one of the specified CPU cores is isolated to run the emulator thread for this virtual machine.
  final String? isolateEmulatorThread;
  /// The geo-location where the resource lives
  final String location;
  /// The memory size of the virtual machine. Allocations are measured in gibibytes.
  final double memorySizeGB;
  /// The name of the resource
  final String name;
  /// The list of network attachments to the virtual machine.
  final List<NetworkAttachmentResponse>? networkAttachments;
  /// The Base64 encoded cloud-init network data.
  final String? networkData;
  /// The scheduling hints for the virtual machine.
  final List<VirtualMachinePlacementHintResponse>? placementHints;
  /// The power state of the virtual machine.
  final String powerState;
  /// The provisioning state of the virtual machine.
  final String provisioningState;
  /// The list of ssh public keys. Each key will be added to the virtual machine using the cloud-init ssh_authorized_keys mechanism for the adminUsername.
  final List<SshPublicKeyResponse>? sshPublicKeys;
  /// The storage profile that specifies size and other parameters about the disks related to the virtual machine.
  final StorageProfileResponse storageProfile;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// The Base64 encoded cloud-init user data.
  final String? userData;
  /// Field Deprecated, use virtualizationModel instead. The type of the virtio interface.
  final String? virtioInterface;
  /// The type of the device model to use.
  final String? vmDeviceModel;
  /// The virtual machine image that is currently provisioned to the OS disk, using the full url and tag notation used to pull the image.
  final String vmImage;
  /// The credentials used to login to the image repository that has access to the specified image.
  final ImageRepositoryCredentialsResponse? vmImageRepositoryCredentials;
  /// The resource IDs of volumes that are attached to the virtual machine.
  final List<String> volumes;

  /// Creates a new [GetVirtualMachineResult].
  /// [adminUsername] The name of the administrator to which the ssh public keys will be added into the authorized keys.
  /// [availabilityZone] The cluster availability zone containing this virtual machine.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [bareMetalMachineId] The resource ID of the bare metal machine that hosts the virtual machine.
  /// [bootMethod] Selects the boot method for the virtual machine.
  /// [cloudServicesNetworkAttachment] The cloud service network that provides platform-level services for the virtual machine.
  /// [clusterId] The resource ID of the cluster the virtual machine is created for.
  /// [consoleExtendedLocation] The extended location to use for creation of a VM console resource.
  /// [cpuCores] The number of CPU cores in the virtual machine.
  /// [detailedStatus] The more detailed status of the virtual machine.
  /// [detailedStatusMessage] The descriptive message about the current detailed status.
  /// [etag] Resource ETag.
  /// [extendedLocation] The extended location of the cluster associated with the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [isolateEmulatorThread] Field Deprecated, the value will be ignored if provided. The indicator of whether one of the specified CPU cores is isolated to run the emulator thread for this virtual machine.
  /// [location] The geo-location where the resource lives
  /// [memorySizeGB] The memory size of the virtual machine. Allocations are measured in gibibytes.
  /// [name] The name of the resource
  /// [networkAttachments] The list of network attachments to the virtual machine.
  /// [networkData] The Base64 encoded cloud-init network data.
  /// [placementHints] The scheduling hints for the virtual machine.
  /// [powerState] The power state of the virtual machine.
  /// [provisioningState] The provisioning state of the virtual machine.
  /// [sshPublicKeys] The list of ssh public keys. Each key will be added to the virtual machine using the cloud-init ssh_authorized_keys mechanism for the adminUsername.
  /// [storageProfile] The storage profile that specifies size and other parameters about the disks related to the virtual machine.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [userData] The Base64 encoded cloud-init user data.
  /// [virtioInterface] Field Deprecated, use virtualizationModel instead. The type of the virtio interface.
  /// [vmDeviceModel] The type of the device model to use.
  /// [vmImage] The virtual machine image that is currently provisioned to the OS disk, using the full url and tag notation used to pull the image.
  /// [vmImageRepositoryCredentials] The credentials used to login to the image repository that has access to the specified image.
  /// [volumes] The resource IDs of volumes that are attached to the virtual machine.
  GetVirtualMachineResult({
    required this.adminUsername,
    required this.availabilityZone,
    required this.azureApiVersion,
    required this.bareMetalMachineId,
    this.bootMethod,
    required this.cloudServicesNetworkAttachment,
    required this.clusterId,
    this.consoleExtendedLocation,
    required this.cpuCores,
    required this.detailedStatus,
    required this.detailedStatusMessage,
    required this.etag,
    required this.extendedLocation,
    required this.id,
    this.isolateEmulatorThread,
    required this.location,
    required this.memorySizeGB,
    required this.name,
    this.networkAttachments,
    this.networkData,
    this.placementHints,
    required this.powerState,
    required this.provisioningState,
    this.sshPublicKeys,
    required this.storageProfile,
    required this.systemData,
    this.tags,
    required this.type,
    this.userData,
    this.virtioInterface,
    this.vmDeviceModel,
    required this.vmImage,
    this.vmImageRepositoryCredentials,
    required this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminUsername': adminUsername,
      'availabilityZone': availabilityZone,
      'azureApiVersion': azureApiVersion,
      'bareMetalMachineId': bareMetalMachineId,
      'bootMethod': ?bootMethod,
      'cloudServicesNetworkAttachment': cloudServicesNetworkAttachment.toMap(),
      'clusterId': clusterId,
      'consoleExtendedLocation': ?consoleExtendedLocation == null ? null : consoleExtendedLocation!.toMap(),
      'cpuCores': cpuCores,
      'detailedStatus': detailedStatus,
      'detailedStatusMessage': detailedStatusMessage,
      'etag': etag,
      'extendedLocation': extendedLocation.toMap(),
      'id': id,
      'isolateEmulatorThread': ?isolateEmulatorThread,
      'location': location,
      'memorySizeGB': memorySizeGB,
      'name': name,
      'networkAttachments': ?networkAttachments == null ? null : pulumi.Input.encodeList<NetworkAttachmentResponse, Map<String, dynamic>>(networkAttachments!, (value) => value.toMap()),
      'networkData': ?networkData,
      'placementHints': ?placementHints == null ? null : pulumi.Input.encodeList<VirtualMachinePlacementHintResponse, Map<String, dynamic>>(placementHints!, (value) => value.toMap()),
      'powerState': powerState,
      'provisioningState': provisioningState,
      'sshPublicKeys': ?sshPublicKeys == null ? null : pulumi.Input.encodeList<SshPublicKeyResponse, Map<String, dynamic>>(sshPublicKeys!, (value) => value.toMap()),
      'storageProfile': storageProfile.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'userData': ?userData,
      'virtioInterface': ?virtioInterface,
      'vmDeviceModel': ?vmDeviceModel,
      'vmImage': vmImage,
      'vmImageRepositoryCredentials': ?vmImageRepositoryCredentials == null ? null : vmImageRepositoryCredentials!.toMap(),
      'volumes': volumes,
    };
  }

  factory GetVirtualMachineResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineResult(
      adminUsername: map['adminUsername'] as String,
      availabilityZone: map['availabilityZone'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      bareMetalMachineId: map['bareMetalMachineId'] as String,
      bootMethod: map['bootMethod'] == null ? null : map['bootMethod'] as String,
      cloudServicesNetworkAttachment: NetworkAttachmentResponse.fromMap((map['cloudServicesNetworkAttachment'] as Map).cast<String, dynamic>()),
      clusterId: map['clusterId'] as String,
      consoleExtendedLocation: map['consoleExtendedLocation'] == null ? null : ExtendedLocationResponse.fromMap((map['consoleExtendedLocation'] as Map).cast<String, dynamic>()),
      cpuCores: map['cpuCores'] as double,
      detailedStatus: map['detailedStatus'] as String,
      detailedStatusMessage: map['detailedStatusMessage'] as String,
      etag: map['etag'] as String,
      extendedLocation: ExtendedLocationResponse.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      isolateEmulatorThread: map['isolateEmulatorThread'] == null ? null : map['isolateEmulatorThread'] as String,
      location: map['location'] as String,
      memorySizeGB: map['memorySizeGB'] as double,
      name: map['name'] as String,
      networkAttachments: map['networkAttachments'] == null ? null : pulumi.Input.decodeList<NetworkAttachmentResponse>(map['networkAttachments'], (value) => NetworkAttachmentResponse.fromMap((value as Map).cast<String, dynamic>())),
      networkData: map['networkData'] == null ? null : map['networkData'] as String,
      placementHints: map['placementHints'] == null ? null : pulumi.Input.decodeList<VirtualMachinePlacementHintResponse>(map['placementHints'], (value) => VirtualMachinePlacementHintResponse.fromMap((value as Map).cast<String, dynamic>())),
      powerState: map['powerState'] as String,
      provisioningState: map['provisioningState'] as String,
      sshPublicKeys: map['sshPublicKeys'] == null ? null : pulumi.Input.decodeList<SshPublicKeyResponse>(map['sshPublicKeys'], (value) => SshPublicKeyResponse.fromMap((value as Map).cast<String, dynamic>())),
      storageProfile: StorageProfileResponse.fromMap((map['storageProfile'] as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      userData: map['userData'] == null ? null : map['userData'] as String,
      virtioInterface: map['virtioInterface'] == null ? null : map['virtioInterface'] as String,
      vmDeviceModel: map['vmDeviceModel'] == null ? null : map['vmDeviceModel'] as String,
      vmImage: map['vmImage'] as String,
      vmImageRepositoryCredentials: map['vmImageRepositoryCredentials'] == null ? null : ImageRepositoryCredentialsResponse.fromMap((map['vmImageRepositoryCredentials'] as Map).cast<String, dynamic>()),
      volumes: (map['volumes'] as List).cast<String>(),
    );
  }
}

