// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_web_app_scm_allowed_slot_args_doc}
/// Arguments for getWebAppScmAllowedSlot.
/// {@endtemplate}
/// {@macro pulumi_web_get_web_app_scm_allowed_slot_args_doc}
class GetWebAppScmAllowedSlotArgs {
  /// Name of the app.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  final pulumi.Input<String> slot;

  /// Creates a new [GetWebAppScmAllowedSlotArgs].
  /// [name] Name of the app.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [slot] Required.
  const GetWebAppScmAllowedSlotArgs({
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

  factory GetWebAppScmAllowedSlotArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppScmAllowedSlotArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      slot: pulumi.Input.fromValue(map['slot'] as String),
    );
  }
}
