// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_property.dart';
import 'private_link_service_connection_state_property.dart';

/// {@template pulumi_sql_private_endpoint_connection_args_doc}
/// The set of arguments for PrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_sql_private_endpoint_connection_args_doc}
class PrivateEndpointConnectionArgs {
  /// Private endpoint which the connection belongs to.
  final pulumi.Input<PrivateEndpointProperty?>? privateEndpoint;
  final pulumi.Input<String?>? privateEndpointConnectionName;
  /// Connection state of the private endpoint connection.
  final pulumi.Input<PrivateLinkServiceConnectionStateProperty?>? privateLinkServiceConnectionState;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [PrivateEndpointConnectionArgs].
  /// [privateEndpoint] Private endpoint which the connection belongs to.
  /// [privateEndpointConnectionName] Optional.
  /// [privateLinkServiceConnectionState] Connection state of the private endpoint connection.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  const PrivateEndpointConnectionArgs({
    this.privateEndpoint,
    this.privateEndpointConnectionName,
    this.privateLinkServiceConnectionState,
    required this.resourceGroupName,
    required this.serverName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpoint': ?pulumi.Input.mapOptionalInputValue<PrivateEndpointProperty, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
      'privateEndpointConnectionName': ?privateEndpointConnectionName,
      'privateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<PrivateLinkServiceConnectionStateProperty, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory PrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionArgs(
      privateEndpoint: (() { final guardedValue = map['privateEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateEndpointProperty.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateEndpointConnectionName: (() { final guardedValue = map['privateEndpointConnectionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateLinkServiceConnectionState: (() { final guardedValue = map['privateLinkServiceConnectionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateLinkServiceConnectionStateProperty.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
    );
  }
}
