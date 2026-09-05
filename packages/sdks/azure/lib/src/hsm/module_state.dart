// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'module_management_network_profile.dart';
import 'module_network_profile.dart';

/// Input properties used for looking up and filtering Module resources.
class ModuleState {
  /// The Azure Region where the Dedicated Hardware Security Module should exist. Changing this forces a new Dedicated Hardware Security Module to be created.
  final pulumi.Input<String?>? location;
  /// A `managementNetworkProfile` block as defined below.
  ///
  /// &gt; **Note:** The `managementNetworkProfile` should not be specified when `skuName` is `SafeNet Luna Network HSM A790`.
  final pulumi.Input<ModuleManagementNetworkProfile?>? managementNetworkProfile;
  /// The name which should be used for this Dedicated Hardware Security Module. Changing this forces a new Dedicated Hardware Security Module to be created.
  final pulumi.Input<String?>? name;
  /// A `networkProfile` block as defined below.
  final pulumi.Input<ModuleNetworkProfile?>? networkProfile;
  /// The name of the Resource Group where the Dedicated Hardware Security Module should exist. Changing this forces a new Dedicated Hardware Security Module to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// The SKU name of the dedicated hardware security module. Possible values are `payShield10K_LMK1_CPS60`,`payShield10K_LMK1_CPS250`,`payShield10K_LMK1_CPS2500`,`payShield10K_LMK2_CPS60`,`payShield10K_LMK2_CPS250`,`payShield10K_LMK2_CPS2500` and `SafeNet Luna Network HSM A790`. Changing this forces a new Dedicated Hardware Security Module to be created.
  final pulumi.Input<String?>? skuName;
  /// The ID of the stamp. Possible values are `stamp1` or `stamp2`. Changing this forces a new Dedicated Hardware Security Module to be created.
  final pulumi.Input<String?>? stampId;
  /// A mapping of tags which should be assigned to the Dedicated Hardware Security Module.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Specifies a list of Availability Zones in which this Dedicated Hardware Security Module should be located. Changing this forces a new Dedicated Hardware Security Module to be created.
  final pulumi.Input<List<String>?>? zones;

  /// Creates a new [ModuleState].
  /// [location] The Azure Region where the Dedicated Hardware Security Module should exist. Changing this forces a new Dedicated Hardware Security Module to be created.
  /// [managementNetworkProfile] A `managementNetworkProfile` block as defined below.
  /// [name] The name which should be used for this Dedicated Hardware Security Module. Changing this forces a new Dedicated Hardware Security Module to be created.
  /// [networkProfile] A `networkProfile` block as defined below.
  /// [resourceGroupName] The name of the Resource Group where the Dedicated Hardware Security Module should exist. Changing this forces a new Dedicated Hardware Security Module to be created.
  /// [skuName] The SKU name of the dedicated hardware security module. Possible values are `payShield10K_LMK1_CPS60`,`payShield10K_LMK1_CPS250`,`payShield10K_LMK1_CPS2500`,`payShield10K_LMK2_CPS60`,`payShield10K_LMK2_CPS250`,`payShield10K_LMK2_CPS2500` and `SafeNet Luna Network HSM A790`. Changing this forces a new Dedicated Hardware Security Module to be created.
  /// [stampId] The ID of the stamp. Possible values are `stamp1` or `stamp2`. Changing this forces a new Dedicated Hardware Security Module to be created.
  /// [tags] A mapping of tags which should be assigned to the Dedicated Hardware Security Module.
  /// [zones] Specifies a list of Availability Zones in which this Dedicated Hardware Security Module should be located. Changing this forces a new Dedicated Hardware Security Module to be created.
  const ModuleState({
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
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managementNetworkProfile: (() { final guardedValue = map['managementNetworkProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ModuleManagementNetworkProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkProfile: (() { final guardedValue = map['networkProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ModuleNetworkProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skuName: (() { final guardedValue = map['skuName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stampId: (() { final guardedValue = map['stampId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
