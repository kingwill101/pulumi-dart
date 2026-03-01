// ignore_for_file: unused_element, unnecessary_cast


class KubernetesClusterDefaultNodePoolNodeNetworkProfileAllowedHostPort {
  /// Specifies the end of the port range.
  final int? portEnd;
  /// Specifies the start of the port range.
  final int? portStart;
  /// Specifies the protocol of the port range. Possible values are `TCP` and `UDP`.
  final String? protocol;

  /// Creates a new [KubernetesClusterDefaultNodePoolNodeNetworkProfileAllowedHostPort].
  /// [portEnd] Specifies the end of the port range.
  /// [portStart] Specifies the start of the port range.
  /// [protocol] Specifies the protocol of the port range. Possible values are `TCP` and `UDP`.
  KubernetesClusterDefaultNodePoolNodeNetworkProfileAllowedHostPort({
    this.portEnd,
    this.portStart,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'portEnd': ?portEnd,
      'portStart': ?portStart,
      'protocol': ?protocol,
    };
  }

  factory KubernetesClusterDefaultNodePoolNodeNetworkProfileAllowedHostPort.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterDefaultNodePoolNodeNetworkProfileAllowedHostPort(
      portEnd: map['portEnd'] == null ? null : map['portEnd'] as int,
      portStart: map['portStart'] == null ? null : map['portStart'] as int,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
    );
  }
}

