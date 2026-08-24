// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessApplicationPolicyRequireIp {
  /// An IPv4 or IPv6 CIDR block.
  final pulumi.Input<String> ip;

  /// Creates a new [AccessApplicationPolicyRequireIp].
  /// [ip] An IPv4 or IPv6 CIDR block.
  const AccessApplicationPolicyRequireIp({
    required this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ip,
    };
  }

  factory AccessApplicationPolicyRequireIp.fromMap(Map<String, dynamic> map) {
    return AccessApplicationPolicyRequireIp(
      ip: pulumi.Input.fromValue(map['ip'] as String),
    );
  }
}
