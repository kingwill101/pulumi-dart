// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LkeClusterControlPlaneAclAddress {
  /// A set of individual ipv4 addresses or CIDRs to ALLOW.
  final pulumi.Input<List<String>>? ipv4s;

  /// A set of individual ipv6 addresses or CIDRs to ALLOW.
  final pulumi.Input<List<String>>? ipv6s;

  /// Creates a new [LkeClusterControlPlaneAclAddress].
  /// [ipv4s] A set of individual ipv4 addresses or CIDRs to ALLOW.
  /// [ipv6s] A set of individual ipv6 addresses or CIDRs to ALLOW.
  LkeClusterControlPlaneAclAddress({this.ipv4s, this.ipv6s});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ipv4s': ?ipv4s, 'ipv6s': ?ipv6s};
  }

  factory LkeClusterControlPlaneAclAddress.fromMap(Map<String, dynamic> map) {
    return LkeClusterControlPlaneAclAddress(
      ipv4s: (() {
        final guardedValue = map['ipv4s'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      ipv6s: (() {
        final guardedValue = map['ipv6s'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
