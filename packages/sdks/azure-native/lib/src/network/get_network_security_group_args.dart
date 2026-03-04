// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_network_security_group_args_doc}
/// Arguments for getNetworkSecurityGroup.
/// {@endtemplate}
/// {@macro pulumi_network_get_network_security_group_args_doc}
class GetNetworkSecurityGroupArgs {
  /// Expands referenced resources.
  final pulumi.Input<String>? expand;

  /// The name of the network security group.
  final pulumi.Input<String> networkSecurityGroupName;

  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNetworkSecurityGroupArgs].
  /// [expand] Expands referenced resources.
  /// [networkSecurityGroupName] The name of the network security group.
  /// [resourceGroupName] The name of the resource group.
  GetNetworkSecurityGroupArgs({
    this.expand,
    required this.networkSecurityGroupName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'networkSecurityGroupName': networkSecurityGroupName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkSecurityGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkSecurityGroupArgs(
      expand: (() {
        final guardedValue = map['expand'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkSecurityGroupName: pulumi.Input.fromValue(
        map['networkSecurityGroupName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
