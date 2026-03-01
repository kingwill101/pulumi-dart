// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'orchestrated_virtual_machine_scale_set_additional_capabilities.dart';
import 'orchestrated_virtual_machine_scale_set_automatic_instance_repair.dart';
import 'orchestrated_virtual_machine_scale_set_boot_diagnostics.dart';
import 'orchestrated_virtual_machine_scale_set_data_disk.dart';
import 'orchestrated_virtual_machine_scale_set_extension.dart';
import 'orchestrated_virtual_machine_scale_set_identity.dart';
import 'orchestrated_virtual_machine_scale_set_network_interface.dart';
import 'orchestrated_virtual_machine_scale_set_os_disk.dart';
import 'orchestrated_virtual_machine_scale_set_os_profile.dart';
import 'orchestrated_virtual_machine_scale_set_plan.dart';
import 'orchestrated_virtual_machine_scale_set_priority_mix.dart';
import 'orchestrated_virtual_machine_scale_set_rolling_upgrade_policy.dart';
import 'orchestrated_virtual_machine_scale_set_sku_profile.dart';
import 'orchestrated_virtual_machine_scale_set_source_image_reference.dart';
import 'orchestrated_virtual_machine_scale_set_termination_notification.dart';

/// Input properties used for looking up and filtering OrchestratedVirtualMachineScaleSet resources.
class OrchestratedVirtualMachineScaleSetState {
  /// An `additional_capabilities` block as defined below.
  final pulumi.Input<OrchestratedVirtualMachineScaleSetAdditionalCapabilities>? additionalCapabilities;
  /// An `automatic_instance_repair` block as defined below.
  ///
  /// > **Note:** To enable the `automatic_instance_repair`, the Orchestrated Virtual Machine Scale Set must have a valid [Application Health Extension](https://docs.microsoft.com/azure/virtual-machine-scale-sets/virtual-machine-scale-sets-health-extension).
  final pulumi.Input<OrchestratedVirtualMachineScaleSetAutomaticInstanceRepair>? automaticInstanceRepair;
  /// A `boot_diagnostics` block as defined below.
  final pulumi.Input<OrchestratedVirtualMachineScaleSetBootDiagnostics>? bootDiagnostics;
  /// Specifies the ID of the Capacity Reservation Group which the Virtual Machine Scale Set should be allocated to. Changing this forces a new resource to be created.
  ///
  /// > **Note:** `capacity_reservation_group_id` cannot be specified with `proximity_placement_group_id`
  ///
  /// > **Note:** If `capacity_reservation_group_id` is specified the `single_placement_group` must be set to `false`.
  final pulumi.Input<String>? capacityReservationGroupId;
  /// One or more `data_disk` blocks as defined below.
  final pulumi.Input<List<OrchestratedVirtualMachineScaleSetDataDisk>>? dataDisks;
  /// Should disks attached to this Virtual Machine Scale Set be encrypted by enabling Encryption at Host?
  final pulumi.Input<bool>? encryptionAtHostEnabled;
  /// The Policy which should be used by Spot Virtual Machines that are Evicted from the Scale Set. Possible values are `Deallocate` and `Delete`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? evictionPolicy;
  /// Should extension operations be allowed on the Virtual Machine Scale Set? Possible values are `true` or `false`. Defaults to `true`. Changing this forces a new Virtual Machine Scale Set to be created.
  ///
  /// > **Note:** `extension_operations_enabled` may only be set to `false` if there are no extensions defined in the `extension` field.
  final pulumi.Input<bool>? extensionOperationsEnabled;
  /// One or more `extension` blocks as defined below
  final pulumi.Input<List<OrchestratedVirtualMachineScaleSetExtension>>? extensions;
  /// Specifies the time alloted for all extensions to start. The time duration should be between 15 minutes and 120 minutes (inclusive) and should be specified in ISO 8601 format. Defaults to `PT1H30M`.
  final pulumi.Input<String>? extensionsTimeBudget;
  /// An `identity` block as defined below.
  final pulumi.Input<OrchestratedVirtualMachineScaleSetIdentity>? identity;
  /// The number of Virtual Machines in the Virtual Machine Scale Set.
  final pulumi.Input<int>? instances;
  /// Specifies the type of on-premise license (also known as Azure Hybrid Use Benefit) which should be used for this Virtual Machine Scale Set. Possible values are `None`, `Windows_Client` and `Windows_Server`.
  final pulumi.Input<String>? licenseType;
  /// The Azure location where the Virtual Machine Scale Set should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The maximum price you're willing to pay for each Virtual Machine in this Scale Set, in US Dollars; which must be greater than the current spot price. If this bid price falls below the current spot price the Virtual Machines in the Scale Set will be evicted using the eviction_policy. Defaults to `-1`, which means that each Virtual Machine in the Scale Set should not be evicted for price reasons.
  final pulumi.Input<double>? maxBidPrice;
  /// The name of the Virtual Machine Scale Set. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the Microsoft.Network API version used when creating networking resources in the Network Interface Configurations for Virtual Machine Scale Set. Possible values are `2020-11-01` and `2022-11-01`. Defaults to `2020-11-01`.
  final pulumi.Input<String>? networkApiVersion;
  /// One or more `network_interface` blocks as defined below.
  final pulumi.Input<List<OrchestratedVirtualMachineScaleSetNetworkInterface>>? networkInterfaces;
  /// An `os_disk` block as defined below.
  final pulumi.Input<OrchestratedVirtualMachineScaleSetOsDisk>? osDisk;
  /// An `os_profile` block as defined below.
  final pulumi.Input<OrchestratedVirtualMachineScaleSetOsProfile>? osProfile;
  /// A `plan` block as documented below. Changing this forces a new resource to be created.
  final pulumi.Input<OrchestratedVirtualMachineScaleSetPlan>? plan;
  /// Specifies the number of fault domains that are used by this Virtual Machine Scale Set. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The number of Fault Domains varies depending on which Azure Region you're using. More information about update and fault domains and how they work can be found [here](https://learn.microsoft.com/en-us/azure/virtual-machines/availability-set-overview).
  final pulumi.Input<int>? platformFaultDomainCount;
  /// The Priority of this Virtual Machine Scale Set. Possible values are `Regular` and `Spot`. Defaults to `Regular`. Changing this value forces a new resource.
  final pulumi.Input<String>? priority;
  /// a `priority_mix` block as defined below
  final pulumi.Input<OrchestratedVirtualMachineScaleSetPriorityMix>? priorityMix;
  /// The ID of the Proximity Placement Group which the Virtual Machine should be assigned to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? proximityPlacementGroupId;
  /// The name of the Resource Group in which the Virtual Machine Scale Set should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A `rolling_upgrade_policy` block as defined below. This is Required when `upgrade_mode` is set to `Rolling` and cannot be specified when `upgrade_mode` is set to `Manual`. Changing this forces a new resource to be created.
  final pulumi.Input<OrchestratedVirtualMachineScaleSetRollingUpgradePolicy>? rollingUpgradePolicy;
  /// Should this Virtual Machine Scale Set be limited to a Single Placement Group, which means the number of instances will be capped at 100 Virtual Machines. Possible values are `true` or `false`.
  ///
  /// > **Note:** `single_placement_group` behaves differently for Flexible orchestration Virtual Machine Scale Sets than it does for Uniform orchestration Virtual Machine Scale Sets. It is recommended that you do not define the `single_placement_group` field in your configuration file as the service will determine what this value should be based off of the value contained within the `sku_name` field of your configuration file. You may set the `single_placement_group` field to `true`, however once you set it to `false` you will not be able to revert it back to `true`.
  final pulumi.Input<bool>? singlePlacementGroup;
  /// The `name` of the SKU to be used by this Virtual Machine Scale Set. Valid values include: any of the [General purpose](https://docs.microsoft.com/azure/virtual-machines/sizes-general), [Compute optimized](https://docs.microsoft.com/azure/virtual-machines/sizes-compute), [Memory optimized](https://docs.microsoft.com/azure/virtual-machines/sizes-memory), [Storage optimized](https://docs.microsoft.com/azure/virtual-machines/sizes-storage), [GPU optimized](https://docs.microsoft.com/azure/virtual-machines/sizes-gpu), [FPGA optimized](https://docs.microsoft.com/azure/virtual-machines/sizes-field-programmable-gate-arrays), [High performance](https://docs.microsoft.com/azure/virtual-machines/sizes-hpc), or [Previous generation](https://docs.microsoft.com/azure/virtual-machines/sizes-previous-gen) virtual machine SKUs.
  final pulumi.Input<String>? skuName;
  /// An `sku_profile` block as defined below. Changing this forces a new resource to be created.
  ///
  /// > **Note:** If `sku_profile` is specified the `sku_name` must be set to `Mix`.
  final pulumi.Input<OrchestratedVirtualMachineScaleSetSkuProfile>? skuProfile;
  /// The ID of an Image which each Virtual Machine in this Scale Set should be based on. Possible Image ID types include `Image ID`s, `Shared Image ID`s, `Shared Image Version ID`s, `Community Gallery Image ID`s, `Community Gallery Image Version ID`s, `Shared Gallery Image ID`s and `Shared Gallery Image Version ID`s.
  final pulumi.Input<String>? sourceImageId;
  /// A `source_image_reference` block as defined below.
  final pulumi.Input<OrchestratedVirtualMachineScaleSetSourceImageReference>? sourceImageReference;
  /// A mapping of tags which should be assigned to this Virtual Machine Scale Set.
  final pulumi.Input<Map<String, String>>? tags;
  /// A `termination_notification` block as defined below.
  final pulumi.Input<OrchestratedVirtualMachineScaleSetTerminationNotification>? terminationNotification;
  /// The Unique ID for the Virtual Machine Scale Set.
  final pulumi.Input<String>? uniqueId;
  /// Specifies how upgrades (e.g. changing the Image/SKU) should be performed to Virtual Machine Instances. Possible values are `Automatic`, `Manual` and `Rolling`. Defaults to `Manual`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? upgradeMode;
  /// The Base64-Encoded User Data which should be used for this Virtual Machine Scale Set.
  final pulumi.Input<String>? userDataBase64;
  /// Should the Virtual Machines in this Scale Set be strictly evenly distributed across Availability Zones? Defaults to `false`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** This can only be set to `true` when one or more `zones` are configured.
  final pulumi.Input<bool>? zoneBalance;
  /// Specifies a list of Availability Zones across which the Virtual Machine Scale Set will create instances.
  ///
  /// > **Note:** Updating `zones` to remove an existing zone forces a new Virtual Machine Scale Set to be created.
  ///
  /// > **Note:** Availability Zones are [only supported in several regions at this time](https://docs.microsoft.com/azure/availability-zones/az-overview).
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [OrchestratedVirtualMachineScaleSetState].
  /// [additionalCapabilities] An `additional_capabilities` block as defined below.
  /// [automaticInstanceRepair] An `automatic_instance_repair` block as defined below.
  /// [bootDiagnostics] A `boot_diagnostics` block as defined below.
  /// [capacityReservationGroupId] Specifies the ID of the Capacity Reservation Group which the Virtual Machine Scale Set should be allocated to. Changing this forces a new resource to be created.
  /// [dataDisks] One or more `data_disk` blocks as defined below.
  /// [encryptionAtHostEnabled] Should disks attached to this Virtual Machine Scale Set be encrypted by enabling Encryption at Host?
  /// [evictionPolicy] The Policy which should be used by Spot Virtual Machines that are Evicted from the Scale Set. Possible values are `Deallocate` and `Delete`. Changing this forces a new resource to be created.
  /// [extensionOperationsEnabled] Should extension operations be allowed on the Virtual Machine Scale Set? Possible values are `true` or `false`. Defaults to `true`. Changing this forces a new Virtual Machine Scale Set to be created.
  /// [extensions] One or more `extension` blocks as defined below
  /// [extensionsTimeBudget] Specifies the time alloted for all extensions to start. The time duration should be between 15 minutes and 120 minutes (inclusive) and should be specified in ISO 8601 format. Defaults to `PT1H30M`.
  /// [identity] An `identity` block as defined below.
  /// [instances] The number of Virtual Machines in the Virtual Machine Scale Set.
  /// [licenseType] Specifies the type of on-premise license (also known as Azure Hybrid Use Benefit) which should be used for this Virtual Machine Scale Set. Possible values are `None`, `Windows_Client` and `Windows_Server`.
  /// [location] The Azure location where the Virtual Machine Scale Set should exist. Changing this forces a new resource to be created.
  /// [maxBidPrice] The maximum price you're willing to pay for each Virtual Machine in this Scale Set, in US Dollars; which must be greater than the current spot price. If this bid price falls below the current spot price the Virtual Machines in the Scale Set will be evicted using the eviction_policy. Defaults to `-1`, which means that each Virtual Machine in the Scale Set should not be evicted for price reasons.
  /// [name] The name of the Virtual Machine Scale Set. Changing this forces a new resource to be created.
  /// [networkApiVersion] Specifies the Microsoft.Network API version used when creating networking resources in the Network Interface Configurations for Virtual Machine Scale Set. Possible values are `2020-11-01` and `2022-11-01`. Defaults to `2020-11-01`.
  /// [networkInterfaces] One or more `network_interface` blocks as defined below.
  /// [osDisk] An `os_disk` block as defined below.
  /// [osProfile] An `os_profile` block as defined below.
  /// [plan] A `plan` block as documented below. Changing this forces a new resource to be created.
  /// [platformFaultDomainCount] Specifies the number of fault domains that are used by this Virtual Machine Scale Set. Changing this forces a new resource to be created.
  /// [priority] The Priority of this Virtual Machine Scale Set. Possible values are `Regular` and `Spot`. Defaults to `Regular`. Changing this value forces a new resource.
  /// [priorityMix] a `priority_mix` block as defined below
  /// [proximityPlacementGroupId] The ID of the Proximity Placement Group which the Virtual Machine should be assigned to. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group in which the Virtual Machine Scale Set should exist. Changing this forces a new resource to be created.
  /// [rollingUpgradePolicy] A `rolling_upgrade_policy` block as defined below. This is Required when `upgrade_mode` is set to `Rolling` and cannot be specified when `upgrade_mode` is set to `Manual`. Changing this forces a new resource to be created.
  /// [singlePlacementGroup] Should this Virtual Machine Scale Set be limited to a Single Placement Group, which means the number of instances will be capped at 100 Virtual Machines. Possible values are `true` or `false`.
  /// [skuName] The `name` of the SKU to be used by this Virtual Machine Scale Set. Valid values include: any of the [General purpose](https://docs.microsoft.com/azure/virtual-machines/sizes-general), [Compute optimized](https://docs.microsoft.com/azure/virtual-machines/sizes-compute), [Memory optimized](https://docs.microsoft.com/azure/virtual-machines/sizes-memory), [Storage optimized](https://docs.microsoft.com/azure/virtual-machines/sizes-storage), [GPU optimized](https://docs.microsoft.com/azure/virtual-machines/sizes-gpu), [FPGA optimized](https://docs.microsoft.com/azure/virtual-machines/sizes-field-programmable-gate-arrays), [High performance](https://docs.microsoft.com/azure/virtual-machines/sizes-hpc), or [Previous generation](https://docs.microsoft.com/azure/virtual-machines/sizes-previous-gen) virtual machine SKUs.
  /// [skuProfile] An `sku_profile` block as defined below. Changing this forces a new resource to be created.
  /// [sourceImageId] The ID of an Image which each Virtual Machine in this Scale Set should be based on. Possible Image ID types include `Image ID`s, `Shared Image ID`s, `Shared Image Version ID`s, `Community Gallery Image ID`s, `Community Gallery Image Version ID`s, `Shared Gallery Image ID`s and `Shared Gallery Image Version ID`s.
  /// [sourceImageReference] A `source_image_reference` block as defined below.
  /// [tags] A mapping of tags which should be assigned to this Virtual Machine Scale Set.
  /// [terminationNotification] A `termination_notification` block as defined below.
  /// [uniqueId] The Unique ID for the Virtual Machine Scale Set.
  /// [upgradeMode] Specifies how upgrades (e.g. changing the Image/SKU) should be performed to Virtual Machine Instances. Possible values are `Automatic`, `Manual` and `Rolling`. Defaults to `Manual`. Changing this forces a new resource to be created.
  /// [userDataBase64] The Base64-Encoded User Data which should be used for this Virtual Machine Scale Set.
  /// [zoneBalance] Should the Virtual Machines in this Scale Set be strictly evenly distributed across Availability Zones? Defaults to `false`. Changing this forces a new resource to be created.
  /// [zones] Specifies a list of Availability Zones across which the Virtual Machine Scale Set will create instances.
  OrchestratedVirtualMachineScaleSetState({
    pulumi.Output<OrchestratedVirtualMachineScaleSetAdditionalCapabilities>? additionalCapabilities,
    pulumi.Output<OrchestratedVirtualMachineScaleSetAutomaticInstanceRepair>? automaticInstanceRepair,
    pulumi.Output<OrchestratedVirtualMachineScaleSetBootDiagnostics>? bootDiagnostics,
    pulumi.Output<String>? capacityReservationGroupId,
    pulumi.Output<List<OrchestratedVirtualMachineScaleSetDataDisk>>? dataDisks,
    pulumi.Output<bool>? encryptionAtHostEnabled,
    pulumi.Output<String>? evictionPolicy,
    pulumi.Output<bool>? extensionOperationsEnabled,
    pulumi.Output<List<OrchestratedVirtualMachineScaleSetExtension>>? extensions,
    pulumi.Output<String>? extensionsTimeBudget,
    pulumi.Output<OrchestratedVirtualMachineScaleSetIdentity>? identity,
    pulumi.Output<int>? instances,
    pulumi.Output<String>? licenseType,
    pulumi.Output<String>? location,
    pulumi.Output<double>? maxBidPrice,
    pulumi.Output<String>? name,
    pulumi.Output<String>? networkApiVersion,
    pulumi.Output<List<OrchestratedVirtualMachineScaleSetNetworkInterface>>? networkInterfaces,
    pulumi.Output<OrchestratedVirtualMachineScaleSetOsDisk>? osDisk,
    pulumi.Output<OrchestratedVirtualMachineScaleSetOsProfile>? osProfile,
    pulumi.Output<OrchestratedVirtualMachineScaleSetPlan>? plan,
    pulumi.Output<int>? platformFaultDomainCount,
    pulumi.Output<String>? priority,
    pulumi.Output<OrchestratedVirtualMachineScaleSetPriorityMix>? priorityMix,
    pulumi.Output<String>? proximityPlacementGroupId,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<OrchestratedVirtualMachineScaleSetRollingUpgradePolicy>? rollingUpgradePolicy,
    pulumi.Output<bool>? singlePlacementGroup,
    pulumi.Output<String>? skuName,
    pulumi.Output<OrchestratedVirtualMachineScaleSetSkuProfile>? skuProfile,
    pulumi.Output<String>? sourceImageId,
    pulumi.Output<OrchestratedVirtualMachineScaleSetSourceImageReference>? sourceImageReference,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<OrchestratedVirtualMachineScaleSetTerminationNotification>? terminationNotification,
    pulumi.Output<String>? uniqueId,
    pulumi.Output<String>? upgradeMode,
    pulumi.Output<String>? userDataBase64,
    pulumi.Output<bool>? zoneBalance,
    pulumi.Output<List<String>>? zones,
  }) :
      additionalCapabilities = pulumi.Input.asOptionalInput<OrchestratedVirtualMachineScaleSetAdditionalCapabilities>(additionalCapabilities),
      automaticInstanceRepair = pulumi.Input.asOptionalInput<OrchestratedVirtualMachineScaleSetAutomaticInstanceRepair>(automaticInstanceRepair),
      bootDiagnostics = pulumi.Input.asOptionalInput<OrchestratedVirtualMachineScaleSetBootDiagnostics>(bootDiagnostics),
      capacityReservationGroupId = pulumi.Input.asOptionalInput<String>(capacityReservationGroupId),
      dataDisks = pulumi.Input.asOptionalInput<List<OrchestratedVirtualMachineScaleSetDataDisk>>(dataDisks),
      encryptionAtHostEnabled = pulumi.Input.asOptionalInput<bool>(encryptionAtHostEnabled),
      evictionPolicy = pulumi.Input.asOptionalInput<String>(evictionPolicy),
      extensionOperationsEnabled = pulumi.Input.asOptionalInput<bool>(extensionOperationsEnabled),
      extensions = pulumi.Input.asOptionalInput<List<OrchestratedVirtualMachineScaleSetExtension>>(extensions),
      extensionsTimeBudget = pulumi.Input.asOptionalInput<String>(extensionsTimeBudget),
      identity = pulumi.Input.asOptionalInput<OrchestratedVirtualMachineScaleSetIdentity>(identity),
      instances = pulumi.Input.asOptionalInput<int>(instances),
      licenseType = pulumi.Input.asOptionalInput<String>(licenseType),
      location = pulumi.Input.asOptionalInput<String>(location),
      maxBidPrice = pulumi.Input.asOptionalInput<double>(maxBidPrice),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkApiVersion = pulumi.Input.asOptionalInput<String>(networkApiVersion),
      networkInterfaces = pulumi.Input.asOptionalInput<List<OrchestratedVirtualMachineScaleSetNetworkInterface>>(networkInterfaces),
      osDisk = pulumi.Input.asOptionalInput<OrchestratedVirtualMachineScaleSetOsDisk>(osDisk),
      osProfile = pulumi.Input.asOptionalInput<OrchestratedVirtualMachineScaleSetOsProfile>(osProfile),
      plan = pulumi.Input.asOptionalInput<OrchestratedVirtualMachineScaleSetPlan>(plan),
      platformFaultDomainCount = pulumi.Input.asOptionalInput<int>(platformFaultDomainCount),
      priority = pulumi.Input.asOptionalInput<String>(priority),
      priorityMix = pulumi.Input.asOptionalInput<OrchestratedVirtualMachineScaleSetPriorityMix>(priorityMix),
      proximityPlacementGroupId = pulumi.Input.asOptionalInput<String>(proximityPlacementGroupId),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      rollingUpgradePolicy = pulumi.Input.asOptionalInput<OrchestratedVirtualMachineScaleSetRollingUpgradePolicy>(rollingUpgradePolicy),
      singlePlacementGroup = pulumi.Input.asOptionalInput<bool>(singlePlacementGroup),
      skuName = pulumi.Input.asOptionalInput<String>(skuName),
      skuProfile = pulumi.Input.asOptionalInput<OrchestratedVirtualMachineScaleSetSkuProfile>(skuProfile),
      sourceImageId = pulumi.Input.asOptionalInput<String>(sourceImageId),
      sourceImageReference = pulumi.Input.asOptionalInput<OrchestratedVirtualMachineScaleSetSourceImageReference>(sourceImageReference),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      terminationNotification = pulumi.Input.asOptionalInput<OrchestratedVirtualMachineScaleSetTerminationNotification>(terminationNotification),
      uniqueId = pulumi.Input.asOptionalInput<String>(uniqueId),
      upgradeMode = pulumi.Input.asOptionalInput<String>(upgradeMode),
      userDataBase64 = pulumi.Input.asOptionalInput<String>(userDataBase64),
      zoneBalance = pulumi.Input.asOptionalInput<bool>(zoneBalance),
      zones = pulumi.Input.asOptionalInput<List<String>>(zones);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalCapabilities': ?pulumi.Input.mapOptionalInputValue<OrchestratedVirtualMachineScaleSetAdditionalCapabilities, Map<String, dynamic>>(additionalCapabilities, (value) => value.toMap()),
      'automaticInstanceRepair': ?pulumi.Input.mapOptionalInputValue<OrchestratedVirtualMachineScaleSetAutomaticInstanceRepair, Map<String, dynamic>>(automaticInstanceRepair, (value) => value.toMap()),
      'bootDiagnostics': ?pulumi.Input.mapOptionalInputValue<OrchestratedVirtualMachineScaleSetBootDiagnostics, Map<String, dynamic>>(bootDiagnostics, (value) => value.toMap()),
      'capacityReservationGroupId': ?capacityReservationGroupId,
      'dataDisks': ?pulumi.Input.mapOptionalInputValue<List<OrchestratedVirtualMachineScaleSetDataDisk>, List<Map<String, dynamic>>>(dataDisks, (value) => pulumi.Input.encodeList<OrchestratedVirtualMachineScaleSetDataDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'encryptionAtHostEnabled': ?encryptionAtHostEnabled,
      'evictionPolicy': ?evictionPolicy,
      'extensionOperationsEnabled': ?extensionOperationsEnabled,
      'extensions': ?pulumi.Input.mapOptionalInputValue<List<OrchestratedVirtualMachineScaleSetExtension>, List<Map<String, dynamic>>>(extensions, (value) => pulumi.Input.encodeList<OrchestratedVirtualMachineScaleSetExtension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'extensionsTimeBudget': ?extensionsTimeBudget,
      'identity': ?pulumi.Input.mapOptionalInputValue<OrchestratedVirtualMachineScaleSetIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'instances': ?instances,
      'licenseType': ?licenseType,
      'location': ?location,
      'maxBidPrice': ?maxBidPrice,
      'name': ?name,
      'networkApiVersion': ?networkApiVersion,
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<OrchestratedVirtualMachineScaleSetNetworkInterface>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<OrchestratedVirtualMachineScaleSetNetworkInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'osDisk': ?pulumi.Input.mapOptionalInputValue<OrchestratedVirtualMachineScaleSetOsDisk, Map<String, dynamic>>(osDisk, (value) => value.toMap()),
      'osProfile': ?pulumi.Input.mapOptionalInputValue<OrchestratedVirtualMachineScaleSetOsProfile, Map<String, dynamic>>(osProfile, (value) => value.toMap()),
      'plan': ?pulumi.Input.mapOptionalInputValue<OrchestratedVirtualMachineScaleSetPlan, Map<String, dynamic>>(plan, (value) => value.toMap()),
      'platformFaultDomainCount': ?platformFaultDomainCount,
      'priority': ?priority,
      'priorityMix': ?pulumi.Input.mapOptionalInputValue<OrchestratedVirtualMachineScaleSetPriorityMix, Map<String, dynamic>>(priorityMix, (value) => value.toMap()),
      'proximityPlacementGroupId': ?proximityPlacementGroupId,
      'resourceGroupName': ?resourceGroupName,
      'rollingUpgradePolicy': ?pulumi.Input.mapOptionalInputValue<OrchestratedVirtualMachineScaleSetRollingUpgradePolicy, Map<String, dynamic>>(rollingUpgradePolicy, (value) => value.toMap()),
      'singlePlacementGroup': ?singlePlacementGroup,
      'skuName': ?skuName,
      'skuProfile': ?pulumi.Input.mapOptionalInputValue<OrchestratedVirtualMachineScaleSetSkuProfile, Map<String, dynamic>>(skuProfile, (value) => value.toMap()),
      'sourceImageId': ?sourceImageId,
      'sourceImageReference': ?pulumi.Input.mapOptionalInputValue<OrchestratedVirtualMachineScaleSetSourceImageReference, Map<String, dynamic>>(sourceImageReference, (value) => value.toMap()),
      'tags': ?tags,
      'terminationNotification': ?pulumi.Input.mapOptionalInputValue<OrchestratedVirtualMachineScaleSetTerminationNotification, Map<String, dynamic>>(terminationNotification, (value) => value.toMap()),
      'uniqueId': ?uniqueId,
      'upgradeMode': ?upgradeMode,
      'userDataBase64': ?userDataBase64,
      'zoneBalance': ?zoneBalance,
      'zones': ?zones,
    };
  }

