// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// IP Configuration of a VPN Gateway Resource.
class VpnGatewayIpConfigurationResponse {
  /// The identifier of the IP configuration for a VPN Gateway.
  final pulumi.Input<String>? id;
  /// The private IP address of this IP configuration.
  final pulumi.Input<String>? privateIpAddress;
  /// The public IP address of this IP configuration.
  final pulumi.Input<String>? publicIpAddress;

  /// Creates a new [VpnGatewayIpConfigurationResponse].
  /// [id] The identifier of the IP configuration for a VPN Gateway.
  /// [privateIpAddress] The private IP address of this IP configuration.
  /// [publicIpAddress] The public IP address of this IP configuration.
  VpnGatewayIpConfigurationResponse({
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

  factory VpnGatewayIpConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return VpnGatewayIpConfigurationResponse(
      id: map['id'] == null ? null : (map['id']! as String).input(),
      privateIpAddress: map['privateIpAddress'] == null ? null : (map['privateIpAddress']! as String).input(),
      publicIpAddress: map['publicIpAddress'] == null ? null : (map['publicIpAddress']! as String).input(),
    );
  }
}

