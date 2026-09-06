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
  final String? adminUsername;
  /// The cluster availability zone containing this virtual machine.
  final String? availabilityZone;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The resource ID of the bare metal machine that hosts the virtual machine.
  final String? bareMetalMachineId;
  /// Selects the boot method for the virtual machine.
  final String? bootMethod;
  /// The cloud service network that provides platform-level services for the virtual machine.
  final NetworkAttachmentResponse? cloudServicesNetworkAttachment;
  /// The resource ID of the cluster the virtual machine is created for.
  final String? clusterId;
  /// The extended location to use for creation of a VM console resource.
  final ExtendedLocationResponse? consoleExtendedLocation;
  /// The number of CPU cores in the virtual machine.
  final double? cpuCores;
  /// The more detailed status of the virtual machine.
  final String? detailedStatus;
  /// The descriptive message about the current detailed status.
  final String? detailedStatusMessage;
  /// Resource ETag.
  final String? etag;
  /// The extended location of the cluster associated with the resource.
  final ExtendedLocationResponse? extendedLocation;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Field Deprecated, the value will be ignored if provided. The indicator of whether one of the specified CPU cores is isolated to run the emulator thread for this virtual machine.
  final String? isolateEmulatorThread;
  /// The geo-location where the resource lives
  final String? location;
  /// The memory size of the virtual machine. Allocations are measured in gibibytes.
  final double? memorySizeGB;
  /// The name of the resource
  final String? name;
  /// The list of network attachments to the virtual machine.
  final List<NetworkAttachmentResponse>? networkAttachments;
  /// The Base64 encoded cloud-init network data.
  final String? networkData;
  /// The scheduling hints for the virtual machine.
  final List<VirtualMachinePlacementHintResponse>? placementHints;
  /// The power state of the virtual machine.
  final String? powerState;
  /// The provisioning state of the virtual machine.
  final String? provisioningState;
  /// The list of ssh public keys. Each key will be added to the virtual machine using the cloud-init ssh_authorized_keys mechanism for the adminUsername.
  final List<SshPublicKeyResponse>? sshPublicKeys;
  /// The storage profile that specifies size and other parameters about the disks related to the virtual machine.
  final StorageProfileResponse? storageProfile;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// The Base64 encoded cloud-init user data.
  final String? userData;
  /// Field Deprecated, use virtualizationModel instead. The type of the virtio interface.
  final String? virtioInterface;
  /// The type of the device model to use.
  final String? vmDeviceModel;
  /// The virtual machine image that is currently provisioned to the OS disk, using the full url and tag notation used to pull the image.
  final String? vmImage;
  /// The credentials used to login to the image repository that has access to the specified image.
  final ImageRepositoryCredentialsResponse? vmImageRepositoryCredentials;
  /// The resource IDs of volumes that are attached to the virtual machine.
  final List<String>? volumes;

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
    this.adminUsername,
    this.availabilityZone,
    this.azureApiVersion,
    this.bareMetalMachineId,
    String? bootMethod,
    this.cloudServicesNetworkAttachment,
    this.clusterId,
    this.consoleExtendedLocation,
    this.cpuCores,
    this.detailedStatus,
    this.detailedStatusMessage,
    this.etag,
    this.extendedLocation,
    this.id,
    String? isolateEmulatorThread,
    this.location,
    this.memorySizeGB,
    this.name,
    this.networkAttachments,
    this.networkData,
    this.placementHints,
    this.powerState,
    this.provisioningState,
    this.sshPublicKeys,
    this.storageProfile,
    this.systemData,
    this.tags,
    this.type,
    this.userData,
    String? virtioInterface,
    String? vmDeviceModel,
    this.vmImage,
    this.vmImageRepositoryCredentials,
    this.volumes,
  }) : bootMethod = bootMethod ?? 'UEFI', isolateEmulatorThread = isolateEmulatorThread ?? 'True', virtioInterface = virtioInterface ?? 'Modern', vmDeviceModel = vmDeviceModel ?? 'T2';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminUsername': ?adminUsername,
      'availabilityZone': ?availabilityZone,
      'azureApiVersion': ?azureApiVersion,
      'bareMetalMachineId': ?bareMetalMachineId,
      'bootMethod': ?bootMethod,
      'cloudServicesNetworkAttachment': ?cloudServicesNetworkAttachment?.toMap(),
      'clusterId': ?clusterId,
      'consoleExtendedLocation': ?consoleExtendedLocation?.toMap(),
      'cpuCores': ?cpuCores,
      'detailedStatus': ?detailedStatus,
      'detailedStatusMessage': ?detailedStatusMessage,
      'etag': ?etag,
      'extendedLocation': ?extendedLocation?.toMap(),
      'id': ?id,
      'isolateEmulatorThread': ?isolateEmulatorThread,
      'location': ?location,
      'memorySizeGB': ?memorySizeGB,
      'name': ?name,
      'networkAttachments': ?(() { final guardedValue = networkAttachments; if (guardedValue == null) return null; return pulumi.Input.encodeList<NetworkAttachmentResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'networkData': ?networkData,
      'placementHints': ?(() { final guardedValue = placementHints; if (guardedValue == null) return null; return pulumi.Input.encodeList<VirtualMachinePlacementHintResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'powerState': ?powerState,
      'provisioningState': ?provisioningState,
      'sshPublicKeys': ?(() { final guardedValue = sshPublicKeys; if (guardedValue == null) return null; return pulumi.Input.encodeList<SshPublicKeyResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'storageProfile': ?storageProfile?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'userData': ?userData,
      'virtioInterface': ?virtioInterface,
      'vmDeviceModel': ?vmDeviceModel,
      'vmImage': ?vmImage,
      'vmImageRepositoryCredentials': ?vmImageRepositoryCredentials?.toMap(),
      'volumes': ?volumes,
    };
  }

  factory GetVirtualMachineResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineResult(
      adminUsername: (() { final guardedValue = map['adminUsername']; if (guardedValue == null) return null; return guardedValue as String; })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bareMetalMachineId: (() { final guardedValue = map['bareMetalMachineId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bootMethod: (() { final guardedValue = map['bootMethod']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cloudServicesNetworkAttachment: (() { final guardedValue = map['cloudServicesNetworkAttachment']; if (guardedValue == null) return null; return NetworkAttachmentResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      consoleExtendedLocation: (() { final guardedValue = map['consoleExtendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      cpuCores: (() { final guardedValue = map['cpuCores']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      detailedStatus: (() { final guardedValue = map['detailedStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      detailedStatusMessage: (() { final guardedValue = map['detailedStatusMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isolateEmulatorThread: (() { final guardedValue = map['isolateEmulatorThread']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      memorySizeGB: (() { final guardedValue = map['memorySizeGB']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkAttachments: (() { final guardedValue = map['networkAttachments']; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkAttachmentResponse>(guardedValue, (value) => NetworkAttachmentResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      networkData: (() { final guardedValue = map['networkData']; if (guardedValue == null) return null; return guardedValue as String; })(),
      placementHints: (() { final guardedValue = map['placementHints']; if (guardedValue == null) return null; return pulumi.Input.decodeList<VirtualMachinePlacementHintResponse>(guardedValue, (value) => VirtualMachinePlacementHintResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      powerState: (() { final guardedValue = map['powerState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sshPublicKeys: (() { final guardedValue = map['sshPublicKeys']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SshPublicKeyResponse>(guardedValue, (value) => SshPublicKeyResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      storageProfile: (() { final guardedValue = map['storageProfile']; if (guardedValue == null) return null; return StorageProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userData: (() { final guardedValue = map['userData']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtioInterface: (() { final guardedValue = map['virtioInterface']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vmDeviceModel: (() { final guardedValue = map['vmDeviceModel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vmImage: (() { final guardedValue = map['vmImage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vmImageRepositoryCredentials: (() { final guardedValue = map['vmImageRepositoryCredentials']; if (guardedValue == null) return null; return ImageRepositoryCredentialsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      volumes: (() { final guardedValue = map['volumes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
