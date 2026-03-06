// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VpnGatewayIpConfiguration {
  /// The identifier of the IP configuration for the VPN Gateway.
  final pulumi.Input<String>? id;
  /// The private IP address of this IP configuration.
  final pulumi.Input<String>? privateIpAddress;
  /// The public IP address of this IP configuration.
  final pulumi.Input<String>? publicIpAddress;

  /// Creates a new [VpnGatewayIpConfiguration].
  /// [id] The identifier of the IP configuration for the VPN Gateway.
  /// [privateIpAddress] The private IP address of this IP configuration.
  /// [publicIpAddress] The public IP address of this IP configuration.
  const VpnGatewayIpConfiguration({
    this.id,
    this.privateIpAddress,
    this.publicIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'privateIpAddress': ?privateIpAddress,
      'publicIpAddress': ?publicIpAddress,
    };
  }

  factory VpnGatewayIpConfiguration.fromMap(Map<String, dynamic> map) {
    return VpnGatewayIpConfiguration(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIpAddress: (() { final guardedValue = map['privateIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicIpAddress: (() { final guardedValue = map['publicIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

