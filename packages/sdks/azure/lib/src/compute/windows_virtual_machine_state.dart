// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_virtual_machine_additional_capabilities.dart';
import 'windows_virtual_machine_additional_unattend_content.dart';
import 'windows_virtual_machine_boot_diagnostics.dart';
import 'windows_virtual_machine_gallery_application.dart';
import 'windows_virtual_machine_identity.dart';
import 'windows_virtual_machine_os_disk.dart';
import 'windows_virtual_machine_os_image_notification.dart';
import 'windows_virtual_machine_plan.dart';
import 'windows_virtual_machine_secret.dart';
import 'windows_virtual_machine_source_image_reference.dart';
import 'windows_virtual_machine_termination_notification.dart';
import 'windows_virtual_machine_winrm_listener.dart';

/// Input properties used for looking up and filtering WindowsVirtualMachine resources.
class WindowsVirtualMachineState {
  /// A `additional_capabilities` block as defined below.
  final pulumi.Input<WindowsVirtualMachineAdditionalCapabilities>? additionalCapabilities;
  /// One or more `additional_unattend_content` blocks as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<WindowsVirtualMachineAdditionalUnattendContent>>? additionalUnattendContents;
  /// The Password which should be used for the local-administrator on this Virtual Machine. Changing this forces a new resource to be created.
  ///
  /// > **Note:** This is required unless using an existing OS Managed Disk by specifying `os_managed_disk_id`.
  final pulumi.Input<String>? adminPassword;
  /// The username of the local administrator used for the Virtual Machine. Changing this forces a new resource to be created.
  ///
  /// > **Note:** This is required unless using an existing OS Managed Disk by specifying `os_managed_disk_id`.
  final pulumi.Input<String>? adminUsername;
  /// Should Extension Operations be allowed on this Virtual Machine? Defaults to `true`.
  final pulumi.Input<bool>? allowExtensionOperations;
  /// Specifies if Automatic Updates are Enabled for the Windows Virtual Machine. Changing this forces a new resource to be created. Defaults to `true`.
  final pulumi.Input<bool>? automaticUpdatesEnabled;
  /// Specifies the ID of the Availability Set in which the Virtual Machine should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? availabilitySetId;
  /// A `boot_diagnostics` block as defined below.
  final pulumi.Input<WindowsVirtualMachineBootDiagnostics>? bootDiagnostics;
  /// Specifies whether to skip platform scheduled patching when a user schedule is associated with the VM. Defaults to `false`.
  ///
  /// > **NOTE:** `bypass_platform_safety_checks_on_user_schedule_enabled` can only be set to `true` when `patch_mode` is set to `AutomaticByPlatform`.
  final pulumi.Input<bool>? bypassPlatformSafetyChecksOnUserScheduleEnabled;
  /// Specifies the ID of the Capacity Reservation Group which the Virtual Machine should be allocated to.
  ///
  /// > **NOTE:** `capacity_reservation_group_id` cannot be used with `availability_set_id` or `proximity_placement_group_id`
  final pulumi.Input<String>? capacityReservationGroupId;
  /// Specifies the Hostname which should be used for this Virtual Machine. If unspecified this defaults to the value for the `name` field. If the value of the `name` field is not a valid `computer_name`, then you must specify `computer_name`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? computerName;
  /// The Base64-Encoded Custom Data which should be used for this Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<String>? customData;
  /// The ID of a Dedicated Host Group that this Windows Virtual Machine should be run within. Conflicts with `dedicated_host_id`.
  final pulumi.Input<String>? dedicatedHostGroupId;
  /// The ID of a Dedicated Host where this machine should be run on. Conflicts with `dedicated_host_group_id`.
  final pulumi.Input<String>? dedicatedHostId;
  /// Specifies the Disk Controller Type used for this Virtual Machine. Possible values are `SCSI` and `NVMe`.
  final pulumi.Input<String>? diskControllerType;
  /// Specifies the Edge Zone within the Azure Region where this Windows Virtual Machine should exist. Changing this forces a new Windows Virtual Machine to be created.
  final pulumi.Input<String>? edgeZone;
  final pulumi.Input<bool>? enableAutomaticUpdates;
  /// Should all of the disks (including the temp disk) attached to this Virtual Machine be encrypted by enabling Encryption at Host?
  final pulumi.Input<bool>? encryptionAtHostEnabled;
  /// Specifies what should happen when the Virtual Machine is evicted for price reasons when using a Spot instance. Possible values are `Deallocate` and `Delete`. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** This can only be configured when `priority` is set to `Spot`.
  final pulumi.Input<String>? evictionPolicy;
  /// Specifies the duration allocated for all extensions to start. The time duration should be between 15 minutes and 120 minutes (inclusive) and should be specified in ISO 8601 format. Defaults to `PT1H30M`.
  final pulumi.Input<String>? extensionsTimeBudget;
  /// One or more `gallery_application` blocks as defined below.
  ///
  /// > **Note** Gallery Application Assignments can be defined either directly on `azure.compute.WindowsVirtualMachine` resource, or using the `azure.compute.GalleryApplicationAssignment` resource - but the two approaches cannot be used together. If both are used with the same Virtual Machine, spurious changes will occur. If `azure.compute.GalleryApplicationAssignment` is used, it's recommended to use `ignore_changes` for the `gallery_application` block on the corresponding `azure.compute.WindowsVirtualMachine` resource, to avoid a persistent diff when using this resource.
  final pulumi.Input<List<WindowsVirtualMachineGalleryApplication>>? galleryApplications;
  /// Should the VM be patched without requiring a reboot? Possible values are `true` or `false`. Defaults to `false`. For more information about hot patching please see the [product documentation](https://docs.microsoft.com/azure/automanage/automanage-hotpatch).
  ///
  /// > **NOTE:** Hotpatching can only be enabled if the `patch_mode` is set to `AutomaticByPlatform`, the `provision_vm_agent` is set to `true`, your `source_image_reference` references a hotpatching enabled image, and the VM's `size` is set to a [Azure generation 2](https://docs.microsoft.com/azure/virtual-machines/generation-2#generation-2-vm-sizes) VM. An example of how to correctly configure a Windows Virtual Machine to use the `hotpatching_enabled` field can be found in the `./examples/virtual-machines/windows/hotpatching-enabled` directory within the GitHub Repository.
  final pulumi.Input<bool>? hotpatchingEnabled;
  /// An `identity` block as defined below.
  final pulumi.Input<WindowsVirtualMachineIdentity>? identity;
  /// Specifies the type of on-premise license (also known as [Azure Hybrid Use Benefit](https://docs.microsoft.com/windows-server/get-started/azure-hybrid-benefit)) which should be used for this Virtual Machine. Possible values are `None`, `Windows_Client` and `Windows_Server`.
  final pulumi.Input<String>? licenseType;
  /// The Azure location where the Windows Virtual Machine should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The maximum price you're willing to pay for this Virtual Machine, in US Dollars; which must be greater than the current spot price. If this bid price falls below the current spot price the Virtual Machine will be evicted using the `eviction_policy`. Defaults to `-1`, which means that the Virtual Machine should not be evicted for price reasons.
  ///
  /// > **NOTE:** This can only be configured when `priority` is set to `Spot`.
  final pulumi.Input<double>? maxBidPrice;
  /// The name of the Windows Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// . A list of Network Interface IDs which should be attached to this Virtual Machine. The first Network Interface ID in this list will be the Primary Network Interface on the Virtual Machine.
  final pulumi.Input<List<String>>? networkInterfaceIds;
  /// An `os_disk` block as defined below.
  final pulumi.Input<WindowsVirtualMachineOsDisk>? osDisk;
  /// A `os_image_notification` block as defined below.
  final pulumi.Input<WindowsVirtualMachineOsImageNotification>? osImageNotification;
  /// The ID of an existing Managed Disk to use as the OS Disk for this Windows Virtual Machine. Changing this forces a new resource to be created.
  ///
  /// > **Note:** When specifying an existing Managed Disk it is not currently possible to subsequently manage the Operating System Profile properties: `admin_username`, `admin_password`, `bypass_platform_safety_checks_on_user_schedule_enabled`, `computer_name`, `custom_data`, `provision_vm_agent`, `patch_mode`, `patch_assessment_mode`, or `reboot_setting`.
  final pulumi.Input<String>? osManagedDiskId;
  /// Specifies the mode of VM Guest Patching for the Virtual Machine. Possible values are `AutomaticByPlatform` or `ImageDefault`. Defaults to `ImageDefault`.
  ///
  /// > **NOTE:** If the `patch_assessment_mode` is set to `AutomaticByPlatform` then the `provision_vm_agent` field must be set to `true`.
  final pulumi.Input<String>? patchAssessmentMode;
  /// Specifies the mode of in-guest patching to this Windows Virtual Machine. Possible values are `Manual`, `AutomaticByOS` and `AutomaticByPlatform`. Defaults to `AutomaticByOS`. For more information on patch modes please see the [product documentation](https://docs.microsoft.com/azure/virtual-machines/automatic-vm-guest-patching#patch-orchestration-modes).
  ///
  /// > **NOTE:** If `patch_mode` is set to `AutomaticByPlatform` then `provision_vm_agent` must also be set to `true`. If the Virtual Machine is using a hotpatching enabled image the `patch_mode` must always be set to `AutomaticByPlatform`.
  final pulumi.Input<String>? patchMode;
  /// A `plan` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<WindowsVirtualMachinePlan>? plan;
  /// Specifies the Platform Fault Domain in which this Windows Virtual Machine should be created. Defaults to `-1`, which means this will be automatically assigned to a fault domain that best maintains balance across the available fault domains. Changing this forces a new Windows Virtual Machine to be created.
  final pulumi.Input<int>? platformFaultDomain;
  /// Specifies the priority of this Virtual Machine. Possible values are `Regular` and `Spot`. Defaults to `Regular`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? priority;
  /// The Primary Private IP Address assigned to this Virtual Machine.
  final pulumi.Input<String>? privateIpAddress;
  /// A list of Private IP Addresses assigned to this Virtual Machine.
  final pulumi.Input<List<String>>? privateIpAddresses;
  /// Should the Azure VM Agent be provisioned on this Virtual Machine? Defaults to `true`. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** If `provision_vm_agent` is set to `false` then `allow_extension_operations` must also be set to `false`.
  final pulumi.Input<bool>? provisionVmAgent;
  /// The ID of the Proximity Placement Group which the Virtual Machine should be assigned to.
  final pulumi.Input<String>? proximityPlacementGroupId;
  /// The Primary Public IP Address assigned to this Virtual Machine.
  final pulumi.Input<String>? publicIpAddress;
  /// A list of the Public IP Addresses assigned to this Virtual Machine.
  final pulumi.Input<List<String>>? publicIpAddresses;
  /// Specifies the reboot setting for platform scheduled patching. Possible values are `Always`, `IfRequired` and `Never`.
  ///
  /// > **NOTE:** `reboot_setting` can only be set when `patch_mode` is set to `AutomaticByPlatform`.
  final pulumi.Input<String>? rebootSetting;
  /// The name of the Resource Group in which the Windows Virtual Machine should be exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// One or more `secret` blocks as defined below.
  final pulumi.Input<List<WindowsVirtualMachineSecret>>? secrets;
  /// Specifies if Secure Boot and Trusted Launch is enabled for the Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? secureBootEnabled;
  /// The SKU which should be used for this Virtual Machine, such as `Standard_F2`.
  final pulumi.Input<String>? size;
  /// The ID of the Image which this Virtual Machine should be created from. Changing this forces a new resource to be created. Possible Image ID types include `Image ID`s, `Shared Image ID`s, `Shared Image Version ID`s, `Community Gallery Image ID`s, `Community Gallery Image Version ID`s, `Shared Gallery Image ID`s and `Shared Gallery Image Version ID`s.
  ///
  /// > **NOTE:** One of either `source_image_id` or `source_image_reference` must be set.
  final pulumi.Input<String>? sourceImageId;
  /// A `source_image_reference` block as defined below. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** One of either `source_image_id` or `source_image_reference` must be set.
  final pulumi.Input<WindowsVirtualMachineSourceImageReference>? sourceImageReference;
  /// A mapping of tags which should be assigned to this Virtual Machine.
  final pulumi.Input<Map<String, String>>? tags;
  /// A `termination_notification` block as defined below.
  final pulumi.Input<WindowsVirtualMachineTerminationNotification>? terminationNotification;
  /// Specifies the Time Zone which should be used by the Virtual Machine, [the possible values are defined here](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/). Changing this forces a new resource to be created.
  final pulumi.Input<String>? timezone;
  /// The Base64-Encoded User Data which should be used for this Virtual Machine.
  final pulumi.Input<String>? userData;
  /// A 128-bit identifier which uniquely identifies this Virtual Machine.
  final pulumi.Input<String>? virtualMachineId;
  /// Specifies the Orchestrated Virtual Machine Scale Set that this Virtual Machine should be created within.
  ///
  /// > **NOTE:** To update `virtual_machine_scale_set_id` the Preview Feature `Microsoft.Compute/SingleFDAttachDetachVMToVmss` needs to be enabled, see [the documentation](https://review.learn.microsoft.com/azure/virtual-machine-scale-sets/virtual-machine-scale-sets-attach-detach-vm#enroll-in-the-preview) for more information.
  ///
  /// > **NOTE:** Orchestrated Virtual Machine Scale Sets can be provisioned using [the `azure.compute.OrchestratedVirtualMachineScaleSet` resource](https://www.terraform.io/docs/providers/azurerm/r/orchestrated_virtual_machine_scale_set.html).
  ///
  /// > **NOTE:** To attach an existing VM to a Virtual Machine Scale Set, the scale set must have `single_placement_group` set to `false`, see [the documentation](https://learn.microsoft.com/azure/virtual-machine-scale-sets/virtual-machine-scale-sets-attach-detach-vm?tabs=portal-1%2Cportal-2%2Cportal-3#limitations-for-attaching-an-existing-vm-to-a-scale-set) for more information.
  final pulumi.Input<String>? virtualMachineScaleSetId;
  /// Specifies whether VMAgent Platform Updates is enabled. Defaults to `false`.
  final pulumi.Input<bool>? vmAgentPlatformUpdatesEnabled;
  /// Specifies if vTPM (virtual Trusted Platform Module) and Trusted Launch is enabled for the Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? vtpmEnabled;
  /// One or more `winrm_listener` blocks as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<WindowsVirtualMachineWinrmListener>>? winrmListeners;
  /// * `zones` - (Optional) Specifies the Availability Zone in which this Windows Virtual Machine should be located. Changing this forces a new Windows Virtual Machine to be created.
  final pulumi.Input<String>? zone;

