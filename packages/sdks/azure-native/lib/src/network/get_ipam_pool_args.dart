// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_ipam_pool_args_doc}
/// Arguments for getIpamPool.
/// {@endtemplate}
/// {@macro pulumi_network_get_ipam_pool_args_doc}
class GetIpamPoolArgs {
  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;
  /// Pool resource name.
  final pulumi.Input<String> poolName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetIpamPoolArgs].
  /// [networkManagerName] The name of the network manager.
  /// [poolName] Pool resource name.
  /// [resourceGroupName] The name of the resource group.
  const GetIpamPoolArgs({
    required this.networkManagerName,
    required this.poolName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkManagerName': networkManagerName,
      'poolName': poolName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetIpamPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetIpamPoolArgs(
      networkManagerName: pulumi.Input.fromValue(map['networkManagerName'] as String),
      poolName: pulumi.Input.fromValue(map['poolName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

