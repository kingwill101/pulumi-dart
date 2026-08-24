// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationPolicyRequireIp {
  /// An IPv4 or IPv6 CIDR block.
  final pulumi.Input<String> ip;

  /// Creates a new [GetZeroTrustAccessApplicationPolicyRequireIp].
  /// [ip] An IPv4 or IPv6 CIDR block.
  const GetZeroTrustAccessApplicationPolicyRequireIp({
    required this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ip,
    };
  }

  factory GetZeroTrustAccessApplicationPolicyRequireIp.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationPolicyRequireIp(
      ip: pulumi.Input.fromValue(map['ip'] as String),
    );
  }
}
