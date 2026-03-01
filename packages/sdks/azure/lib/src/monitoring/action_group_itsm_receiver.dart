// ignore_for_file: unused_element, unnecessary_cast


class ActionGroupItsmReceiver {
  /// The unique connection identifier of the ITSM connection.
  final String connectionId;
  /// The name of the ITSM receiver.
  final String name;
  /// The region of the workspace.
  ///
  /// > **Note:** `ticket_configuration` should be JSON blob with `PayloadRevision` and `WorkItemType` keys (e.g., `ticket_configuration="{\"PayloadRevision\":0,\"WorkItemType\":\"Incident\"}"`), and `ticket_configuration="{}"` will return an error, see more at this [REST API issue](https://github.com/Azure/azure-rest-api-specs/issues/20488)
  final String region;
  /// A JSON blob for the configurations of the ITSM action. CreateMultipleWorkItems option will be part of this blob as well.
  final String ticketConfiguration;
  /// The Azure Log Analytics workspace ID where this connection is defined. Format is `<subscription id>|<workspace id>`, for example `00000000-0000-0000-0000-000000000000|00000000-0000-0000-0000-000000000000`.
  final String workspaceId;

  /// Creates a new [ActionGroupItsmReceiver].
  /// [connectionId] The unique connection identifier of the ITSM connection.
  /// [name] The name of the ITSM receiver.
  /// [region] The region of the workspace.
  /// [ticketConfiguration] A JSON blob for the configurations of the ITSM action. CreateMultipleWorkItems option will be part of this blob as well.
  /// [workspaceId] The Azure Log Analytics workspace ID where this connection is defined. Format is `<subscription id>|<workspace id>`, for example `00000000-0000-0000-0000-000000000000|00000000-0000-0000-0000-000000000000`.
  ActionGroupItsmReceiver({
    required this.connectionId,
    required this.name,
    required this.region,
    required this.ticketConfiguration,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionId': connectionId,
      'name': name,
      'region': region,
      'ticketConfiguration': ticketConfiguration,
      'workspaceId': workspaceId,
    };
  }

  factory ActionGroupItsmReceiver.fromMap(Map<String, dynamic> map) {
    return ActionGroupItsmReceiver(
      connectionId: map['connectionId'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      ticketConfiguration: map['ticketConfiguration'] as String,
      workspaceId: map['workspaceId'] as String,
    );
  }
}

