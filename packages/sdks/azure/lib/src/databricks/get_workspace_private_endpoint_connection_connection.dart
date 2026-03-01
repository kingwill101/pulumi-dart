// ignore_for_file: unused_element, unnecessary_cast


class GetWorkspacePrivateEndpointConnectionConnection {
  /// Actions required for a private endpoint connection.
  final String actionRequired;
  /// The description for the current state of a private endpoint connection.
  final String description;
  /// The name of the Databricks Workspace.
  final String name;
  /// The status of a private endpoint connection. Possible values are `Pending`, `Approved`, `Rejected` or `Disconnected`.
  final String status;
  /// The Databricks Workspace resource ID for the private link endpoint.
  final String workspacePrivateEndpointId;

  /// Creates a new [GetWorkspacePrivateEndpointConnectionConnection].
  /// [actionRequired] Actions required for a private endpoint connection.
  /// [description] The description for the current state of a private endpoint connection.
  /// [name] The name of the Databricks Workspace.
  /// [status] The status of a private endpoint connection. Possible values are `Pending`, `Approved`, `Rejected` or `Disconnected`.
  /// [workspacePrivateEndpointId] The Databricks Workspace resource ID for the private link endpoint.
  GetWorkspacePrivateEndpointConnectionConnection({
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
      actionRequired: map['actionRequired'] as String,
      description: map['description'] as String,
      name: map['name'] as String,
      status: map['status'] as String,
      workspacePrivateEndpointId: map['workspacePrivateEndpointId'] as String,
    );
  }
}

