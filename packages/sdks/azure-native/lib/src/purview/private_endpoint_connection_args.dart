// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint.dart';
import 'private_link_service_connection_state.dart';

/// {@template pulumi_purview_private_endpoint_connection_args_doc}
/// The set of arguments for PrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_purview_private_endpoint_connection_args_doc}
class PrivateEndpointConnectionArgs {
  /// The name of the account.
  final pulumi.Input<String> accountName;
  /// The private endpoint information.
  final pulumi.Input<PrivateEndpoint>? privateEndpoint;
  /// Name of the private endpoint connection.
  final pulumi.Input<String>? privateEndpointConnectionName;
  /// The private link service connection state.
  final pulumi.Input<PrivateLinkServiceConnectionState>? privateLinkServiceConnectionState;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [PrivateEndpointConnectionArgs].
  /// [accountName] The name of the account.
  /// [privateEndpoint] The private endpoint information.
  /// [privateEndpointConnectionName] Name of the private endpoint connection.
  /// [privateLinkServiceConnectionState] The private link service connection state.
  /// [resourceGroupName] The resource group name.
  PrivateEndpointConnectionArgs({
    required this.accountName,
    this.privateEndpoint,
    this.privateEndpointConnectionName,
    this.privateLinkServiceConnectionState,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'privateEndpoint': ?pulumi.Input.mapOptionalInputValue<PrivateEndpoint, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
      'privateEndpointConnectionName': ?privateEndpointConnectionName,
      'privateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<PrivateLinkServiceConnectionState, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory PrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionArgs(
      accountName: (map['accountName'] as String).input(),
      privateEndpoint: map['privateEndpoint'] == null ? null : (PrivateEndpoint.fromMap((map['privateEndpoint']! as Map).cast<String, dynamic>())).input(),
      privateEndpointConnectionName: map['privateEndpointConnectionName'] == null ? null : (map['privateEndpointConnectionName']! as String).input(),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : (PrivateLinkServiceConnectionState.fromMap((map['privateLinkServiceConnectionState']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

