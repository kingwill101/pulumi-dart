// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContainerPort {
  /// Port exposed out of the container. If not given a free random port `&gt;= 32768` will be used.
  final pulumi.Input<int>? external;
  /// Port within the container.
  final pulumi.Input<int> internal;
  /// IP address/mask that can access this port. Defaults to `0.0.0.0`.
  final pulumi.Input<String>? ip;
  /// Protocol that can be used over this port. Defaults to `tcp`.
  final pulumi.Input<String>? protocol;

  /// Creates a new [ContainerPort].
  /// [external] Port exposed out of the container. If not given a free random port `&gt;= 32768` will be used.
  /// [internal] Port within the container.
  /// [ip] IP address/mask that can access this port. Defaults to `0.0.0.0`.
  /// [protocol] Protocol that can be used over this port. Defaults to `tcp`.
  const ContainerPort({
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
      external: (() { final guardedValue = map['external']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      internal: pulumi.Input.fromValue(map['internal'] as int),
      ip: (() { final guardedValue = map['ip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
