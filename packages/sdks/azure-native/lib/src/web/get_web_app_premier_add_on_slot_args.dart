// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_web_app_premier_add_on_slot_args_doc}
/// Arguments for getWebAppPremierAddOnSlot.
/// {@endtemplate}
/// {@macro pulumi_web_get_web_app_premier_add_on_slot_args_doc}
class GetWebAppPremierAddOnSlotArgs {
  /// Name of the app.
  final pulumi.Input<String> name;
  /// Add-on name.
  final pulumi.Input<String> premierAddOnName;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the deployment slot. If a slot is not specified, the API will get the named add-on for the production slot.
  final pulumi.Input<String> slot;

  /// Creates a new [GetWebAppPremierAddOnSlotArgs].
  /// [name] Name of the app.
  /// [premierAddOnName] Add-on name.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [slot] Name of the deployment slot. If a slot is not specified, the API will get the named add-on for the production slot.
  const GetWebAppPremierAddOnSlotArgs({
    required this.name,
    required this.premierAddOnName,
    required this.resourceGroupName,
    required this.slot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'premierAddOnName': premierAddOnName,
      'resourceGroupName': resourceGroupName,
      'slot': slot,
    };
  }

  factory GetWebAppPremierAddOnSlotArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppPremierAddOnSlotArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      premierAddOnName: pulumi.Input.fromValue(map['premierAddOnName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      slot: pulumi.Input.fromValue(map['slot'] as String),
    );
  }
}

