// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_list_web_app_site_push_settings_slot_args_doc}
/// Arguments for listWebAppSitePushSettingsSlot.
/// {@endtemplate}
/// {@macro pulumi_web_list_web_app_site_push_settings_slot_args_doc}
class ListWebAppSitePushSettingsSlotArgs {
  /// Name of web app.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// Name of web app slot. If not specified then will default to production slot.
  final pulumi.Input<String> slot;

  /// Creates a new [ListWebAppSitePushSettingsSlotArgs].
  /// [name] Name of web app.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [slot] Name of web app slot. If not specified then will default to production slot.
  ListWebAppSitePushSettingsSlotArgs({
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

  factory ListWebAppSitePushSettingsSlotArgs.fromMap(Map<String, dynamic> map) {
    return ListWebAppSitePushSettingsSlotArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      slot: pulumi.Input.fromValue(map['slot'] as String),
    );
  }
}

