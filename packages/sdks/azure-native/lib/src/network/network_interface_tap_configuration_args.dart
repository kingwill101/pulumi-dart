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
  const NetworkInterfaceTapConfigurationArgs({
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
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfaceName: pulumi.Input.fromValue(map['networkInterfaceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tapConfigurationName: (() { final guardedValue = map['tapConfigurationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualNetworkTap: (() { final guardedValue = map['virtualNetworkTap']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as VirtualNetworkTapNetwork); })(),
    );
  }
}

