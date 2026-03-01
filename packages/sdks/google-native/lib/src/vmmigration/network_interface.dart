// ignore_for_file: unused_element, unnecessary_cast


/// NetworkInterface represents a NIC of a VM.
class NetworkInterface {
  /// The external IP to define in the NIC.
  final String? externalIp;
  /// The internal IP to define in the NIC. The formats accepted are: `ephemeral` \ ipv4 address \ a named address resource full path.
  final String? internalIp;
  /// The network to connect the NIC to.
  final String? network;
  /// The subnetwork to connect the NIC to.
  final String? subnetwork;

  /// Creates a new [NetworkInterface].
  /// [externalIp] The external IP to define in the NIC.
  /// [internalIp] The internal IP to define in the NIC. The formats accepted are: `ephemeral` \ ipv4 address \ a named address resource full path.
  /// [network] The network to connect the NIC to.
  /// [subnetwork] The subnetwork to connect the NIC to.
  NetworkInterface({
    this.externalIp,
    this.internalIp,
    this.network,
    this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalIp': ?externalIp,
      'internalIp': ?internalIp,
      'network': ?network,
      'subnetwork': ?subnetwork,
    };
  }

  factory NetworkInterface.fromMap(Map<String, dynamic> map) {
    return NetworkInterface(
      externalIp: map['externalIp'] == null ? null : map['externalIp'] as String,
      internalIp: map['internalIp'] == null ? null : map['internalIp'] as String,
      network: map['network'] == null ? null : map['network'] as String,
      subnetwork: map['subnetwork'] == null ? null : map['subnetwork'] as String,
    );
  }
}

