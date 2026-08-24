// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPoliciesResultIncludeIp {
  /// An IPv4 or IPv6 CIDR block.
  final pulumi.Input<String> ip;

  /// Creates a new [GetZeroTrustAccessPoliciesResultIncludeIp].
  /// [ip] An IPv4 or IPv6 CIDR block.
  const GetZeroTrustAccessPoliciesResultIncludeIp({
    required this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ip,
    };
  }

  factory GetZeroTrustAccessPoliciesResultIncludeIp.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPoliciesResultIncludeIp(
      ip: pulumi.Input.fromValue(map['ip'] as String),
    );
  }
}
