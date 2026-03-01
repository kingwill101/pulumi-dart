// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_additional_capabilities.dart';
import 'virtual_machine_boot_diagnostics.dart';
import 'virtual_machine_identity.dart';
import 'virtual_machine_os_profile.dart';
import 'virtual_machine_os_profile_linux_config.dart';
import 'virtual_machine_os_profile_secret.dart';
import 'virtual_machine_os_profile_windows_config.dart';
import 'virtual_machine_plan.dart';
import 'virtual_machine_storage_data_disk.dart';
import 'virtual_machine_storage_image_reference.dart';
import 'virtual_machine_storage_os_disk.dart';

/// Input properties used for looking up and filtering VirtualMachine resources.
class VirtualMachineState {
  /// An `additional_capabilities` block as defined below.
  final pulumi.Input<VirtualMachineAdditionalCapabilities>? additionalCapabilities;
  /// The ID of the Availability Set in which the Virtual Machine should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? availabilitySetId;
  /// A `boot_diagnostics` block as defined below.
  final pulumi.Input<VirtualMachineBootDiagnostics>? bootDiagnostics;
  /// Should the Data Disks (either the Managed Disks / VHD Blobs) be deleted when the Virtual Machine is destroyed? Defaults to `false`.
  ///
  /// > **Note:** This setting works when instance is deleted via the provider only and don't forget to delete disks manually if you deleted VM manually. It can increase spending.
  final pulumi.Input<bool>? deleteDataDisksOnTermination;
  /// Should the OS Disk (either the Managed Disk / VHD Blob) be deleted when the Virtual Machine is destroyed? Defaults to `false`.
  ///
  /// > **Note:** This setting works when instance is deleted via the provider only and don't forget to delete disks manually if you deleted VM manually. It can increase spending.
  final pulumi.Input<bool>? deleteOsDiskOnTermination;
  /// An `identity` block as defined below.
  final pulumi.Input<VirtualMachineIdentity>? identity;
  /// Specifies the BYOL Type for this Virtual Machine. This is only applicable to Windows Virtual Machines. Possible values are `Windows_Client` and `Windows_Server`.
  final pulumi.Input<String>? licenseType;
  /// Specifies the Azure Region where the Virtual Machine exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A list of Network Interface IDs which should be associated with the Virtual Machine.
  final pulumi.Input<List<String>>? networkInterfaceIds;
  /// An `os_profile` block as defined below. Required when `create_option` in the `storage_os_disk` block is set to `FromImage`.
  final pulumi.Input<VirtualMachineOsProfile>? osProfile;
  /// (Required, when a Linux machine) An `os_profile_linux_config` block as defined below.
  final pulumi.Input<VirtualMachineOsProfileLinuxConfig>? osProfileLinuxConfig;
  /// One or more `os_profile_secrets` blocks as defined below.
  final pulumi.Input<List<VirtualMachineOsProfileSecret>>? osProfileSecrets;
  /// (Required, when a Windows machine) An `os_profile_windows_config` block as defined below.
  final pulumi.Input<VirtualMachineOsProfileWindowsConfig>? osProfileWindowsConfig;
  /// A `plan` block as defined below.
  final pulumi.Input<VirtualMachinePlan>? plan;
  /// The ID of the Network Interface (which must be attached to the Virtual Machine) which should be the Primary Network Interface for this Virtual Machine.
  final pulumi.Input<String>? primaryNetworkInterfaceId;
  /// The ID of the Proximity Placement Group to which this Virtual Machine should be assigned. Changing this forces a new resource to be created
  final pulumi.Input<String>? proximityPlacementGroupId;
  /// Specifies the name of the Resource Group in which the Virtual Machine should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// One or more `storage_data_disk` blocks as defined below.
  ///
  /// > **Please Note:** Data Disks can also be attached either using this block or the `azure.compute.DataDiskAttachment` resource - but not both.
  final pulumi.Input<List<VirtualMachineStorageDataDisk>>? storageDataDisks;
  /// A `storage_image_reference` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<VirtualMachineStorageImageReference>? storageImageReference;
  /// A `storage_os_disk` block as defined below.
  final pulumi.Input<VirtualMachineStorageOsDisk>? storageOsDisk;
  /// A mapping of tags to assign to the Virtual Machine.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the [size of the Virtual Machine](https://docs.microsoft.com/azure/virtual-machines/sizes-general). See also [Azure VM Naming Conventions](https://docs.microsoft.com/azure/virtual-machines/vm-naming-conventions).
  final pulumi.Input<String>? vmSize;
  /// A list of a single item of the Availability Zone which the Virtual Machine should be allocated in. Changing this forces a new resource to be created.
  ///
  /// > **Please Note:** Availability Zones are [only supported in several regions at this time](https://docs.microsoft.com/azure/availability-zones/az-overview).
  ///
  /// For more information on the different example configurations, please check out the [Azure documentation](https://docs.microsoft.com/en-gb/rest/api/compute/virtualmachines/createorupdate#examples)
  final pulumi.Input<String>? zones;

