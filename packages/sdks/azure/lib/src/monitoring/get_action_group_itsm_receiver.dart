// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetActionGroupItsmReceiver {
  /// The unique connection identifier of the ITSM connection.
  final pulumi.Input<String> connectionId;
  /// Specifies the name of the Action Group.
  final pulumi.Input<String> name;
  /// The region of the workspace.
  final pulumi.Input<String> region;
  /// A JSON blob for the configurations of the ITSM action. CreateMultipleWorkItems option will be part of this blob as well.
  final pulumi.Input<String> ticketConfiguration;
  /// The Azure Log Analytics workspace ID where this connection is defined.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [GetActionGroupItsmReceiver].
  /// [connectionId] The unique connection identifier of the ITSM connection.
  /// [name] Specifies the name of the Action Group.
  /// [region] The region of the workspace.
  /// [ticketConfiguration] A JSON blob for the configurations of the ITSM action. CreateMultipleWorkItems option will be part of this blob as well.
  /// [workspaceId] The Azure Log Analytics workspace ID where this connection is defined.
  const GetActionGroupItsmReceiver({
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

  factory GetActionGroupItsmReceiver.fromMap(Map<String, dynamic> map) {
    return GetActionGroupItsmReceiver(
      connectionId: pulumi.Input.fromValue(map['connectionId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
      ticketConfiguration: pulumi.Input.fromValue(map['ticketConfiguration'] as String),
      workspaceId: pulumi.Input.fromValue(map['workspaceId'] as String),
    );
  }
}
