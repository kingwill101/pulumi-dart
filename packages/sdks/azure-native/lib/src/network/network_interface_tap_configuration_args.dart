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
    pulumi.Output<String>? id,
    pulumi.Output<String>? name,
    required pulumi.Output<String> networkInterfaceName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? tapConfigurationName,
    pulumi.Output<VirtualNetworkTapNetwork>? virtualNetworkTap,
  }) :
      id = pulumi.Input.asOptionalInput<String>(id),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkInterfaceName = pulumi.Input.asInput<String>(networkInterfaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tapConfigurationName = pulumi.Input.asOptionalInput<String>(tapConfigurationName),
      virtualNetworkTap = pulumi.Input.asOptionalInput<VirtualNetworkTapNetwork>(virtualNetworkTap);

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
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkInterfaceName: pulumi.Output.create<String>(map['networkInterfaceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tapConfigurationName: map['tapConfigurationName'] == null ? null : pulumi.Output.create<String>(map['tapConfigurationName'] as String),
      virtualNetworkTap: map['virtualNetworkTap'] == null ? null : pulumi.Output.create<VirtualNetworkTapNetwork>(map['virtualNetworkTap'] as VirtualNetworkTapNetwork),
    );
  }
}

