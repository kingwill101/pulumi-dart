// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessGroupExcludeIp {
  /// An IPv4 or IPv6 CIDR block.
  final pulumi.Input<String> ip;

  /// Creates a new [ZeroTrustAccessGroupExcludeIp].
  /// [ip] An IPv4 or IPv6 CIDR block.
  const ZeroTrustAccessGroupExcludeIp({
    required this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ip,
    };
  }

  factory ZeroTrustAccessGroupExcludeIp.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessGroupExcludeIp(
      ip: pulumi.Input.fromValue(map['ip'] as String),
    );
  }
}
