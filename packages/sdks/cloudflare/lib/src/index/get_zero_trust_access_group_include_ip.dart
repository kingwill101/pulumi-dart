// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupIncludeIp {
  /// An IPv4 or IPv6 CIDR block.
  final pulumi.Input<String> ip;

  /// Creates a new [GetZeroTrustAccessGroupIncludeIp].
  /// [ip] An IPv4 or IPv6 CIDR block.
  const GetZeroTrustAccessGroupIncludeIp({
    required this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ip,
    };
  }

  factory GetZeroTrustAccessGroupIncludeIp.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupIncludeIp(
      ip: pulumi.Input.fromValue(map['ip'] as String),
    );
  }
}
