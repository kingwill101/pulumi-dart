// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privatelink_get_endpoint_connection_get_endpoint_connection_args_doc}
/// Arguments for getEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_privatelink_get_endpoint_connection_get_endpoint_connection_args_doc}
class GetEndpointConnectionArgs {
  /// Specifies the Name of the private endpoint.
  final pulumi.Input<String> name;
  /// Specifies the Name of the Resource Group within which the private endpoint exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetEndpointConnectionArgs].
  /// [name] Specifies the Name of the private endpoint.
  /// [resourceGroupName] Specifies the Name of the Resource Group within which the private endpoint exists.
  const GetEndpointConnectionArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetEndpointConnectionArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
