// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scale_set_boot_diagnostics.dart';
import 'scale_set_extension.dart';
import 'scale_set_identity.dart';
import 'scale_set_network_profile.dart';
import 'scale_set_os_profile.dart';
import 'scale_set_os_profile_linux_config.dart';
import 'scale_set_os_profile_secret.dart';
import 'scale_set_os_profile_windows_config.dart';
import 'scale_set_plan.dart';
import 'scale_set_rolling_upgrade_policy.dart';
import 'scale_set_sku.dart';
import 'scale_set_storage_profile_data_disk.dart';
import 'scale_set_storage_profile_image_reference.dart';
import 'scale_set_storage_profile_os_disk.dart';

/// {@template pulumi_compute_scale_set_scale_set_args_doc}
/// The set of arguments for ScaleSet.
/// {@endtemplate}
/// {@macro pulumi_compute_scale_set_scale_set_args_doc}
class ScaleSetArgs {
  /// Automatic OS patches can be applied by Azure to your scaleset. This is particularly useful when `upgrade_policy_mode` is set to `Rolling`. Defaults to `false`.
  final pulumi.Input<bool>? automaticOsUpgrade;
  /// A `boot_diagnostics` block as referenced below.
  final pulumi.Input<ScaleSetBootDiagnostics>? bootDiagnostics;
  /// Specifies the eviction policy for Virtual Machines in this Scale Set. Possible values are `Deallocate` and `Delete`. Changing this forces a new resource to be created.
  ///
  /// &gt; **NOTE:** `eviction_policy` can only be set when `priority` is set to `Low`.
  final pulumi.Input<String>? evictionPolicy;
  /// Can be specified multiple times to add extension profiles to the scale set. Each `extension` block supports the fields documented below.
  final pulumi.Input<List<ScaleSetExtension>>? extensions;
  /// Specifies the identifier for the load balancer health probe. Required when using `Rolling` as your `upgrade_policy_mode`.
  final pulumi.Input<String>? healthProbeId;
  /// An `identity` block as defined below.
  final pulumi.Input<ScaleSetIdentity>? identity;
  /// (Optional, when a Windows machine) Specifies the Windows OS license type. If supplied, the only allowed values are `Windows_Client` and `Windows_Server`.
  final pulumi.Input<String>? licenseType;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the virtual machine scale set resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A collection of `network_profile` blocks as documented below.
  final pulumi.Input<List<ScaleSetNetworkProfile>> networkProfiles;
  /// A `os_profile` block as documented below.
  final pulumi.Input<ScaleSetOsProfile> osProfile;
  /// A `os_profile_linux_config` block as documented below.
  final pulumi.Input<ScaleSetOsProfileLinuxConfig>? osProfileLinuxConfig;
  /// A collection of `os_profile_secrets` blocks as documented below.
  final pulumi.Input<List<ScaleSetOsProfileSecret>>? osProfileSecrets;
  /// A `os_profile_windows_config` block as documented below.
  final pulumi.Input<ScaleSetOsProfileWindowsConfig>? osProfileWindowsConfig;
  /// Specifies whether the virtual machine scale set should be overprovisioned. Defaults to `true`.
  final pulumi.Input<bool>? overprovision;
  /// A `plan` block as documented below.
  final pulumi.Input<ScaleSetPlan>? plan;
  /// Specifies the priority for the Virtual Machines in the Scale Set. Possible values are `Low` and `Regular`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? priority;
  /// The ID of the Proximity Placement Group to which this Virtual Machine should be assigned. Changing this forces a new resource to be created
  final pulumi.Input<String>? proximityPlacementGroupId;
  /// The name of the resource group in which to create the virtual machine scale set. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `rolling_upgrade_policy` block as defined below. This is only applicable when the `upgrade_policy_mode` is `Rolling`.
  final pulumi.Input<ScaleSetRollingUpgradePolicy>? rollingUpgradePolicy;
  /// Specifies whether the scale set is limited to a single placement group with a maximum size of 100 virtual machines. If set to false, managed disks must be used. Changing this forces a new resource to be created. See [documentation](https://docs.microsoft.com/azure/virtual-machine-scale-sets/virtual-machine-scale-sets-placement-groups) for more information. Defaults to `true`.
  final pulumi.Input<bool>? singlePlacementGroup;
  /// A `sku` block as documented below.
  final pulumi.Input<ScaleSetSku> sku;
  /// A `storage_profile_data_disk` block as documented below.
  final pulumi.Input<List<ScaleSetStorageProfileDataDisk>>? storageProfileDataDisks;
  /// A `storage_profile_image_reference` block as documented below.
  final pulumi.Input<ScaleSetStorageProfileImageReference>? storageProfileImageReference;
  /// A `storage_profile_os_disk` block as documented below.
  final pulumi.Input<ScaleSetStorageProfileOsDisk> storageProfileOsDisk;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the mode of an upgrade to virtual machines in the scale set. Possible values, `Rolling`, `Manual`, or `Automatic`. When choosing `Rolling`, you will need to set a health probe.
  final pulumi.Input<String> upgradePolicyMode;
  /// A collection of availability zones to spread the Virtual Machines over. Changing this forces a new resource to be created.
  ///
  /// &gt; **NOTE:** Availability Zones are [only supported in several regions at this time](https://docs.microsoft.com/azure/availability-zones/az-overview).
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [ScaleSetArgs].
  /// [automaticOsUpgrade] Automatic OS patches can be applied by Azure to your scaleset. This is particularly useful when `upgrade_policy_mode` is set to `Rolling`. Defaults to `false`.
  /// [bootDiagnostics] A `boot_diagnostics` block as referenced below.
  /// [evictionPolicy] Specifies the eviction policy for Virtual Machines in this Scale Set. Possible values are `Deallocate` and `Delete`. Changing this forces a new resource to be created.
  /// [extensions] Can be specified multiple times to add extension profiles to the scale set. Each `extension` block supports the fields documented below.
  /// [healthProbeId] Specifies the identifier for the load balancer health probe. Required when using `Rolling` as your `upgrade_policy_mode`.
  /// [identity] An `identity` block as defined below.
  /// [licenseType] (Optional, when a Windows machine) Specifies the Windows OS license type. If supplied, the only allowed values are `Windows_Client` and `Windows_Server`.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the virtual machine scale set resource. Changing this forces a new resource to be created.
  /// [networkProfiles] A collection of `network_profile` blocks as documented below.
  /// [osProfile] A `os_profile` block as documented below.
  /// [osProfileLinuxConfig] A `os_profile_linux_config` block as documented below.
  /// [osProfileSecrets] A collection of `os_profile_secrets` blocks as documented below.
  /// [osProfileWindowsConfig] A `os_profile_windows_config` block as documented below.
  /// [overprovision] Specifies whether the virtual machine scale set should be overprovisioned. Defaults to `true`.
  /// [plan] A `plan` block as documented below.
  /// [priority] Specifies the priority for the Virtual Machines in the Scale Set. Possible values are `Low` and `Regular`. Changing this forces a new resource to be created.
  /// [proximityPlacementGroupId] The ID of the Proximity Placement Group to which this Virtual Machine should be assigned. Changing this forces a new resource to be created
  /// [resourceGroupName] The name of the resource group in which to create the virtual machine scale set. Changing this forces a new resource to be created.
  /// [rollingUpgradePolicy] A `rolling_upgrade_policy` block as defined below. This is only applicable when the `upgrade_policy_mode` is `Rolling`.
  /// [singlePlacementGroup] Specifies whether the scale set is limited to a single placement group with a maximum size of 100 virtual machines. If set to false, managed disks must be used. Changing this forces a new resource to be created. See [documentation](https://docs.microsoft.com/azure/virtual-machine-scale-sets/virtual-machine-scale-sets-placement-groups) for more information. Defaults to `true`.
  /// [sku] A `sku` block as documented below.
  /// [storageProfileDataDisks] A `storage_profile_data_disk` block as documented below.
  /// [storageProfileImageReference] A `storage_profile_image_reference` block as documented below.
  /// [storageProfileOsDisk] A `storage_profile_os_disk` block as documented below.
  /// [tags] A mapping of tags to assign to the resource.
  /// [upgradePolicyMode] Specifies the mode of an upgrade to virtual machines in the scale set. Possible values, `Rolling`, `Manual`, or `Automatic`. When choosing `Rolling`, you will need to set a health probe.
  /// [zones] A collection of availability zones to spread the Virtual Machines over. Changing this forces a new resource to be created.
  const ScaleSetArgs({
    this.automaticOsUpgrade,
    this.bootDiagnostics,
    this.evictionPolicy,
    this.extensions,
    this.healthProbeId,
    this.identity,
    this.licenseType,
    this.location,
    this.name,
    required this.networkProfiles,
    required this.osProfile,
    this.osProfileLinuxConfig,
    this.osProfileSecrets,
    this.osProfileWindowsConfig,
    this.overprovision,
    this.plan,
    this.priority,
    this.proximityPlacementGroupId,
    required this.resourceGroupName,
    this.rollingUpgradePolicy,
    this.singlePlacementGroup,
    required this.sku,
    this.storageProfileDataDisks,
    this.storageProfileImageReference,
    required this.storageProfileOsDisk,
    this.tags,
    required this.upgradePolicyMode,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticOsUpgrade': ?automaticOsUpgrade,
      'bootDiagnostics': ?pulumi.Input.mapOptionalInputValue<ScaleSetBootDiagnostics, Map<String, dynamic>>(bootDiagnostics, (value) => value.toMap()),
      'evictionPolicy': ?evictionPolicy,
      'extensions': ?pulumi.Input.mapOptionalInputValue<List<ScaleSetExtension>, List<Map<String, dynamic>>>(extensions, (value) => pulumi.Input.encodeList<ScaleSetExtension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'healthProbeId': ?healthProbeId,
      'identity': ?pulumi.Input.mapOptionalInputValue<ScaleSetIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'licenseType': ?licenseType,
      'location': ?location,
      'name': ?name,
      'networkProfiles': pulumi.Input.mapInputValue<List<ScaleSetNetworkProfile>, List<Map<String, dynamic>>>(networkProfiles, (value) => pulumi.Input.encodeList<ScaleSetNetworkProfile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'osProfile': pulumi.Input.mapInputValue<ScaleSetOsProfile, Map<String, dynamic>>(osProfile, (value) => value.toMap()),
      'osProfileLinuxConfig': ?pulumi.Input.mapOptionalInputValue<ScaleSetOsProfileLinuxConfig, Map<String, dynamic>>(osProfileLinuxConfig, (value) => value.toMap()),
      'osProfileSecrets': ?pulumi.Input.mapOptionalInputValue<List<ScaleSetOsProfileSecret>, List<Map<String, dynamic>>>(osProfileSecrets, (value) => pulumi.Input.encodeList<ScaleSetOsProfileSecret, Map<String, dynamic>>(value, (value) => value.toMap())),
      'osProfileWindowsConfig': ?pulumi.Input.mapOptionalInputValue<ScaleSetOsProfileWindowsConfig, Map<String, dynamic>>(osProfileWindowsConfig, (value) => value.toMap()),
      'overprovision': ?overprovision,
      'plan': ?pulumi.Input.mapOptionalInputValue<ScaleSetPlan, Map<String, dynamic>>(plan, (value) => value.toMap()),
      'priority': ?priority,
      'proximityPlacementGroupId': ?proximityPlacementGroupId,
      'resourceGroupName': resourceGroupName,
      'rollingUpgradePolicy': ?pulumi.Input.mapOptionalInputValue<ScaleSetRollingUpgradePolicy, Map<String, dynamic>>(rollingUpgradePolicy, (value) => value.toMap()),
      'singlePlacementGroup': ?singlePlacementGroup,
      'sku': pulumi.Input.mapInputValue<ScaleSetSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'storageProfileDataDisks': ?pulumi.Input.mapOptionalInputValue<List<ScaleSetStorageProfileDataDisk>, List<Map<String, dynamic>>>(storageProfileDataDisks, (value) => pulumi.Input.encodeList<ScaleSetStorageProfileDataDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageProfileImageReference': ?pulumi.Input.mapOptionalInputValue<ScaleSetStorageProfileImageReference, Map<String, dynamic>>(storageProfileImageReference, (value) => value.toMap()),
      'storageProfileOsDisk': pulumi.Input.mapInputValue<ScaleSetStorageProfileOsDisk, Map<String, dynamic>>(storageProfileOsDisk, (value) => value.toMap()),
      'tags': ?tags,
      'upgradePolicyMode': upgradePolicyMode,
      'zones': ?zones,
    };
  }

  factory ScaleSetArgs.fromMap(Map<String, dynamic> map) {
    return ScaleSetArgs(
      automaticOsUpgrade: (() { final guardedValue = map['automaticOsUpgrade']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      bootDiagnostics: (() { final guardedValue = map['bootDiagnostics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScaleSetBootDiagnostics.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      evictionPolicy: (() { final guardedValue = map['evictionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extensions: (() { final guardedValue = map['extensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ScaleSetExtension>(guardedValue, (value) => ScaleSetExtension.fromMap((value as Map).cast<String, dynamic>()))); })(),
      healthProbeId: (() { final guardedValue = map['healthProbeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScaleSetIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      licenseType: (() { final guardedValue = map['licenseType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkProfiles: pulumi.Input.fromValue(pulumi.Input.decodeList<ScaleSetNetworkProfile>(map['networkProfiles']!, (value) => ScaleSetNetworkProfile.fromMap((value as Map).cast<String, dynamic>()))),
      osProfile: pulumi.Input.fromValue(ScaleSetOsProfile.fromMap((map['osProfile']! as Map).cast<String, dynamic>())),
      osProfileLinuxConfig: (() { final guardedValue = map['osProfileLinuxConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScaleSetOsProfileLinuxConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      osProfileSecrets: (() { final guardedValue = map['osProfileSecrets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ScaleSetOsProfileSecret>(guardedValue, (value) => ScaleSetOsProfileSecret.fromMap((value as Map).cast<String, dynamic>()))); })(),
      osProfileWindowsConfig: (() { final guardedValue = map['osProfileWindowsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScaleSetOsProfileWindowsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      overprovision: (() { final guardedValue = map['overprovision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      plan: (() { final guardedValue = map['plan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScaleSetPlan.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proximityPlacementGroupId: (() { final guardedValue = map['proximityPlacementGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      rollingUpgradePolicy: (() { final guardedValue = map['rollingUpgradePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScaleSetRollingUpgradePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      singlePlacementGroup: (() { final guardedValue = map['singlePlacementGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sku: pulumi.Input.fromValue(ScaleSetSku.fromMap((map['sku']! as Map).cast<String, dynamic>())),
      storageProfileDataDisks: (() { final guardedValue = map['storageProfileDataDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ScaleSetStorageProfileDataDisk>(guardedValue, (value) => ScaleSetStorageProfileDataDisk.fromMap((value as Map).cast<String, dynamic>()))); })(),
      storageProfileImageReference: (() { final guardedValue = map['storageProfileImageReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScaleSetStorageProfileImageReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageProfileOsDisk: pulumi.Input.fromValue(ScaleSetStorageProfileOsDisk.fromMap((map['storageProfileOsDisk']! as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      upgradePolicyMode: pulumi.Input.fromValue(map['upgradePolicyMode'] as String),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

