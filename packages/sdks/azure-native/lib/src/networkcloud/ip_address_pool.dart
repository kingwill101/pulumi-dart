// ignore_for_file: unused_element, unnecessary_cast


class IpAddressPool {
  /// The list of IP address ranges. Each range can be a either a subnet in CIDR format or an explicit start-end range of IP addresses. For a BGP service load balancer configuration, only CIDR format is supported and excludes /32 (IPv4) and /128 (IPv6) prefixes.
  final List<String> addresses;
  /// The indicator to determine if automatic allocation from the pool should occur.
  final String? autoAssign;
  /// The name used to identify this IP address pool for association with a BGP advertisement.
  final String name;
  /// The indicator to prevent the use of IP addresses ending with .0 and .255 for this pool. Enabling this option will only use IP addresses between .1 and .254 inclusive.
  final String? onlyUseHostIps;

  /// Creates a new [IpAddressPool].
  /// [addresses] The list of IP address ranges. Each range can be a either a subnet in CIDR format or an explicit start-end range of IP addresses. For a BGP service load balancer configuration, only CIDR format is supported and excludes /32 (IPv4) and /128 (IPv6) prefixes.
  /// [autoAssign] The indicator to determine if automatic allocation from the pool should occur.
  /// [name] The name used to identify this IP address pool for association with a BGP advertisement.
  /// [onlyUseHostIps] The indicator to prevent the use of IP addresses ending with .0 and .255 for this pool. Enabling this option will only use IP addresses between .1 and .254 inclusive.
  IpAddressPool({
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

  factory IpAddressPool.fromMap(Map<String, dynamic> map) {
    return IpAddressPool(
      addresses: (map['addresses'] as List).cast<String>(),
      autoAssign: map['autoAssign'] == null ? null : map['autoAssign'] as String,
      name: map['name'] as String,
      onlyUseHostIps: map['onlyUseHostIps'] == null ? null : map['onlyUseHostIps'] as String,
    );
  }
}

