// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'module_management_network_profile.dart';
import 'module_network_profile.dart';

/// {@template pulumi_hsm_module_module_args_doc}
/// The set of arguments for Module.
/// {@endtemplate}
/// {@macro pulumi_hsm_module_module_args_doc}
class ModuleArgs {
  /// The Azure Region where the Dedicated Hardware Security Module should exist. Changing this forces a new Dedicated Hardware Security Module to be created.
  final pulumi.Input<String>? location;
  /// A `management_network_profile` block as defined below.
  ///
  /// > **Note:** The `management_network_profile` should not be specified when `sku_name` is `SafeNet Luna Network HSM A790`.
  final pulumi.Input<ModuleManagementNetworkProfile>? managementNetworkProfile;
  /// The name which should be used for this Dedicated Hardware Security Module. Changing this forces a new Dedicated Hardware Security Module to be created.
  final pulumi.Input<String>? name;
  /// A `network_profile` block as defined below.
  final pulumi.Input<ModuleNetworkProfile> networkProfile;
  /// The name of the Resource Group where the Dedicated Hardware Security Module should exist. Changing this forces a new Dedicated Hardware Security Module to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The SKU name of the dedicated hardware security module. Possible values are `payShield10K_LMK1_CPS60`,`payShield10K_LMK1_CPS250`,`payShield10K_LMK1_CPS2500`,`payShield10K_LMK2_CPS60`,`payShield10K_LMK2_CPS250`,`payShield10K_LMK2_CPS2500` and `SafeNet Luna Network HSM A790`. Changing this forces a new Dedicated Hardware Security Module to be created.
  final pulumi.Input<String> skuName;
  /// The ID of the stamp. Possible values are `stamp1` or `stamp2`. Changing this forces a new Dedicated Hardware Security Module to be created.
  final pulumi.Input<String>? stampId;
  /// A mapping of tags which should be assigned to the Dedicated Hardware Security Module.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies a list of Availability Zones in which this Dedicated Hardware Security Module should be located. Changing this forces a new Dedicated Hardware Security Module to be created.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [ModuleArgs].
  /// [location] The Azure Region where the Dedicated Hardware Security Module should exist. Changing this forces a new Dedicated Hardware Security Module to be created.
  /// [managementNetworkProfile] A `management_network_profile` block as defined below.
  /// [name] The name which should be used for this Dedicated Hardware Security Module. Changing this forces a new Dedicated Hardware Security Module to be created.
  /// [networkProfile] A `network_profile` block as defined below.
  /// [resourceGroupName] The name of the Resource Group where the Dedicated Hardware Security Module should exist. Changing this forces a new Dedicated Hardware Security Module to be created.
  /// [skuName] The SKU name of the dedicated hardware security module. Possible values are `payShield10K_LMK1_CPS60`,`payShield10K_LMK1_CPS250`,`payShield10K_LMK1_CPS2500`,`payShield10K_LMK2_CPS60`,`payShield10K_LMK2_CPS250`,`payShield10K_LMK2_CPS2500` and `SafeNet Luna Network HSM A790`. Changing this forces a new Dedicated Hardware Security Module to be created.
  /// [stampId] The ID of the stamp. Possible values are `stamp1` or `stamp2`. Changing this forces a new Dedicated Hardware Security Module to be created.
  /// [tags] A mapping of tags which should be assigned to the Dedicated Hardware Security Module.
  /// [zones] Specifies a list of Availability Zones in which this Dedicated Hardware Security Module should be located. Changing this forces a new Dedicated Hardware Security Module to be created.
  ModuleArgs({
    pulumi.Output<String>? location,
    pulumi.Output<ModuleManagementNetworkProfile>? managementNetworkProfile,
    pulumi.Output<String>? name,
    required pulumi.Output<ModuleNetworkProfile> networkProfile,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> skuName,
    pulumi.Output<String>? stampId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<List<String>>? zones,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      managementNetworkProfile = pulumi.Input.asOptionalInput<ModuleManagementNetworkProfile>(managementNetworkProfile),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkProfile = pulumi.Input.asInput<ModuleNetworkProfile>(networkProfile),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      skuName = pulumi.Input.asInput<String>(skuName),
      stampId = pulumi.Input.asOptionalInput<String>(stampId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      zones = pulumi.Input.asOptionalInput<List<String>>(zones);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'managementNetworkProfile': ?pulumi.Input.mapOptionalInputValue<ModuleManagementNetworkProfile, Map<String, dynamic>>(managementNetworkProfile, (value) => value.toMap()),
      'name': ?name,
      'networkProfile': pulumi.Input.mapInputValue<ModuleNetworkProfile, Map<String, dynamic>>(networkProfile, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'skuName': skuName,
      'stampId': ?stampId,
      'tags': ?tags,
      'zones': ?zones,
    };
  }

  factory ModuleArgs.fromMap(Map<String, dynamic> map) {
    return ModuleArgs(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managementNetworkProfile: map['managementNetworkProfile'] == null ? null : pulumi.Output.create<ModuleManagementNetworkProfile>(ModuleManagementNetworkProfile.fromMap((map['managementNetworkProfile'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkProfile: pulumi.Output.create<ModuleNetworkProfile>(ModuleNetworkProfile.fromMap((map['networkProfile'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      skuName: pulumi.Output.create<String>(map['skuName'] as String),
      stampId: map['stampId'] == null ? null : pulumi.Output.create<String>(map['stampId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      zones: map['zones'] == null ? null : pulumi.Output.create<List<String>>((map['zones'] as List).cast<String>()),
    );
  }
}

