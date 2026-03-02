// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'module_management_network_profile.dart';
import 'module_network_profile.dart';

/// Input properties used for looking up and filtering Module resources.
class ModuleState {
  /// The Azure Region where the Dedicated Hardware Security Module should exist. Changing this forces a new Dedicated Hardware Security Module to be created.
  final pulumi.Input<String>? location;
  /// A `management_network_profile` block as defined below.
  ///
  /// > **Note:** The `management_network_profile` should not be specified when `sku_name` is `SafeNet Luna Network HSM A790`.
  final pulumi.Input<ModuleManagementNetworkProfile>? managementNetworkProfile;
  /// The name which should be used for this Dedicated Hardware Security Module. Changing this forces a new Dedicated Hardware Security Module to be created.
  final pulumi.Input<String>? name;
  /// A `network_profile` block as defined below.
  final pulumi.Input<ModuleNetworkProfile>? networkProfile;
  /// The name of the Resource Group where the Dedicated Hardware Security Module should exist. Changing this forces a new Dedicated Hardware Security Module to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The SKU name of the dedicated hardware security module. Possible values are `payShield10K_LMK1_CPS60`,`payShield10K_LMK1_CPS250`,`payShield10K_LMK1_CPS2500`,`payShield10K_LMK2_CPS60`,`payShield10K_LMK2_CPS250`,`payShield10K_LMK2_CPS2500` and `SafeNet Luna Network HSM A790`. Changing this forces a new Dedicated Hardware Security Module to be created.
  final pulumi.Input<String>? skuName;
  /// The ID of the stamp. Possible values are `stamp1` or `stamp2`. Changing this forces a new Dedicated Hardware Security Module to be created.
  final pulumi.Input<String>? stampId;
  /// A mapping of tags which should be assigned to the Dedicated Hardware Security Module.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies a list of Availability Zones in which this Dedicated Hardware Security Module should be located. Changing this forces a new Dedicated Hardware Security Module to be created.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [ModuleState].
  /// [location] The Azure Region where the Dedicated Hardware Security Module should exist. Changing this forces a new Dedicated Hardware Security Module to be created.
  /// [managementNetworkProfile] A `management_network_profile` block as defined below.
  /// [name] The name which should be used for this Dedicated Hardware Security Module. Changing this forces a new Dedicated Hardware Security Module to be created.
  /// [networkProfile] A `network_profile` block as defined below.
  /// [resourceGroupName] The name of the Resource Group where the Dedicated Hardware Security Module should exist. Changing this forces a new Dedicated Hardware Security Module to be created.
  /// [skuName] The SKU name of the dedicated hardware security module. Possible values are `payShield10K_LMK1_CPS60`,`payShield10K_LMK1_CPS250`,`payShield10K_LMK1_CPS2500`,`payShield10K_LMK2_CPS60`,`payShield10K_LMK2_CPS250`,`payShield10K_LMK2_CPS2500` and `SafeNet Luna Network HSM A790`. Changing this forces a new Dedicated Hardware Security Module to be created.
  /// [stampId] The ID of the stamp. Possible values are `stamp1` or `stamp2`. Changing this forces a new Dedicated Hardware Security Module to be created.
  /// [tags] A mapping of tags which should be assigned to the Dedicated Hardware Security Module.
  /// [zones] Specifies a list of Availability Zones in which this Dedicated Hardware Security Module should be located. Changing this forces a new Dedicated Hardware Security Module to be created.
  ModuleState({
    this.location,
    this.managementNetworkProfile,
    this.name,
    this.networkProfile,
    this.resourceGroupName,
    this.skuName,
    this.stampId,
    this.tags,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'managementNetworkProfile': ?pulumi.Input.mapOptionalInputValue<ModuleManagementNetworkProfile, Map<String, dynamic>>(managementNetworkProfile, (value) => value.toMap()),
      'name': ?name,
      'networkProfile': ?pulumi.Input.mapOptionalInputValue<ModuleNetworkProfile, Map<String, dynamic>>(networkProfile, (value) => value.toMap()),
      'resourceGroupName': ?resourceGroupName,
      'skuName': ?skuName,
      'stampId': ?stampId,
      'tags': ?tags,
      'zones': ?zones,
    };
  }

  factory ModuleState.fromMap(Map<String, dynamic> map) {
    return ModuleState(
      location: map['location'] == null ? null : (map['location'] as String).input(),
      managementNetworkProfile: map['managementNetworkProfile'] == null ? null : (ModuleManagementNetworkProfile.fromMap((map['managementNetworkProfile'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      networkProfile: map['networkProfile'] == null ? null : (ModuleNetworkProfile.fromMap((map['networkProfile'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      skuName: map['skuName'] == null ? null : (map['skuName'] as String).input(),
      stampId: map['stampId'] == null ? null : (map['stampId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      zones: map['zones'] == null ? null : ((map['zones'] as List).cast<String>()).input(),
    );
  }
}

