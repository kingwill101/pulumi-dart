// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storagemover_get_endpoint_args_doc}
/// Arguments for getEndpoint.
/// {@endtemplate}
/// {@macro pulumi_storagemover_get_endpoint_args_doc}
class GetEndpointArgs {
  /// The name of the Endpoint resource.
  final pulumi.Input<String> endpointName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Storage Mover resource.
  final pulumi.Input<String> storageMoverName;

  /// Creates a new [GetEndpointArgs].
  /// [endpointName] The name of the Endpoint resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageMoverName] The name of the Storage Mover resource.
  GetEndpointArgs({
    required this.endpointName,
    required this.resourceGroupName,
    required this.storageMoverName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointName': endpointName,
      'resourceGroupName': resourceGroupName,
      'storageMoverName': storageMoverName,
    };
  }

  factory GetEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetEndpointArgs(
      endpointName: (map['endpointName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      storageMoverName: (map['storageMoverName'] as String).input(),
    );
  }
}

