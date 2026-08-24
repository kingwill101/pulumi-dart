// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessApplicationPolicyExcludeIp {
  /// An IPv4 or IPv6 CIDR block.
  final pulumi.Input<String> ip;

  /// Creates a new [AccessApplicationPolicyExcludeIp].
  /// [ip] An IPv4 or IPv6 CIDR block.
  const AccessApplicationPolicyExcludeIp({
    required this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ip,
    };
  }

  factory AccessApplicationPolicyExcludeIp.fromMap(Map<String, dynamic> map) {
    return AccessApplicationPolicyExcludeIp(
      ip: pulumi.Input.fromValue(map['ip'] as String),
    );
  }
}
