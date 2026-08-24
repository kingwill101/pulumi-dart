// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessPolicyExcludeIp {
  /// An IPv4 or IPv6 CIDR block.
  final pulumi.Input<String> ip;

  /// Creates a new [ZeroTrustAccessPolicyExcludeIp].
  /// [ip] An IPv4 or IPv6 CIDR block.
  const ZeroTrustAccessPolicyExcludeIp({
    required this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ip,
    };
  }

  factory ZeroTrustAccessPolicyExcludeIp.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessPolicyExcludeIp(
      ip: pulumi.Input.fromValue(map['ip'] as String),
    );
  }
}
