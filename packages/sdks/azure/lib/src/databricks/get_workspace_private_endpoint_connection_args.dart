// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databricks_get_workspace_private_endpoint_connection_get_workspace_private_endpoint_connection_args_doc}
/// Arguments for getWorkspacePrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_databricks_get_workspace_private_endpoint_connection_get_workspace_private_endpoint_connection_args_doc}
class GetWorkspacePrivateEndpointConnectionArgs {
  /// The resource ID of the Private Endpoint.
  final pulumi.Input<String> privateEndpointId;

  /// The resource ID of the Databricks Workspace.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [GetWorkspacePrivateEndpointConnectionArgs].
  /// [privateEndpointId] The resource ID of the Private Endpoint.
  /// [workspaceId] The resource ID of the Databricks Workspace.
  GetWorkspacePrivateEndpointConnectionArgs({
    required this.privateEndpointId,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpointId': privateEndpointId,
      'workspaceId': workspaceId,
    };
  }

  factory GetWorkspacePrivateEndpointConnectionArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetWorkspacePrivateEndpointConnectionArgs(
      privateEndpointId: pulumi.Input.fromValue(
        map['privateEndpointId'] as String,
      ),
      workspaceId: pulumi.Input.fromValue(map['workspaceId'] as String),
    );
  }
}
