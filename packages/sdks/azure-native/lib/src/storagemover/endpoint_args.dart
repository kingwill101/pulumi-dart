// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storagemover_endpoint_args_doc}
/// The set of arguments for Endpoint.
/// {@endtemplate}
/// {@macro pulumi_storagemover_endpoint_args_doc}
class EndpointArgs {
  /// The name of the Endpoint resource.
  final pulumi.Input<String?>? endpointName;
  /// The resource specific properties for the Storage Mover resource.
  final pulumi.Input<dynamic> properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Storage Mover resource.
  final pulumi.Input<String> storageMoverName;

  /// Creates a new [EndpointArgs].
  /// [endpointName] The name of the Endpoint resource.
  /// [properties] The resource specific properties for the Storage Mover resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageMoverName] The name of the Storage Mover resource.
  const EndpointArgs({
    this.endpointName,
    required this.properties,
    required this.resourceGroupName,
    required this.storageMoverName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointName': ?endpointName,
      'properties': properties,
      'resourceGroupName': resourceGroupName,
      'storageMoverName': storageMoverName,
    };
  }

  factory EndpointArgs.fromMap(Map<String, dynamic> map) {
    return EndpointArgs(
      endpointName: (() { final guardedValue = map['endpointName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: pulumi.Input.fromValue(map['properties']),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      storageMoverName: pulumi.Input.fromValue(map['storageMoverName'] as String),
    );
  }
}
