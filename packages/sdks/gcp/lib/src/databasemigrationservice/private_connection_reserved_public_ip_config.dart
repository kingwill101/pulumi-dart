// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PrivateConnectionReservedPublicIpConfig {
  /// (Output)
  /// Output only. The reserved public IPs.
  final pulumi.Input<List<String>?>? egressPublicIps;
  /// Optional. Number of static public IP addresses to reserve.
  final pulumi.Input<int?>? natIpsCount;

  /// Creates a new [PrivateConnectionReservedPublicIpConfig].
  /// [egressPublicIps] (Output)
  /// [natIpsCount] Optional. Number of static public IP addresses to reserve.
  const PrivateConnectionReservedPublicIpConfig({
    this.egressPublicIps,
    this.natIpsCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'egressPublicIps': ?egressPublicIps,
      'natIpsCount': ?natIpsCount,
    };
  }

  factory PrivateConnectionReservedPublicIpConfig.fromMap(Map<String, dynamic> map) {
    return PrivateConnectionReservedPublicIpConfig(
      egressPublicIps: (() { final guardedValue = map['egressPublicIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      natIpsCount: (() { final guardedValue = map['natIpsCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
