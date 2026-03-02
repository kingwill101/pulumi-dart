// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVpnGatewayIpConfiguration {
  /// The identifier of the IP configuration for the VPN Gateway.
  final pulumi.Input<String> id;
  /// The private IP address of this IP configuration.
  final pulumi.Input<String> privateIpAddress;
  /// The public IP address of this IP configuration.
  final pulumi.Input<String> publicIpAddress;

  /// Creates a new [GetVpnGatewayIpConfiguration].
  /// [id] The identifier of the IP configuration for the VPN Gateway.
  /// [privateIpAddress] The private IP address of this IP configuration.
  /// [publicIpAddress] The public IP address of this IP configuration.
  GetVpnGatewayIpConfiguration({
    required this.id,
    required this.privateIpAddress,
    required this.publicIpAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'privateIpAddress': privateIpAddress,
      'publicIpAddress': publicIpAddress,
    };
  }

  factory GetVpnGatewayIpConfiguration.fromMap(Map<String, dynamic> map) {
    return GetVpnGatewayIpConfiguration(
      id: (map['id'] as String).input(),
      privateIpAddress: (map['privateIpAddress'] as String).input(),
      publicIpAddress: (map['publicIpAddress'] as String).input(),
    );
  }
}

