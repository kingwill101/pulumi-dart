// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessApplicationPolicyIncludeIp {
  /// An IPv4 or IPv6 CIDR block.
  final pulumi.Input<String> ip;

  /// Creates a new [ZeroTrustAccessApplicationPolicyIncludeIp].
  /// [ip] An IPv4 or IPv6 CIDR block.
  const ZeroTrustAccessApplicationPolicyIncludeIp({
    required this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ip,
    };
  }

  factory ZeroTrustAccessApplicationPolicyIncludeIp.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessApplicationPolicyIncludeIp(
      ip: pulumi.Input.fromValue(map['ip'] as String),
    );
  }
}
