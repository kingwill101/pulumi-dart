// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessInfrastructureTargetsResultIpIpv4 {
  /// IP address of the target
  final pulumi.Input<String> ipAddr;
  /// (optional) Private virtual network identifier for the target. If omitted, the default virtual network ID will be used.
  final pulumi.Input<String> virtualNetworkId;

  /// Creates a new [GetZeroTrustAccessInfrastructureTargetsResultIpIpv4].
  /// [ipAddr] IP address of the target
  /// [virtualNetworkId] (optional) Private virtual network identifier for the target. If omitted, the default virtual network ID will be used.
  const GetZeroTrustAccessInfrastructureTargetsResultIpIpv4({
    required this.ipAddr,
    required this.virtualNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddr': ipAddr,
      'virtualNetworkId': virtualNetworkId,
    };
  }

  factory GetZeroTrustAccessInfrastructureTargetsResultIpIpv4.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessInfrastructureTargetsResultIpIpv4(
      ipAddr: pulumi.Input.fromValue(map['ipAddr'] as String),
      virtualNetworkId: pulumi.Input.fromValue(map['virtualNetworkId'] as String),
    );
  }
}
