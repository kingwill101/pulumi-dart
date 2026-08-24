// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupRequireIp {
  /// An IPv4 or IPv6 CIDR block.
  final pulumi.Input<String> ip;

  /// Creates a new [GetZeroTrustAccessGroupRequireIp].
  /// [ip] An IPv4 or IPv6 CIDR block.
  const GetZeroTrustAccessGroupRequireIp({
    required this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ip,
    };
  }

  factory GetZeroTrustAccessGroupRequireIp.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupRequireIp(
      ip: pulumi.Input.fromValue(map['ip'] as String),
    );
  }
}
