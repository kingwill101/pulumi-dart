// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessGroupIncludeIp {
  /// An IPv4 or IPv6 CIDR block.
  final pulumi.Input<String> ip;

  /// Creates a new [AccessGroupIncludeIp].
  /// [ip] An IPv4 or IPv6 CIDR block.
  const AccessGroupIncludeIp({
    required this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ip,
    };
  }

  factory AccessGroupIncludeIp.fromMap(Map<String, dynamic> map) {
    return AccessGroupIncludeIp(
      ip: pulumi.Input.fromValue(map['ip'] as String),
    );
  }
}
