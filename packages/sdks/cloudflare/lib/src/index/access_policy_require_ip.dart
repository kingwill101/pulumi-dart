// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessPolicyRequireIp {
  /// An IPv4 or IPv6 CIDR block.
  final pulumi.Input<String> ip;

  /// Creates a new [AccessPolicyRequireIp].
  /// [ip] An IPv4 or IPv6 CIDR block.
  const AccessPolicyRequireIp({
    required this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ip,
    };
  }

  factory AccessPolicyRequireIp.fromMap(Map<String, dynamic> map) {
    return AccessPolicyRequireIp(
      ip: pulumi.Input.fromValue(map['ip'] as String),
    );
  }
}
