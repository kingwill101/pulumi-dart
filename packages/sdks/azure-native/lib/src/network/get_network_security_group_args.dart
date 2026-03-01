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
    pulumi.Output<String>? expand,
    required pulumi.Output<String> networkSecurityGroupName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      expand = pulumi.Input.asOptionalInput<String>(expand),
      networkSecurityGroupName = pulumi.Input.asInput<String>(networkSecurityGroupName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'networkSecurityGroupName': networkSecurityGroupName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkSecurityGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkSecurityGroupArgs(
      expand: map['expand'] == null ? null : pulumi.Output.create<String>(map['expand'] as String),
      networkSecurityGroupName: pulumi.Output.create<String>(map['networkSecurityGroupName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

