// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupsResultIsDefaultIp {
  /// An IPv4 or IPv6 CIDR block.
  final pulumi.Input<String> ip;

  /// Creates a new [GetZeroTrustAccessGroupsResultIsDefaultIp].
  /// [ip] An IPv4 or IPv6 CIDR block.
  const GetZeroTrustAccessGroupsResultIsDefaultIp({
    required this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ip,
    };
  }

  factory GetZeroTrustAccessGroupsResultIsDefaultIp.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupsResultIsDefaultIp(
      ip: pulumi.Input.fromValue(map['ip'] as String),
    );
  }
}
