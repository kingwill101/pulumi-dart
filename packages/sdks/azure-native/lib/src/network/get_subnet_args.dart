// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_subnet_args_doc}
/// Arguments for getSubnet.
/// {@endtemplate}
/// {@macro pulumi_network_get_subnet_args_doc}
class GetSubnetArgs {
  /// Expands referenced resources.
  final pulumi.Input<String>? expand;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the subnet.
  final pulumi.Input<String> subnetName;
  /// The name of the virtual network.
  final pulumi.Input<String> virtualNetworkName;

  /// Creates a new [GetSubnetArgs].
  /// [expand] Expands referenced resources.
  /// [resourceGroupName] The name of the resource group.
  /// [subnetName] The name of the subnet.
  /// [virtualNetworkName] The name of the virtual network.
  GetSubnetArgs({
    this.expand,
    required this.resourceGroupName,
    required this.subnetName,
    required this.virtualNetworkName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'resourceGroupName': resourceGroupName,
      'subnetName': subnetName,
      'virtualNetworkName': virtualNetworkName,
    };
  }

  factory GetSubnetArgs.fromMap(Map<String, dynamic> map) {
    return GetSubnetArgs(
      expand: map['expand'] == null ? null : (map['expand']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      subnetName: (map['subnetName'] as String).input(),
      virtualNetworkName: (map['virtualNetworkName'] as String).input(),
    );
  }
}

