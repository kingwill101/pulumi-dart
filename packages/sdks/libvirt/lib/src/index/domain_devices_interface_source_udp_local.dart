// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesInterfaceSourceUdpLocal {
  /// Specifies the local address for UDP communications on the network interface.
  final String? address;
  /// Sets the local port number for UDP traffic on the network interface.
  final double? port;

  /// Creates a new [DomainDevicesInterfaceSourceUdpLocal].
  /// [address] Specifies the local address for UDP communications on the network interface.
  /// [port] Sets the local port number for UDP traffic on the network interface.
  DomainDevicesInterfaceSourceUdpLocal({
    this.address,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'port': ?port,
    };
  }

  factory DomainDevicesInterfaceSourceUdpLocal.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceSourceUdpLocal(
      address: map['address'] == null ? null : map['address'] as String,
      port: map['port'] == null ? null : map['port'] as double,
    );
  }
}

