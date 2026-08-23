// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_web_app_source_control_slot_args_doc}
/// Arguments for getWebAppSourceControlSlot.
/// {@endtemplate}
/// {@macro pulumi_web_get_web_app_source_control_slot_args_doc}
class GetWebAppSourceControlSlotArgs {
  /// Name of the app.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the deployment slot. If a slot is not specified, the API will get the source control configuration for the production slot.
  final pulumi.Input<String> slot;

  /// Creates a new [GetWebAppSourceControlSlotArgs].
  /// [name] Name of the app.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [slot] Name of the deployment slot. If a slot is not specified, the API will get the source control configuration for the production slot.
  const GetWebAppSourceControlSlotArgs({
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

  factory GetWebAppSourceControlSlotArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppSourceControlSlotArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      slot: pulumi.Input.fromValue(map['slot'] as String),
    );
  }
}