  factory OrchestratedVirtualMachineScaleSetState.fromMap(Map<String, dynamic> map) {
    return OrchestratedVirtualMachineScaleSetState(
      additionalCapabilities: map['additionalCapabilities'] == null ? null : pulumi.Output.create<OrchestratedVirtualMachineScaleSetAdditionalCapabilities>(OrchestratedVirtualMachineScaleSetAdditionalCapabilities.fromMap((map['additionalCapabilities'] as Map).cast<String, dynamic>())),
      automaticInstanceRepair: map['automaticInstanceRepair'] == null ? null : pulumi.Output.create<OrchestratedVirtualMachineScaleSetAutomaticInstanceRepair>(OrchestratedVirtualMachineScaleSetAutomaticInstanceRepair.fromMap((map['automaticInstanceRepair'] as Map).cast<String, dynamic>())),
      bootDiagnostics: map['bootDiagnostics'] == null ? null : pulumi.Output.create<OrchestratedVirtualMachineScaleSetBootDiagnostics>(OrchestratedVirtualMachineScaleSetBootDiagnostics.fromMap((map['bootDiagnostics'] as Map).cast<String, dynamic>())),
      capacityReservationGroupId: map['capacityReservationGroupId'] == null ? null : pulumi.Output.create<String>(map['capacityReservationGroupId'] as String),
      dataDisks: map['dataDisks'] == null ? null : pulumi.Output.create<List<OrchestratedVirtualMachineScaleSetDataDisk>>(pulumi.Input.decodeList<OrchestratedVirtualMachineScaleSetDataDisk>(map['dataDisks'], (value) => OrchestratedVirtualMachineScaleSetDataDisk.fromMap((value as Map).cast<String, dynamic>()))),
      encryptionAtHostEnabled: map['encryptionAtHostEnabled'] == null ? null : pulumi.Output.create<bool>(map['encryptionAtHostEnabled'] as bool),
      evictionPolicy: map['evictionPolicy'] == null ? null : pulumi.Output.create<String>(map['evictionPolicy'] as String),
      extensionOperationsEnabled: map['extensionOperationsEnabled'] == null ? null : pulumi.Output.create<bool>(map['extensionOperationsEnabled'] as bool),
      extensions: map['extensions'] == null ? null : pulumi.Output.create<List<OrchestratedVirtualMachineScaleSetExtension>>(pulumi.Input.decodeList<OrchestratedVirtualMachineScaleSetExtension>(map['extensions'], (value) => OrchestratedVirtualMachineScaleSetExtension.fromMap((value as Map).cast<String, dynamic>()))),
      extensionsTimeBudget: map['extensionsTimeBudget'] == null ? null : pulumi.Output.create<String>(map['extensionsTimeBudget'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<OrchestratedVirtualMachineScaleSetIdentity>(OrchestratedVirtualMachineScaleSetIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      instances: map['instances'] == null ? null : pulumi.Output.create<int>(map['instances'] as int),
      licenseType: map['licenseType'] == null ? null : pulumi.Output.create<String>(map['licenseType'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      maxBidPrice: map['maxBidPrice'] == null ? null : pulumi.Output.create<double>(map['maxBidPrice'] as double),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkApiVersion: map['networkApiVersion'] == null ? null : pulumi.Output.create<String>(map['networkApiVersion'] as String),
      networkInterfaces: map['networkInterfaces'] == null ? null : pulumi.Output.create<List<OrchestratedVirtualMachineScaleSetNetworkInterface>>(pulumi.Input.decodeList<OrchestratedVirtualMachineScaleSetNetworkInterface>(map['networkInterfaces'], (value) => OrchestratedVirtualMachineScaleSetNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))),
      osDisk: map['osDisk'] == null ? null : pulumi.Output.create<OrchestratedVirtualMachineScaleSetOsDisk>(OrchestratedVirtualMachineScaleSetOsDisk.fromMap((map['osDisk'] as Map).cast<String, dynamic>())),
      osProfile: map['osProfile'] == null ? null : pulumi.Output.create<OrchestratedVirtualMachineScaleSetOsProfile>(OrchestratedVirtualMachineScaleSetOsProfile.fromMap((map['osProfile'] as Map).cast<String, dynamic>())),
      plan: map['plan'] == null ? null : pulumi.Output.create<OrchestratedVirtualMachineScaleSetPlan>(OrchestratedVirtualMachineScaleSetPlan.fromMap((map['plan'] as Map).cast<String, dynamic>())),
      platformFaultDomainCount: map['platformFaultDomainCount'] == null ? null : pulumi.Output.create<int>(map['platformFaultDomainCount'] as int),
      priority: map['priority'] == null ? null : pulumi.Output.create<String>(map['priority'] as String),
      priorityMix: map['priorityMix'] == null ? null : pulumi.Output.create<OrchestratedVirtualMachineScaleSetPriorityMix>(OrchestratedVirtualMachineScaleSetPriorityMix.fromMap((map['priorityMix'] as Map).cast<String, dynamic>())),
      proximityPlacementGroupId: map['proximityPlacementGroupId'] == null ? null : pulumi.Output.create<String>(map['proximityPlacementGroupId'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      rollingUpgradePolicy: map['rollingUpgradePolicy'] == null ? null : pulumi.Output.create<OrchestratedVirtualMachineScaleSetRollingUpgradePolicy>(OrchestratedVirtualMachineScaleSetRollingUpgradePolicy.fromMap((map['rollingUpgradePolicy'] as Map).cast<String, dynamic>())),
      singlePlacementGroup: map['singlePlacementGroup'] == null ? null : pulumi.Output.create<bool>(map['singlePlacementGroup'] as bool),
      skuName: map['skuName'] == null ? null : pulumi.Output.create<String>(map['skuName'] as String),
      skuProfile: map['skuProfile'] == null ? null : pulumi.Output.create<OrchestratedVirtualMachineScaleSetSkuProfile>(OrchestratedVirtualMachineScaleSetSkuProfile.fromMap((map['skuProfile'] as Map).cast<String, dynamic>())),
      sourceImageId: map['sourceImageId'] == null ? null : pulumi.Output.create<String>(map['sourceImageId'] as String),
      sourceImageReference: map['sourceImageReference'] == null ? null : pulumi.Output.create<OrchestratedVirtualMachineScaleSetSourceImageReference>(OrchestratedVirtualMachineScaleSetSourceImageReference.fromMap((map['sourceImageReference'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      terminationNotification: map['terminationNotification'] == null ? null : pulumi.Output.create<OrchestratedVirtualMachineScaleSetTerminationNotification>(OrchestratedVirtualMachineScaleSetTerminationNotification.fromMap((map['terminationNotification'] as Map).cast<String, dynamic>())),
      uniqueId: map['uniqueId'] == null ? null : pulumi.Output.create<String>(map['uniqueId'] as String),
      upgradeMode: map['upgradeMode'] == null ? null : pulumi.Output.create<String>(map['upgradeMode'] as String),
      userDataBase64: map['userDataBase64'] == null ? null : pulumi.Output.create<String>(map['userDataBase64'] as String),
      zoneBalance: map['zoneBalance'] == null ? null : pulumi.Output.create<bool>(map['zoneBalance'] as bool),
      zones: map['zones'] == null ? null : pulumi.Output.create<List<String>>((map['zones'] as List).cast<String>()),
    );
  }
}

