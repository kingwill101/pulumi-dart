// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAddressMapIp {
  final pulumi.Input<String> createdAt;
  /// An IPv4 or IPv6 address.
  final pulumi.Input<String> ip;

  /// Creates a new [GetAddressMapIp].
  /// [createdAt] Required.
  /// [ip] An IPv4 or IPv6 address.
  const GetAddressMapIp({
    required this.createdAt,
    required this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'ip': ip,
    };
  }

  factory GetAddressMapIp.fromMap(Map<String, dynamic> map) {
    return GetAddressMapIp(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      ip: pulumi.Input.fromValue(map['ip'] as String),
    );
  }
}
