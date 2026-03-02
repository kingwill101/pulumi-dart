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
  VpnGatewayIpConfiguration({
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
      id: map['id'] == null ? null : (map['id'] as String).input(),
      privateIpAddress: map['privateIpAddress'] == null ? null : (map['privateIpAddress'] as String).input(),
      publicIpAddress: map['publicIpAddress'] == null ? null : (map['publicIpAddress'] as String).input(),
    );
  }
}

