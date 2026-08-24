// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessApplicationPolicyIncludeIp {
  /// An IPv4 or IPv6 CIDR block.
  final pulumi.Input<String> ip;

  /// Creates a new [AccessApplicationPolicyIncludeIp].
  /// [ip] An IPv4 or IPv6 CIDR block.
  const AccessApplicationPolicyIncludeIp({
    required this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ip,
    };
  }

  factory AccessApplicationPolicyIncludeIp.fromMap(Map<String, dynamic> map) {
    return AccessApplicationPolicyIncludeIp(
      ip: pulumi.Input.fromValue(map['ip'] as String),
    );
  }
}
