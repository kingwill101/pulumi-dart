// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPoliciesResultExcludeIp {
  /// An IPv4 or IPv6 CIDR block.
  final pulumi.Input<String> ip;

  /// Creates a new [GetZeroTrustAccessPoliciesResultExcludeIp].
  /// [ip] An IPv4 or IPv6 CIDR block.
  const GetZeroTrustAccessPoliciesResultExcludeIp({
    required this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ip,
    };
  }

  factory GetZeroTrustAccessPoliciesResultExcludeIp.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPoliciesResultExcludeIp(
      ip: pulumi.Input.fromValue(map['ip'] as String),
    );
  }
}
