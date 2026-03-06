// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_interface_endpoint_args_doc}
/// Arguments for getInterfaceEndpoint.
/// {@endtemplate}
/// {@macro pulumi_network_get_interface_endpoint_args_doc}
class GetInterfaceEndpointArgs {
  /// Expands referenced resources.
  final pulumi.Input<String>? expand;
  /// The name of the interface endpoint.
  final pulumi.Input<String> interfaceEndpointName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetInterfaceEndpointArgs].
  /// [expand] Expands referenced resources.
  /// [interfaceEndpointName] The name of the interface endpoint.
  /// [resourceGroupName] The name of the resource group.
  const GetInterfaceEndpointArgs({
    this.expand,
    required this.interfaceEndpointName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'interfaceEndpointName': interfaceEndpointName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetInterfaceEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetInterfaceEndpointArgs(
      expand: (() { final guardedValue = map['expand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interfaceEndpointName: pulumi.Input.fromValue(map['interfaceEndpointName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

