// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';
import 'image_repository_credentials.dart';
import 'network_attachment.dart';
import 'ssh_public_key.dart';
import 'storage_profile.dart';
import 'virtual_machine_placement_hint.dart';

/// {@template pulumi_networkcloud_virtual_machine_args_doc}
/// The set of arguments for VirtualMachine.
/// {@endtemplate}
/// {@macro pulumi_networkcloud_virtual_machine_args_doc}
class VirtualMachineArgs {
  /// The name of the administrator to which the ssh public keys will be added into the authorized keys.
  final pulumi.Input<String> adminUsername;
  /// Selects the boot method for the virtual machine.
  final pulumi.Input<String>? bootMethod;
  /// The cloud service network that provides platform-level services for the virtual machine.
  final pulumi.Input<NetworkAttachment> cloudServicesNetworkAttachment;
  /// The extended location to use for creation of a VM console resource.
  final pulumi.Input<ExtendedLocation>? consoleExtendedLocation;
  /// The number of CPU cores in the virtual machine.
  final pulumi.Input<double> cpuCores;
  /// The extended location of the cluster associated with the resource.
  final pulumi.Input<ExtendedLocation> extendedLocation;
  /// Field Deprecated, the value will be ignored if provided. The indicator of whether one of the specified CPU cores is isolated to run the emulator thread for this virtual machine.
  final pulumi.Input<String>? isolateEmulatorThread;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The memory size of the virtual machine. Allocations are measured in gibibytes.
  final pulumi.Input<double> memorySizeGB;
  /// The list of network attachments to the virtual machine.
  final pulumi.Input<List<NetworkAttachment>>? networkAttachments;
  /// The Base64 encoded cloud-init network data.
  final pulumi.Input<String>? networkData;
  /// The scheduling hints for the virtual machine.
  final pulumi.Input<List<VirtualMachinePlacementHint>>? placementHints;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The list of ssh public keys. Each key will be added to the virtual machine using the cloud-init ssh_authorized_keys mechanism for the adminUsername.
  final pulumi.Input<List<SshPublicKey>>? sshPublicKeys;
  /// The storage profile that specifies size and other parameters about the disks related to the virtual machine.
  final pulumi.Input<StorageProfile> storageProfile;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Base64 encoded cloud-init user data.
  final pulumi.Input<String>? userData;
  /// Field Deprecated, use virtualizationModel instead. The type of the virtio interface.
  final pulumi.Input<String>? virtioInterface;
  /// The name of the virtual machine.
  final pulumi.Input<String>? virtualMachineName;
  /// The type of the device model to use.
  final pulumi.Input<String>? vmDeviceModel;
  /// The virtual machine image that is currently provisioned to the OS disk, using the full url and tag notation used to pull the image.
  final pulumi.Input<String> vmImage;
  /// The credentials used to login to the image repository that has access to the specified image.
  final pulumi.Input<ImageRepositoryCredentials>? vmImageRepositoryCredentials;

