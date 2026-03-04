// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_managed_instance_private_endpoint_connection_args_doc}
/// Arguments for getManagedInstancePrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_sql_get_managed_instance_private_endpoint_connection_args_doc}
class GetManagedInstancePrivateEndpointConnectionArgs {
  /// The name of the managed instance.
  final pulumi.Input<String> managedInstanceName;

  /// The name of the private endpoint connection.
  final pulumi.Input<String> privateEndpointConnectionName;

  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetManagedInstancePrivateEndpointConnectionArgs].
  /// [managedInstanceName] The name of the managed instance.
  /// [privateEndpointConnectionName] The name of the private endpoint connection.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  GetManagedInstancePrivateEndpointConnectionArgs({
    required this.managedInstanceName,
    required this.privateEndpointConnectionName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedInstanceName': managedInstanceName,
      'privateEndpointConnectionName': privateEndpointConnectionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetManagedInstancePrivateEndpointConnectionArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetManagedInstancePrivateEndpointConnectionArgs(
      managedInstanceName: pulumi.Input.fromValue(
        map['managedInstanceName'] as String,
      ),
      privateEndpointConnectionName: pulumi.Input.fromValue(
        map['privateEndpointConnectionName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
