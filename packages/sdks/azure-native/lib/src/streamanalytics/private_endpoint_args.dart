// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_link_service_connection.dart';

/// {@template pulumi_streamanalytics_private_endpoint_args_doc}
/// The set of arguments for PrivateEndpoint.
/// {@endtemplate}
/// {@macro pulumi_streamanalytics_private_endpoint_args_doc}
class PrivateEndpointArgs {
  /// The name of the cluster.
  final pulumi.Input<String> clusterName;
  /// A list of connections to the remote resource. Immutable after it is set.
  final pulumi.Input<List<PrivateLinkServiceConnection>>? manualPrivateLinkServiceConnections;
  /// The name of the private endpoint.
  final pulumi.Input<String>? privateEndpointName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [PrivateEndpointArgs].
  /// [clusterName] The name of the cluster.
  /// [manualPrivateLinkServiceConnections] A list of connections to the remote resource. Immutable after it is set.
  /// [privateEndpointName] The name of the private endpoint.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  PrivateEndpointArgs({
    required pulumi.Output<String> clusterName,
    pulumi.Output<List<PrivateLinkServiceConnection>>? manualPrivateLinkServiceConnections,
    pulumi.Output<String>? privateEndpointName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      manualPrivateLinkServiceConnections = pulumi.Input.asOptionalInput<List<PrivateLinkServiceConnection>>(manualPrivateLinkServiceConnections),
      privateEndpointName = pulumi.Input.asOptionalInput<String>(privateEndpointName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'manualPrivateLinkServiceConnections': ?pulumi.Input.mapOptionalInputValue<List<PrivateLinkServiceConnection>, List<Map<String, dynamic>>>(manualPrivateLinkServiceConnections, (value) => pulumi.Input.encodeList<PrivateLinkServiceConnection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privateEndpointName': ?privateEndpointName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory PrivateEndpointArgs.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointArgs(
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      manualPrivateLinkServiceConnections: map['manualPrivateLinkServiceConnections'] == null ? null : pulumi.Output.create<List<PrivateLinkServiceConnection>>(pulumi.Input.decodeList<PrivateLinkServiceConnection>(map['manualPrivateLinkServiceConnections'], (value) => PrivateLinkServiceConnection.fromMap((value as Map).cast<String, dynamic>()))),
      privateEndpointName: map['privateEndpointName'] == null ? null : pulumi.Output.create<String>(map['privateEndpointName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

