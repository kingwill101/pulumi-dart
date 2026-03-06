// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLkeClusterControlPlaneAclAddress {
  /// A set of individual ipv4 addresses or CIDRs to ALLOW.
  final pulumi.Input<List<String>> ipv4s;
  /// A set of individual ipv6 addresses or CIDRs to ALLOW.
  final pulumi.Input<List<String>> ipv6s;

  /// Creates a new [GetLkeClusterControlPlaneAclAddress].
  /// [ipv4s] A set of individual ipv4 addresses or CIDRs to ALLOW.
  /// [ipv6s] A set of individual ipv6 addresses or CIDRs to ALLOW.
  const GetLkeClusterControlPlaneAclAddress({
    required this.ipv4s,
    required this.ipv6s,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4s': ipv4s,
      'ipv6s': ipv6s,
    };
  }

  factory GetLkeClusterControlPlaneAclAddress.fromMap(Map<String, dynamic> map) {
    return GetLkeClusterControlPlaneAclAddress(
      ipv4s: pulumi.Input.fromValue((map['ipv4s'] as List).cast<String>()),
      ipv6s: pulumi.Input.fromValue((map['ipv6s'] as List).cast<String>()),
    );
  }
}

