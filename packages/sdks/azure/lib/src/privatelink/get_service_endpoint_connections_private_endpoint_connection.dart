// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceEndpointConnectionsPrivateEndpointConnection {
  /// A message indicating if changes on the service provider require any updates or not.
  final pulumi.Input<String> actionRequired;
  /// The resource id of the private link service connection between the private link service and the private link endpoint.
  final pulumi.Input<String> connectionId;
  /// The name of the connection between the private link service and the private link endpoint.
  final pulumi.Input<String> connectionName;
  /// The request for approval message or the reason for rejection message.
  final pulumi.Input<String> description;
  /// The resource id of the private link endpoint.
  final pulumi.Input<String> privateEndpointId;
  /// The name of the private link endpoint.
  final pulumi.Input<String> privateEndpointName;
  /// Indicates the state of the connection between the private link service and the private link endpoint, possible values are `Pending`, `Approved` or `Rejected`.
  final pulumi.Input<String> status;

  /// Creates a new [GetServiceEndpointConnectionsPrivateEndpointConnection].
  /// [actionRequired] A message indicating if changes on the service provider require any updates or not.
  /// [connectionId] The resource id of the private link service connection between the private link service and the private link endpoint.
  /// [connectionName] The name of the connection between the private link service and the private link endpoint.
  /// [description] The request for approval message or the reason for rejection message.
  /// [privateEndpointId] The resource id of the private link endpoint.
  /// [privateEndpointName] The name of the private link endpoint.
  /// [status] Indicates the state of the connection between the private link service and the private link endpoint, possible values are `Pending`, `Approved` or `Rejected`.
  GetServiceEndpointConnectionsPrivateEndpointConnection({
    required this.actionRequired,
    required this.connectionId,
    required this.connectionName,
    required this.description,
    required this.privateEndpointId,
    required this.privateEndpointName,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionRequired': actionRequired,
      'connectionId': connectionId,
      'connectionName': connectionName,
      'description': description,
      'privateEndpointId': privateEndpointId,
      'privateEndpointName': privateEndpointName,
      'status': status,
    };
  }

  factory GetServiceEndpointConnectionsPrivateEndpointConnection.fromMap(Map<String, dynamic> map) {
    return GetServiceEndpointConnectionsPrivateEndpointConnection(
      actionRequired: (map['actionRequired'] as String).input(),
      connectionId: (map['connectionId'] as String).input(),
      connectionName: (map['connectionName'] as String).input(),
      description: (map['description'] as String).input(),
      privateEndpointId: (map['privateEndpointId'] as String).input(),
      privateEndpointName: (map['privateEndpointName'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

