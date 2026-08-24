// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupExcludeIp {
  /// An IPv4 or IPv6 CIDR block.
  final pulumi.Input<String> ip;

  /// Creates a new [GetZeroTrustAccessGroupExcludeIp].
  /// [ip] An IPv4 or IPv6 CIDR block.
  const GetZeroTrustAccessGroupExcludeIp({
    required this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ip,
    };
  }

  factory GetZeroTrustAccessGroupExcludeIp.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupExcludeIp(
      ip: pulumi.Input.fromValue(map['ip'] as String),
    );
  }
}
