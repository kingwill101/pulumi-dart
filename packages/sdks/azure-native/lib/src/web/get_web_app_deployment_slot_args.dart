// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_web_app_deployment_slot_args_doc}
/// Arguments for getWebAppDeploymentSlot.
/// {@endtemplate}
/// {@macro pulumi_web_get_web_app_deployment_slot_args_doc}
class GetWebAppDeploymentSlotArgs {
  /// Deployment ID.
  final pulumi.Input<String> id;

  /// Name of the app.
  final pulumi.Input<String> name;

  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Name of the deployment slot. If a slot is not specified, the API gets a deployment for the production slot.
  final pulumi.Input<String> slot;

  /// Creates a new [GetWebAppDeploymentSlotArgs].
  /// [id] Deployment ID.
  /// [name] Name of the app.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [slot] Name of the deployment slot. If a slot is not specified, the API gets a deployment for the production slot.
  GetWebAppDeploymentSlotArgs({
    required this.id,
    required this.name,
    required this.resourceGroupName,
    required this.slot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'slot': slot,
    };
  }

  factory GetWebAppDeploymentSlotArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppDeploymentSlotArgs(
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      slot: pulumi.Input.fromValue(map['slot'] as String),
    );
  }
}
