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

/// {@template pulumi_compute_windows_virtual_machine_windows_virtual_machine_args_doc}
/// The set of arguments for WindowsVirtualMachine.
/// {@endtemplate}
/// {@macro pulumi_compute_windows_virtual_machine_windows_virtual_machine_args_doc}
class WindowsVirtualMachineArgs {
  /// A `additional_capabilities` block as defined below.
  final pulumi.Input<WindowsVirtualMachineAdditionalCapabilities>? additionalCapabilities;
  /// One or more `additional_unattend_content` blocks as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<WindowsVirtualMachineAdditionalUnattendContent>>? additionalUnattendContents;
  /// The Password which should be used for the local-administrator on this Virtual Machine. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** This is required unless using an existing OS Managed Disk by specifying `os_managed_disk_id`.
  final pulumi.Input<String>? adminPassword;
  /// The username of the local administrator used for the Virtual Machine. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** This is required unless using an existing OS Managed Disk by specifying `os_managed_disk_id`.
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
  /// &gt; **NOTE:** `bypass_platform_safety_checks_on_user_schedule_enabled` can only be set to `true` when `patch_mode` is set to `AutomaticByPlatform`.
  final pulumi.Input<bool>? bypassPlatformSafetyChecksOnUserScheduleEnabled;
  /// Specifies the ID of the Capacity Reservation Group which the Virtual Machine should be allocated to.
  ///
  /// &gt; **NOTE:** `capacity_reservation_group_id` cannot be used with `availability_set_id` or `proximity_placement_group_id`
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
  /// &gt; **NOTE:** This can only be configured when `priority` is set to `Spot`.
  final pulumi.Input<String>? evictionPolicy;
  /// Specifies the duration allocated for all extensions to start. The time duration should be between 15 minutes and 120 minutes (inclusive) and should be specified in ISO 8601 format. Defaults to `PT1H30M`.
  final pulumi.Input<String>? extensionsTimeBudget;
  /// One or more `gallery_application` blocks as defined below.
  ///
  /// &gt; **Note** Gallery Application Assignments can be defined either directly on `azure.compute.WindowsVirtualMachine` resource, or using the `azure.compute.GalleryApplicationAssignment` resource - but the two approaches cannot be used together. If both are used with the same Virtual Machine, spurious changes will occur. If `azure.compute.GalleryApplicationAssignment` is used, it's recommended to use `ignore_changes` for the `gallery_application` block on the corresponding `azure.compute.WindowsVirtualMachine` resource, to avoid a persistent diff when using this resource.
  final pulumi.Input<List<WindowsVirtualMachineGalleryApplication>>? galleryApplications;
  /// Should the VM be patched without requiring a reboot? Possible values are `true` or `false`. Defaults to `false`. For more information about hot patching please see the [product documentation](https://docs.microsoft.com/azure/automanage/automanage-hotpatch).
  ///
  /// &gt; **NOTE:** Hotpatching can only be enabled if the `patch_mode` is set to `AutomaticByPlatform`, the `provision_vm_agent` is set to `true`, your `source_image_reference` references a hotpatching enabled image, and the VM's `size` is set to a [Azure generation 2](https://docs.microsoft.com/azure/virtual-machines/generation-2#generation-2-vm-sizes) VM. An example of how to correctly configure a Windows Virtual Machine to use the `hotpatching_enabled` field can be found in the `./examples/virtual-machines/windows/hotpatching-enabled` directory within the GitHub Repository.
  final pulumi.Input<bool>? hotpatchingEnabled;
  /// An `identity` block as defined below.
  final pulumi.Input<WindowsVirtualMachineIdentity>? identity;
  /// Specifies the type of on-premise license (also known as [Azure Hybrid Use Benefit](https://docs.microsoft.com/windows-server/get-started/azure-hybrid-benefit)) which should be used for this Virtual Machine. Possible values are `None`, `Windows_Client` and `Windows_Server`.
  final pulumi.Input<String>? licenseType;
  /// The Azure location where the Windows Virtual Machine should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The maximum price you're willing to pay for this Virtual Machine, in US Dollars; which must be greater than the current spot price. If this bid price falls below the current spot price the Virtual Machine will be evicted using the `eviction_policy`. Defaults to `-1`, which means that the Virtual Machine should not be evicted for price reasons.
  ///
  /// &gt; **NOTE:** This can only be configured when `priority` is set to `Spot`.
  final pulumi.Input<double>? maxBidPrice;
  /// The name of the Windows Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// . A list of Network Interface IDs which should be attached to this Virtual Machine. The first Network Interface ID in this list will be the Primary Network Interface on the Virtual Machine.
  final pulumi.Input<List<String>> networkInterfaceIds;
  /// An `os_disk` block as defined below.
  final pulumi.Input<WindowsVirtualMachineOsDisk> osDisk;
  /// A `os_image_notification` block as defined below.
  final pulumi.Input<WindowsVirtualMachineOsImageNotification>? osImageNotification;
  /// The ID of an existing Managed Disk to use as the OS Disk for this Windows Virtual Machine. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** When specifying an existing Managed Disk it is not currently possible to subsequently manage the Operating System Profile properties: `admin_username`, `admin_password`, `bypass_platform_safety_checks_on_user_schedule_enabled`, `computer_name`, `custom_data`, `provision_vm_agent`, `patch_mode`, `patch_assessment_mode`, or `reboot_setting`.
  final pulumi.Input<String>? osManagedDiskId;
  /// Specifies the mode of VM Guest Patching for the Virtual Machine. Possible values are `AutomaticByPlatform` or `ImageDefault`. Defaults to `ImageDefault`.
  ///
  /// &gt; **NOTE:** If the `patch_assessment_mode` is set to `AutomaticByPlatform` then the `provision_vm_agent` field must be set to `true`.
  final pulumi.Input<String>? patchAssessmentMode;
  /// Specifies the mode of in-guest patching to this Windows Virtual Machine. Possible values are `Manual`, `AutomaticByOS` and `AutomaticByPlatform`. Defaults to `AutomaticByOS`. For more information on patch modes please see the [product documentation](https://docs.microsoft.com/azure/virtual-machines/automatic-vm-guest-patching#patch-orchestration-modes).
  ///
  /// &gt; **NOTE:** If `patch_mode` is set to `AutomaticByPlatform` then `provision_vm_agent` must also be set to `true`. If the Virtual Machine is using a hotpatching enabled image the `patch_mode` must always be set to `AutomaticByPlatform`.
  final pulumi.Input<String>? patchMode;
  /// A `plan` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<WindowsVirtualMachinePlan>? plan;
  /// Specifies the Platform Fault Domain in which this Windows Virtual Machine should be created. Defaults to `-1`, which means this will be automatically assigned to a fault domain that best maintains balance across the available fault domains. Changing this forces a new Windows Virtual Machine to be created.
  final pulumi.Input<int>? platformFaultDomain;
  /// Specifies the priority of this Virtual Machine. Possible values are `Regular` and `Spot`. Defaults to `Regular`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? priority;
  /// Should the Azure VM Agent be provisioned on this Virtual Machine? Defaults to `true`. Changing this forces a new resource to be created.
  ///
  /// &gt; **NOTE:** If `provision_vm_agent` is set to `false` then `allow_extension_operations` must also be set to `false`.
  final pulumi.Input<bool>? provisionVmAgent;
  /// The ID of the Proximity Placement Group which the Virtual Machine should be assigned to.
  final pulumi.Input<String>? proximityPlacementGroupId;
  /// Specifies the reboot setting for platform scheduled patching. Possible values are `Always`, `IfRequired` and `Never`.
  ///
  /// &gt; **NOTE:** `reboot_setting` can only be set when `patch_mode` is set to `AutomaticByPlatform`.
  final pulumi.Input<String>? rebootSetting;
  /// The name of the Resource Group in which the Windows Virtual Machine should be exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// One or more `secret` blocks as defined below.
  final pulumi.Input<List<WindowsVirtualMachineSecret>>? secrets;
  /// Specifies if Secure Boot and Trusted Launch is enabled for the Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? secureBootEnabled;
  /// The SKU which should be used for this Virtual Machine, such as `Standard_F2`.
  final pulumi.Input<String> size;
  /// The ID of the Image which this Virtual Machine should be created from. Changing this forces a new resource to be created. Possible Image ID types include `Image ID`s, `Shared Image ID`s, `Shared Image Version ID`s, `Community Gallery Image ID`s, `Community Gallery Image Version ID`s, `Shared Gallery Image ID`s and `Shared Gallery Image Version ID`s.
  ///
  /// &gt; **NOTE:** One of either `source_image_id` or `source_image_reference` must be set.
  final pulumi.Input<String>? sourceImageId;
  /// A `source_image_reference` block as defined below. Changing this forces a new resource to be created.
  ///
  /// &gt; **NOTE:** One of either `source_image_id` or `source_image_reference` must be set.
  final pulumi.Input<WindowsVirtualMachineSourceImageReference>? sourceImageReference;
  /// A mapping of tags which should be assigned to this Virtual Machine.
  final pulumi.Input<Map<String, String>>? tags;
  /// A `termination_notification` block as defined below.
  final pulumi.Input<WindowsVirtualMachineTerminationNotification>? terminationNotification;
  /// Specifies the Time Zone which should be used by the Virtual Machine, [the possible values are defined here](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/). Changing this forces a new resource to be created.
  final pulumi.Input<String>? timezone;
  /// The Base64-Encoded User Data which should be used for this Virtual Machine.
  final pulumi.Input<String>? userData;
  /// Specifies the Orchestrated Virtual Machine Scale Set that this Virtual Machine should be created within.
  ///
  /// &gt; **NOTE:** To update `virtual_machine_scale_set_id` the Preview Feature `Microsoft.Compute/SingleFDAttachDetachVMToVmss` needs to be enabled, see [the documentation](https://review.learn.microsoft.com/azure/virtual-machine-scale-sets/virtual-machine-scale-sets-attach-detach-vm#enroll-in-the-preview) for more information.
  ///
  /// &gt; **NOTE:** Orchestrated Virtual Machine Scale Sets can be provisioned using [the `azure.compute.OrchestratedVirtualMachineScaleSet` resource](https://www.terraform.io/docs/providers/azurerm/r/orchestrated_virtual_machine_scale_set.html).
  ///
  /// &gt; **NOTE:** To attach an existing VM to a Virtual Machine Scale Set, the scale set must have `single_placement_group` set to `false`, see [the documentation](https://learn.microsoft.com/azure/virtual-machine-scale-sets/virtual-machine-scale-sets-attach-detach-vm?tabs=portal-1%2Cportal-2%2Cportal-3#limitations-for-attaching-an-existing-vm-to-a-scale-set) for more information.
  final pulumi.Input<String>? virtualMachineScaleSetId;
  /// Specifies whether VMAgent Platform Updates is enabled. Defaults to `false`.
  final pulumi.Input<bool>? vmAgentPlatformUpdatesEnabled;
  /// Specifies if vTPM (virtual Trusted Platform Module) and Trusted Launch is enabled for the Virtual Machine. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? vtpmEnabled;
  /// One or more `winrm_listener` blocks as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<WindowsVirtualMachineWinrmListener>>? winrmListeners;
  /// * `zones` - (Optional) Specifies the Availability Zone in which this Windows Virtual Machine should be located. Changing this forces a new Windows Virtual Machine to be created.
  final pulumi.Input<String>? zone;

