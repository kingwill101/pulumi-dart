// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RouterExternalFixedIp {
  /// The IP address to set on the router.
  final pulumi.Input<String>? ipAddress;
  /// Subnet in which the fixed IP belongs to.
  final pulumi.Input<String>? subnetId;

  /// Creates a new [RouterExternalFixedIp].
  /// [ipAddress] The IP address to set on the router.
  /// [subnetId] Subnet in which the fixed IP belongs to.
  const RouterExternalFixedIp({
    this.ipAddress,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddress': ?ipAddress,
      'subnetId': ?subnetId,
    };
  }

  factory RouterExternalFixedIp.fromMap(Map<String, dynamic> map) {
    return RouterExternalFixedIp(
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