  /// Creates a new [VirtualMachineState].
  /// [additionalCapabilities] An `additional_capabilities` block as defined below.
  /// [availabilitySetId] The ID of the Availability Set in which the Virtual Machine should exist. Changing this forces a new resource to be created.
  /// [bootDiagnostics] A `boot_diagnostics` block as defined below.
  /// [deleteDataDisksOnTermination] Should the Data Disks (either the Managed Disks / VHD Blobs) be deleted when the Virtual Machine is destroyed? Defaults to `false`.
  /// [deleteOsDiskOnTermination] Should the OS Disk (either the Managed Disk / VHD Blob) be deleted when the Virtual Machine is destroyed? Defaults to `false`.
  /// [identity] An `identity` block as defined below.
  /// [licenseType] Specifies the BYOL Type for this Virtual Machine. This is only applicable to Windows Virtual Machines. Possible values are `Windows_Client` and `Windows_Server`.
  /// [location] Specifies the Azure Region where the Virtual Machine exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Virtual Machine. Changing this forces a new resource to be created.
  /// [networkInterfaceIds] A list of Network Interface IDs which should be associated with the Virtual Machine.
  /// [osProfile] An `os_profile` block as defined below. Required when `create_option` in the `storage_os_disk` block is set to `FromImage`.
  /// [osProfileLinuxConfig] (Required, when a Linux machine) An `os_profile_linux_config` block as defined below.
  /// [osProfileSecrets] One or more `os_profile_secrets` blocks as defined below.
  /// [osProfileWindowsConfig] (Required, when a Windows machine) An `os_profile_windows_config` block as defined below.
  /// [plan] A `plan` block as defined below.
  /// [primaryNetworkInterfaceId] The ID of the Network Interface (which must be attached to the Virtual Machine) which should be the Primary Network Interface for this Virtual Machine.
  /// [proximityPlacementGroupId] The ID of the Proximity Placement Group to which this Virtual Machine should be assigned. Changing this forces a new resource to be created
  /// [resourceGroupName] Specifies the name of the Resource Group in which the Virtual Machine should exist. Changing this forces a new resource to be created.
  /// [storageDataDisks] One or more `storage_data_disk` blocks as defined below.
  /// [storageImageReference] A `storage_image_reference` block as defined below. Changing this forces a new resource to be created.
  /// [storageOsDisk] A `storage_os_disk` block as defined below.
  /// [tags] A mapping of tags to assign to the Virtual Machine.
  /// [vmSize] Specifies the [size of the Virtual Machine](https://docs.microsoft.com/azure/virtual-machines/sizes-general). See also [Azure VM Naming Conventions](https://docs.microsoft.com/azure/virtual-machines/vm-naming-conventions).
  /// [zones] A list of a single item of the Availability Zone which the Virtual Machine should be allocated in. Changing this forces a new resource to be created.
  VirtualMachineState({
    pulumi.Output<VirtualMachineAdditionalCapabilities>? additionalCapabilities,
    pulumi.Output<String>? availabilitySetId,
    pulumi.Output<VirtualMachineBootDiagnostics>? bootDiagnostics,
    pulumi.Output<bool>? deleteDataDisksOnTermination,
    pulumi.Output<bool>? deleteOsDiskOnTermination,
    pulumi.Output<VirtualMachineIdentity>? identity,
    pulumi.Output<String>? licenseType,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? networkInterfaceIds,
    pulumi.Output<VirtualMachineOsProfile>? osProfile,
    pulumi.Output<VirtualMachineOsProfileLinuxConfig>? osProfileLinuxConfig,
    pulumi.Output<List<VirtualMachineOsProfileSecret>>? osProfileSecrets,
    pulumi.Output<VirtualMachineOsProfileWindowsConfig>? osProfileWindowsConfig,
    pulumi.Output<VirtualMachinePlan>? plan,
    pulumi.Output<String>? primaryNetworkInterfaceId,
    pulumi.Output<String>? proximityPlacementGroupId,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<List<VirtualMachineStorageDataDisk>>? storageDataDisks,
    pulumi.Output<VirtualMachineStorageImageReference>? storageImageReference,
    pulumi.Output<VirtualMachineStorageOsDisk>? storageOsDisk,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vmSize,
    pulumi.Output<String>? zones,
  }) :
      additionalCapabilities = pulumi.Input.asOptionalInput<VirtualMachineAdditionalCapabilities>(additionalCapabilities),
      availabilitySetId = pulumi.Input.asOptionalInput<String>(availabilitySetId),
      bootDiagnostics = pulumi.Input.asOptionalInput<VirtualMachineBootDiagnostics>(bootDiagnostics),
      deleteDataDisksOnTermination = pulumi.Input.asOptionalInput<bool>(deleteDataDisksOnTermination),
      deleteOsDiskOnTermination = pulumi.Input.asOptionalInput<bool>(deleteOsDiskOnTermination),
      identity = pulumi.Input.asOptionalInput<VirtualMachineIdentity>(identity),
      licenseType = pulumi.Input.asOptionalInput<String>(licenseType),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkInterfaceIds = pulumi.Input.asOptionalInput<List<String>>(networkInterfaceIds),
      osProfile = pulumi.Input.asOptionalInput<VirtualMachineOsProfile>(osProfile),
      osProfileLinuxConfig = pulumi.Input.asOptionalInput<VirtualMachineOsProfileLinuxConfig>(osProfileLinuxConfig),
      osProfileSecrets = pulumi.Input.asOptionalInput<List<VirtualMachineOsProfileSecret>>(osProfileSecrets),
      osProfileWindowsConfig = pulumi.Input.asOptionalInput<VirtualMachineOsProfileWindowsConfig>(osProfileWindowsConfig),
      plan = pulumi.Input.asOptionalInput<VirtualMachinePlan>(plan),
      primaryNetworkInterfaceId = pulumi.Input.asOptionalInput<String>(primaryNetworkInterfaceId),
      proximityPlacementGroupId = pulumi.Input.asOptionalInput<String>(proximityPlacementGroupId),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      storageDataDisks = pulumi.Input.asOptionalInput<List<VirtualMachineStorageDataDisk>>(storageDataDisks),
      storageImageReference = pulumi.Input.asOptionalInput<VirtualMachineStorageImageReference>(storageImageReference),
      storageOsDisk = pulumi.Input.asOptionalInput<VirtualMachineStorageOsDisk>(storageOsDisk),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vmSize = pulumi.Input.asOptionalInput<String>(vmSize),
      zones = pulumi.Input.asOptionalInput<String>(zones);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalCapabilities': ?pulumi.Input.mapOptionalInputValue<VirtualMachineAdditionalCapabilities, Map<String, dynamic>>(additionalCapabilities, (value) => value.toMap()),
      'availabilitySetId': ?availabilitySetId,
      'bootDiagnostics': ?pulumi.Input.mapOptionalInputValue<VirtualMachineBootDiagnostics, Map<String, dynamic>>(bootDiagnostics, (value) => value.toMap()),
      'deleteDataDisksOnTermination': ?deleteDataDisksOnTermination,
      'deleteOsDiskOnTermination': ?deleteOsDiskOnTermination,
      'identity': ?pulumi.Input.mapOptionalInputValue<VirtualMachineIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'licenseType': ?licenseType,
      'location': ?location,
      'name': ?name,
      'networkInterfaceIds': ?networkInterfaceIds,
      'osProfile': ?pulumi.Input.mapOptionalInputValue<VirtualMachineOsProfile, Map<String, dynamic>>(osProfile, (value) => value.toMap()),
      'osProfileLinuxConfig': ?pulumi.Input.mapOptionalInputValue<VirtualMachineOsProfileLinuxConfig, Map<String, dynamic>>(osProfileLinuxConfig, (value) => value.toMap()),
      'osProfileSecrets': ?pulumi.Input.mapOptionalInputValue<List<VirtualMachineOsProfileSecret>, List<Map<String, dynamic>>>(osProfileSecrets, (value) => pulumi.Input.encodeList<VirtualMachineOsProfileSecret, Map<String, dynamic>>(value, (value) => value.toMap())),
      'osProfileWindowsConfig': ?pulumi.Input.mapOptionalInputValue<VirtualMachineOsProfileWindowsConfig, Map<String, dynamic>>(osProfileWindowsConfig, (value) => value.toMap()),
      'plan': ?pulumi.Input.mapOptionalInputValue<VirtualMachinePlan, Map<String, dynamic>>(plan, (value) => value.toMap()),
      'primaryNetworkInterfaceId': ?primaryNetworkInterfaceId,
      'proximityPlacementGroupId': ?proximityPlacementGroupId,
      'resourceGroupName': ?resourceGroupName,
      'storageDataDisks': ?pulumi.Input.mapOptionalInputValue<List<VirtualMachineStorageDataDisk>, List<Map<String, dynamic>>>(storageDataDisks, (value) => pulumi.Input.encodeList<VirtualMachineStorageDataDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageImageReference': ?pulumi.Input.mapOptionalInputValue<VirtualMachineStorageImageReference, Map<String, dynamic>>(storageImageReference, (value) => value.toMap()),
      'storageOsDisk': ?pulumi.Input.mapOptionalInputValue<VirtualMachineStorageOsDisk, Map<String, dynamic>>(storageOsDisk, (value) => value.toMap()),
      'tags': ?tags,
      'vmSize': ?vmSize,
      'zones': ?zones,
    };
  }

  factory VirtualMachineState.fromMap(Map<String, dynamic> map) {
    return VirtualMachineState(
      additionalCapabilities: map['additionalCapabilities'] == null ? null : pulumi.Output.create<VirtualMachineAdditionalCapabilities>(VirtualMachineAdditionalCapabilities.fromMap((map['additionalCapabilities'] as Map).cast<String, dynamic>())),
      availabilitySetId: map['availabilitySetId'] == null ? null : pulumi.Output.create<String>(map['availabilitySetId'] as String),
      bootDiagnostics: map['bootDiagnostics'] == null ? null : pulumi.Output.create<VirtualMachineBootDiagnostics>(VirtualMachineBootDiagnostics.fromMap((map['bootDiagnostics'] as Map).cast<String, dynamic>())),
      deleteDataDisksOnTermination: map['deleteDataDisksOnTermination'] == null ? null : pulumi.Output.create<bool>(map['deleteDataDisksOnTermination'] as bool),
      deleteOsDiskOnTermination: map['deleteOsDiskOnTermination'] == null ? null : pulumi.Output.create<bool>(map['deleteOsDiskOnTermination'] as bool),
      identity: map['identity'] == null ? null : pulumi.Output.create<VirtualMachineIdentity>(VirtualMachineIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      licenseType: map['licenseType'] == null ? null : pulumi.Output.create<String>(map['licenseType'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkInterfaceIds: map['networkInterfaceIds'] == null ? null : pulumi.Output.create<List<String>>((map['networkInterfaceIds'] as List).cast<String>()),
      osProfile: map['osProfile'] == null ? null : pulumi.Output.create<VirtualMachineOsProfile>(VirtualMachineOsProfile.fromMap((map['osProfile'] as Map).cast<String, dynamic>())),
      osProfileLinuxConfig: map['osProfileLinuxConfig'] == null ? null : pulumi.Output.create<VirtualMachineOsProfileLinuxConfig>(VirtualMachineOsProfileLinuxConfig.fromMap((map['osProfileLinuxConfig'] as Map).cast<String, dynamic>())),
      osProfileSecrets: map['osProfileSecrets'] == null ? null : pulumi.Output.create<List<VirtualMachineOsProfileSecret>>(pulumi.Input.decodeList<VirtualMachineOsProfileSecret>(map['osProfileSecrets'], (value) => VirtualMachineOsProfileSecret.fromMap((value as Map).cast<String, dynamic>()))),
      osProfileWindowsConfig: map['osProfileWindowsConfig'] == null ? null : pulumi.Output.create<VirtualMachineOsProfileWindowsConfig>(VirtualMachineOsProfileWindowsConfig.fromMap((map['osProfileWindowsConfig'] as Map).cast<String, dynamic>())),
      plan: map['plan'] == null ? null : pulumi.Output.create<VirtualMachinePlan>(VirtualMachinePlan.fromMap((map['plan'] as Map).cast<String, dynamic>())),
      primaryNetworkInterfaceId: map['primaryNetworkInterfaceId'] == null ? null : pulumi.Output.create<String>(map['primaryNetworkInterfaceId'] as String),
      proximityPlacementGroupId: map['proximityPlacementGroupId'] == null ? null : pulumi.Output.create<String>(map['proximityPlacementGroupId'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      storageDataDisks: map['storageDataDisks'] == null ? null : pulumi.Output.create<List<VirtualMachineStorageDataDisk>>(pulumi.Input.decodeList<VirtualMachineStorageDataDisk>(map['storageDataDisks'], (value) => VirtualMachineStorageDataDisk.fromMap((value as Map).cast<String, dynamic>()))),
      storageImageReference: map['storageImageReference'] == null ? null : pulumi.Output.create<VirtualMachineStorageImageReference>(VirtualMachineStorageImageReference.fromMap((map['storageImageReference'] as Map).cast<String, dynamic>())),
      storageOsDisk: map['storageOsDisk'] == null ? null : pulumi.Output.create<VirtualMachineStorageOsDisk>(VirtualMachineStorageOsDisk.fromMap((map['storageOsDisk'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vmSize: map['vmSize'] == null ? null : pulumi.Output.create<String>(map['vmSize'] as String),
      zones: map['zones'] == null ? null : pulumi.Output.create<String>(map['zones'] as String),
    );
  }
}