  /// Creates a new [WindowsVirtualMachineArgs].
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
  /// [provisionVmAgent] Should the Azure VM Agent be provisioned on this Virtual Machine? Defaults to `true`. Changing this forces a new resource to be created.
  /// [proximityPlacementGroupId] The ID of the Proximity Placement Group which the Virtual Machine should be assigned to.
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
  /// [virtualMachineScaleSetId] Specifies the Orchestrated Virtual Machine Scale Set that this Virtual Machine should be created within.
  /// [vmAgentPlatformUpdatesEnabled] Specifies whether VMAgent Platform Updates is enabled. Defaults to `false`.
  /// [vtpmEnabled] Specifies if vTPM (virtual Trusted Platform Module) and Trusted Launch is enabled for the Virtual Machine. Changing this forces a new resource to be created.
  /// [winrmListeners] One or more `winrm_listener` blocks as defined below. Changing this forces a new resource to be created.
  /// [zone] * `zones` - (Optional) Specifies the Availability Zone in which this Windows Virtual Machine should be located. Changing this forces a new Windows Virtual Machine to be created.
  const WindowsVirtualMachineArgs({
    this.additionalCapabilities,
    this.additionalUnattendContents,
    this.adminPassword,
    this.adminUsername,
    this.allowExtensionOperations,
    this.automaticUpdatesEnabled,
    this.availabilitySetId,
    this.bootDiagnostics,
    this.bypassPlatformSafetyChecksOnUserScheduleEnabled,
    this.capacityReservationGroupId,
    this.computerName,
    this.customData,
    this.dedicatedHostGroupId,
    this.dedicatedHostId,
    this.diskControllerType,
    this.edgeZone,
    this.enableAutomaticUpdates,
    this.encryptionAtHostEnabled,
    this.evictionPolicy,
    this.extensionsTimeBudget,
    this.galleryApplications,
    this.hotpatchingEnabled,
    this.identity,
    this.licenseType,
    this.location,
    this.maxBidPrice,
    this.name,
    required this.networkInterfaceIds,
    required this.osDisk,
    this.osImageNotification,
    this.osManagedDiskId,
    this.patchAssessmentMode,
    this.patchMode,
    this.plan,
    this.platformFaultDomain,
    this.priority,
    this.provisionVmAgent,
    this.proximityPlacementGroupId,
    this.rebootSetting,
    required this.resourceGroupName,
    this.secrets,
    this.secureBootEnabled,
    required this.size,
    this.sourceImageId,
    this.sourceImageReference,
    this.tags,
    this.terminationNotification,
    this.timezone,
    this.userData,
    this.virtualMachineScaleSetId,
    this.vmAgentPlatformUpdatesEnabled,
    this.vtpmEnabled,
    this.winrmListeners,
    this.zone,
  });

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
      'networkInterfaceIds': networkInterfaceIds,
      'osDisk': pulumi.Input.mapInputValue<WindowsVirtualMachineOsDisk, Map<String, dynamic>>(osDisk, (value) => value.toMap()),
      'osImageNotification': ?pulumi.Input.mapOptionalInputValue<WindowsVirtualMachineOsImageNotification, Map<String, dynamic>>(osImageNotification, (value) => value.toMap()),
      'osManagedDiskId': ?osManagedDiskId,
      'patchAssessmentMode': ?patchAssessmentMode,
      'patchMode': ?patchMode,
      'plan': ?pulumi.Input.mapOptionalInputValue<WindowsVirtualMachinePlan, Map<String, dynamic>>(plan, (value) => value.toMap()),
      'platformFaultDomain': ?platformFaultDomain,
      'priority': ?priority,
      'provisionVmAgent': ?provisionVmAgent,
      'proximityPlacementGroupId': ?proximityPlacementGroupId,
      'rebootSetting': ?rebootSetting,
      'resourceGroupName': resourceGroupName,
      'secrets': ?pulumi.Input.mapOptionalInputValue<List<WindowsVirtualMachineSecret>, List<Map<String, dynamic>>>(secrets, (value) => pulumi.Input.encodeList<WindowsVirtualMachineSecret, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secureBootEnabled': ?secureBootEnabled,
      'size': size,
      'sourceImageId': ?sourceImageId,
      'sourceImageReference': ?pulumi.Input.mapOptionalInputValue<WindowsVirtualMachineSourceImageReference, Map<String, dynamic>>(sourceImageReference, (value) => value.toMap()),
      'tags': ?tags,
      'terminationNotification': ?pulumi.Input.mapOptionalInputValue<WindowsVirtualMachineTerminationNotification, Map<String, dynamic>>(terminationNotification, (value) => value.toMap()),
      'timezone': ?timezone,
      'userData': ?userData,
      'virtualMachineScaleSetId': ?virtualMachineScaleSetId,
      'vmAgentPlatformUpdatesEnabled': ?vmAgentPlatformUpdatesEnabled,
      'vtpmEnabled': ?vtpmEnabled,
      'winrmListeners': ?pulumi.Input.mapOptionalInputValue<List<WindowsVirtualMachineWinrmListener>, List<Map<String, dynamic>>>(winrmListeners, (value) => pulumi.Input.encodeList<WindowsVirtualMachineWinrmListener, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zone': ?zone,
    };
  }