  /// Creates a new [WindowsVirtualMachineState].
  /// [additionalCapabilities] A `additional_capabilities` block as defined below.
  /// [additionalUnattendContents] One or more `additional_unattend_content` blocks as defined below. Changing this forces a new resource to be created.
  /// [adminPassword] The Password which should be used for the local-administrator on this Virtual Machine. Changing this forces a new resource to be created.
  /// [adminUsername] The username of the local administrator used for the Virtual Machine. Changing this forces a new resource to be created.
  /// [allowExtensionOperations] Should Extension Operations be allowed on this Virtual Machine? Defaults to `true`.
  /// [automaticUpdatesEnabled] Specifies if Automatic Updates are Enabled for the Windows Virtual Machine. Changing this forces a new resource to be created. Defaults to `true`.
  /// [availabilitySetId] Specifies the ID of the Availability Set in which the Virtual Machine should exist. Changing this forces a new resource to be created.
  /// [bootDiagnostics] A `boot_diagnostics` block as defined below.
  /// [bypassPlatformSafetyChecksOnUserScheduleEnabled] Specifies whether to skip platform scheduled patching when a user schedule is associated with the VM. Defaults to `false`.
  /// [capacityReservationGroupId] Specifies the ID of the Capacity Reservation Group which the Virtual Machine should be allocated to.
  /// [computerName] Specifies the Hostname which should be used for this Virtual Machine. If unspecified this defaults to the value for the `name` field. If the value of the `name` field is not a valid `computer_name`, then you must specify `computer_name`. Changing this forces a new resource to be created.
  /// [customData] The Base64-Encoded Custom Data which should be used for this Virtual Machine. Changing this forces a new resource to be created.
  /// [dedicatedHostGroupId] The ID of a Dedicated Host Group that this Windows Virtual Machine should be run within. Conflicts with `dedicated_host_id`.
  /// [dedicatedHostId] The ID of a Dedicated Host where this machine should be run on. Conflicts with `dedicated_host_group_id`.
  /// [diskControllerType] Specifies the Disk Controller Type used for this Virtual Machine. Possible values are `SCSI` and `NVMe`.
  /// [edgeZone] Specifies the Edge Zone within the Azure Region where this Windows Virtual Machine should exist. Changing this forces a new Windows Virtual Machine to be created.
  /// [enableAutomaticUpdates] Optional.
  /// [encryptionAtHostEnabled] Should all of the disks (including the temp disk) attached to this Virtual Machine be encrypted by enabling Encryption at Host?
  /// [evictionPolicy] Specifies what should happen when the Virtual Machine is evicted for price reasons when using a Spot instance. Possible values are `Deallocate` and `Delete`. Changing this forces a new resource to be created.
  /// [extensionsTimeBudget] Specifies the duration allocated for all extensions to start. The time duration should be between 15 minutes and 120 minutes (inclusive) and should be specified in ISO 8601 format. Defaults to `PT1H30M`.
  /// [galleryApplications] One or more `gallery_application` blocks as defined below.
  /// [hotpatchingEnabled] Should the VM be patched without requiring a reboot? Possible values are `true` or `false`. Defaults to `false`. For more information about hot patching please see the [product documentation](https://docs.microsoft.com/azure/automanage/automanage-hotpatch).
  /// [identity] An `identity` block as defined below.
  /// [licenseType] Specifies the type of on-premise license (also known as [Azure Hybrid Use Benefit](https://docs.microsoft.com/windows-server/get-started/azure-hybrid-benefit)) which should be used for this Virtual Machine. Possible values are `None`, `Windows_Client` and `Windows_Server`.
  /// [location] The Azure location where the Windows Virtual Machine should exist. Changing this forces a new resource to be created.
  /// [maxBidPrice] The maximum price you're willing to pay for this Virtual Machine, in US Dollars; which must be greater than the current spot price. If this bid price falls below the current spot price the Virtual Machine will be evicted using the `eviction_policy`. Defaults to `-1`, which means that the Virtual Machine should not be evicted for price reasons.
  /// [name] The name of the Windows Virtual Machine. Changing this forces a new resource to be created.
  /// [networkInterfaceIds] . A list of Network Interface IDs which should be attached to this Virtual Machine. The first Network Interface ID in this list will be the Primary Network Interface on the Virtual Machine.
  /// [osDisk] An `os_disk` block as defined below.
  /// [osImageNotification] A `os_image_notification` block as defined below.
  /// [osManagedDiskId] The ID of an existing Managed Disk to use as the OS Disk for this Windows Virtual Machine. Changing this forces a new resource to be created.
  /// [patchAssessmentMode] Specifies the mode of VM Guest Patching for the Virtual Machine. Possible values are `AutomaticByPlatform` or `ImageDefault`. Defaults to `ImageDefault`.
  /// [patchMode] Specifies the mode of in-guest patching to this Windows Virtual Machine. Possible values are `Manual`, `AutomaticByOS` and `AutomaticByPlatform`. Defaults to `AutomaticByOS`. For more information on patch modes please see the [product documentation](https://docs.microsoft.com/azure/virtual-machines/automatic-vm-guest-patching#patch-orchestration-modes).
  /// [plan] A `plan` block as defined below. Changing this forces a new resource to be created.
  /// [platformFaultDomain] Specifies the Platform Fault Domain in which this Windows Virtual Machine should be created. Defaults to `-1`, which means this will be automatically assigned to a fault domain that best maintains balance across the available fault domains. Changing this forces a new Windows Virtual Machine to be created.
  /// [priority] Specifies the priority of this Virtual Machine. Possible values are `Regular` and `Spot`. Defaults to `Regular`. Changing this forces a new resource to be created.
  /// [privateIpAddress] The Primary Private IP Address assigned to this Virtual Machine.
  /// [privateIpAddresses] A list of Private IP Addresses assigned to this Virtual Machine.
  /// [provisionVmAgent] Should the Azure VM Agent be provisioned on this Virtual Machine? Defaults to `true`. Changing this forces a new resource to be created.
  /// [proximityPlacementGroupId] The ID of the Proximity Placement Group which the Virtual Machine should be assigned to.
  /// [publicIpAddress] The Primary Public IP Address assigned to this Virtual Machine.
  /// [publicIpAddresses] A list of the Public IP Addresses assigned to this Virtual Machine.
  /// [rebootSetting] Specifies the reboot setting for platform scheduled patching. Possible values are `Always`, `IfRequired` and `Never`.
  /// [resourceGroupName] The name of the Resource Group in which the Windows Virtual Machine should be exist. Changing this forces a new resource to be created.
  /// [secrets] One or more `secret` blocks as defined below.
  /// [secureBootEnabled] Specifies if Secure Boot and Trusted Launch is enabled for the Virtual Machine. Changing this forces a new resource to be created.
  /// [size] The SKU which should be used for this Virtual Machine, such as `Standard_F2`.
  /// [sourceImageId] The ID of the Image which this Virtual Machine should be created from. Changing this forces a new resource to be created. Possible Image ID types include `Image ID`s, `Shared Image ID`s, `Shared Image Version ID`s, `Community Gallery Image ID`s, `Community Gallery Image Version ID`s, `Shared Gallery Image ID`s and `Shared Gallery Image Version ID`s.
  /// [sourceImageReference] A `source_image_reference` block as defined below. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to this Virtual Machine.
  /// [terminationNotification] A `termination_notification` block as defined below.
  /// [timezone] Specifies the Time Zone which should be used by the Virtual Machine, [the possible values are defined here](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/). Changing this forces a new resource to be created.
  /// [userData] The Base64-Encoded User Data which should be used for this Virtual Machine.
  /// [virtualMachineId] A 128-bit identifier which uniquely identifies this Virtual Machine.
  /// [virtualMachineScaleSetId] Specifies the Orchestrated Virtual Machine Scale Set that this Virtual Machine should be created within.
  /// [vmAgentPlatformUpdatesEnabled] Specifies whether VMAgent Platform Updates is enabled. Defaults to `false`.
  /// [vtpmEnabled] Specifies if vTPM (virtual Trusted Platform Module) and Trusted Launch is enabled for the Virtual Machine. Changing this forces a new resource to be created.
  /// [winrmListeners] One or more `winrm_listener` blocks as defined below. Changing this forces a new resource to be created.
  /// [zone] * `zones` - (Optional) Specifies the Availability Zone in which this Windows Virtual Machine should be located. Changing this forces a new Windows Virtual Machine to be created.
  WindowsVirtualMachineState({
    pulumi.Output<WindowsVirtualMachineAdditionalCapabilities>? additionalCapabilities,
    pulumi.Output<List<WindowsVirtualMachineAdditionalUnattendContent>>? additionalUnattendContents,
    pulumi.Output<String>? adminPassword,
    pulumi.Output<String>? adminUsername,
    pulumi.Output<bool>? allowExtensionOperations,
    pulumi.Output<bool>? automaticUpdatesEnabled,
    pulumi.Output<String>? availabilitySetId,
    pulumi.Output<WindowsVirtualMachineBootDiagnostics>? bootDiagnostics,
    pulumi.Output<bool>? bypassPlatformSafetyChecksOnUserScheduleEnabled,
    pulumi.Output<String>? capacityReservationGroupId,
    pulumi.Output<String>? computerName,
    pulumi.Output<String>? customData,
    pulumi.Output<String>? dedicatedHostGroupId,
    pulumi.Output<String>? dedicatedHostId,
    pulumi.Output<String>? diskControllerType,
    pulumi.Output<String>? edgeZone,
    pulumi.Output<bool>? enableAutomaticUpdates,
    pulumi.Output<bool>? encryptionAtHostEnabled,
    pulumi.Output<String>? evictionPolicy,
    pulumi.Output<String>? extensionsTimeBudget,
    pulumi.Output<List<WindowsVirtualMachineGalleryApplication>>? galleryApplications,
    pulumi.Output<bool>? hotpatchingEnabled,
    pulumi.Output<WindowsVirtualMachineIdentity>? identity,
    pulumi.Output<String>? licenseType,
    pulumi.Output<String>? location,
    pulumi.Output<double>? maxBidPrice,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? networkInterfaceIds,
    pulumi.Output<WindowsVirtualMachineOsDisk>? osDisk,
    pulumi.Output<WindowsVirtualMachineOsImageNotification>? osImageNotification,
    pulumi.Output<String>? osManagedDiskId,
    pulumi.Output<String>? patchAssessmentMode,
    pulumi.Output<String>? patchMode,
    pulumi.Output<WindowsVirtualMachinePlan>? plan,
    pulumi.Output<int>? platformFaultDomain,
    pulumi.Output<String>? priority,
    pulumi.Output<String>? privateIpAddress,
    pulumi.Output<List<String>>? privateIpAddresses,
    pulumi.Output<bool>? provisionVmAgent,
    pulumi.Output<String>? proximityPlacementGroupId,
    pulumi.Output<String>? publicIpAddress,
    pulumi.Output<List<String>>? publicIpAddresses,
    pulumi.Output<String>? rebootSetting,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<List<WindowsVirtualMachineSecret>>? secrets,
    pulumi.Output<bool>? secureBootEnabled,
    pulumi.Output<String>? size,
    pulumi.Output<String>? sourceImageId,
    pulumi.Output<WindowsVirtualMachineSourceImageReference>? sourceImageReference,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<WindowsVirtualMachineTerminationNotification>? terminationNotification,
    pulumi.Output<String>? timezone,
    pulumi.Output<String>? userData,
    pulumi.Output<String>? virtualMachineId,
    pulumi.Output<String>? virtualMachineScaleSetId,
    pulumi.Output<bool>? vmAgentPlatformUpdatesEnabled,
    pulumi.Output<bool>? vtpmEnabled,
    pulumi.Output<List<WindowsVirtualMachineWinrmListener>>? winrmListeners,
    pulumi.Output<String>? zone,
  }) :
      additionalCapabilities = pulumi.Input.asOptionalInput<WindowsVirtualMachineAdditionalCapabilities>(additionalCapabilities),
      additionalUnattendContents = pulumi.Input.asOptionalInput<List<WindowsVirtualMachineAdditionalUnattendContent>>(additionalUnattendContents),
      adminPassword = pulumi.Input.asOptionalInput<String>(adminPassword),
      adminUsername = pulumi.Input.asOptionalInput<String>(adminUsername),
      allowExtensionOperations = pulumi.Input.asOptionalInput<bool>(allowExtensionOperations),
      automaticUpdatesEnabled = pulumi.Input.asOptionalInput<bool>(automaticUpdatesEnabled),
      availabilitySetId = pulumi.Input.asOptionalInput<String>(availabilitySetId),
      bootDiagnostics = pulumi.Input.asOptionalInput<WindowsVirtualMachineBootDiagnostics>(bootDiagnostics),
      bypassPlatformSafetyChecksOnUserScheduleEnabled = pulumi.Input.asOptionalInput<bool>(bypassPlatformSafetyChecksOnUserScheduleEnabled),
      capacityReservationGroupId = pulumi.Input.asOptionalInput<String>(capacityReservationGroupId),
      computerName = pulumi.Input.asOptionalInput<String>(computerName),
      customData = pulumi.Input.asOptionalInput<String>(customData),
      dedicatedHostGroupId = pulumi.Input.asOptionalInput<String>(dedicatedHostGroupId),
      dedicatedHostId = pulumi.Input.asOptionalInput<String>(dedicatedHostId),
      diskControllerType = pulumi.Input.asOptionalInput<String>(diskControllerType),
      edgeZone = pulumi.Input.asOptionalInput<String>(edgeZone),
      enableAutomaticUpdates = pulumi.Input.asOptionalInput<bool>(enableAutomaticUpdates),
      encryptionAtHostEnabled = pulumi.Input.asOptionalInput<bool>(encryptionAtHostEnabled),
      evictionPolicy = pulumi.Input.asOptionalInput<String>(evictionPolicy),
      extensionsTimeBudget = pulumi.Input.asOptionalInput<String>(extensionsTimeBudget),
      galleryApplications = pulumi.Input.asOptionalInput<List<WindowsVirtualMachineGalleryApplication>>(galleryApplications),
      hotpatchingEnabled = pulumi.Input.asOptionalInput<bool>(hotpatchingEnabled),
      identity = pulumi.Input.asOptionalInput<WindowsVirtualMachineIdentity>(identity),
      licenseType = pulumi.Input.asOptionalInput<String>(licenseType),
      location = pulumi.Input.asOptionalInput<String>(location),
      maxBidPrice = pulumi.Input.asOptionalInput<double>(maxBidPrice),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkInterfaceIds = pulumi.Input.asOptionalInput<List<String>>(networkInterfaceIds),
      osDisk = pulumi.Input.asOptionalInput<WindowsVirtualMachineOsDisk>(osDisk),
      osImageNotification = pulumi.Input.asOptionalInput<WindowsVirtualMachineOsImageNotification>(osImageNotification),
      osManagedDiskId = pulumi.Input.asOptionalInput<String>(osManagedDiskId),
      patchAssessmentMode = pulumi.Input.asOptionalInput<String>(patchAssessmentMode),
      patchMode = pulumi.Input.asOptionalInput<String>(patchMode),
      plan = pulumi.Input.asOptionalInput<WindowsVirtualMachinePlan>(plan),
      platformFaultDomain = pulumi.Input.asOptionalInput<int>(platformFaultDomain),
      priority = pulumi.Input.asOptionalInput<String>(priority),
      privateIpAddress = pulumi.Input.asOptionalInput<String>(privateIpAddress),
      privateIpAddresses = pulumi.Input.asOptionalInput<List<String>>(privateIpAddresses),
      provisionVmAgent = pulumi.Input.asOptionalInput<bool>(provisionVmAgent),
      proximityPlacementGroupId = pulumi.Input.asOptionalInput<String>(proximityPlacementGroupId),
      publicIpAddress = pulumi.Input.asOptionalInput<String>(publicIpAddress),
      publicIpAddresses = pulumi.Input.asOptionalInput<List<String>>(publicIpAddresses),
      rebootSetting = pulumi.Input.asOptionalInput<String>(rebootSetting),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      secrets = pulumi.Input.asOptionalInput<List<WindowsVirtualMachineSecret>>(secrets),
      secureBootEnabled = pulumi.Input.asOptionalInput<bool>(secureBootEnabled),
      size = pulumi.Input.asOptionalInput<String>(size),
      sourceImageId = pulumi.Input.asOptionalInput<String>(sourceImageId),
      sourceImageReference = pulumi.Input.asOptionalInput<WindowsVirtualMachineSourceImageReference>(sourceImageReference),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      terminationNotification = pulumi.Input.asOptionalInput<WindowsVirtualMachineTerminationNotification>(terminationNotification),
      timezone = pulumi.Input.asOptionalInput<String>(timezone),
      userData = pulumi.Input.asOptionalInput<String>(userData),
      virtualMachineId = pulumi.Input.asOptionalInput<String>(virtualMachineId),
      virtualMachineScaleSetId = pulumi.Input.asOptionalInput<String>(virtualMachineScaleSetId),
      vmAgentPlatformUpdatesEnabled = pulumi.Input.asOptionalInput<bool>(vmAgentPlatformUpdatesEnabled),
      vtpmEnabled = pulumi.Input.asOptionalInput<bool>(vtpmEnabled),
      winrmListeners = pulumi.Input.asOptionalInput<List<WindowsVirtualMachineWinrmListener>>(winrmListeners),
      zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalCapabilities': ?pulumi.Input.mapOptionalInputValue<WindowsVirtualMachineAdditionalCapabilities, Map<String, dynamic>>(additionalCapabilities, (value) => value.toMap()),
      'additionalUnattendContents': ?pulumi.Input.mapOptionalInputValue<List<WindowsVirtualMachineAdditionalUnattendContent>, List<Map<String, dynamic>>>(additionalUnattendContents, (value) => pulumi.Input.encodeList<WindowsVirtualMachineAdditionalUnattendContent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'adminPassword': ?adminPassword,
      'adminUsername': ?adminUsername,
      'allowExtensionOperations': ?allowExtensionOperations,
      'automaticUpdatesEnabled': ?automaticUpdatesEnabled,
      'availabilitySetId': ?availabilitySetId,
      'bootDiagnostics': ?pulumi.Input.mapOptionalInputValue<WindowsVirtualMachineBootDiagnostics, Map<String, dynamic>>(bootDiagnostics, (value) => value.toMap()),
      'bypassPlatformSafetyChecksOnUserScheduleEnabled': ?bypassPlatformSafetyChecksOnUserScheduleEnabled,
      'capacityReservationGroupId': ?capacityReservationGroupId,
      'computerName': ?computerName,
      'customData': ?customData,
      'dedicatedHostGroupId': ?dedicatedHostGroupId,
      'dedicatedHostId': ?dedicatedHostId,
      'diskControllerType': ?diskControllerType,
      'edgeZone': ?edgeZone,
      'enableAutomaticUpdates': ?enableAutomaticUpdates,
      'encryptionAtHostEnabled': ?encryptionAtHostEnabled,
      'evictionPolicy': ?evictionPolicy,
      'extensionsTimeBudget': ?extensionsTimeBudget,
      'galleryApplications': ?pulumi.Input.mapOptionalInputValue<List<WindowsVirtualMachineGalleryApplication>, List<Map<String, dynamic>>>(galleryApplications, (value) => pulumi.Input.encodeList<WindowsVirtualMachineGalleryApplication, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hotpatchingEnabled': ?hotpatchingEnabled,
      'identity': ?pulumi.Input.mapOptionalInputValue<WindowsVirtualMachineIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'licenseType': ?licenseType,
      'location': ?location,
      'maxBidPrice': ?maxBidPrice,
      'name': ?name,
      'networkInterfaceIds': ?networkInterfaceIds,
      'osDisk': ?pulumi.Input.mapOptionalInputValue<WindowsVirtualMachineOsDisk, Map<String, dynamic>>(osDisk, (value) => value.toMap()),
      'osImageNotification': ?pulumi.Input.mapOptionalInputValue<WindowsVirtualMachineOsImageNotification, Map<String, dynamic>>(osImageNotification, (value) => value.toMap()),
      'osManagedDiskId': ?osManagedDiskId,
      'patchAssessmentMode': ?patchAssessmentMode,
      'patchMode': ?patchMode,
      'plan': ?pulumi.Input.mapOptionalInputValue<WindowsVirtualMachinePlan, Map<String, dynamic>>(plan, (value) => value.toMap()),
      'platformFaultDomain': ?platformFaultDomain,
      'priority': ?priority,
      'privateIpAddress': ?privateIpAddress,
      'privateIpAddresses': ?privateIpAddresses,
      'provisionVmAgent': ?provisionVmAgent,
      'proximityPlacementGroupId': ?proximityPlacementGroupId,
      'publicIpAddress': ?publicIpAddress,
      'publicIpAddresses': ?publicIpAddresses,
      'rebootSetting': ?rebootSetting,
      'resourceGroupName': ?resourceGroupName,
      'secrets': ?pulumi.Input.mapOptionalInputValue<List<WindowsVirtualMachineSecret>, List<Map<String, dynamic>>>(secrets, (value) => pulumi.Input.encodeList<WindowsVirtualMachineSecret, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secureBootEnabled': ?secureBootEnabled,
      'size': ?size,
      'sourceImageId': ?sourceImageId,
      'sourceImageReference': ?pulumi.Input.mapOptionalInputValue<WindowsVirtualMachineSourceImageReference, Map<String, dynamic>>(sourceImageReference, (value) => value.toMap()),
      'tags': ?tags,
      'terminationNotification': ?pulumi.Input.mapOptionalInputValue<WindowsVirtualMachineTerminationNotification, Map<String, dynamic>>(terminationNotification, (value) => value.toMap()),
      'timezone': ?timezone,
      'userData': ?userData,
      'virtualMachineId': ?virtualMachineId,
      'virtualMachineScaleSetId': ?virtualMachineScaleSetId,
      'vmAgentPlatformUpdatesEnabled': ?vmAgentPlatformUpdatesEnabled,
      'vtpmEnabled': ?vtpmEnabled,
      'winrmListeners': ?pulumi.Input.mapOptionalInputValue<List<WindowsVirtualMachineWinrmListener>, List<Map<String, dynamic>>>(winrmListeners, (value) => pulumi.Input.encodeList<WindowsVirtualMachineWinrmListener, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zone': ?zone,
    };
  }

  factory WindowsVirtualMachineState.fromMap(Map<String, dynamic> map) {
    return WindowsVirtualMachineState(
      additionalCapabilities: map['additionalCapabilities'] == null ? null : pulumi.Output.create<WindowsVirtualMachineAdditionalCapabilities>(WindowsVirtualMachineAdditionalCapabilities.fromMap((map['additionalCapabilities'] as Map).cast<String, dynamic>())),
      additionalUnattendContents: map['additionalUnattendContents'] == null ? null : pulumi.Output.create<List<WindowsVirtualMachineAdditionalUnattendContent>>(pulumi.Input.decodeList<WindowsVirtualMachineAdditionalUnattendContent>(map['additionalUnattendContents'], (value) => WindowsVirtualMachineAdditionalUnattendContent.fromMap((value as Map).cast<String, dynamic>()))),
      adminPassword: map['adminPassword'] == null ? null : pulumi.Output.create<String>(map['adminPassword'] as String),
      adminUsername: map['adminUsername'] == null ? null : pulumi.Output.create<String>(map['adminUsername'] as String),
      allowExtensionOperations: map['allowExtensionOperations'] == null ? null : pulumi.Output.create<bool>(map['allowExtensionOperations'] as bool),
      automaticUpdatesEnabled: map['automaticUpdatesEnabled'] == null ? null : pulumi.Output.create<bool>(map['automaticUpdatesEnabled'] as bool),
      availabilitySetId: map['availabilitySetId'] == null ? null : pulumi.Output.create<String>(map['availabilitySetId'] as String),
      bootDiagnostics: map['bootDiagnostics'] == null ? null : pulumi.Output.create<WindowsVirtualMachineBootDiagnostics>(WindowsVirtualMachineBootDiagnostics.fromMap((map['bootDiagnostics'] as Map).cast<String, dynamic>())),
      bypassPlatformSafetyChecksOnUserScheduleEnabled: map['bypassPlatformSafetyChecksOnUserScheduleEnabled'] == null ? null : pulumi.Output.create<bool>(map['bypassPlatformSafetyChecksOnUserScheduleEnabled'] as bool),
      capacityReservationGroupId: map['capacityReservationGroupId'] == null ? null : pulumi.Output.create<String>(map['capacityReservationGroupId'] as String),
      computerName: map['computerName'] == null ? null : pulumi.Output.create<String>(map['computerName'] as String),
      customData: map['customData'] == null ? null : pulumi.Output.create<String>(map['customData'] as String),
      dedicatedHostGroupId: map['dedicatedHostGroupId'] == null ? null : pulumi.Output.create<String>(map['dedicatedHostGroupId'] as String),
      dedicatedHostId: map['dedicatedHostId'] == null ? null : pulumi.Output.create<String>(map['dedicatedHostId'] as String),
      diskControllerType: map['diskControllerType'] == null ? null : pulumi.Output.create<String>(map['diskControllerType'] as String),
      edgeZone: map['edgeZone'] == null ? null : pulumi.Output.create<String>(map['edgeZone'] as String),
      enableAutomaticUpdates: map['enableAutomaticUpdates'] == null ? null : pulumi.Output.create<bool>(map['enableAutomaticUpdates'] as bool),
      encryptionAtHostEnabled: map['encryptionAtHostEnabled'] == null ? null : pulumi.Output.create<bool>(map['encryptionAtHostEnabled'] as bool),
      evictionPolicy: map['evictionPolicy'] == null ? null : pulumi.Output.create<String>(map['evictionPolicy'] as String),
      extensionsTimeBudget: map['extensionsTimeBudget'] == null ? null : pulumi.Output.create<String>(map['extensionsTimeBudget'] as String),
      galleryApplications: map['galleryApplications'] == null ? null : pulumi.Output.create<List<WindowsVirtualMachineGalleryApplication>>(pulumi.Input.decodeList<WindowsVirtualMachineGalleryApplication>(map['galleryApplications'], (value) => WindowsVirtualMachineGalleryApplication.fromMap((value as Map).cast<String, dynamic>()))),
      hotpatchingEnabled: map['hotpatchingEnabled'] == null ? null : pulumi.Output.create<bool>(map['hotpatchingEnabled'] as bool),
      identity: map['identity'] == null ? null : pulumi.Output.create<WindowsVirtualMachineIdentity>(WindowsVirtualMachineIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      licenseType: map['licenseType'] == null ? null : pulumi.Output.create<String>(map['licenseType'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      maxBidPrice: map['maxBidPrice'] == null ? null : pulumi.Output.create<double>(map['maxBidPrice'] as double),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkInterfaceIds: map['networkInterfaceIds'] == null ? null : pulumi.Output.create<List<String>>((map['networkInterfaceIds'] as List).cast<String>()),
      osDisk: map['osDisk'] == null ? null : pulumi.Output.create<WindowsVirtualMachineOsDisk>(WindowsVirtualMachineOsDisk.fromMap((map['osDisk'] as Map).cast<String, dynamic>())),
      osImageNotification: map['osImageNotification'] == null ? null : pulumi.Output.create<WindowsVirtualMachineOsImageNotification>(WindowsVirtualMachineOsImageNotification.fromMap((map['osImageNotification'] as Map).cast<String, dynamic>())),
      osManagedDiskId: map['osManagedDiskId'] == null ? null : pulumi.Output.create<String>(map['osManagedDiskId'] as String),
      patchAssessmentMode: map['patchAssessmentMode'] == null ? null : pulumi.Output.create<String>(map['patchAssessmentMode'] as String),
      patchMode: map['patchMode'] == null ? null : pulumi.Output.create<String>(map['patchMode'] as String),
      plan: map['plan'] == null ? null : pulumi.Output.create<WindowsVirtualMachinePlan>(WindowsVirtualMachinePlan.fromMap((map['plan'] as Map).cast<String, dynamic>())),
      platformFaultDomain: map['platformFaultDomain'] == null ? null : pulumi.Output.create<int>(map['platformFaultDomain'] as int),
      priority: map['priority'] == null ? null : pulumi.Output.create<String>(map['priority'] as String),
      privateIpAddress: map['privateIpAddress'] == null ? null : pulumi.Output.create<String>(map['privateIpAddress'] as String),
      privateIpAddresses: map['privateIpAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['privateIpAddresses'] as List).cast<String>()),
      provisionVmAgent: map['provisionVmAgent'] == null ? null : pulumi.Output.create<bool>(map['provisionVmAgent'] as bool),
      proximityPlacementGroupId: map['proximityPlacementGroupId'] == null ? null : pulumi.Output.create<String>(map['proximityPlacementGroupId'] as String),
      publicIpAddress: map['publicIpAddress'] == null ? null : pulumi.Output.create<String>(map['publicIpAddress'] as String),
      publicIpAddresses: map['publicIpAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['publicIpAddresses'] as List).cast<String>()),
      rebootSetting: map['rebootSetting'] == null ? null : pulumi.Output.create<String>(map['rebootSetting'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      secrets: map['secrets'] == null ? null : pulumi.Output.create<List<WindowsVirtualMachineSecret>>(pulumi.Input.decodeList<WindowsVirtualMachineSecret>(map['secrets'], (value) => WindowsVirtualMachineSecret.fromMap((value as Map).cast<String, dynamic>()))),
      secureBootEnabled: map['secureBootEnabled'] == null ? null : pulumi.Output.create<bool>(map['secureBootEnabled'] as bool),
      size: map['size'] == null ? null : pulumi.Output.create<String>(map['size'] as String),
      sourceImageId: map['sourceImageId'] == null ? null : pulumi.Output.create<String>(map['sourceImageId'] as String),
      sourceImageReference: map['sourceImageReference'] == null ? null : pulumi.Output.create<WindowsVirtualMachineSourceImageReference>(WindowsVirtualMachineSourceImageReference.fromMap((map['sourceImageReference'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      terminationNotification: map['terminationNotification'] == null ? null : pulumi.Output.create<WindowsVirtualMachineTerminationNotification>(WindowsVirtualMachineTerminationNotification.fromMap((map['terminationNotification'] as Map).cast<String, dynamic>())),
      timezone: map['timezone'] == null ? null : pulumi.Output.create<String>(map['timezone'] as String),
      userData: map['userData'] == null ? null : pulumi.Output.create<String>(map['userData'] as String),
      virtualMachineId: map['virtualMachineId'] == null ? null : pulumi.Output.create<String>(map['virtualMachineId'] as String),
      virtualMachineScaleSetId: map['virtualMachineScaleSetId'] == null ? null : pulumi.Output.create<String>(map['virtualMachineScaleSetId'] as String),
      vmAgentPlatformUpdatesEnabled: map['vmAgentPlatformUpdatesEnabled'] == null ? null : pulumi.Output.create<bool>(map['vmAgentPlatformUpdatesEnabled'] as bool),
      vtpmEnabled: map['vtpmEnabled'] == null ? null : pulumi.Output.create<bool>(map['vtpmEnabled'] as bool),
      winrmListeners: map['winrmListeners'] == null ? null : pulumi.Output.create<List<WindowsVirtualMachineWinrmListener>>(pulumi.Input.decodeList<WindowsVirtualMachineWinrmListener>(map['winrmListeners'], (value) => WindowsVirtualMachineWinrmListener.fromMap((value as Map).cast<String, dynamic>()))),
      zone: map['zone'] == null ? null : pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

