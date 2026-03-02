// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNetworkIpamConfig {
  /// Auxiliary IPv4 or IPv6 addresses used by Network driver
  final pulumi.Input<Map<String, String>>? auxAddress;
  /// The IP address of the gateway
  final pulumi.Input<String>? gateway;
  /// The ip range in CIDR form
  final pulumi.Input<String>? ipRange;
  /// The subnet in CIDR form
  final pulumi.Input<String>? subnet;

  /// Creates a new [GetNetworkIpamConfig].
  /// [auxAddress] Auxiliary IPv4 or IPv6 addresses used by Network driver
  /// [gateway] The IP address of the gateway
  /// [ipRange] The ip range in CIDR form
  /// [subnet] The subnet in CIDR form
  GetNetworkIpamConfig({
    this.auxAddress,
    this.gateway,
    this.ipRange,
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auxAddress': ?auxAddress,
      'gateway': ?gateway,
      'ipRange': ?ipRange,
      'subnet': ?subnet,
    };
  }

  factory GetNetworkIpamConfig.fromMap(Map<String, dynamic> map) {
    return GetNetworkIpamConfig(
      auxAddress: map['auxAddress'] == null ? null : ((map['auxAddress']! as Map).cast<String, String>()).input(),
      gateway: map['gateway'] == null ? null : (map['gateway']! as String).input(),
      ipRange: map['ipRange'] == null ? null : (map['ipRange']! as String).input(),
      subnet: map['subnet'] == null ? null : (map['subnet']! as String).input(),
    );
  }
}

