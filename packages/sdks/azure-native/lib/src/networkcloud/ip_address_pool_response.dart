// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IpAddressPoolResponse {
  /// The list of IP address ranges. Each range can be a either a subnet in CIDR format or an explicit start-end range of IP addresses. For a BGP service load balancer configuration, only CIDR format is supported and excludes /32 (IPv4) and /128 (IPv6) prefixes.
  final pulumi.Input<List<String>> addresses;
  /// The indicator to determine if automatic allocation from the pool should occur.
  final pulumi.Input<String>? autoAssign;
  /// The name used to identify this IP address pool for association with a BGP advertisement.
  final pulumi.Input<String> name;
  /// The indicator to prevent the use of IP addresses ending with .0 and .255 for this pool. Enabling this option will only use IP addresses between .1 and .254 inclusive.
  final pulumi.Input<String>? onlyUseHostIps;

  /// Creates a new [IpAddressPoolResponse].
  /// [addresses] The list of IP address ranges. Each range can be a either a subnet in CIDR format or an explicit start-end range of IP addresses. For a BGP service load balancer configuration, only CIDR format is supported and excludes /32 (IPv4) and /128 (IPv6) prefixes.
  /// [autoAssign] The indicator to determine if automatic allocation from the pool should occur.
  /// [name] The name used to identify this IP address pool for association with a BGP advertisement.
  /// [onlyUseHostIps] The indicator to prevent the use of IP addresses ending with .0 and .255 for this pool. Enabling this option will only use IP addresses between .1 and .254 inclusive.
  IpAddressPoolResponse({
    required this.addresses,
    this.autoAssign,
    required this.name,
    this.onlyUseHostIps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': addresses,
      'autoAssign': ?autoAssign,
      'name': name,
      'onlyUseHostIps': ?onlyUseHostIps,
    };
  }

  factory IpAddressPoolResponse.fromMap(Map<String, dynamic> map) {
    return IpAddressPoolResponse(
      addresses: pulumi.Input.fromValue((map['addresses'] as List).cast<String>()),
      autoAssign: (() { final guardedValue = map['autoAssign']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      onlyUseHostIps: (() { final guardedValue = map['onlyUseHostIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

