// ignore_for_file: unused_element, unnecessary_cast


/// IPv6 Circuit Connection properties for global reach.
class Ipv6CircuitConnectionConfig {
  /// /125 IP address space to carve out customer addresses for global reach.
  final String? addressPrefix;

  /// Creates a new [Ipv6CircuitConnectionConfig].
  /// [addressPrefix] /125 IP address space to carve out customer addresses for global reach.
  Ipv6CircuitConnectionConfig({
    this.addressPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': ?addressPrefix,
    };
  }

  factory Ipv6CircuitConnectionConfig.fromMap(Map<String, dynamic> map) {
    return Ipv6CircuitConnectionConfig(
      addressPrefix: map['addressPrefix'] == null ? null : map['addressPrefix'] as String,
    );
  }
}

