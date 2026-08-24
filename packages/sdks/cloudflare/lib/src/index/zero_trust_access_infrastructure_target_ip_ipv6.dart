// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessInfrastructureTargetIpIpv6 {
  /// IP address of the target
  final pulumi.Input<String?>? ipAddr;
  /// (optional) Private virtual network identifier for the target. If omitted, the default virtual network ID will be used.
  final pulumi.Input<String?>? virtualNetworkId;

  /// Creates a new [ZeroTrustAccessInfrastructureTargetIpIpv6].
  /// [ipAddr] IP address of the target
  /// [virtualNetworkId] (optional) Private virtual network identifier for the target. If omitted, the default virtual network ID will be used.
  const ZeroTrustAccessInfrastructureTargetIpIpv6({
    this.ipAddr,
    this.virtualNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddr': ?ipAddr,
      'virtualNetworkId': ?virtualNetworkId,
    };
  }

  factory ZeroTrustAccessInfrastructureTargetIpIpv6.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessInfrastructureTargetIpIpv6(
      ipAddr: (() { final guardedValue = map['ipAddr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualNetworkId: (() { final guardedValue = map['virtualNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
