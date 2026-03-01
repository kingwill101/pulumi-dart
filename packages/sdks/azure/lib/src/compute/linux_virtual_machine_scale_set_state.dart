// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_virtual_machine_scale_set_additional_capabilities.dart';
import 'linux_virtual_machine_scale_set_admin_ssh_key.dart';
import 'linux_virtual_machine_scale_set_automatic_instance_repair.dart';
import 'linux_virtual_machine_scale_set_automatic_os_upgrade_policy.dart';
import 'linux_virtual_machine_scale_set_boot_diagnostics.dart';
import 'linux_virtual_machine_scale_set_data_disk.dart';
import 'linux_virtual_machine_scale_set_extension.dart';
import 'linux_virtual_machine_scale_set_gallery_application.dart';
import 'linux_virtual_machine_scale_set_identity.dart';
import 'linux_virtual_machine_scale_set_network_interface.dart';
import 'linux_virtual_machine_scale_set_os_disk.dart';
import 'linux_virtual_machine_scale_set_plan.dart';
import 'linux_virtual_machine_scale_set_rolling_upgrade_policy.dart';
import 'linux_virtual_machine_scale_set_scale_in.dart';
import 'linux_virtual_machine_scale_set_secret.dart';
import 'linux_virtual_machine_scale_set_source_image_reference.dart';
import 'linux_virtual_machine_scale_set_spot_restore.dart';
import 'linux_virtual_machine_scale_set_termination_notification.dart';

