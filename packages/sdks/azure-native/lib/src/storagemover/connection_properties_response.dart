// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of the Connection resource.
class ConnectionPropertiesResponse {
  /// The connection status.
  final pulumi.Input<String> connectionStatus;
  /// A description for the Connection.
  final pulumi.Input<String?>? description;
  /// List of job definitions associated with this connection.
  final pulumi.Input<List<String>?>? jobList;
  /// The PrivateEndpointName associated with the connection.
  final pulumi.Input<String> privateEndpointName;
  /// The privateEndpoint resource Id
  final pulumi.Input<String> privateEndpointResourceId;
  /// The PrivateLinkServiceId for the connection.
  final pulumi.Input<String> privateLinkServiceId;
  /// The provisioning state of this resource.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [ConnectionPropertiesResponse].
  /// [connectionStatus] The connection status.
  /// [description] A description for the Connection.
  /// [jobList] List of job definitions associated with this connection.
  /// [privateEndpointName] The PrivateEndpointName associated with the connection.
  /// [privateEndpointResourceId] The privateEndpoint resource Id
  /// [privateLinkServiceId] The PrivateLinkServiceId for the connection.
  /// [provisioningState] The provisioning state of this resource.
  const ConnectionPropertiesResponse({
    required this.connectionStatus,
    this.description,
    this.jobList,
    required this.privateEndpointName,
    required this.privateEndpointResourceId,
    required this.privateLinkServiceId,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionStatus': connectionStatus,
      'description': ?description,
      'jobList': ?jobList,
      'privateEndpointName': privateEndpointName,
      'privateEndpointResourceId': privateEndpointResourceId,
      'privateLinkServiceId': privateLinkServiceId,
      'provisioningState': provisioningState,
    };
  }

  factory ConnectionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionPropertiesResponse(
      connectionStatus: pulumi.Input.fromValue(map['connectionStatus'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobList: (() { final guardedValue = map['jobList']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      privateEndpointName: pulumi.Input.fromValue(map['privateEndpointName'] as String),
      privateEndpointResourceId: pulumi.Input.fromValue(map['privateEndpointResourceId'] as String),
      privateLinkServiceId: pulumi.Input.fromValue(map['privateLinkServiceId'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}
