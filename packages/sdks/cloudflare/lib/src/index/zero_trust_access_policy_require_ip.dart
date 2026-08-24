// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessPolicyRequireIp {
  /// An IPv4 or IPv6 CIDR block.
  final pulumi.Input<String> ip;

  /// Creates a new [ZeroTrustAccessPolicyRequireIp].
  /// [ip] An IPv4 or IPv6 CIDR block.
  const ZeroTrustAccessPolicyRequireIp({
    required this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ip,
    };
  }

  factory ZeroTrustAccessPolicyRequireIp.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessPolicyRequireIp(
      ip: pulumi.Input.fromValue(map['ip'] as String),
    );
  }
}
