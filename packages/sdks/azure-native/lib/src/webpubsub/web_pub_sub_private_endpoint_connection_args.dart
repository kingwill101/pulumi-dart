// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint.dart';
import 'private_link_service_connection_state.dart';

/// {@template pulumi_webpubsub_web_pub_sub_private_endpoint_connection_args_doc}
/// The set of arguments for WebPubSubPrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_webpubsub_web_pub_sub_private_endpoint_connection_args_doc}
class WebPubSubPrivateEndpointConnectionArgs {
  /// Private endpoint
  final pulumi.Input<PrivateEndpoint>? privateEndpoint;
  /// The name of the private endpoint connection associated with the Azure resource.
  final pulumi.Input<String>? privateEndpointConnectionName;
  /// Connection state of the private endpoint connection
  final pulumi.Input<PrivateLinkServiceConnectionState>? privateLinkServiceConnectionState;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the resource.
  final pulumi.Input<String> resourceName;

  /// Creates a new [WebPubSubPrivateEndpointConnectionArgs].
  /// [privateEndpoint] Private endpoint
  /// [privateEndpointConnectionName] The name of the private endpoint connection associated with the Azure resource.
  /// [privateLinkServiceConnectionState] Connection state of the private endpoint connection
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the resource.
  WebPubSubPrivateEndpointConnectionArgs({
    pulumi.Output<PrivateEndpoint>? privateEndpoint,
    pulumi.Output<String>? privateEndpointConnectionName,
    pulumi.Output<PrivateLinkServiceConnectionState>? privateLinkServiceConnectionState,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
  }) :
      privateEndpoint = pulumi.Input.asOptionalInput<PrivateEndpoint>(privateEndpoint),
      privateEndpointConnectionName = pulumi.Input.asOptionalInput<String>(privateEndpointConnectionName),
      privateLinkServiceConnectionState = pulumi.Input.asOptionalInput<PrivateLinkServiceConnectionState>(privateLinkServiceConnectionState),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpoint': ?pulumi.Input.mapOptionalInputValue<PrivateEndpoint, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
      'privateEndpointConnectionName': ?privateEndpointConnectionName,
      'privateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<PrivateLinkServiceConnectionState, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory WebPubSubPrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return WebPubSubPrivateEndpointConnectionArgs(
      privateEndpoint: map['privateEndpoint'] == null ? null : pulumi.Output.create<PrivateEndpoint>(PrivateEndpoint.fromMap((map['privateEndpoint'] as Map).cast<String, dynamic>())),
      privateEndpointConnectionName: map['privateEndpointConnectionName'] == null ? null : pulumi.Output.create<String>(map['privateEndpointConnectionName'] as String),
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : pulumi.Output.create<PrivateLinkServiceConnectionState>(PrivateLinkServiceConnectionState.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
    );
  }
}

