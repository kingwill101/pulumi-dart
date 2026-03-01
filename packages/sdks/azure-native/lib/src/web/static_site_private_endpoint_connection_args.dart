// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_link_connection_state.dart';

/// {@template pulumi_web_static_site_private_endpoint_connection_args_doc}
/// The set of arguments for StaticSitePrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_web_static_site_private_endpoint_connection_args_doc}
class StaticSitePrivateEndpointConnectionArgs {
  /// Private IPAddresses mapped to the remote private endpoint
  final pulumi.Input<List<String>>? ipAddresses;
  /// Kind of resource.
  final pulumi.Input<String>? kind;
  /// Name of the static site.
  final pulumi.Input<String> name;
  /// Name of the private endpoint connection.
  final pulumi.Input<String>? privateEndpointConnectionName;
  /// The state of a private link connection
  final pulumi.Input<PrivateLinkConnectionState>? privateLinkServiceConnectionState;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [StaticSitePrivateEndpointConnectionArgs].
  /// [ipAddresses] Private IPAddresses mapped to the remote private endpoint
  /// [kind] Kind of resource.
  /// [name] Name of the static site.
  /// [privateEndpointConnectionName] Name of the private endpoint connection.
  /// [privateLinkServiceConnectionState] The state of a private link connection
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  StaticSitePrivateEndpointConnectionArgs({
    pulumi.Output<List<String>>? ipAddresses,
    pulumi.Output<String>? kind,
    required pulumi.Output<String> name,
    pulumi.Output<String>? privateEndpointConnectionName,
    pulumi.Output<PrivateLinkConnectionState>? privateLinkServiceConnectionState,
    required pulumi.Output<String> resourceGroupName,
  }) :
      ipAddresses = pulumi.Input.asOptionalInput<List<String>>(ipAddresses),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      name = pulumi.Input.asInput<String>(name),
      privateEndpointConnectionName = pulumi.Input.asOptionalInput<String>(privateEndpointConnectionName),
      privateLinkServiceConnectionState = pulumi.Input.asOptionalInput<PrivateLinkConnectionState>(privateLinkServiceConnectionState),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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

  factory StaticSitePrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return StaticSitePrivateEndpointConnectionArgs(
      ipAddresses: map['ipAddresses'] == null ? null : pulumi.Output.create<List<String>>((map['ipAddresses'] as List).cast<String>()),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      privateEndpointConnectionName: map['privateEndpointConnectionName'] == null ? null : pulumi.Output.create<String>(map['privateEndpointConnectionName'] as String),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : pulumi.Output.create<PrivateLinkConnectionState>(PrivateLinkConnectionState.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

