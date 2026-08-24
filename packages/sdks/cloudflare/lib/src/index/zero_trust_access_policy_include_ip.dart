// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessPolicyIncludeIp {
  /// An IPv4 or IPv6 CIDR block.
  final pulumi.Input<String> ip;

  /// Creates a new [ZeroTrustAccessPolicyIncludeIp].
  /// [ip] An IPv4 or IPv6 CIDR block.
  const ZeroTrustAccessPolicyIncludeIp({
    required this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ip,
    };
  }

  factory ZeroTrustAccessPolicyIncludeIp.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessPolicyIncludeIp(
      ip: pulumi.Input.fromValue(map['ip'] as String),
    );
  }
}
