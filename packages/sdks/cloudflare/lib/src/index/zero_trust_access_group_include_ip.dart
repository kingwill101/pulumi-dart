// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessGroupIncludeIp {
  /// An IPv4 or IPv6 CIDR block.
  final pulumi.Input<String> ip;

  /// Creates a new [ZeroTrustAccessGroupIncludeIp].
  /// [ip] An IPv4 or IPv6 CIDR block.
  const ZeroTrustAccessGroupIncludeIp({
    required this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ip,
    };
  }

  factory ZeroTrustAccessGroupIncludeIp.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessGroupIncludeIp(
      ip: pulumi.Input.fromValue(map['ip'] as String),
    );
  }
}
