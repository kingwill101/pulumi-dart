// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_network_security_group_get_network_security_group_args_doc}
/// Arguments for getNetworkSecurityGroup.
/// {@endtemplate}
/// {@macro pulumi_network_get_network_security_group_get_network_security_group_args_doc}
class GetNetworkSecurityGroupArgs {
  /// Specifies the Name of the Network Security Group.
  final pulumi.Input<String> name;
  /// Specifies the Name of the Resource Group within which the Network Security Group exists
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNetworkSecurityGroupArgs].
  /// [name] Specifies the Name of the Network Security Group.
  /// [resourceGroupName] Specifies the Name of the Resource Group within which the Network Security Group exists
  GetNetworkSecurityGroupArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkSecurityGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkSecurityGroupArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

