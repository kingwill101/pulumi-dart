// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_tap_network.dart';

/// {@template pulumi_network_network_interface_tap_configuration_args_doc}
/// The set of arguments for NetworkInterfaceTapConfiguration.
/// {@endtemplate}
/// {@macro pulumi_network_network_interface_tap_configuration_args_doc}
class NetworkInterfaceTapConfigurationArgs {
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// The name of the network interface.
  final pulumi.Input<String> networkInterfaceName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the tap configuration.
  final pulumi.Input<String>? tapConfigurationName;
  /// The reference to the Virtual Network Tap resource.
  final pulumi.Input<VirtualNetworkTapNetwork>? virtualNetworkTap;

  /// Creates a new [NetworkInterfaceTapConfigurationArgs].
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [networkInterfaceName] The name of the network interface.
  /// [resourceGroupName] The name of the resource group.
  /// [tapConfigurationName] The name of the tap configuration.
  /// [virtualNetworkTap] The reference to the Virtual Network Tap resource.
  NetworkInterfaceTapConfigurationArgs({
    this.id,
    this.name,
    required this.networkInterfaceName,
    required this.resourceGroupName,
    this.tapConfigurationName,
    this.virtualNetworkTap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'networkInterfaceName': networkInterfaceName,
      'resourceGroupName': resourceGroupName,
      'tapConfigurationName': ?tapConfigurationName,
      'virtualNetworkTap': ?virtualNetworkTap,
    };
  }

  factory NetworkInterfaceTapConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceTapConfigurationArgs(
      id: map['id'] == null ? null : (map['id'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      networkInterfaceName: (map['networkInterfaceName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tapConfigurationName: map['tapConfigurationName'] == null ? null : (map['tapConfigurationName'] as String).input(),
      virtualNetworkTap: map['virtualNetworkTap'] == null ? null : (map['virtualNetworkTap'] as VirtualNetworkTapNetwork).input(),
    );
  }
}