/// Input properties used for looking up and filtering LinuxVirtualMachineScaleSet resources.
class LinuxVirtualMachineScaleSetState {
  /// An `additional_capabilities` block as defined below.
  final pulumi.Input<LinuxVirtualMachineScaleSetAdditionalCapabilities>? additionalCapabilities;
  /// The Password which should be used for the local-administrator on this Virtual Machine. Changing this forces a new resource to be created.
  ///
  /// > **Note:** When an `admin_password` is specified `disable_password_authentication` must be set to `false`.
  ///
  /// > **Note:** One of either `admin_password` or `admin_ssh_key` must be specified.
  final pulumi.Input<String>? adminPassword;
  /// One or more `admin_ssh_key` blocks as defined below.
  ///
  /// > **Note:** One of either `admin_password` or `admin_ssh_key` must be specified.
  final pulumi.Input<List<LinuxVirtualMachineScaleSetAdminSshKey>>? adminSshKeys;
  /// The username of the local administrator on each Virtual Machine Scale Set instance. Changing this forces a new resource to be created.
  final pulumi.Input<String>? adminUsername;
  /// An `automatic_instance_repair` block as defined below. To enable the automatic instance repair, this Virtual Machine Scale Set must have a valid `health_probe_id` or an [Application Health Extension](https://docs.microsoft.com/azure/virtual-machine-scale-sets/virtual-machine-scale-sets-health-extension).
  ///
  /// > **Note:** For more information about Automatic Instance Repair, please refer to the [product documentation](https://docs.microsoft.com/azure/virtual-machine-scale-sets/virtual-machine-scale-sets-automatic-instance-repairs).
  final pulumi.Input<LinuxVirtualMachineScaleSetAutomaticInstanceRepair>? automaticInstanceRepair;
  /// An `automatic_os_upgrade_policy` block as defined below. This can only be specified when `upgrade_mode` is set to either `Automatic` or `Rolling`.
  final pulumi.Input<LinuxVirtualMachineScaleSetAutomaticOsUpgradePolicy>? automaticOsUpgradePolicy;
  /// A `boot_diagnostics` block as defined below.
  final pulumi.Input<LinuxVirtualMachineScaleSetBootDiagnostics>? bootDiagnostics;
  /// Specifies the ID of the Capacity Reservation Group which the Virtual Machine Scale Set should be allocated to. Changing this forces a new resource to be created.
  ///
  /// > **Note:** `capacity_reservation_group_id` cannot be used with `proximity_placement_group_id`
  ///
  /// > **Note:** `single_placement_group` must be set to `false` when `capacity_reservation_group_id` is specified.
  final pulumi.Input<String>? capacityReservationGroupId;
  /// The prefix which should be used for the name of the Virtual Machines in this Scale Set. If unspecified this defaults to the value for the `name` field. If the value of the `name` field is not a valid `computer_name_prefix`, then you must specify `computer_name_prefix`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? computerNamePrefix;
  /// The Base64-Encoded Custom Data which should be used for this Virtual Machine Scale Set.
  ///
  /// > **Note:** When Custom Data has been configured, it's not possible to remove it without tainting the Virtual Machine Scale Set, due to a limitation of the Azure API.
  final pulumi.Input<String>? customData;
  /// One or more `data_disk` blocks as defined below.
  final pulumi.Input<List<LinuxVirtualMachineScaleSetDataDisk>>? dataDisks;
  /// Should Password Authentication be disabled on this Virtual Machine Scale Set? Defaults to `true`.
  ///
  /// > **Note:** In general we'd recommend using SSH Keys for authentication rather than Passwords - but there's tradeoff's to each - please [see this thread for more information](https://security.stackexchange.com/questions/69407/why-is-using-an-ssh-key-more-secure-than-using-passwords).
  ///
  /// > **Note:** When a `admin_password` is specified `disable_password_authentication` must be set to `false`.
  final pulumi.Input<bool>? disablePasswordAuthentication;
  /// Should Virtual Machine Extensions be run on Overprovisioned Virtual Machines in the Scale Set? Defaults to `false`.
  final pulumi.Input<bool>? doNotRunExtensionsOnOverprovisionedMachines;
  /// Specifies the Edge Zone within the Azure Region where this Linux Virtual Machine Scale Set should exist. Changing this forces a new Linux Virtual Machine Scale Set to be created.
  final pulumi.Input<String>? edgeZone;
  /// Should all of the disks (including the temp disk) attached to this Virtual Machine be encrypted by enabling Encryption at Host?
  final pulumi.Input<bool>? encryptionAtHostEnabled;
  /// Specifies the eviction policy for Virtual Machines in this Scale Set. Possible values are `Deallocate` and `Delete`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** This can only be configured when `priority` is set to `Spot`.
  final pulumi.Input<String>? evictionPolicy;
  /// Should extension operations be allowed on the Virtual Machine Scale Set? Possible values are `true` or `false`. Defaults to `true`. Changing this forces a new Linux Virtual Machine Scale Set to be created.
  ///
  /// > **Note:** `extension_operations_enabled` may only be set to `false` if there are no extensions defined in the `extension` field.
  final pulumi.Input<bool>? extensionOperationsEnabled;
  /// One or more `extension` blocks as defined below
  final pulumi.Input<List<LinuxVirtualMachineScaleSetExtension>>? extensions;
  /// Specifies the duration allocated for all extensions to start. The time duration should be between `15` minutes and `120` minutes (inclusive) and should be specified in ISO 8601 format. Defaults to `PT1H30M`.
  final pulumi.Input<String>? extensionsTimeBudget;
  /// One or more `gallery_application` blocks as defined below.
  final pulumi.Input<List<LinuxVirtualMachineScaleSetGalleryApplication>>? galleryApplications;
  /// The ID of a Load Balancer Probe which should be used to determine the health of an instance. This is Required and can only be specified when `upgrade_mode` is set to `Automatic` or `Rolling`.
  final pulumi.Input<String>? healthProbeId;
  /// Specifies the ID of the dedicated host group that the virtual machine scale set resides in. Changing this forces a new resource to be created.
  final pulumi.Input<String>? hostGroupId;
  /// An `identity` block as defined below.
  final pulumi.Input<LinuxVirtualMachineScaleSetIdentity>? identity;
  /// The number of Virtual Machines in the Scale Set. Defaults to `0`.
  ///
  /// > **NOTE:** If you're using AutoScaling, you may wish to use [`Ignore Changes` functionality](https://www.pulumi.com/docs/intro/concepts/programming-model/#ignorechanges) to ignore changes to this field.
  final pulumi.Input<int>? instances;
  /// The Azure location where the Linux Virtual Machine Scale Set should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The maximum price you're willing to pay for each Virtual Machine in this Scale Set, in US Dollars; which must be greater than the current spot price. If this bid price falls below the current spot price the Virtual Machines in the Scale Set will be evicted using the `eviction_policy`. Defaults to `-1`, which means that each Virtual Machine in this Scale Set should not be evicted for price reasons.
  ///
  /// > **Note:** This can only be configured when `priority` is set to `Spot`.
  final pulumi.Input<double>? maxBidPrice;
  /// The name of the Linux Virtual Machine Scale Set. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// One or more `network_interface` blocks as defined below.
  final pulumi.Input<List<LinuxVirtualMachineScaleSetNetworkInterface>>? networkInterfaces;
  /// An `os_disk` block as defined below.
  final pulumi.Input<LinuxVirtualMachineScaleSetOsDisk>? osDisk;
  /// Should Azure over-provision Virtual Machines in this Scale Set? This means that multiple Virtual Machines will be provisioned and Azure will keep the instances which become available first - which improves provisioning success rates and improves deployment time. You're not billed for these over-provisioned VM's and they don't count towards the Subscription Quota. Defaults to `true`.
  final pulumi.Input<bool>? overprovision;
  /// A `plan` block as defined below. Changing this forces a new resource to be created.
  ///
  /// > **Note:** When using an image from Azure Marketplace a `plan` must be specified.
  final pulumi.Input<LinuxVirtualMachineScaleSetPlan>? plan;
  /// Specifies the number of fault domains that are used by this Linux Virtual Machine Scale Set. Changing this forces a new resource to be created.
  final pulumi.Input<int>? platformFaultDomainCount;
  /// The Priority of this Virtual Machine Scale Set. Possible values are `Regular` and `Spot`. Defaults to `Regular`. Changing this value forces a new resource.
  ///
  /// > **Note:** When `priority` is set to `Spot` an `eviction_policy` must be specified.
  final pulumi.Input<String>? priority;
  /// Should the Azure VM Agent be provisioned on each Virtual Machine in the Scale Set? Defaults to `true`. Changing this value forces a new resource to be created.
  final pulumi.Input<bool>? provisionVmAgent;
  /// The ID of the Proximity Placement Group in which the Virtual Machine Scale Set should be assigned to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? proximityPlacementGroupId;
  /// Should resilient VM creation be enabled? When enabled, the service will attempt to create VMs in alternative fault domains or zones if the primary location fails during creation. Defaults to `false`.
  ///
  /// > **Note:** `resilient_vm_creation_enabled` is currently not supported in the `austriaeast`, `belgiumcentral`, `centraluseuap`, `chilecentral`, `indonesiacentral`, `israelnorthwest`, `malaysiawest`, `mexicocentral`, `newzealandnorth`, `southcentralus2`, `southindia`, `southeastus3`, `southwestus`, `eastasia`, `eastus`, `southcentralus`, `southeastasia`, and `westeurope` regions.
  final pulumi.Input<bool>? resilientVmCreationEnabled;
  /// Should resilient VM deletion be enabled? When enabled, the service will use a more resilient deletion process that attempts to gracefully handle failures during VM termination. Defaults to `false`.
  ///
  /// > **Note:** `resilient_vm_deletion_enabled` is currently not supported in the `austriaeast`, `belgiumcentral`, `centraluseuap`, `chilecentral`, `indonesiacentral`, `israelnorthwest`, `malaysiawest`, `mexicocentral`, `newzealandnorth`, `southcentralus2`, `southindia`, `southeastus3`, `southwestus`, `eastasia`, `eastus`, `southcentralus`, `southeastasia`, and `westeurope` regions.
  final pulumi.Input<bool>? resilientVmDeletionEnabled;
  /// The name of the Resource Group in which the Linux Virtual Machine Scale Set should be exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A `rolling_upgrade_policy` block as defined below. This is Required and can only be specified when `upgrade_mode` is set to `Automatic` or `Rolling`. Changing this forces a new resource to be created.
  final pulumi.Input<LinuxVirtualMachineScaleSetRollingUpgradePolicy>? rollingUpgradePolicy;
  /// A `scale_in` block as defined below.
  final pulumi.Input<LinuxVirtualMachineScaleSetScaleIn>? scaleIn;
  /// One or more `secret` blocks as defined below.
  final pulumi.Input<List<LinuxVirtualMachineScaleSetSecret>>? secrets;
  /// Specifies whether secure boot should be enabled on the virtual machine. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? secureBootEnabled;
  /// Should this Virtual Machine Scale Set be limited to a Single Placement Group, which means the number of instances will be capped at 100 Virtual Machines. Defaults to `true`.
  final pulumi.Input<bool>? singlePlacementGroup;
  /// The Virtual Machine SKU for the Scale Set, such as `Standard_F2`.
  final pulumi.Input<String>? sku;
  /// The ID of an Image which each Virtual Machine in this Scale Set should be based on. Possible Image ID types include `Image ID`, `Shared Image ID`, `Shared Image Version ID`, `Community Gallery Image ID`, `Community Gallery Image Version ID`, `Shared Gallery Image ID` and `Shared Gallery Image Version ID`.
  ///
  /// > **Note:** One of either `source_image_id` or `source_image_reference` must be set.
  final pulumi.Input<String>? sourceImageId;
  /// A `source_image_reference` block as defined below.
  ///
  /// > **Note:** One of either `source_image_id` or `source_image_reference` must be set.
  final pulumi.Input<LinuxVirtualMachineScaleSetSourceImageReference>? sourceImageReference;
  /// A `spot_restore` block as defined below.
  final pulumi.Input<LinuxVirtualMachineScaleSetSpotRestore>? spotRestore;
  /// A mapping of tags which should be assigned to this Virtual Machine Scale Set.
  final pulumi.Input<Map<String, String>>? tags;
  /// A `termination_notification` block as defined below.
  final pulumi.Input<LinuxVirtualMachineScaleSetTerminationNotification>? terminationNotification;
  /// The Unique ID for this Linux Virtual Machine Scale Set.
  final pulumi.Input<String>? uniqueId;
  /// Specifies how Upgrades (e.g. changing the Image/SKU) should be performed to Virtual Machine Instances. Possible values are `Automatic`, `Manual` and `Rolling`. Defaults to `Manual`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** If rolling upgrades are configured and running on a Linux Virtual Machine Scale Set, they will be cancelled when Terraform tries to destroy the resource.
  final pulumi.Input<String>? upgradeMode;
  /// The Base64-Encoded User Data which should be used for this Virtual Machine Scale Set.
  final pulumi.Input<String>? userData;
  /// Specifies whether vTPM should be enabled on the virtual machine. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? vtpmEnabled;
  /// Should the Virtual Machines in this Scale Set be strictly evenly distributed across Availability Zones? Defaults to `false`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** This can only be set to `true` when one or more `zones` are configured.
  final pulumi.Input<bool>? zoneBalance;
  /// Specifies a list of Availability Zones in which this Linux Virtual Machine Scale Set should be located.
  ///
  /// > **Note:** Updating `zones` to remove an existing zone forces a new Virtual Machine Scale Set to be created.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [LinuxVirtualMachineScaleSetState].
  /// [additionalCapabilities] An `additional_capabilities` block as defined below.
  /// [adminPassword] The Password which should be used for the local-administrator on this Virtual Machine. Changing this forces a new resource to be created.
  /// [adminSshKeys] One or more `admin_ssh_key` blocks as defined below.
  /// [adminUsername] The username of the local administrator on each Virtual Machine Scale Set instance. Changing this forces a new resource to be created.
  /// [automaticInstanceRepair] An `automatic_instance_repair` block as defined below. To enable the automatic instance repair, this Virtual Machine Scale Set must have a valid `health_probe_id` or an [Application Health Extension](https://docs.microsoft.com/azure/virtual-machine-scale-sets/virtual-machine-scale-sets-health-extension).
  /// [automaticOsUpgradePolicy] An `automatic_os_upgrade_policy` block as defined below. This can only be specified when `upgrade_mode` is set to either `Automatic` or `Rolling`.
  /// [bootDiagnostics] A `boot_diagnostics` block as defined below.
  /// [capacityReservationGroupId] Specifies the ID of the Capacity Reservation Group which the Virtual Machine Scale Set should be allocated to. Changing this forces a new resource to be created.
  /// [computerNamePrefix] The prefix which should be used for the name of the Virtual Machines in this Scale Set. If unspecified this defaults to the value for the `name` field. If the value of the `name` field is not a valid `computer_name_prefix`, then you must specify `computer_name_prefix`. Changing this forces a new resource to be created.
  /// [customData] The Base64-Encoded Custom Data which should be used for this Virtual Machine Scale Set.
  /// [dataDisks] One or more `data_disk` blocks as defined below.
  /// [disablePasswordAuthentication] Should Password Authentication be disabled on this Virtual Machine Scale Set? Defaults to `true`.
  /// [doNotRunExtensionsOnOverprovisionedMachines] Should Virtual Machine Extensions be run on Overprovisioned Virtual Machines in the Scale Set? Defaults to `false`.
  /// [edgeZone] Specifies the Edge Zone within the Azure Region where this Linux Virtual Machine Scale Set should exist. Changing this forces a new Linux Virtual Machine Scale Set to be created.
  /// [encryptionAtHostEnabled] Should all of the disks (including the temp disk) attached to this Virtual Machine be encrypted by enabling Encryption at Host?
  /// [evictionPolicy] Specifies the eviction policy for Virtual Machines in this Scale Set. Possible values are `Deallocate` and `Delete`. Changing this forces a new resource to be created.
  /// [extensionOperationsEnabled] Should extension operations be allowed on the Virtual Machine Scale Set? Possible values are `true` or `false`. Defaults to `true`. Changing this forces a new Linux Virtual Machine Scale Set to be created.
  /// [extensions] One or more `extension` blocks as defined below
  /// [extensionsTimeBudget] Specifies the duration allocated for all extensions to start. The time duration should be between `15` minutes and `120` minutes (inclusive) and should be specified in ISO 8601 format. Defaults to `PT1H30M`.
  /// [galleryApplications] One or more `gallery_application` blocks as defined below.
  /// [healthProbeId] The ID of a Load Balancer Probe which should be used to determine the health of an instance. This is Required and can only be specified when `upgrade_mode` is set to `Automatic` or `Rolling`.
  /// [hostGroupId] Specifies the ID of the dedicated host group that the virtual machine scale set resides in. Changing this forces a new resource to be created.
  /// [identity] An `identity` block as defined below.
  /// [instances] The number of Virtual Machines in the Scale Set. Defaults to `0`.
  /// [location] The Azure location where the Linux Virtual Machine Scale Set should exist. Changing this forces a new resource to be created.
  /// [maxBidPrice] The maximum price you're willing to pay for each Virtual Machine in this Scale Set, in US Dollars; which must be greater than the current spot price. If this bid price falls below the current spot price the Virtual Machines in the Scale Set will be evicted using the `eviction_policy`. Defaults to `-1`, which means that each Virtual Machine in this Scale Set should not be evicted for price reasons.
  /// [name] The name of the Linux Virtual Machine Scale Set. Changing this forces a new resource to be created.
  /// [networkInterfaces] One or more `network_interface` blocks as defined below.
  /// [osDisk] An `os_disk` block as defined below.
  /// [overprovision] Should Azure over-provision Virtual Machines in this Scale Set? This means that multiple Virtual Machines will be provisioned and Azure will keep the instances which become available first - which improves provisioning success rates and improves deployment time. You're not billed for these over-provisioned VM's and they don't count towards the Subscription Quota. Defaults to `true`.
  /// [plan] A `plan` block as defined below. Changing this forces a new resource to be created.
  /// [platformFaultDomainCount] Specifies the number of fault domains that are used by this Linux Virtual Machine Scale Set. Changing this forces a new resource to be created.
  /// [priority] The Priority of this Virtual Machine Scale Set. Possible values are `Regular` and `Spot`. Defaults to `Regular`. Changing this value forces a new resource.
  /// [provisionVmAgent] Should the Azure VM Agent be provisioned on each Virtual Machine in the Scale Set? Defaults to `true`. Changing this value forces a new resource to be created.
  /// [proximityPlacementGroupId] The ID of the Proximity Placement Group in which the Virtual Machine Scale Set should be assigned to. Changing this forces a new resource to be created.
  /// [resilientVmCreationEnabled] Should resilient VM creation be enabled? When enabled, the service will attempt to create VMs in alternative fault domains or zones if the primary location fails during creation. Defaults to `false`.
  /// [resilientVmDeletionEnabled] Should resilient VM deletion be enabled? When enabled, the service will use a more resilient deletion process that attempts to gracefully handle failures during VM termination. Defaults to `false`.
  /// [resourceGroupName] The name of the Resource Group in which the Linux Virtual Machine Scale Set should be exist. Changing this forces a new resource to be created.
  /// [rollingUpgradePolicy] A `rolling_upgrade_policy` block as defined below. This is Required and can only be specified when `upgrade_mode` is set to `Automatic` or `Rolling`. Changing this forces a new resource to be created.
  /// [scaleIn] A `scale_in` block as defined below.
  /// [secrets] One or more `secret` blocks as defined below.
  /// [secureBootEnabled] Specifies whether secure boot should be enabled on the virtual machine. Changing this forces a new resource to be created.
  /// [singlePlacementGroup] Should this Virtual Machine Scale Set be limited to a Single Placement Group, which means the number of instances will be capped at 100 Virtual Machines. Defaults to `true`.
  /// [sku] The Virtual Machine SKU for the Scale Set, such as `Standard_F2`.
  /// [sourceImageId] The ID of an Image which each Virtual Machine in this Scale Set should be based on. Possible Image ID types include `Image ID`, `Shared Image ID`, `Shared Image Version ID`, `Community Gallery Image ID`, `Community Gallery Image Version ID`, `Shared Gallery Image ID` and `Shared Gallery Image Version ID`.
  /// [sourceImageReference] A `source_image_reference` block as defined below.
  /// [spotRestore] A `spot_restore` block as defined below.
  /// [tags] A mapping of tags which should be assigned to this Virtual Machine Scale Set.
  /// [terminationNotification] A `termination_notification` block as defined below.
  /// [uniqueId] The Unique ID for this Linux Virtual Machine Scale Set.
  /// [upgradeMode] Specifies how Upgrades (e.g. changing the Image/SKU) should be performed to Virtual Machine Instances. Possible values are `Automatic`, `Manual` and `Rolling`. Defaults to `Manual`. Changing this forces a new resource to be created.
  /// [userData] The Base64-Encoded User Data which should be used for this Virtual Machine Scale Set.
  /// [vtpmEnabled] Specifies whether vTPM should be enabled on the virtual machine. Changing this forces a new resource to be created.
  /// [zoneBalance] Should the Virtual Machines in this Scale Set be strictly evenly distributed across Availability Zones? Defaults to `false`. Changing this forces a new resource to be created.
  /// [zones] Specifies a list of Availability Zones in which this Linux Virtual Machine Scale Set should be located.
  LinuxVirtualMachineScaleSetState({
    pulumi.Output<LinuxVirtualMachineScaleSetAdditionalCapabilities>? additionalCapabilities,
    pulumi.Output<String>? adminPassword,
    pulumi.Output<List<LinuxVirtualMachineScaleSetAdminSshKey>>? adminSshKeys,
    pulumi.Output<String>? adminUsername,
    pulumi.Output<LinuxVirtualMachineScaleSetAutomaticInstanceRepair>? automaticInstanceRepair,
    pulumi.Output<LinuxVirtualMachineScaleSetAutomaticOsUpgradePolicy>? automaticOsUpgradePolicy,
    pulumi.Output<LinuxVirtualMachineScaleSetBootDiagnostics>? bootDiagnostics,
    pulumi.Output<String>? capacityReservationGroupId,
    pulumi.Output<String>? computerNamePrefix,
    pulumi.Output<String>? customData,
    pulumi.Output<List<LinuxVirtualMachineScaleSetDataDisk>>? dataDisks,
    pulumi.Output<bool>? disablePasswordAuthentication,
    pulumi.Output<bool>? doNotRunExtensionsOnOverprovisionedMachines,
    pulumi.Output<String>? edgeZone,
    pulumi.Output<bool>? encryptionAtHostEnabled,
    pulumi.Output<String>? evictionPolicy,
    pulumi.Output<bool>? extensionOperationsEnabled,
    pulumi.Output<List<LinuxVirtualMachineScaleSetExtension>>? extensions,
    pulumi.Output<String>? extensionsTimeBudget,
    pulumi.Output<List<LinuxVirtualMachineScaleSetGalleryApplication>>? galleryApplications,
    pulumi.Output<String>? healthProbeId,
    pulumi.Output<String>? hostGroupId,
    pulumi.Output<LinuxVirtualMachineScaleSetIdentity>? identity,
    pulumi.Output<int>? instances,
    pulumi.Output<String>? location,
    pulumi.Output<double>? maxBidPrice,
    pulumi.Output<String>? name,
    pulumi.Output<List<LinuxVirtualMachineScaleSetNetworkInterface>>? networkInterfaces,
    pulumi.Output<LinuxVirtualMachineScaleSetOsDisk>? osDisk,
    pulumi.Output<bool>? overprovision,
    pulumi.Output<LinuxVirtualMachineScaleSetPlan>? plan,
    pulumi.Output<int>? platformFaultDomainCount,
    pulumi.Output<String>? priority,
    pulumi.Output<bool>? provisionVmAgent,
    pulumi.Output<String>? proximityPlacementGroupId,
    pulumi.Output<bool>? resilientVmCreationEnabled,
    pulumi.Output<bool>? resilientVmDeletionEnabled,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<LinuxVirtualMachineScaleSetRollingUpgradePolicy>? rollingUpgradePolicy,
    pulumi.Output<LinuxVirtualMachineScaleSetScaleIn>? scaleIn,
    pulumi.Output<List<LinuxVirtualMachineScaleSetSecret>>? secrets,
    pulumi.Output<bool>? secureBootEnabled,
    pulumi.Output<bool>? singlePlacementGroup,
    pulumi.Output<String>? sku,
    pulumi.Output<String>? sourceImageId,
    pulumi.Output<LinuxVirtualMachineScaleSetSourceImageReference>? sourceImageReference,
    pulumi.Output<LinuxVirtualMachineScaleSetSpotRestore>? spotRestore,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<LinuxVirtualMachineScaleSetTerminationNotification>? terminationNotification,
    pulumi.Output<String>? uniqueId,
    pulumi.Output<String>? upgradeMode,
    pulumi.Output<String>? userData,
    pulumi.Output<bool>? vtpmEnabled,
    pulumi.Output<bool>? zoneBalance,
    pulumi.Output<List<String>>? zones,
  }) :
      additionalCapabilities = pulumi.Input.asOptionalInput<LinuxVirtualMachineScaleSetAdditionalCapabilities>(additionalCapabilities),
      adminPassword = pulumi.Input.asOptionalInput<String>(adminPassword),
      adminSshKeys = pulumi.Input.asOptionalInput<List<LinuxVirtualMachineScaleSetAdminSshKey>>(adminSshKeys),
      adminUsername = pulumi.Input.asOptionalInput<String>(adminUsername),
      automaticInstanceRepair = pulumi.Input.asOptionalInput<LinuxVirtualMachineScaleSetAutomaticInstanceRepair>(automaticInstanceRepair),
      automaticOsUpgradePolicy = pulumi.Input.asOptionalInput<LinuxVirtualMachineScaleSetAutomaticOsUpgradePolicy>(automaticOsUpgradePolicy),
      bootDiagnostics = pulumi.Input.asOptionalInput<LinuxVirtualMachineScaleSetBootDiagnostics>(bootDiagnostics),
      capacityReservationGroupId = pulumi.Input.asOptionalInput<String>(capacityReservationGroupId),
      computerNamePrefix = pulumi.Input.asOptionalInput<String>(computerNamePrefix),
      customData = pulumi.Input.asOptionalInput<String>(customData),
      dataDisks = pulumi.Input.asOptionalInput<List<LinuxVirtualMachineScaleSetDataDisk>>(dataDisks),
      disablePasswordAuthentication = pulumi.Input.asOptionalInput<bool>(disablePasswordAuthentication),
      doNotRunExtensionsOnOverprovisionedMachines = pulumi.Input.asOptionalInput<bool>(doNotRunExtensionsOnOverprovisionedMachines),
      edgeZone = pulumi.Input.asOptionalInput<String>(edgeZone),
      encryptionAtHostEnabled = pulumi.Input.asOptionalInput<bool>(encryptionAtHostEnabled),
      evictionPolicy = pulumi.Input.asOptionalInput<String>(evictionPolicy),
      extensionOperationsEnabled = pulumi.Input.asOptionalInput<bool>(extensionOperationsEnabled),
      extensions = pulumi.Input.asOptionalInput<List<LinuxVirtualMachineScaleSetExtension>>(extensions),
      extensionsTimeBudget = pulumi.Input.asOptionalInput<String>(extensionsTimeBudget),
      galleryApplications = pulumi.Input.asOptionalInput<List<LinuxVirtualMachineScaleSetGalleryApplication>>(galleryApplications),
      healthProbeId = pulumi.Input.asOptionalInput<String>(healthProbeId),
      hostGroupId = pulumi.Input.asOptionalInput<String>(hostGroupId),
      identity = pulumi.Input.asOptionalInput<LinuxVirtualMachineScaleSetIdentity>(identity),
      instances = pulumi.Input.asOptionalInput<int>(instances),
      location = pulumi.Input.asOptionalInput<String>(location),
      maxBidPrice = pulumi.Input.asOptionalInput<double>(maxBidPrice),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkInterfaces = pulumi.Input.asOptionalInput<List<LinuxVirtualMachineScaleSetNetworkInterface>>(networkInterfaces),
      osDisk = pulumi.Input.asOptionalInput<LinuxVirtualMachineScaleSetOsDisk>(osDisk),
      overprovision = pulumi.Input.asOptionalInput<bool>(overprovision),
      plan = pulumi.Input.asOptionalInput<LinuxVirtualMachineScaleSetPlan>(plan),
      platformFaultDomainCount = pulumi.Input.asOptionalInput<int>(platformFaultDomainCount),
      priority = pulumi.Input.asOptionalInput<String>(priority),
      provisionVmAgent = pulumi.Input.asOptionalInput<bool>(provisionVmAgent),
      proximityPlacementGroupId = pulumi.Input.asOptionalInput<String>(proximityPlacementGroupId),
      resilientVmCreationEnabled = pulumi.Input.asOptionalInput<bool>(resilientVmCreationEnabled),
      resilientVmDeletionEnabled = pulumi.Input.asOptionalInput<bool>(resilientVmDeletionEnabled),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      rollingUpgradePolicy = pulumi.Input.asOptionalInput<LinuxVirtualMachineScaleSetRollingUpgradePolicy>(rollingUpgradePolicy),
      scaleIn = pulumi.Input.asOptionalInput<LinuxVirtualMachineScaleSetScaleIn>(scaleIn),
      secrets = pulumi.Input.asOptionalInput<List<LinuxVirtualMachineScaleSetSecret>>(secrets),
      secureBootEnabled = pulumi.Input.asOptionalInput<bool>(secureBootEnabled),
      singlePlacementGroup = pulumi.Input.asOptionalInput<bool>(singlePlacementGroup),
      sku = pulumi.Input.asOptionalInput<String>(sku),
      sourceImageId = pulumi.Input.asOptionalInput<String>(sourceImageId),
      sourceImageReference = pulumi.Input.asOptionalInput<LinuxVirtualMachineScaleSetSourceImageReference>(sourceImageReference),
      spotRestore = pulumi.Input.asOptionalInput<LinuxVirtualMachineScaleSetSpotRestore>(spotRestore),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      terminationNotification = pulumi.Input.asOptionalInput<LinuxVirtualMachineScaleSetTerminationNotification>(terminationNotification),
      uniqueId = pulumi.Input.asOptionalInput<String>(uniqueId),
      upgradeMode = pulumi.Input.asOptionalInput<String>(upgradeMode),
      userData = pulumi.Input.asOptionalInput<String>(userData),
      vtpmEnabled = pulumi.Input.asOptionalInput<bool>(vtpmEnabled),
      zoneBalance = pulumi.Input.asOptionalInput<bool>(zoneBalance),
      zones = pulumi.Input.asOptionalInput<List<String>>(zones);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalCapabilities': ?pulumi.Input.mapOptionalInputValue<LinuxVirtualMachineScaleSetAdditionalCapabilities, Map<String, dynamic>>(additionalCapabilities, (value) => value.toMap()),
      'adminPassword': ?adminPassword,
      'adminSshKeys': ?pulumi.Input.mapOptionalInputValue<List<LinuxVirtualMachineScaleSetAdminSshKey>, List<Map<String, dynamic>>>(adminSshKeys, (value) => pulumi.Input.encodeList<LinuxVirtualMachineScaleSetAdminSshKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'adminUsername': ?adminUsername,
      'automaticInstanceRepair': ?pulumi.Input.mapOptionalInputValue<LinuxVirtualMachineScaleSetAutomaticInstanceRepair, Map<String, dynamic>>(automaticInstanceRepair, (value) => value.toMap()),
      'automaticOsUpgradePolicy': ?pulumi.Input.mapOptionalInputValue<LinuxVirtualMachineScaleSetAutomaticOsUpgradePolicy, Map<String, dynamic>>(automaticOsUpgradePolicy, (value) => value.toMap()),
      'bootDiagnostics': ?pulumi.Input.mapOptionalInputValue<LinuxVirtualMachineScaleSetBootDiagnostics, Map<String, dynamic>>(bootDiagnostics, (value) => value.toMap()),
      'capacityReservationGroupId': ?capacityReservationGroupId,
      'computerNamePrefix': ?computerNamePrefix,
      'customData': ?customData,
      'dataDisks': ?pulumi.Input.mapOptionalInputValue<List<LinuxVirtualMachineScaleSetDataDisk>, List<Map<String, dynamic>>>(dataDisks, (value) => pulumi.Input.encodeList<LinuxVirtualMachineScaleSetDataDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'disablePasswordAuthentication': ?disablePasswordAuthentication,
      'doNotRunExtensionsOnOverprovisionedMachines': ?doNotRunExtensionsOnOverprovisionedMachines,
      'edgeZone': ?edgeZone,
      'encryptionAtHostEnabled': ?encryptionAtHostEnabled,
      'evictionPolicy': ?evictionPolicy,
      'extensionOperationsEnabled': ?extensionOperationsEnabled,
      'extensions': ?pulumi.Input.mapOptionalInputValue<List<LinuxVirtualMachineScaleSetExtension>, List<Map<String, dynamic>>>(extensions, (value) => pulumi.Input.encodeList<LinuxVirtualMachineScaleSetExtension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'extensionsTimeBudget': ?extensionsTimeBudget,
      'galleryApplications': ?pulumi.Input.mapOptionalInputValue<List<LinuxVirtualMachineScaleSetGalleryApplication>, List<Map<String, dynamic>>>(galleryApplications, (value) => pulumi.Input.encodeList<LinuxVirtualMachineScaleSetGalleryApplication, Map<String, dynamic>>(value, (value) => value.toMap())),
      'healthProbeId': ?healthProbeId,
      'hostGroupId': ?hostGroupId,
      'identity': ?pulumi.Input.mapOptionalInputValue<LinuxVirtualMachineScaleSetIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'instances': ?instances,
      'location': ?location,
      'maxBidPrice': ?maxBidPrice,
      'name': ?name,
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<LinuxVirtualMachineScaleSetNetworkInterface>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<LinuxVirtualMachineScaleSetNetworkInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'osDisk': ?pulumi.Input.mapOptionalInputValue<LinuxVirtualMachineScaleSetOsDisk, Map<String, dynamic>>(osDisk, (value) => value.toMap()),
      'overprovision': ?overprovision,
      'plan': ?pulumi.Input.mapOptionalInputValue<LinuxVirtualMachineScaleSetPlan, Map<String, dynamic>>(plan, (value) => value.toMap()),
      'platformFaultDomainCount': ?platformFaultDomainCount,
      'priority': ?priority,
      'provisionVmAgent': ?provisionVmAgent,
      'proximityPlacementGroupId': ?proximityPlacementGroupId,
      'resilientVmCreationEnabled': ?resilientVmCreationEnabled,
      'resilientVmDeletionEnabled': ?resilientVmDeletionEnabled,
      'resourceGroupName': ?resourceGroupName,
      'rollingUpgradePolicy': ?pulumi.Input.mapOptionalInputValue<LinuxVirtualMachineScaleSetRollingUpgradePolicy, Map<String, dynamic>>(rollingUpgradePolicy, (value) => value.toMap()),
      'scaleIn': ?pulumi.Input.mapOptionalInputValue<LinuxVirtualMachineScaleSetScaleIn, Map<String, dynamic>>(scaleIn, (value) => value.toMap()),
      'secrets': ?pulumi.Input.mapOptionalInputValue<List<LinuxVirtualMachineScaleSetSecret>, List<Map<String, dynamic>>>(secrets, (value) => pulumi.Input.encodeList<LinuxVirtualMachineScaleSetSecret, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secureBootEnabled': ?secureBootEnabled,
      'singlePlacementGroup': ?singlePlacementGroup,
      'sku': ?sku,
      'sourceImageId': ?sourceImageId,
      'sourceImageReference': ?pulumi.Input.mapOptionalInputValue<LinuxVirtualMachineScaleSetSourceImageReference, Map<String, dynamic>>(sourceImageReference, (value) => value.toMap()),
      'spotRestore': ?pulumi.Input.mapOptionalInputValue<LinuxVirtualMachineScaleSetSpotRestore, Map<String, dynamic>>(spotRestore, (value) => value.toMap()),
      'tags': ?tags,
      'terminationNotification': ?pulumi.Input.mapOptionalInputValue<LinuxVirtualMachineScaleSetTerminationNotification, Map<String, dynamic>>(terminationNotification, (value) => value.toMap()),
      'uniqueId': ?uniqueId,
      'upgradeMode': ?upgradeMode,
      'userData': ?userData,
      'vtpmEnabled': ?vtpmEnabled,
      'zoneBalance': ?zoneBalance,
      'zones': ?zones,
    };
  }

  factory LinuxVirtualMachineScaleSetState.fromMap(Map<String, dynamic> map) {
    return LinuxVirtualMachineScaleSetState(
      additionalCapabilities: map['additionalCapabilities'] == null ? null : pulumi.Output.create<LinuxVirtualMachineScaleSetAdditionalCapabilities>(LinuxVirtualMachineScaleSetAdditionalCapabilities.fromMap((map['additionalCapabilities'] as Map).cast<String, dynamic>())),
      adminPassword: map['adminPassword'] == null ? null : pulumi.Output.create<String>(map['adminPassword'] as String),
      adminSshKeys: map['adminSshKeys'] == null ? null : pulumi.Output.create<List<LinuxVirtualMachineScaleSetAdminSshKey>>(pulumi.Input.decodeList<LinuxVirtualMachineScaleSetAdminSshKey>(map['adminSshKeys'], (value) => LinuxVirtualMachineScaleSetAdminSshKey.fromMap((value as Map).cast<String, dynamic>()))),
      adminUsername: map['adminUsername'] == null ? null : pulumi.Output.create<String>(map['adminUsername'] as String),
      automaticInstanceRepair: map['automaticInstanceRepair'] == null ? null : pulumi.Output.create<LinuxVirtualMachineScaleSetAutomaticInstanceRepair>(LinuxVirtualMachineScaleSetAutomaticInstanceRepair.fromMap((map['automaticInstanceRepair'] as Map).cast<String, dynamic>())),
      automaticOsUpgradePolicy: map['automaticOsUpgradePolicy'] == null ? null : pulumi.Output.create<LinuxVirtualMachineScaleSetAutomaticOsUpgradePolicy>(LinuxVirtualMachineScaleSetAutomaticOsUpgradePolicy.fromMap((map['automaticOsUpgradePolicy'] as Map).cast<String, dynamic>())),
      bootDiagnostics: map['bootDiagnostics'] == null ? null : pulumi.Output.create<LinuxVirtualMachineScaleSetBootDiagnostics>(LinuxVirtualMachineScaleSetBootDiagnostics.fromMap((map['bootDiagnostics'] as Map).cast<String, dynamic>())),
      capacityReservationGroupId: map['capacityReservationGroupId'] == null ? null : pulumi.Output.create<String>(map['capacityReservationGroupId'] as String),
      computerNamePrefix: map['computerNamePrefix'] == null ? null : pulumi.Output.create<String>(map['computerNamePrefix'] as String),
      customData: map['customData'] == null ? null : pulumi.Output.create<String>(map['customData'] as String),
      dataDisks: map['dataDisks'] == null ? null : pulumi.Output.create<List<LinuxVirtualMachineScaleSetDataDisk>>(pulumi.Input.decodeList<LinuxVirtualMachineScaleSetDataDisk>(map['dataDisks'], (value) => LinuxVirtualMachineScaleSetDataDisk.fromMap((value as Map).cast<String, dynamic>()))),
      disablePasswordAuthentication: map['disablePasswordAuthentication'] == null ? null : pulumi.Output.create<bool>(map['disablePasswordAuthentication'] as bool),
      doNotRunExtensionsOnOverprovisionedMachines: map['doNotRunExtensionsOnOverprovisionedMachines'] == null ? null : pulumi.Output.create<bool>(map['doNotRunExtensionsOnOverprovisionedMachines'] as bool),
      edgeZone: map['edgeZone'] == null ? null : pulumi.Output.create<String>(map['edgeZone'] as String),
      encryptionAtHostEnabled: map['encryptionAtHostEnabled'] == null ? null : pulumi.Output.create<bool>(map['encryptionAtHostEnabled'] as bool),
      evictionPolicy: map['evictionPolicy'] == null ? null : pulumi.Output.create<String>(map['evictionPolicy'] as String),
      extensionOperationsEnabled: map['extensionOperationsEnabled'] == null ? null : pulumi.Output.create<bool>(map['extensionOperationsEnabled'] as bool),
      extensions: map['extensions'] == null ? null : pulumi.Output.create<List<LinuxVirtualMachineScaleSetExtension>>(pulumi.Input.decodeList<LinuxVirtualMachineScaleSetExtension>(map['extensions'], (value) => LinuxVirtualMachineScaleSetExtension.fromMap((value as Map).cast<String, dynamic>()))),
      extensionsTimeBudget: map['extensionsTimeBudget'] == null ? null : pulumi.Output.create<String>(map['extensionsTimeBudget'] as String),
      galleryApplications: map['galleryApplications'] == null ? null : pulumi.Output.create<List<LinuxVirtualMachineScaleSetGalleryApplication>>(pulumi.Input.decodeList<LinuxVirtualMachineScaleSetGalleryApplication>(map['galleryApplications'], (value) => LinuxVirtualMachineScaleSetGalleryApplication.fromMap((value as Map).cast<String, dynamic>()))),
      healthProbeId: map['healthProbeId'] == null ? null : pulumi.Output.create<String>(map['healthProbeId'] as String),
      hostGroupId: map['hostGroupId'] == null ? null : pulumi.Output.create<String>(map['hostGroupId'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<LinuxVirtualMachineScaleSetIdentity>(LinuxVirtualMachineScaleSetIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      instances: map['instances'] == null ? null : pulumi.Output.create<int>(map['instances'] as int),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      maxBidPrice: map['maxBidPrice'] == null ? null : pulumi.Output.create<double>(map['maxBidPrice'] as double),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkInterfaces: map['networkInterfaces'] == null ? null : pulumi.Output.create<List<LinuxVirtualMachineScaleSetNetworkInterface>>(pulumi.Input.decodeList<LinuxVirtualMachineScaleSetNetworkInterface>(map['networkInterfaces'], (value) => LinuxVirtualMachineScaleSetNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))),
      osDisk: map['osDisk'] == null ? null : pulumi.Output.create<LinuxVirtualMachineScaleSetOsDisk>(LinuxVirtualMachineScaleSetOsDisk.fromMap((map['osDisk'] as Map).cast<String, dynamic>())),
      overprovision: map['overprovision'] == null ? null : pulumi.Output.create<bool>(map['overprovision'] as bool),
      plan: map['plan'] == null ? null : pulumi.Output.create<LinuxVirtualMachineScaleSetPlan>(LinuxVirtualMachineScaleSetPlan.fromMap((map['plan'] as Map).cast<String, dynamic>())),
      platformFaultDomainCount: map['platformFaultDomainCount'] == null ? null : pulumi.Output.create<int>(map['platformFaultDomainCount'] as int),
      priority: map['priority'] == null ? null : pulumi.Output.create<String>(map['priority'] as String),
      provisionVmAgent: map['provisionVmAgent'] == null ? null : pulumi.Output.create<bool>(map['provisionVmAgent'] as bool),
      proximityPlacementGroupId: map['proximityPlacementGroupId'] == null ? null : pulumi.Output.create<String>(map['proximityPlacementGroupId'] as String),
      resilientVmCreationEnabled: map['resilientVmCreationEnabled'] == null ? null : pulumi.Output.create<bool>(map['resilientVmCreationEnabled'] as bool),
      resilientVmDeletionEnabled: map['resilientVmDeletionEnabled'] == null ? null : pulumi.Output.create<bool>(map['resilientVmDeletionEnabled'] as bool),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      rollingUpgradePolicy: map['rollingUpgradePolicy'] == null ? null : pulumi.Output.create<LinuxVirtualMachineScaleSetRollingUpgradePolicy>(LinuxVirtualMachineScaleSetRollingUpgradePolicy.fromMap((map['rollingUpgradePolicy'] as Map).cast<String, dynamic>())),
      scaleIn: map['scaleIn'] == null ? null : pulumi.Output.create<LinuxVirtualMachineScaleSetScaleIn>(LinuxVirtualMachineScaleSetScaleIn.fromMap((map['scaleIn'] as Map).cast<String, dynamic>())),
      secrets: map['secrets'] == null ? null : pulumi.Output.create<List<LinuxVirtualMachineScaleSetSecret>>(pulumi.Input.decodeList<LinuxVirtualMachineScaleSetSecret>(map['secrets'], (value) => LinuxVirtualMachineScaleSetSecret.fromMap((value as Map).cast<String, dynamic>()))),
      secureBootEnabled: map['secureBootEnabled'] == null ? null : pulumi.Output.create<bool>(map['secureBootEnabled'] as bool),
      singlePlacementGroup: map['singlePlacementGroup'] == null ? null : pulumi.Output.create<bool>(map['singlePlacementGroup'] as bool),
      sku: map['sku'] == null ? null : pulumi.Output.create<String>(map['sku'] as String),
      sourceImageId: map['sourceImageId'] == null ? null : pulumi.Output.create<String>(map['sourceImageId'] as String),
      sourceImageReference: map['sourceImageReference'] == null ? null : pulumi.Output.create<LinuxVirtualMachineScaleSetSourceImageReference>(LinuxVirtualMachineScaleSetSourceImageReference.fromMap((map['sourceImageReference'] as Map).cast<String, dynamic>())),
      spotRestore: map['spotRestore'] == null ? null : pulumi.Output.create<LinuxVirtualMachineScaleSetSpotRestore>(LinuxVirtualMachineScaleSetSpotRestore.fromMap((map['spotRestore'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      terminationNotification: map['terminationNotification'] == null ? null : pulumi.Output.create<LinuxVirtualMachineScaleSetTerminationNotification>(LinuxVirtualMachineScaleSetTerminationNotification.fromMap((map['terminationNotification'] as Map).cast<String, dynamic>())),
      uniqueId: map['uniqueId'] == null ? null : pulumi.Output.create<String>(map['uniqueId'] as String),
      upgradeMode: map['upgradeMode'] == null ? null : pulumi.Output.create<String>(map['upgradeMode'] as String),
      userData: map['userData'] == null ? null : pulumi.Output.create<String>(map['userData'] as String),
      vtpmEnabled: map['vtpmEnabled'] == null ? null : pulumi.Output.create<bool>(map['vtpmEnabled'] as bool),
      zoneBalance: map['zoneBalance'] == null ? null : pulumi.Output.create<bool>(map['zoneBalance'] as bool),
      zones: map['zones'] == null ? null : pulumi.Output.create<List<String>>((map['zones'] as List).cast<String>()),
    );
  }
}

