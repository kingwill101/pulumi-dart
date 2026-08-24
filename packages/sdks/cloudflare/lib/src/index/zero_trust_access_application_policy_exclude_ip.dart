// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessApplicationPolicyExcludeIp {
  /// An IPv4 or IPv6 CIDR block.
  final pulumi.Input<String> ip;

  /// Creates a new [ZeroTrustAccessApplicationPolicyExcludeIp].
  /// [ip] An IPv4 or IPv6 CIDR block.
  const ZeroTrustAccessApplicationPolicyExcludeIp({
    required this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ip,
    };
  }

  factory ZeroTrustAccessApplicationPolicyExcludeIp.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessApplicationPolicyExcludeIp(
      ip: pulumi.Input.fromValue(map['ip'] as String),
    );
  }
}
