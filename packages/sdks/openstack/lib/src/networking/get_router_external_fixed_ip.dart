// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRouterExternalFixedIp {
  /// The IP address to set on the router.
  final pulumi.Input<String>? ipAddress;
  /// Subnet in which the fixed IP belongs to.
  final pulumi.Input<String>? subnetId;

  /// Creates a new [GetRouterExternalFixedIp].
  /// [ipAddress] The IP address to set on the router.
  /// [subnetId] Subnet in which the fixed IP belongs to.
  GetRouterExternalFixedIp({
    this.ipAddress,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ?ipAddress,
      'subnetId': ?subnetId,
    };
  }

  factory GetRouterExternalFixedIp.fromMap(Map<String, dynamic> map) {
    return GetRouterExternalFixedIp(
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

