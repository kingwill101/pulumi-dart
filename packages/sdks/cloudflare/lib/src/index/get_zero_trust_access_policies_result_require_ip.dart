// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPoliciesResultRequireIp {
  /// An IPv4 or IPv6 CIDR block.
  final pulumi.Input<String> ip;

  /// Creates a new [GetZeroTrustAccessPoliciesResultRequireIp].
  /// [ip] An IPv4 or IPv6 CIDR block.
  const GetZeroTrustAccessPoliciesResultRequireIp({
    required this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ip,
    };
  }

  factory GetZeroTrustAccessPoliciesResultRequireIp.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPoliciesResultRequireIp(
      ip: pulumi.Input.fromValue(map['ip'] as String),
    );
  }
}
