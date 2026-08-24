// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupsResultIncludeIp {
  /// An IPv4 or IPv6 CIDR block.
  final pulumi.Input<String> ip;

  /// Creates a new [GetZeroTrustAccessGroupsResultIncludeIp].
  /// [ip] An IPv4 or IPv6 CIDR block.
  const GetZeroTrustAccessGroupsResultIncludeIp({
    required this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ip,
    };
  }

  factory GetZeroTrustAccessGroupsResultIncludeIp.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupsResultIncludeIp(
      ip: pulumi.Input.fromValue(map['ip'] as String),
    );
  }
}
