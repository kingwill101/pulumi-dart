// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessGroupExcludeIp {
  /// An IPv4 or IPv6 CIDR block.
  final pulumi.Input<String> ip;

  /// Creates a new [AccessGroupExcludeIp].
  /// [ip] An IPv4 or IPv6 CIDR block.
  const AccessGroupExcludeIp({
    required this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ip,
    };
  }

  factory AccessGroupExcludeIp.fromMap(Map<String, dynamic> map) {
    return AccessGroupExcludeIp(
      ip: pulumi.Input.fromValue(map['ip'] as String),
    );
  }
}
