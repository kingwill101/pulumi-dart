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
  /// An `additionalCapabilities` block as defined below.
  final pulumi.Input<OrchestratedVirtualMachineScaleSetAdditionalCapabilities>? additionalCapabilities;
  /// An `automaticInstanceRepair` block as defined below.
  ///
  /// &gt; **Note:** To enable the `automaticInstanceRepair`, the Orchestrated Virtual Machine Scale Set must have a valid [Application Health Extension](https://docs.microsoft.com/azure/virtual-machine-scale-sets/virtual-machine-scale-sets-health-extension).
  final pulumi.Input<OrchestratedVirtualMachineScaleSetAutomaticInstanceRepair>? automaticInstanceRepair;
  /// A `bootDiagnostics` block as defined below.
  final pulumi.Input<OrchestratedVirtualMachineScaleSetBootDiagnostics>? bootDiagnostics;
  /// Specifies the ID of the Capacity Reservation Group which the Virtual Machine Scale Set should be allocated to. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** `capacityReservationGroupId` cannot be specified with `proximityPlacementGroupId`.
  ///
  /// &gt; **Note:** If `capacityReservationGroupId` is specified, `singlePlacementGroup` must be set to `false`.
  final pulumi.Input<String>? capacityReservationGroupId;
  /// One or more `dataDisk` blocks as defined below.
  final pulumi.Input<List<OrchestratedVirtualMachineScaleSetDataDisk>>? dataDisks;
  /// Should disks attached to this Virtual Machine Scale Set be encrypted by enabling Encryption at Host?
  final pulumi.Input<bool>? encryptionAtHostEnabled;
  /// The Policy which should be used by Spot Virtual Machines that are Evicted from the Scale Set. Possible values are `Deallocate` and `Delete`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? evictionPolicy;
  /// Should extension operations be allowed on the Virtual Machine Scale Set? Possible values are `true` or `false`. Defaults to `true`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** `extensionOperationsEnabled` may only be set to `false` if there are no extensions defined in the `extension` field.
  final pulumi.Input<bool>? extensionOperationsEnabled;
  /// One or more `extension` blocks as defined below
  final pulumi.Input<List<OrchestratedVirtualMachineScaleSetExtension>>? extensions;
  /// Specifies the time allotted for all extensions to start. The time duration should be between 15 minutes and 120 minutes (inclusive) and should be specified in ISO 8601 format. Defaults to `PT1H30M`.
  final pulumi.Input<String>? extensionsTimeBudget;
  /// An `identity` block as defined below.
  final pulumi.Input<OrchestratedVirtualMachineScaleSetIdentity>? identity;
  /// The number of Virtual Machines in the Virtual Machine Scale Set.
  final pulumi.Input<int>? instances;
  /// Specifies the type of on-premise license (also known as Azure Hybrid Use Benefit) which should be used for this Virtual Machine Scale Set. Possible values are `None`, `Windows_Client`, and `Windows_Server`.
  final pulumi.Input<String>? licenseType;
  /// The Azure location where the Virtual Machine Scale Set should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The maximum price you're willing to pay for each Virtual Machine in this Scale Set, in US Dollars; which must be greater than the current spot price. If this bid price falls below the current spot price the Virtual Machines in the Scale Set will be evicted using the eviction_policy. Defaults to `-1`, which means that each Virtual Machine in the Scale Set should not be evicted for price reasons.
  final pulumi.Input<double>? maxBidPrice;
  /// The name of the Virtual Machine Scale Set. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the Microsoft.Network API version used when creating networking resources in the Network Interface Configurations for Virtual Machine Scale Set. Possible values are `2020-11-01` and `2022-11-01`. Defaults to `2020-11-01`.
  final pulumi.Input<String>? networkApiVersion;
  /// One or more `networkInterface` blocks as defined below.
  final pulumi.Input<List<OrchestratedVirtualMachineScaleSetNetworkInterface>>? networkInterfaces;
  /// An `osDisk` block as defined below.
  final pulumi.Input<OrchestratedVirtualMachineScaleSetOsDisk>? osDisk;
  /// An `osProfile` block as defined below.
  final pulumi.Input<OrchestratedVirtualMachineScaleSetOsProfile>? osProfile;
  /// A `plan` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<OrchestratedVirtualMachineScaleSetPlan>? plan;
  /// Specifies the number of fault domains that are used by this Virtual Machine Scale Set. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The number of Fault Domains varies depending on which Azure Region you're using. More information about update and fault domains and how they work can be found [here](https://learn.microsoft.com/en-us/azure/virtual-machines/availability-set-overview).
  final pulumi.Input<int>? platformFaultDomainCount;
  /// The Priority of this Virtual Machine Scale Set. Possible values are `Regular` and `Spot`. Defaults to `Regular`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? priority;
  /// A `priorityMix` block as defined below.
  ///
  /// &gt; **Note:** `priorityMix` can only be specified when `priority` is set to `Spot`.
  final pulumi.Input<OrchestratedVirtualMachineScaleSetPriorityMix>? priorityMix;
  /// The ID of the Proximity Placement Group which the Virtual Machine should be assigned to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? proximityPlacementGroupId;
  /// The name of the Resource Group in which the Virtual Machine Scale Set should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A `rollingUpgradePolicy` block as defined below. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** `rollingUpgradePolicy` is required when `upgradeMode` is set to `Rolling`, cannot be specified when `upgradeMode` is set to `Manual`, and requires a valid application health extension when `upgradeMode` is set to `Rolling`.
  final pulumi.Input<OrchestratedVirtualMachineScaleSetRollingUpgradePolicy>? rollingUpgradePolicy;
  /// Should this Virtual Machine Scale Set be limited to a Single Placement Group, which means the number of instances will be capped at 100 Virtual Machines. Possible values are `true` or `false`.
  ///
  /// &gt; **Note:** `singlePlacementGroup` behaves differently for Flexible orchestration Virtual Machine Scale Sets than it does for Uniform orchestration Virtual Machine Scale Sets. It is recommended that you do not define the `singlePlacementGroup` field in your configuration file as the service will determine what this value should be based off of the value contained within the `skuName` field of your configuration file. You may set the `singlePlacementGroup` field to `true`, however once you set it to `false` you will not be able to revert it back to `true`.
  final pulumi.Input<bool>? singlePlacementGroup;
  /// The name of the SKU to be used by this Virtual Machine Scale Set.
  ///
  /// &gt; **Note:** `skuName` can be set to any of the [General purpose](https://docs.microsoft.com/azure/virtual-machines/sizes-general), [Compute optimized](https://docs.microsoft.com/azure/virtual-machines/sizes-compute), [Memory optimized](https://docs.microsoft.com/azure/virtual-machines/sizes-memory), [Storage optimized](https://docs.microsoft.com/azure/virtual-machines/sizes-storage), [GPU optimized](https://docs.microsoft.com/azure/virtual-machines/sizes-gpu), [FPGA optimized](https://docs.microsoft.com/azure/virtual-machines/sizes-field-programmable-gate-arrays), [High performance](https://docs.microsoft.com/azure/virtual-machines/sizes-hpc), or [Previous generation](https://docs.microsoft.com/azure/virtual-machines/sizes-previous-gen) virtual machine SKUs.
  final pulumi.Input<String>? skuName;
  /// A `skuProfile` block as defined below.
  ///
  /// &gt; **Note:** `skuProfile` can only be specified when `skuName` is set to `Mix`, and `skuProfile` must be configured when `skuName` is set to `Mix`.
  ///
  /// &gt; **Note:** The `skuProfile` feature may be subject to Azure service limitations for particular regions and VM size combinations. While `skuProfile` can be updated after deployment, it cannot be removed. Removing `skuProfile` from the configuration after deployment triggers the creation of a new resource. Additionally, modifying `skuProfile` settings may result in instance disruption, as changes to allocation strategies or VM sizes can require Azure to redistribute or recreate instances.
  final pulumi.Input<OrchestratedVirtualMachineScaleSetSkuProfile>? skuProfile;
  /// The ID of an Image which each Virtual Machine in this Scale Set should be based on. Possible Image ID types include `Image ID`s, `Shared Image ID`s, `Shared Image Version ID`s, `Community Gallery Image ID`s, `Community Gallery Image Version ID`s, `Shared Gallery Image ID`s and `Shared Gallery Image Version ID`s.
  final pulumi.Input<String>? sourceImageId;
  /// A `sourceImageReference` block as defined below.
  ///
  /// &gt; **Note:** `sourceImageId` and `sourceImageReference` are mutually exclusive and only one of them may be specified.
  final pulumi.Input<OrchestratedVirtualMachineScaleSetSourceImageReference>? sourceImageReference;
  /// A mapping of tags which should be assigned to this Virtual Machine Scale Set.
  final pulumi.Input<Map<String, String>>? tags;
  /// A `terminationNotification` block as defined below.
  final pulumi.Input<OrchestratedVirtualMachineScaleSetTerminationNotification>? terminationNotification;
  /// The Unique ID for the Orchestrated Virtual Machine Scale Set.
  final pulumi.Input<String>? uniqueId;
  /// Specifies how upgrades (e.g. changing the Image/SKU) should be performed to Virtual Machine Instances. Possible values are `Automatic`, `Manual`, and `Rolling`. Defaults to `Manual`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? upgradeMode;
  /// The Base64-Encoded User Data which should be used for this Virtual Machine Scale Set.
  final pulumi.Input<String>? userDataBase64;
  /// Should the Virtual Machines in this Scale Set be strictly evenly distributed across Availability Zones? Defaults to `false`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** This can only be set to `true` when one or more `zones` are configured.
  final pulumi.Input<bool>? zoneBalance;
  /// Specifies a list of Availability Zones across which the Virtual Machine Scale Set will create instances.
  ///
  /// &gt; **Note:** Updating `zones` to remove an existing zone forces a new Virtual Machine Scale Set to be created.
  ///
  /// &gt; **Note:** Availability Zones are [only supported in several regions at this time](https://docs.microsoft.com/azure/availability-zones/az-overview).
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [OrchestratedVirtualMachineScaleSetState].
  /// [additionalCapabilities] An `additionalCapabilities` block as defined below.
  /// [automaticInstanceRepair] An `automaticInstanceRepair` block as defined below.
  /// [bootDiagnostics] A `bootDiagnostics` block as defined below.
  /// [capacityReservationGroupId] Specifies the ID of the Capacity Reservation Group which the Virtual Machine Scale Set should be allocated to. Changing this forces a new resource to be created.
  /// [dataDisks] One or more `dataDisk` blocks as defined below.
  /// [encryptionAtHostEnabled] Should disks attached to this Virtual Machine Scale Set be encrypted by enabling Encryption at Host?
  /// [evictionPolicy] The Policy which should be used by Spot Virtual Machines that are Evicted from the Scale Set. Possible values are `Deallocate` and `Delete`. Changing this forces a new resource to be created.
  /// [extensionOperationsEnabled] Should extension operations be allowed on the Virtual Machine Scale Set? Possible values are `true` or `false`. Defaults to `true`. Changing this forces a new resource to be created.
  /// [extensions] One or more `extension` blocks as defined below
  /// [extensionsTimeBudget] Specifies the time allotted for all extensions to start. The time duration should be between 15 minutes and 120 minutes (inclusive) and should be specified in ISO 8601 format. Defaults to `PT1H30M`.
  /// [identity] An `identity` block as defined below.
  /// [instances] The number of Virtual Machines in the Virtual Machine Scale Set.
  /// [licenseType] Specifies the type of on-premise license (also known as Azure Hybrid Use Benefit) which should be used for this Virtual Machine Scale Set. Possible values are `None`, `Windows_Client`, and `Windows_Server`.
  /// [location] The Azure location where the Virtual Machine Scale Set should exist. Changing this forces a new resource to be created.
  /// [maxBidPrice] The maximum price you're willing to pay for each Virtual Machine in this Scale Set, in US Dollars; which must be greater than the current spot price. If this bid price falls below the current spot price the Virtual Machines in the Scale Set will be evicted using the eviction_policy. Defaults to `-1`, which means that each Virtual Machine in the Scale Set should not be evicted for price reasons.
  /// [name] The name of the Virtual Machine Scale Set. Changing this forces a new resource to be created.
  /// [networkApiVersion] Specifies the Microsoft.Network API version used when creating networking resources in the Network Interface Configurations for Virtual Machine Scale Set. Possible values are `2020-11-01` and `2022-11-01`. Defaults to `2020-11-01`.
  /// [networkInterfaces] One or more `networkInterface` blocks as defined below.
  /// [osDisk] An `osDisk` block as defined below.
  /// [osProfile] An `osProfile` block as defined below.
  /// [plan] A `plan` block as defined below. Changing this forces a new resource to be created.
  /// [platformFaultDomainCount] Specifies the number of fault domains that are used by this Virtual Machine Scale Set. Changing this forces a new resource to be created.
  /// [priority] The Priority of this Virtual Machine Scale Set. Possible values are `Regular` and `Spot`. Defaults to `Regular`. Changing this forces a new resource to be created.
  /// [priorityMix] A `priorityMix` block as defined below.
  /// [proximityPlacementGroupId] The ID of the Proximity Placement Group which the Virtual Machine should be assigned to. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group in which the Virtual Machine Scale Set should exist. Changing this forces a new resource to be created.
  /// [rollingUpgradePolicy] A `rollingUpgradePolicy` block as defined below. Changing this forces a new resource to be created.
  /// [singlePlacementGroup] Should this Virtual Machine Scale Set be limited to a Single Placement Group, which means the number of instances will be capped at 100 Virtual Machines. Possible values are `true` or `false`.
  /// [skuName] The name of the SKU to be used by this Virtual Machine Scale Set.
  /// [skuProfile] A `skuProfile` block as defined below.
  /// [sourceImageId] The ID of an Image which each Virtual Machine in this Scale Set should be based on. Possible Image ID types include `Image ID`s, `Shared Image ID`s, `Shared Image Version ID`s, `Community Gallery Image ID`s, `Community Gallery Image Version ID`s, `Shared Gallery Image ID`s and `Shared Gallery Image Version ID`s.
  /// [sourceImageReference] A `sourceImageReference` block as defined below.
  /// [tags] A mapping of tags which should be assigned to this Virtual Machine Scale Set.
  /// [terminationNotification] A `terminationNotification` block as defined below.
  /// [uniqueId] The Unique ID for the Orchestrated Virtual Machine Scale Set.
  /// [upgradeMode] Specifies how upgrades (e.g. changing the Image/SKU) should be performed to Virtual Machine Instances. Possible values are `Automatic`, `Manual`, and `Rolling`. Defaults to `Manual`. Changing this forces a new resource to be created.
  /// [userDataBase64] The Base64-Encoded User Data which should be used for this Virtual Machine Scale Set.
  /// [zoneBalance] Should the Virtual Machines in this Scale Set be strictly evenly distributed across Availability Zones? Defaults to `false`. Changing this forces a new resource to be created.
  /// [zones] Specifies a list of Availability Zones across which the Virtual Machine Scale Set will create instances.
  const OrchestratedVirtualMachineScaleSetState({
    this.additionalCapabilities,
    this.automaticInstanceRepair,
    this.bootDiagnostics,
    this.capacityReservationGroupId,
    this.dataDisks,
    this.encryptionAtHostEnabled,
    this.evictionPolicy,
    this.extensionOperationsEnabled,
    this.extensions,
    this.extensionsTimeBudget,
    this.identity,
    this.instances,
    this.licenseType,
    this.location,
    this.maxBidPrice,
    this.name,
    this.networkApiVersion,
    this.networkInterfaces,
    this.osDisk,
    this.osProfile,
    this.plan,
    this.platformFaultDomainCount,
    this.priority,
    this.priorityMix,
    this.proximityPlacementGroupId,
    this.resourceGroupName,
    this.rollingUpgradePolicy,
    this.singlePlacementGroup,
    this.skuName,
    this.skuProfile,
    this.sourceImageId,
    this.sourceImageReference,
    this.tags,
    this.terminationNotification,
    this.uniqueId,
    this.upgradeMode,
    this.userDataBase64,
    this.zoneBalance,
    this.zones,
  });

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
      additionalCapabilities: (() { final guardedValue = map['additionalCapabilities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrchestratedVirtualMachineScaleSetAdditionalCapabilities.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      automaticInstanceRepair: (() { final guardedValue = map['automaticInstanceRepair']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrchestratedVirtualMachineScaleSetAutomaticInstanceRepair.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bootDiagnostics: (() { final guardedValue = map['bootDiagnostics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrchestratedVirtualMachineScaleSetBootDiagnostics.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      capacityReservationGroupId: (() { final guardedValue = map['capacityReservationGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataDisks: (() { final guardedValue = map['dataDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OrchestratedVirtualMachineScaleSetDataDisk>(guardedValue, (value) => OrchestratedVirtualMachineScaleSetDataDisk.fromMap((value as Map).cast<String, dynamic>()))); })(),
      encryptionAtHostEnabled: (() { final guardedValue = map['encryptionAtHostEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      evictionPolicy: (() { final guardedValue = map['evictionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extensionOperationsEnabled: (() { final guardedValue = map['extensionOperationsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      extensions: (() { final guardedValue = map['extensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OrchestratedVirtualMachineScaleSetExtension>(guardedValue, (value) => OrchestratedVirtualMachineScaleSetExtension.fromMap((value as Map).cast<String, dynamic>()))); })(),
      extensionsTimeBudget: (() { final guardedValue = map['extensionsTimeBudget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrchestratedVirtualMachineScaleSetIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      instances: (() { final guardedValue = map['instances']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      licenseType: (() { final guardedValue = map['licenseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxBidPrice: (() { final guardedValue = map['maxBidPrice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkApiVersion: (() { final guardedValue = map['networkApiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfaces: (() { final guardedValue = map['networkInterfaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OrchestratedVirtualMachineScaleSetNetworkInterface>(guardedValue, (value) => OrchestratedVirtualMachineScaleSetNetworkInterface.fromMap((value as Map).cast<String, dynamic>()))); })(),
      osDisk: (() { final guardedValue = map['osDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrchestratedVirtualMachineScaleSetOsDisk.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      osProfile: (() { final guardedValue = map['osProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrchestratedVirtualMachineScaleSetOsProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      plan: (() { final guardedValue = map['plan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrchestratedVirtualMachineScaleSetPlan.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      platformFaultDomainCount: (() { final guardedValue = map['platformFaultDomainCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priorityMix: (() { final guardedValue = map['priorityMix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrchestratedVirtualMachineScaleSetPriorityMix.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      proximityPlacementGroupId: (() { final guardedValue = map['proximityPlacementGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rollingUpgradePolicy: (() { final guardedValue = map['rollingUpgradePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrchestratedVirtualMachineScaleSetRollingUpgradePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      singlePlacementGroup: (() { final guardedValue = map['singlePlacementGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      skuName: (() { final guardedValue = map['skuName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skuProfile: (() { final guardedValue = map['skuProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrchestratedVirtualMachineScaleSetSkuProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceImageId: (() { final guardedValue = map['sourceImageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceImageReference: (() { final guardedValue = map['sourceImageReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrchestratedVirtualMachineScaleSetSourceImageReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      terminationNotification: (() { final guardedValue = map['terminationNotification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrchestratedVirtualMachineScaleSetTerminationNotification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      uniqueId: (() { final guardedValue = map['uniqueId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      upgradeMode: (() { final guardedValue = map['upgradeMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userDataBase64: (() { final guardedValue = map['userDataBase64']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneBalance: (() { final guardedValue = map['zoneBalance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
