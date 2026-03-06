// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_list_web_app_workflows_connections_args_doc}
/// Arguments for listWebAppWorkflowsConnections.
/// {@endtemplate}
/// {@macro pulumi_web_list_web_app_workflows_connections_args_doc}
class ListWebAppWorkflowsConnectionsArgs {
  /// Site name.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListWebAppWorkflowsConnectionsArgs].
  /// [name] Site name.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  const ListWebAppWorkflowsConnectionsArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListWebAppWorkflowsConnectionsArgs.fromMap(Map<String, dynamic> map) {
    return ListWebAppWorkflowsConnectionsArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

