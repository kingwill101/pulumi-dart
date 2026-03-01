// ignore_for_file: unused_element, unnecessary_cast


class GetInstanceV2Network {
  /// The IPv4 address assigned to this network port.
  final String fixedIpV4;
  /// The IPv6 address assigned to this network port.
  final String fixedIpV6;
  /// The MAC address assigned to this network interface.
  final String mac;
  /// The name of the network
  final String name;
  /// The port UUID for this network
  final String port;
  /// The UUID of the network
  final String uuid;

  /// Creates a new [GetInstanceV2Network].
  /// [fixedIpV4] The IPv4 address assigned to this network port.
  /// [fixedIpV6] The IPv6 address assigned to this network port.
  /// [mac] The MAC address assigned to this network interface.
  /// [name] The name of the network
  /// [port] The port UUID for this network
  /// [uuid] The UUID of the network
  GetInstanceV2Network({
    required this.fixedIpV4,
    required this.fixedIpV6,
    required this.mac,
    required this.name,
    required this.port,
    required this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixedIpV4': fixedIpV4,
      'fixedIpV6': fixedIpV6,
      'mac': mac,
      'name': name,
      'port': port,
      'uuid': uuid,
    };
  }

  factory GetInstanceV2Network.fromMap(Map<String, dynamic> map) {
    return GetInstanceV2Network(
      fixedIpV4: map['fixedIpV4'] as String,
      fixedIpV6: map['fixedIpV6'] as String,
      mac: map['mac'] as String,
      name: map['name'] as String,
      port: map['port'] as String,
      uuid: map['uuid'] as String,
    );
  }
}

