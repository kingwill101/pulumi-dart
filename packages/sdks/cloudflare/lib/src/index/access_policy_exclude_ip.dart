// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessPolicyExcludeIp {
  /// An IPv4 or IPv6 CIDR block.
  final pulumi.Input<String> ip;

  /// Creates a new [AccessPolicyExcludeIp].
  /// [ip] An IPv4 or IPv6 CIDR block.
  const AccessPolicyExcludeIp({
    required this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ip,
    };
  }

  factory AccessPolicyExcludeIp.fromMap(Map<String, dynamic> map) {
    return AccessPolicyExcludeIp(
      ip: pulumi.Input.fromValue(map['ip'] as String),
    );
  }
}
