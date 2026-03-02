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
  RouterExternalFixedIp({
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
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress'] as String).input(),
      subnetId: map['subnetId'] == null ? null : (map['subnetId'] as String).input(),
    );
  }
}

