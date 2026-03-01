// ignore_for_file: unused_element, unnecessary_cast


class LkeClusterControlPlaneAclAddress {
  /// A set of individual ipv4 addresses or CIDRs to ALLOW.
  final List<String>? ipv4s;
  /// A set of individual ipv6 addresses or CIDRs to ALLOW.
  final List<String>? ipv6s;

  /// Creates a new [LkeClusterControlPlaneAclAddress].
  /// [ipv4s] A set of individual ipv4 addresses or CIDRs to ALLOW.
  /// [ipv6s] A set of individual ipv6 addresses or CIDRs to ALLOW.
  LkeClusterControlPlaneAclAddress({
    this.ipv4s,
    this.ipv6s,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4s': ?ipv4s,
      'ipv6s': ?ipv6s,
    };
  }

  factory LkeClusterControlPlaneAclAddress.fromMap(Map<String, dynamic> map) {
    return LkeClusterControlPlaneAclAddress(
      ipv4s: map['ipv4s'] == null ? null : (map['ipv4s'] as List).cast<String>(),
      ipv6s: map['ipv6s'] == null ? null : (map['ipv6s'] as List).cast<String>(),
    );
  }
}

