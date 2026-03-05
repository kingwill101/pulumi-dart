// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_list_web_app_auth_settings_slot_args_doc}
/// Arguments for listWebAppAuthSettingsSlot.
/// {@endtemplate}
/// {@macro pulumi_web_list_web_app_auth_settings_slot_args_doc}
class ListWebAppAuthSettingsSlotArgs {
  /// Name of the app.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the deployment slot. If a slot is not specified, the API will get the settings for the production slot.
  final pulumi.Input<String> slot;

  /// Creates a new [ListWebAppAuthSettingsSlotArgs].
  /// [name] Name of the app.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [slot] Name of the deployment slot. If a slot is not specified, the API will get the settings for the production slot.
  ListWebAppAuthSettingsSlotArgs({
    required this.name,
    required this.resourceGroupName,
    required this.slot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'slot': slot,
    };
  }

  factory ListWebAppAuthSettingsSlotArgs.fromMap(Map<String, dynamic> map) {
    return ListWebAppAuthSettingsSlotArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      slot: pulumi.Input.fromValue(map['slot'] as String),
    );
  }
}

