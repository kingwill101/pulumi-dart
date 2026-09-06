// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_link_connection_state.dart';

/// {@template pulumi_web_web_app_private_endpoint_connection_args_doc}
/// The set of arguments for WebAppPrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_web_web_app_private_endpoint_connection_args_doc}
class WebAppPrivateEndpointConnectionArgs {
  /// Private IPAddresses mapped to the remote private endpoint
  final pulumi.Input<List<String>?>? ipAddresses;
  /// Kind of resource.
  final pulumi.Input<String?>? kind;
  /// Name of the site.
  final pulumi.Input<String> name;
  /// Name of the private endpoint connection.
  final pulumi.Input<String?>? privateEndpointConnectionName;
  /// The state of a private link connection
  final pulumi.Input<PrivateLinkConnectionState?>? privateLinkServiceConnectionState;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [WebAppPrivateEndpointConnectionArgs].
  /// [ipAddresses] Private IPAddresses mapped to the remote private endpoint
  /// [kind] Kind of resource.
  /// [name] Name of the site.
  /// [privateEndpointConnectionName] Name of the private endpoint connection.
  /// [privateLinkServiceConnectionState] The state of a private link connection
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const WebAppPrivateEndpointConnectionArgs({
    this.ipAddresses,
    this.kind,
    required this.name,
    this.privateEndpointConnectionName,
    this.privateLinkServiceConnectionState,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddresses': ?ipAddresses,
      'kind': ?kind,
      'name': name,
      'privateEndpointConnectionName': ?privateEndpointConnectionName,
      'privateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<PrivateLinkConnectionState, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory WebAppPrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return WebAppPrivateEndpointConnectionArgs(
      ipAddresses: (() { final guardedValue = map['ipAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      privateEndpointConnectionName: (() { final guardedValue = map['privateEndpointConnectionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateLinkServiceConnectionState: (() { final guardedValue = map['privateLinkServiceConnectionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateLinkConnectionState.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
