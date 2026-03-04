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
  final pulumi.Input<VirtualMachineAdditionalCapabilities>?
  additionalCapabilities;

  /// The ID of the Availability Set in which the Virtual Machine should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? availabilitySetId;

  /// A `boot_diagnostics` block as defined below.
  final pulumi.Input<VirtualMachineBootDiagnostics>? bootDiagnostics;

  /// Should the Data Disks (either the Managed Disks / VHD Blobs) be deleted when the Virtual Machine is destroyed? Defaults to `false`.
  ///
  /// &gt; **Note:** This setting works when instance is deleted via the provider only and don't forget to delete disks manually if you deleted VM manually. It can increase spending.
  final pulumi.Input<bool>? deleteDataDisksOnTermination;

  /// Should the OS Disk (either the Managed Disk / VHD Blob) be deleted when the Virtual Machine is destroyed? Defaults to `false`.
  ///
  /// &gt; **Note:** This setting works when instance is deleted via the provider only and don't forget to delete disks manually if you deleted VM manually. It can increase spending.
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
  final pulumi.Input<VirtualMachineOsProfileWindowsConfig>?
  osProfileWindowsConfig;

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
  /// &gt; **Please Note:** Data Disks can also be attached either using this block or the `azure.compute.DataDiskAttachment` resource - but not both.
  final pulumi.Input<List<VirtualMachineStorageDataDisk>>? storageDataDisks;

  /// A `storage_image_reference` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<VirtualMachineStorageImageReference>?
  storageImageReference;

  /// A `storage_os_disk` block as defined below.
  final pulumi.Input<VirtualMachineStorageOsDisk>? storageOsDisk;

  /// A mapping of tags to assign to the Virtual Machine.
  final pulumi.Input<Map<String, String>>? tags;

  /// Specifies the [size of the Virtual Machine](https://docs.microsoft.com/azure/virtual-machines/sizes-general). See also [Azure VM Naming Conventions](https://docs.microsoft.com/azure/virtual-machines/vm-naming-conventions).
  final pulumi.Input<String>? vmSize;

  /// A list of a single item of the Availability Zone which the Virtual Machine should be allocated in. Changing this forces a new resource to be created.
  ///
  /// &gt; **Please Note:** Availability Zones are [only supported in several regions at this time](https://docs.microsoft.com/azure/availability-zones/az-overview).
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
    this.additionalCapabilities,
    this.availabilitySetId,
    this.bootDiagnostics,
    this.deleteDataDisksOnTermination,
    this.deleteOsDiskOnTermination,
    this.identity,
    this.licenseType,
    this.location,
    this.name,
    this.networkInterfaceIds,
    this.osProfile,
    this.osProfileLinuxConfig,
    this.osProfileSecrets,
    this.osProfileWindowsConfig,
    this.plan,
    this.primaryNetworkInterfaceId,
    this.proximityPlacementGroupId,
    this.resourceGroupName,
    this.storageDataDisks,
    this.storageImageReference,
    this.storageOsDisk,
    this.tags,
    this.vmSize,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalCapabilities':
          ?pulumi.Input.mapOptionalInputValue<
            VirtualMachineAdditionalCapabilities,
            Map<String, dynamic>
          >(additionalCapabilities, (value) => value.toMap()),
      'availabilitySetId': ?availabilitySetId,
      'bootDiagnostics':
          ?pulumi.Input.mapOptionalInputValue<
            VirtualMachineBootDiagnostics,
            Map<String, dynamic>
          >(bootDiagnostics, (value) => value.toMap()),
      'deleteDataDisksOnTermination': ?deleteDataDisksOnTermination,
      'deleteOsDiskOnTermination': ?deleteOsDiskOnTermination,
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            VirtualMachineIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'licenseType': ?licenseType,
      'location': ?location,
      'name': ?name,
      'networkInterfaceIds': ?networkInterfaceIds,
      'osProfile':
          ?pulumi.Input.mapOptionalInputValue<
            VirtualMachineOsProfile,
            Map<String, dynamic>
          >(osProfile, (value) => value.toMap()),
      'osProfileLinuxConfig':
          ?pulumi.Input.mapOptionalInputValue<
            VirtualMachineOsProfileLinuxConfig,
            Map<String, dynamic>
          >(osProfileLinuxConfig, (value) => value.toMap()),
      'osProfileSecrets':
          ?pulumi.Input.mapOptionalInputValue<
            List<VirtualMachineOsProfileSecret>,
            List<Map<String, dynamic>>
          >(
            osProfileSecrets,
            (value) =>
                pulumi.Input.encodeList<
                  VirtualMachineOsProfileSecret,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'osProfileWindowsConfig':
          ?pulumi.Input.mapOptionalInputValue<
            VirtualMachineOsProfileWindowsConfig,
            Map<String, dynamic>
          >(osProfileWindowsConfig, (value) => value.toMap()),
      'plan':
          ?pulumi.Input.mapOptionalInputValue<
            VirtualMachinePlan,
            Map<String, dynamic>
          >(plan, (value) => value.toMap()),
      'primaryNetworkInterfaceId': ?primaryNetworkInterfaceId,
      'proximityPlacementGroupId': ?proximityPlacementGroupId,
      'resourceGroupName': ?resourceGroupName,
      'storageDataDisks':
          ?pulumi.Input.mapOptionalInputValue<
            List<VirtualMachineStorageDataDisk>,
            List<Map<String, dynamic>>
          >(
            storageDataDisks,
            (value) =>
                pulumi.Input.encodeList<
                  VirtualMachineStorageDataDisk,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'storageImageReference':
          ?pulumi.Input.mapOptionalInputValue<
            VirtualMachineStorageImageReference,
            Map<String, dynamic>
          >(storageImageReference, (value) => value.toMap()),
      'storageOsDisk':
          ?pulumi.Input.mapOptionalInputValue<
            VirtualMachineStorageOsDisk,
            Map<String, dynamic>
          >(storageOsDisk, (value) => value.toMap()),
      'tags': ?tags,
      'vmSize': ?vmSize,
      'zones': ?zones,
    };
  }

  factory VirtualMachineState.fromMap(Map<String, dynamic> map) {
    return VirtualMachineState(
      additionalCapabilities: (() {
        final guardedValue = map['additionalCapabilities'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VirtualMachineAdditionalCapabilities.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      availabilitySetId: (() {
        final guardedValue = map['availabilitySetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      bootDiagnostics: (() {
        final guardedValue = map['bootDiagnostics'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VirtualMachineBootDiagnostics.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      deleteDataDisksOnTermination: (() {
        final guardedValue = map['deleteDataDisksOnTermination'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      deleteOsDiskOnTermination: (() {
        final guardedValue = map['deleteOsDiskOnTermination'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VirtualMachineIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      licenseType: (() {
        final guardedValue = map['licenseType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkInterfaceIds: (() {
        final guardedValue = map['networkInterfaceIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      osProfile: (() {
        final guardedValue = map['osProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VirtualMachineOsProfile.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      osProfileLinuxConfig: (() {
        final guardedValue = map['osProfileLinuxConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VirtualMachineOsProfileLinuxConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      osProfileSecrets: (() {
        final guardedValue = map['osProfileSecrets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<VirtualMachineOsProfileSecret>(
            guardedValue,
            (value) => VirtualMachineOsProfileSecret.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      osProfileWindowsConfig: (() {
        final guardedValue = map['osProfileWindowsConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VirtualMachineOsProfileWindowsConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      plan: (() {
        final guardedValue = map['plan'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VirtualMachinePlan.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      primaryNetworkInterfaceId: (() {
        final guardedValue = map['primaryNetworkInterfaceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      proximityPlacementGroupId: (() {
        final guardedValue = map['proximityPlacementGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageDataDisks: (() {
        final guardedValue = map['storageDataDisks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<VirtualMachineStorageDataDisk>(
            guardedValue,
            (value) => VirtualMachineStorageDataDisk.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      storageImageReference: (() {
        final guardedValue = map['storageImageReference'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VirtualMachineStorageImageReference.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      storageOsDisk: (() {
        final guardedValue = map['storageOsDisk'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VirtualMachineStorageOsDisk.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      vmSize: (() {
        final guardedValue = map['vmSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      zones: (() {
        final guardedValue = map['zones'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
