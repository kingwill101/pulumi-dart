// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontend_ipconfiguration.dart';
import 'network_interface_ipconfiguration.dart';

/// {@template pulumi_network_virtual_network_tap_args_doc}
/// The set of arguments for VirtualNetworkTap.
/// {@endtemplate}
/// {@macro pulumi_network_virtual_network_tap_args_doc}
class VirtualNetworkTapArgs {
  /// The reference to the private IP address on the internal Load Balancer that will receive the tap.
  final pulumi.Input<FrontendIPConfiguration>? destinationLoadBalancerFrontEndIPConfiguration;
  /// The reference to the private IP Address of the collector nic that will receive the tap.
  final pulumi.Input<NetworkInterfaceIPConfiguration>? destinationNetworkInterfaceIPConfiguration;
  /// The VXLAN destination port that will receive the tapped traffic.
  final pulumi.Input<int>? destinationPort;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the virtual network tap.
  final pulumi.Input<String>? tapName;

  /// Creates a new [VirtualNetworkTapArgs].
  /// [destinationLoadBalancerFrontEndIPConfiguration] The reference to the private IP address on the internal Load Balancer that will receive the tap.
  /// [destinationNetworkInterfaceIPConfiguration] The reference to the private IP Address of the collector nic that will receive the tap.
  /// [destinationPort] The VXLAN destination port that will receive the tapped traffic.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [resourceGroupName] The name of the resource group.
  /// [tags] Resource tags.
  /// [tapName] The name of the virtual network tap.
  VirtualNetworkTapArgs({
    pulumi.Output<FrontendIPConfiguration>? destinationLoadBalancerFrontEndIPConfiguration,
    pulumi.Output<NetworkInterfaceIPConfiguration>? destinationNetworkInterfaceIPConfiguration,
    pulumi.Output<int>? destinationPort,
    pulumi.Output<String>? id,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? tapName,
  }) :
      destinationLoadBalancerFrontEndIPConfiguration = pulumi.Input.asOptionalInput<FrontendIPConfiguration>(destinationLoadBalancerFrontEndIPConfiguration),
      destinationNetworkInterfaceIPConfiguration = pulumi.Input.asOptionalInput<NetworkInterfaceIPConfiguration>(destinationNetworkInterfaceIPConfiguration),
      destinationPort = pulumi.Input.asOptionalInput<int>(destinationPort),
      id = pulumi.Input.asOptionalInput<String>(id),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tapName = pulumi.Input.asOptionalInput<String>(tapName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationLoadBalancerFrontEndIPConfiguration': ?pulumi.Input.mapOptionalInputValue<FrontendIPConfiguration, Map<String, dynamic>>(destinationLoadBalancerFrontEndIPConfiguration, (value) => value.toMap()),
      'destinationNetworkInterfaceIPConfiguration': ?pulumi.Input.mapOptionalInputValue<NetworkInterfaceIPConfiguration, Map<String, dynamic>>(destinationNetworkInterfaceIPConfiguration, (value) => value.toMap()),
      'destinationPort': ?destinationPort,
      'id': ?id,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'tapName': ?tapName,
    };
  }

  factory VirtualNetworkTapArgs.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkTapArgs(
      destinationLoadBalancerFrontEndIPConfiguration: map['destinationLoadBalancerFrontEndIPConfiguration'] == null ? null : pulumi.Output.create<FrontendIPConfiguration>(FrontendIPConfiguration.fromMap((map['destinationLoadBalancerFrontEndIPConfiguration'] as Map).cast<String, dynamic>())),
      destinationNetworkInterfaceIPConfiguration: map['destinationNetworkInterfaceIPConfiguration'] == null ? null : pulumi.Output.create<NetworkInterfaceIPConfiguration>(NetworkInterfaceIPConfiguration.fromMap((map['destinationNetworkInterfaceIPConfiguration'] as Map).cast<String, dynamic>())),
      destinationPort: map['destinationPort'] == null ? null : pulumi.Output.create<int>(map['destinationPort'] as int),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tapName: map['tapName'] == null ? null : pulumi.Output.create<String>(map['tapName'] as String),
    );
  }
}

