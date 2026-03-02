// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_list_web_app_connection_strings_slot_args_doc}
/// Arguments for listWebAppConnectionStringsSlot.
/// {@endtemplate}
/// {@macro pulumi_web_list_web_app_connection_strings_slot_args_doc}
class ListWebAppConnectionStringsSlotArgs {
  /// Name of the app.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the deployment slot. If a slot is not specified, the API will get the connection settings for the production slot.
  final pulumi.Input<String> slot;

  /// Creates a new [ListWebAppConnectionStringsSlotArgs].
  /// [name] Name of the app.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [slot] Name of the deployment slot. If a slot is not specified, the API will get the connection settings for the production slot.
  ListWebAppConnectionStringsSlotArgs({
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

  factory ListWebAppConnectionStringsSlotArgs.fromMap(Map<String, dynamic> map) {
    return ListWebAppConnectionStringsSlotArgs(
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      slot: (map['slot'] as String).input(),
    );
  }
}

