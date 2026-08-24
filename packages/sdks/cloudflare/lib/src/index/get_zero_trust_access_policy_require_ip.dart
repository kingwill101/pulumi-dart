// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPolicyRequireIp {
  /// An IPv4 or IPv6 CIDR block.
  final pulumi.Input<String> ip;

  /// Creates a new [GetZeroTrustAccessPolicyRequireIp].
  /// [ip] An IPv4 or IPv6 CIDR block.
  const GetZeroTrustAccessPolicyRequireIp({
    required this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ip,
    };
  }

  factory GetZeroTrustAccessPolicyRequireIp.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPolicyRequireIp(
      ip: pulumi.Input.fromValue(map['ip'] as String),
    );
  }
}
