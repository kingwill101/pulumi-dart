// ignore_for_file: unused_element, unnecessary_cast


class ContainerPort {
  /// Port exposed out of the container. If not given a free random port `>= 32768` will be used.
  final int? external;
  /// Port within the container.
  final int internal;
  /// IP address/mask that can access this port. Defaults to `0.0.0.0`.
  final String? ip;
  /// Protocol that can be used over this port. Defaults to `tcp`.
  final String? protocol;

  /// Creates a new [ContainerPort].
  /// [external] Port exposed out of the container. If not given a free random port `>= 32768` will be used.
  /// [internal] Port within the container.
  /// [ip] IP address/mask that can access this port. Defaults to `0.0.0.0`.
  /// [protocol] Protocol that can be used over this port. Defaults to `tcp`.
  ContainerPort({
    this.external,
    required this.internal,
    this.ip,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'external': ?external,
      'internal': internal,
      'ip': ?ip,
      'protocol': ?protocol,
    };
  }

  factory ContainerPort.fromMap(Map<String, dynamic> map) {
    return ContainerPort(
      external: map['external'] == null ? null : map['external'] as int,
      internal: map['internal'] as int,
      ip: map['ip'] == null ? null : map['ip'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
    );
  }
}

