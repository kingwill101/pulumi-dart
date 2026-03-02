// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'static_cidr_properties.dart';

/// {@template pulumi_network_static_cidr_args_doc}
/// The set of arguments for StaticCidr.
/// {@endtemplate}
/// {@macro pulumi_network_static_cidr_args_doc}
class StaticCidrArgs {
  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;
  /// IP Address Manager Pool resource name.
  final pulumi.Input<String> poolName;
  /// Properties of static CIDR resource.
  final pulumi.Input<StaticCidrProperties>? properties;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Static Cidr allocation name.
  final pulumi.Input<String>? staticCidrName;

  /// Creates a new [StaticCidrArgs].
  /// [networkManagerName] The name of the network manager.
  /// [poolName] IP Address Manager Pool resource name.
  /// [properties] Properties of static CIDR resource.
  /// [resourceGroupName] The name of the resource group.
  /// [staticCidrName] Static Cidr allocation name.
  StaticCidrArgs({
    required this.networkManagerName,
    required this.poolName,
    this.properties,
    required this.resourceGroupName,
    this.staticCidrName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkManagerName': networkManagerName,
      'poolName': poolName,
      'properties': ?pulumi.Input.mapOptionalInputValue<StaticCidrProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'staticCidrName': ?staticCidrName,
    };
  }

  factory StaticCidrArgs.fromMap(Map<String, dynamic> map) {
    return StaticCidrArgs(
      networkManagerName: (map['networkManagerName'] as String).input(),
      poolName: (map['poolName'] as String).input(),
      properties: map['properties'] == null ? null : (StaticCidrProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      staticCidrName: map['staticCidrName'] == null ? null : (map['staticCidrName'] as String).input(),
    );
  }
}

