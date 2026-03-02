// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_instance_private_endpoint_property.dart';
import 'managed_instance_private_link_service_connection_state_property.dart';

/// {@template pulumi_sql_managed_instance_private_endpoint_connection_args_doc}
/// The set of arguments for ManagedInstancePrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_sql_managed_instance_private_endpoint_connection_args_doc}
class ManagedInstancePrivateEndpointConnectionArgs {
  /// The name of the managed instance.
  final pulumi.Input<String> managedInstanceName;
  /// Private endpoint which the connection belongs to.
  final pulumi.Input<ManagedInstancePrivateEndpointProperty>? privateEndpoint;
  final pulumi.Input<String>? privateEndpointConnectionName;
  /// Connection State of the Private Endpoint Connection.
  final pulumi.Input<ManagedInstancePrivateLinkServiceConnectionStateProperty>? privateLinkServiceConnectionState;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ManagedInstancePrivateEndpointConnectionArgs].
  /// [managedInstanceName] The name of the managed instance.
  /// [privateEndpoint] Private endpoint which the connection belongs to.
  /// [privateEndpointConnectionName] Optional.
  /// [privateLinkServiceConnectionState] Connection State of the Private Endpoint Connection.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  ManagedInstancePrivateEndpointConnectionArgs({
    required this.managedInstanceName,
    this.privateEndpoint,
    this.privateEndpointConnectionName,
    this.privateLinkServiceConnectionState,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedInstanceName': managedInstanceName,
      'privateEndpoint': ?pulumi.Input.mapOptionalInputValue<ManagedInstancePrivateEndpointProperty, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
      'privateEndpointConnectionName': ?privateEndpointConnectionName,
      'privateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<ManagedInstancePrivateLinkServiceConnectionStateProperty, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ManagedInstancePrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return ManagedInstancePrivateEndpointConnectionArgs(
      managedInstanceName: (map['managedInstanceName'] as String).input(),
      privateEndpoint: map['privateEndpoint'] == null ? null : (ManagedInstancePrivateEndpointProperty.fromMap((map['privateEndpoint'] as Map).cast<String, dynamic>())).input(),
      privateEndpointConnectionName: map['privateEndpointConnectionName'] == null ? null : (map['privateEndpointConnectionName'] as String).input(),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : (ManagedInstancePrivateLinkServiceConnectionStateProperty.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

