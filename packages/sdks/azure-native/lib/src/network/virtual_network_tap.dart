// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontend_ipconfiguration.dart';
import 'network_interface_ipconfiguration.dart';

/// Virtual Network Tap resource.
class VirtualNetworkTap {
  /// The reference to the private IP address on the internal Load Balancer that will receive the tap.
  final pulumi.Input<FrontendIPConfiguration?>? destinationLoadBalancerFrontEndIPConfiguration;
  /// The reference to the private IP Address of the collector nic that will receive the tap.
  final pulumi.Input<NetworkInterfaceIPConfiguration?>? destinationNetworkInterfaceIPConfiguration;
  /// The VXLAN destination port that will receive the tapped traffic.
  final pulumi.Input<int?>? destinationPort;
  /// Resource ID.
  final pulumi.Input<String?>? id;
  /// Resource location.
  final pulumi.Input<String?>? location;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [VirtualNetworkTap].
  /// [destinationLoadBalancerFrontEndIPConfiguration] The reference to the private IP address on the internal Load Balancer that will receive the tap.
  /// [destinationNetworkInterfaceIPConfiguration] The reference to the private IP Address of the collector nic that will receive the tap.
  /// [destinationPort] The VXLAN destination port that will receive the tapped traffic.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [tags] Resource tags.
  const VirtualNetworkTap({
    this.destinationLoadBalancerFrontEndIPConfiguration,
    this.destinationNetworkInterfaceIPConfiguration,
    this.destinationPort,
    this.id,
    this.location,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationLoadBalancerFrontEndIPConfiguration': ?pulumi.Input.mapOptionalInputValue<FrontendIPConfiguration, Map<String, dynamic>>(destinationLoadBalancerFrontEndIPConfiguration, (value) => value.toMap()),
      'destinationNetworkInterfaceIPConfiguration': ?pulumi.Input.mapOptionalInputValue<NetworkInterfaceIPConfiguration, Map<String, dynamic>>(destinationNetworkInterfaceIPConfiguration, (value) => value.toMap()),
      'destinationPort': ?destinationPort,
      'id': ?id,
      'location': ?location,
      'tags': ?tags,
    };
  }

  factory VirtualNetworkTap.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkTap(
      destinationLoadBalancerFrontEndIPConfiguration: (() { final guardedValue = map['destinationLoadBalancerFrontEndIPConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FrontendIPConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      destinationNetworkInterfaceIPConfiguration: (() { final guardedValue = map['destinationNetworkInterfaceIPConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkInterfaceIPConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      destinationPort: (() { final guardedValue = map['destinationPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