  /// Creates a new [VirtualMachineArgs].
  /// [adminUsername] The name of the administrator to which the ssh public keys will be added into the authorized keys.
  /// [bootMethod] Selects the boot method for the virtual machine.
  /// [cloudServicesNetworkAttachment] The cloud service network that provides platform-level services for the virtual machine.
  /// [consoleExtendedLocation] The extended location to use for creation of a VM console resource.
  /// [cpuCores] The number of CPU cores in the virtual machine.
  /// [extendedLocation] The extended location of the cluster associated with the resource.
  /// [isolateEmulatorThread] Field Deprecated, the value will be ignored if provided. The indicator of whether one of the specified CPU cores is isolated to run the emulator thread for this virtual machine.
  /// [location] The geo-location where the resource lives
  /// [memorySizeGB] The memory size of the virtual machine. Allocations are measured in gibibytes.
  /// [networkAttachments] The list of network attachments to the virtual machine.
  /// [networkData] The Base64 encoded cloud-init network data.
  /// [placementHints] The scheduling hints for the virtual machine.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sshPublicKeys] The list of ssh public keys. Each key will be added to the virtual machine using the cloud-init ssh_authorized_keys mechanism for the adminUsername.
  /// [storageProfile] The storage profile that specifies size and other parameters about the disks related to the virtual machine.
  /// [tags] Resource tags.
  /// [userData] The Base64 encoded cloud-init user data.
  /// [virtioInterface] Field Deprecated, use virtualizationModel instead. The type of the virtio interface.
  /// [virtualMachineName] The name of the virtual machine.
  /// [vmDeviceModel] The type of the device model to use.
  /// [vmImage] The virtual machine image that is currently provisioned to the OS disk, using the full url and tag notation used to pull the image.
  /// [vmImageRepositoryCredentials] The credentials used to login to the image repository that has access to the specified image.
  VirtualMachineArgs({
    required pulumi.Output<String> adminUsername,
    pulumi.Output<String>? bootMethod,
    required pulumi.Output<NetworkAttachment> cloudServicesNetworkAttachment,
    pulumi.Output<ExtendedLocation>? consoleExtendedLocation,
    required pulumi.Output<double> cpuCores,
    required pulumi.Output<ExtendedLocation> extendedLocation,
    pulumi.Output<String>? isolateEmulatorThread,
    pulumi.Output<String>? location,
    required pulumi.Output<double> memorySizeGB,
    pulumi.Output<List<NetworkAttachment>>? networkAttachments,
    pulumi.Output<String>? networkData,
    pulumi.Output<List<VirtualMachinePlacementHint>>? placementHints,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<List<SshPublicKey>>? sshPublicKeys,
    required pulumi.Output<StorageProfile> storageProfile,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? userData,
    pulumi.Output<String>? virtioInterface,
    pulumi.Output<String>? virtualMachineName,
    pulumi.Output<String>? vmDeviceModel,
    required pulumi.Output<String> vmImage,
    pulumi.Output<ImageRepositoryCredentials>? vmImageRepositoryCredentials,
  }) :
      adminUsername = pulumi.Input.asInput<String>(adminUsername),
      bootMethod = pulumi.Input.asOptionalInput<String>(bootMethod),
      cloudServicesNetworkAttachment = pulumi.Input.asInput<NetworkAttachment>(cloudServicesNetworkAttachment),
      consoleExtendedLocation = pulumi.Input.asOptionalInput<ExtendedLocation>(consoleExtendedLocation),
      cpuCores = pulumi.Input.asInput<double>(cpuCores),
      extendedLocation = pulumi.Input.asInput<ExtendedLocation>(extendedLocation),
      isolateEmulatorThread = pulumi.Input.asOptionalInput<String>(isolateEmulatorThread),
      location = pulumi.Input.asOptionalInput<String>(location),
      memorySizeGB = pulumi.Input.asInput<double>(memorySizeGB),
      networkAttachments = pulumi.Input.asOptionalInput<List<NetworkAttachment>>(networkAttachments),
      networkData = pulumi.Input.asOptionalInput<String>(networkData),
      placementHints = pulumi.Input.asOptionalInput<List<VirtualMachinePlacementHint>>(placementHints),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sshPublicKeys = pulumi.Input.asOptionalInput<List<SshPublicKey>>(sshPublicKeys),
      storageProfile = pulumi.Input.asInput<StorageProfile>(storageProfile),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      userData = pulumi.Input.asOptionalInput<String>(userData),
      virtioInterface = pulumi.Input.asOptionalInput<String>(virtioInterface),
      virtualMachineName = pulumi.Input.asOptionalInput<String>(virtualMachineName),
      vmDeviceModel = pulumi.Input.asOptionalInput<String>(vmDeviceModel),
      vmImage = pulumi.Input.asInput<String>(vmImage),
      vmImageRepositoryCredentials = pulumi.Input.asOptionalInput<ImageRepositoryCredentials>(vmImageRepositoryCredentials);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminUsername': adminUsername,
      'bootMethod': ?bootMethod,
      'cloudServicesNetworkAttachment': pulumi.Input.mapInputValue<NetworkAttachment, Map<String, dynamic>>(cloudServicesNetworkAttachment, (value) => value.toMap()),
      'consoleExtendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(consoleExtendedLocation, (value) => value.toMap()),
      'cpuCores': cpuCores,
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'isolateEmulatorThread': ?isolateEmulatorThread,
      'location': ?location,
      'memorySizeGB': memorySizeGB,
      'networkAttachments': ?pulumi.Input.mapOptionalInputValue<List<NetworkAttachment>, List<Map<String, dynamic>>>(networkAttachments, (value) => pulumi.Input.encodeList<NetworkAttachment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkData': ?networkData,
      'placementHints': ?pulumi.Input.mapOptionalInputValue<List<VirtualMachinePlacementHint>, List<Map<String, dynamic>>>(placementHints, (value) => pulumi.Input.encodeList<VirtualMachinePlacementHint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'sshPublicKeys': ?pulumi.Input.mapOptionalInputValue<List<SshPublicKey>, List<Map<String, dynamic>>>(sshPublicKeys, (value) => pulumi.Input.encodeList<SshPublicKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageProfile': pulumi.Input.mapInputValue<StorageProfile, Map<String, dynamic>>(storageProfile, (value) => value.toMap()),
      'tags': ?tags,
      'userData': ?userData,
      'virtioInterface': ?virtioInterface,
      'virtualMachineName': ?virtualMachineName,
      'vmDeviceModel': ?vmDeviceModel,
      'vmImage': vmImage,
      'vmImageRepositoryCredentials': ?pulumi.Input.mapOptionalInputValue<ImageRepositoryCredentials, Map<String, dynamic>>(vmImageRepositoryCredentials, (value) => value.toMap()),
    };
  }

  factory VirtualMachineArgs.fromMap(Map<String, dynamic> map) {
    return VirtualMachineArgs(
      adminUsername: pulumi.Output.create<String>(map['adminUsername'] as String),
      bootMethod: map['bootMethod'] == null ? null : pulumi.Output.create<String>(map['bootMethod'] as String),
      cloudServicesNetworkAttachment: pulumi.Output.create<NetworkAttachment>(NetworkAttachment.fromMap((map['cloudServicesNetworkAttachment'] as Map).cast<String, dynamic>())),
      consoleExtendedLocation: map['consoleExtendedLocation'] == null ? null : pulumi.Output.create<ExtendedLocation>(ExtendedLocation.fromMap((map['consoleExtendedLocation'] as Map).cast<String, dynamic>())),
      cpuCores: pulumi.Output.create<double>(map['cpuCores'] as double),
      extendedLocation: pulumi.Output.create<ExtendedLocation>(ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      isolateEmulatorThread: map['isolateEmulatorThread'] == null ? null : pulumi.Output.create<String>(map['isolateEmulatorThread'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      memorySizeGB: pulumi.Output.create<double>(map['memorySizeGB'] as double),
      networkAttachments: map['networkAttachments'] == null ? null : pulumi.Output.create<List<NetworkAttachment>>(pulumi.Input.decodeList<NetworkAttachment>(map['networkAttachments'], (value) => NetworkAttachment.fromMap((value as Map).cast<String, dynamic>()))),
      networkData: map['networkData'] == null ? null : pulumi.Output.create<String>(map['networkData'] as String),
      placementHints: map['placementHints'] == null ? null : pulumi.Output.create<List<VirtualMachinePlacementHint>>(pulumi.Input.decodeList<VirtualMachinePlacementHint>(map['placementHints'], (value) => VirtualMachinePlacementHint.fromMap((value as Map).cast<String, dynamic>()))),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sshPublicKeys: map['sshPublicKeys'] == null ? null : pulumi.Output.create<List<SshPublicKey>>(pulumi.Input.decodeList<SshPublicKey>(map['sshPublicKeys'], (value) => SshPublicKey.fromMap((value as Map).cast<String, dynamic>()))),
      storageProfile: pulumi.Output.create<StorageProfile>(StorageProfile.fromMap((map['storageProfile'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      userData: map['userData'] == null ? null : pulumi.Output.create<String>(map['userData'] as String),
      virtioInterface: map['virtioInterface'] == null ? null : pulumi.Output.create<String>(map['virtioInterface'] as String),
      virtualMachineName: map['virtualMachineName'] == null ? null : pulumi.Output.create<String>(map['virtualMachineName'] as String),
      vmDeviceModel: map['vmDeviceModel'] == null ? null : pulumi.Output.create<String>(map['vmDeviceModel'] as String),
      vmImage: pulumi.Output.create<String>(map['vmImage'] as String),
      vmImageRepositoryCredentials: map['vmImageRepositoryCredentials'] == null ? null : pulumi.Output.create<ImageRepositoryCredentials>(ImageRepositoryCredentials.fromMap((map['vmImageRepositoryCredentials'] as Map).cast<String, dynamic>())),
    );
  }
}

