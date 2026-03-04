// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_list_web_app_site_backups_slot_args_doc}
/// Arguments for listWebAppSiteBackupsSlot.
/// {@endtemplate}
/// {@macro pulumi_web_list_web_app_site_backups_slot_args_doc}
class ListWebAppSiteBackupsSlotArgs {
  /// Name of the app.
  final pulumi.Input<String> name;

  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Name of the deployment slot. If a slot is not specified, the API will get backups of the production slot.
  final pulumi.Input<String> slot;

  /// Creates a new [ListWebAppSiteBackupsSlotArgs].
  /// [name] Name of the app.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [slot] Name of the deployment slot. If a slot is not specified, the API will get backups of the production slot.
  ListWebAppSiteBackupsSlotArgs({
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

  factory ListWebAppSiteBackupsSlotArgs.fromMap(Map<String, dynamic> map) {
    return ListWebAppSiteBackupsSlotArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      slot: pulumi.Input.fromValue(map['slot'] as String),
    );
  }
}
