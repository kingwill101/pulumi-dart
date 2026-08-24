// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessGroupRequireIp {
  /// An IPv4 or IPv6 CIDR block.
  final pulumi.Input<String> ip;

  /// Creates a new [ZeroTrustAccessGroupRequireIp].
  /// [ip] An IPv4 or IPv6 CIDR block.
  const ZeroTrustAccessGroupRequireIp({
    required this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ip,
    };
  }

  factory ZeroTrustAccessGroupRequireIp.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessGroupRequireIp(
      ip: pulumi.Input.fromValue(map['ip'] as String),
    );
  }
}