  factory WindowsVirtualMachineArgs.fromMap(Map<String, dynamic> map) {
    return WindowsVirtualMachineArgs(
      additionalCapabilities: (() { final guardedValue = map['additionalCapabilities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WindowsVirtualMachineAdditionalCapabilities.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      additionalUnattendContents: (() { final guardedValue = map['additionalUnattendContents']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WindowsVirtualMachineAdditionalUnattendContent>(guardedValue, (value) => WindowsVirtualMachineAdditionalUnattendContent.fromMap((value as Map).cast<String, dynamic>()))); })(),
      adminPassword: (() { final guardedValue = map['adminPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      adminUsername: (() { final guardedValue = map['adminUsername']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      allowExtensionOperations: (() { final guardedValue = map['allowExtensionOperations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      automaticUpdatesEnabled: (() { final guardedValue = map['automaticUpdatesEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      availabilitySetId: (() { final guardedValue = map['availabilitySetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bootDiagnostics: (() { final guardedValue = map['bootDiagnostics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WindowsVirtualMachineBootDiagnostics.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bypassPlatformSafetyChecksOnUserScheduleEnabled: (() { final guardedValue = map['bypassPlatformSafetyChecksOnUserScheduleEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      capacityReservationGroupId: (() { final guardedValue = map['capacityReservationGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      computerName: (() { final guardedValue = map['computerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customData: (() { final guardedValue = map['customData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dedicatedHostGroupId: (() { final guardedValue = map['dedicatedHostGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dedicatedHostId: (() { final guardedValue = map['dedicatedHostId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskControllerType: (() { final guardedValue = map['diskControllerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      edgeZone: (() { final guardedValue = map['edgeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableAutomaticUpdates: (() { final guardedValue = map['enableAutomaticUpdates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      encryptionAtHostEnabled: (() { final guardedValue = map['encryptionAtHostEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      evictionPolicy: (() { final guardedValue = map['evictionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extensionsTimeBudget: (() { final guardedValue = map['extensionsTimeBudget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      galleryApplications: (() { final guardedValue = map['galleryApplications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WindowsVirtualMachineGalleryApplication>(guardedValue, (value) => WindowsVirtualMachineGalleryApplication.fromMap((value as Map).cast<String, dynamic>()))); })(),
      hotpatchingEnabled: (() { final guardedValue = map['hotpatchingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WindowsVirtualMachineIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      licenseType: (() { final guardedValue = map['licenseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxBidPrice: (() { final guardedValue = map['maxBidPrice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfaceIds: pulumi.Input.fromValue((map['networkInterfaceIds'] as List).cast<String>()),
      osDisk: pulumi.Input.fromValue(WindowsVirtualMachineOsDisk.fromMap((map['osDisk']! as Map).cast<String, dynamic>())),
      osImageNotification: (() { final guardedValue = map['osImageNotification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WindowsVirtualMachineOsImageNotification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      osManagedDiskId: (() { final guardedValue = map['osManagedDiskId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      patchAssessmentMode: (() { final guardedValue = map['patchAssessmentMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      patchMode: (() { final guardedValue = map['patchMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      plan: (() { final guardedValue = map['plan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WindowsVirtualMachinePlan.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      platformFaultDomain: (() { final guardedValue = map['platformFaultDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisionVmAgent: (() { final guardedValue = map['provisionVmAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      proximityPlacementGroupId: (() { final guardedValue = map['proximityPlacementGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rebootSetting: (() { final guardedValue = map['rebootSetting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      secrets: (() { final guardedValue = map['secrets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WindowsVirtualMachineSecret>(guardedValue, (value) => WindowsVirtualMachineSecret.fromMap((value as Map).cast<String, dynamic>()))); })(),
      secureBootEnabled: (() { final guardedValue = map['secureBootEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      size: pulumi.Input.fromValue(map['size'] as String),
      sourceImageId: (() { final guardedValue = map['sourceImageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceImageReference: (() { final guardedValue = map['sourceImageReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WindowsVirtualMachineSourceImageReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      terminationNotification: (() { final guardedValue = map['terminationNotification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WindowsVirtualMachineTerminationNotification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timezone: (() { final guardedValue = map['timezone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userData: (() { final guardedValue = map['userData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualMachineScaleSetId: (() { final guardedValue = map['virtualMachineScaleSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmAgentPlatformUpdatesEnabled: (() { final guardedValue = map['vmAgentPlatformUpdatesEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      vtpmEnabled: (() { final guardedValue = map['vtpmEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      winrmListeners: (() { final guardedValue = map['winrmListeners']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WindowsVirtualMachineWinrmListener>(guardedValue, (value) => WindowsVirtualMachineWinrmListener.fromMap((value as Map).cast<String, dynamic>()))); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

