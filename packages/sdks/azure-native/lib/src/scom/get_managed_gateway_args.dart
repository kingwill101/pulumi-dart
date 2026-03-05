// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_scom_get_managed_gateway_args_doc}
/// Arguments for getManagedGateway.
/// {@endtemplate}
/// {@macro pulumi_scom_get_managed_gateway_args_doc}
class GetManagedGatewayArgs {
  /// Name of the SCOM managed instance.
  final pulumi.Input<String> instanceName;
  /// The gateway resource name.
  final pulumi.Input<String> managedGatewayName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetManagedGatewayArgs].
  /// [instanceName] Name of the SCOM managed instance.
  /// [managedGatewayName] The gateway resource name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetManagedGatewayArgs({
    required this.instanceName,
    required this.managedGatewayName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceName': instanceName,
      'managedGatewayName': managedGatewayName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetManagedGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedGatewayArgs(
      instanceName: pulumi.Input.fromValue(map['instanceName'] as String),
      managedGatewayName: pulumi.Input.fromValue(map['managedGatewayName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

