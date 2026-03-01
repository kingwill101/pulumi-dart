// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_private_endpoint_args_doc}
/// Arguments for getPrivateEndpoint.
/// {@endtemplate}
/// {@macro pulumi_network_get_private_endpoint_args_doc}
class GetPrivateEndpointArgs {
  /// Expands referenced resources.
  final pulumi.Input<String>? expand;
  /// The name of the private endpoint.
  final pulumi.Input<String> privateEndpointName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPrivateEndpointArgs].
  /// [expand] Expands referenced resources.
  /// [privateEndpointName] The name of the private endpoint.
  /// [resourceGroupName] The name of the resource group.
  GetPrivateEndpointArgs({
    pulumi.Output<String>? expand,
    required pulumi.Output<String> privateEndpointName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      expand = pulumi.Input.asOptionalInput<String>(expand),
      privateEndpointName = pulumi.Input.asInput<String>(privateEndpointName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'privateEndpointName': privateEndpointName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPrivateEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateEndpointArgs(
      expand: map['expand'] == null ? null : pulumi.Output.create<String>(map['expand'] as String),
      privateEndpointName: pulumi.Output.create<String>(map['privateEndpointName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

