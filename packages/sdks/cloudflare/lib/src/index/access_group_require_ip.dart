// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessGroupRequireIp {
  /// An IPv4 or IPv6 CIDR block.
  final pulumi.Input<String> ip;

  /// Creates a new [AccessGroupRequireIp].
  /// [ip] An IPv4 or IPv6 CIDR block.
  const AccessGroupRequireIp({
    required this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ip,
    };
  }

  factory AccessGroupRequireIp.fromMap(Map<String, dynamic> map) {
    return AccessGroupRequireIp(
      ip: pulumi.Input.fromValue(map['ip'] as String),
    );
  }
}
