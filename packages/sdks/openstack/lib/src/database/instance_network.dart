// ignore_for_file: unused_element, unnecessary_cast


class InstanceNetwork {
  /// Specifies a fixed IPv4 address to be used on this
  /// network. Changing this creates a new instance.
  final String? fixedIpV4;
  /// Specifies a fixed IPv6 address to be used on this
  /// network. Changing this creates a new instance.
  final String? fixedIpV6;
  /// The port UUID of a
  /// network to attach to the instance. Changing this creates a new instance.
  final String? port;
  /// The network UUID to
  /// attach to the instance. Changing this creates a new instance.
  final String? uuid;

  /// Creates a new [InstanceNetwork].
  /// [fixedIpV4] Specifies a fixed IPv4 address to be used on this
  /// [fixedIpV6] Specifies a fixed IPv6 address to be used on this
  /// [port] The port UUID of a
  /// [uuid] The network UUID to
  InstanceNetwork({
    this.fixedIpV4,
    this.fixedIpV6,
    this.port,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fixedIpV4': ?fixedIpV4,
      'fixedIpV6': ?fixedIpV6,
      'port': ?port,
      'uuid': ?uuid,
    };
  }

  factory InstanceNetwork.fromMap(Map<String, dynamic> map) {
    return InstanceNetwork(
      fixedIpV4: map['fixedIpV4'] == null ? null : map['fixedIpV4'] as String,
      fixedIpV6: map['fixedIpV6'] == null ? null : map['fixedIpV6'] as String,
      port: map['port'] == null ? null : map['port'] as String,
      uuid: map['uuid'] == null ? null : map['uuid'] as String,
    );
  }
}

