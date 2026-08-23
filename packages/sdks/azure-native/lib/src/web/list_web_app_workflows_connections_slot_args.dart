// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_list_web_app_workflows_connections_slot_args_doc}
/// Arguments for listWebAppWorkflowsConnectionsSlot.
/// {@endtemplate}
/// {@macro pulumi_web_list_web_app_workflows_connections_slot_args_doc}
class ListWebAppWorkflowsConnectionsSlotArgs {
  /// Name of the app.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the deployment slot. By default, this API returns the production slot.
  final pulumi.Input<String> slot;

  /// Creates a new [ListWebAppWorkflowsConnectionsSlotArgs].
  /// [name] Name of the app.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [slot] Name of the deployment slot. By default, this API returns the production slot.
  const ListWebAppWorkflowsConnectionsSlotArgs({
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

  factory ListWebAppWorkflowsConnectionsSlotArgs.fromMap(Map<String, dynamic> map) {
    return ListWebAppWorkflowsConnectionsSlotArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      slot: pulumi.Input.fromValue(map['slot'] as String),
    );
  }
}
