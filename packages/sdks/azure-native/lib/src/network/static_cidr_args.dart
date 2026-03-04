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
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            StaticCidrProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'staticCidrName': ?staticCidrName,
    };
  }

  factory StaticCidrArgs.fromMap(Map<String, dynamic> map) {
    return StaticCidrArgs(
      networkManagerName: pulumi.Input.fromValue(
        map['networkManagerName'] as String,
      ),
      poolName: pulumi.Input.fromValue(map['poolName'] as String),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          StaticCidrProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      staticCidrName: (() {
        final guardedValue = map['staticCidrName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
