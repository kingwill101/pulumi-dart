// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_scom_managed_gateway_args_doc}
/// The set of arguments for ManagedGateway.
/// {@endtemplate}
/// {@macro pulumi_scom_managed_gateway_args_doc}
class ManagedGatewayArgs {
  /// Name of the SCOM managed instance.
  final pulumi.Input<String> instanceName;
  /// The gateway resource name.
  final pulumi.Input<String?>? managedGatewayName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ManagedGatewayArgs].
  /// [instanceName] Name of the SCOM managed instance.
  /// [managedGatewayName] The gateway resource name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const ManagedGatewayArgs({
    required this.instanceName,
    this.managedGatewayName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceName': instanceName,
      'managedGatewayName': ?managedGatewayName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ManagedGatewayArgs.fromMap(Map<String, dynamic> map) {
    return ManagedGatewayArgs(
      instanceName: pulumi.Input.fromValue(map['instanceName'] as String),
      managedGatewayName: (() { final guardedValue = map['managedGatewayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
