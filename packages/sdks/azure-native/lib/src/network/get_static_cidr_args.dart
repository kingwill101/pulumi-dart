// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_static_cidr_args_doc}
/// Arguments for getStaticCidr.
/// {@endtemplate}
/// {@macro pulumi_network_get_static_cidr_args_doc}
class GetStaticCidrArgs {
  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;
  /// Pool resource name.
  final pulumi.Input<String> poolName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// StaticCidr resource name to retrieve.
  final pulumi.Input<String> staticCidrName;

  /// Creates a new [GetStaticCidrArgs].
  /// [networkManagerName] The name of the network manager.
  /// [poolName] Pool resource name.
  /// [resourceGroupName] The name of the resource group.
  /// [staticCidrName] StaticCidr resource name to retrieve.
  GetStaticCidrArgs({
    required this.networkManagerName,
    required this.poolName,
    required this.resourceGroupName,
    required this.staticCidrName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkManagerName': networkManagerName,
      'poolName': poolName,
      'resourceGroupName': resourceGroupName,
      'staticCidrName': staticCidrName,
    };
  }

  factory GetStaticCidrArgs.fromMap(Map<String, dynamic> map) {
    return GetStaticCidrArgs(
      networkManagerName: pulumi.Input.fromValue(map['networkManagerName'] as String),
      poolName: pulumi.Input.fromValue(map['poolName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      staticCidrName: pulumi.Input.fromValue(map['staticCidrName'] as String),
    );
  }
}

