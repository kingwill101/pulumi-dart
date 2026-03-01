// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesHostdevCapsNetIp {
  /// Sets the specific IP address assigned to the host device within the network configuration.
  final String? address;
  /// Defines the address family (IPv4 or IPv6) for the IP configuration of the host device.
  final String? family;
  /// Specifies the prefix length for the IP address of the host device, determining the subnet.
  final double? prefix;

  /// Creates a new [DomainDevicesHostdevCapsNetIp].
  /// [address] Sets the specific IP address assigned to the host device within the network configuration.
  /// [family] Defines the address family (IPv4 or IPv6) for the IP configuration of the host device.
  /// [prefix] Specifies the prefix length for the IP address of the host device, determining the subnet.
  DomainDevicesHostdevCapsNetIp({
    this.address,
    this.family,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'family': ?family,
      'prefix': ?prefix,
    };
  }

  factory DomainDevicesHostdevCapsNetIp.fromMap(Map<String, dynamic> map) {
    return DomainDevicesHostdevCapsNetIp(
      address: map['address'] == null ? null : map['address'] as String,
      family: map['family'] == null ? null : map['family'] as String,
      prefix: map['prefix'] == null ? null : map['prefix'] as double,
    );
  }
}

