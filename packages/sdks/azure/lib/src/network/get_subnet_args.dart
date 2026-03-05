// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_subnet_get_subnet_args_doc}
/// Arguments for getSubnet.
/// {@endtemplate}
/// {@macro pulumi_network_get_subnet_get_subnet_args_doc}
class GetSubnetArgs {
  /// Specifies the name of the Subnet.
  final pulumi.Input<String> name;
  /// Specifies the name of the resource group the Virtual Network is located in.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the name of the Virtual Network this Subnet is located within.
  final pulumi.Input<String> virtualNetworkName;

  /// Creates a new [GetSubnetArgs].
  /// [name] Specifies the name of the Subnet.
  /// [resourceGroupName] Specifies the name of the resource group the Virtual Network is located in.
  /// [virtualNetworkName] Specifies the name of the Virtual Network this Subnet is located within.
  GetSubnetArgs({
    required this.name,
    required this.resourceGroupName,
    required this.virtualNetworkName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'virtualNetworkName': virtualNetworkName,
    };
  }

  factory GetSubnetArgs.fromMap(Map<String, dynamic> map) {
    return GetSubnetArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      virtualNetworkName: pulumi.Input.fromValue(map['virtualNetworkName'] as String),
    );
  }
}

