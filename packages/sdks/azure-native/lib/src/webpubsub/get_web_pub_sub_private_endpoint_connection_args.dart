// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_webpubsub_get_web_pub_sub_private_endpoint_connection_args_doc}
/// Arguments for getWebPubSubPrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_webpubsub_get_web_pub_sub_private_endpoint_connection_args_doc}
class GetWebPubSubPrivateEndpointConnectionArgs {
  /// The name of the private endpoint connection associated with the Azure resource.
  final pulumi.Input<String> privateEndpointConnectionName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the resource.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetWebPubSubPrivateEndpointConnectionArgs].
  /// [privateEndpointConnectionName] The name of the private endpoint connection associated with the Azure resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the resource.
  GetWebPubSubPrivateEndpointConnectionArgs({
    required pulumi.Output<String> privateEndpointConnectionName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
  }) :
      privateEndpointConnectionName = pulumi.Input.asInput<String>(privateEndpointConnectionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpointConnectionName': privateEndpointConnectionName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetWebPubSubPrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetWebPubSubPrivateEndpointConnectionArgs(
      privateEndpointConnectionName: pulumi.Output.create<String>(map['privateEndpointConnectionName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
    );
  }
}

