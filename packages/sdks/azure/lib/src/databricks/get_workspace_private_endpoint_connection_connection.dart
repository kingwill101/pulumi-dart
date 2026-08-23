// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkspacePrivateEndpointConnectionConnection {
  /// Actions required for a private endpoint connection.
  final pulumi.Input<String> actionRequired;
  /// The description for the current state of a private endpoint connection.
  final pulumi.Input<String> description;
  /// The name of the Databricks Workspace.
  final pulumi.Input<String> name;
  /// The status of a private endpoint connection. Possible values are `Pending`, `Approved`, `Rejected` or `Disconnected`.
  final pulumi.Input<String> status;
  /// The Databricks Workspace resource ID for the private link endpoint.
  final pulumi.Input<String> workspacePrivateEndpointId;

  /// Creates a new [GetWorkspacePrivateEndpointConnectionConnection].
  /// [actionRequired] Actions required for a private endpoint connection.
  /// [description] The description for the current state of a private endpoint connection.
  /// [name] The name of the Databricks Workspace.
  /// [status] The status of a private endpoint connection. Possible values are `Pending`, `Approved`, `Rejected` or `Disconnected`.
  /// [workspacePrivateEndpointId] The Databricks Workspace resource ID for the private link endpoint.
  const GetWorkspacePrivateEndpointConnectionConnection({
    required this.actionRequired,
    required this.description,
    required this.name,
    required this.status,
    required this.workspacePrivateEndpointId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionRequired': actionRequired,
      'description': description,
      'name': name,
      'status': status,
      'workspacePrivateEndpointId': workspacePrivateEndpointId,
    };
  }

  factory GetWorkspacePrivateEndpointConnectionConnection.fromMap(Map<String, dynamic> map) {
    return GetWorkspacePrivateEndpointConnectionConnection(
      actionRequired: pulumi.Input.fromValue(map['actionRequired'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      workspacePrivateEndpointId: pulumi.Input.fromValue(map['workspacePrivateEndpointId'] as String),
    );
  }
}
