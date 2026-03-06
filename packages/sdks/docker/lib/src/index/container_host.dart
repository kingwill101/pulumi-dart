// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContainerHost {
  /// Hostname to add
  final pulumi.Input<String> host;
  /// IP address this hostname should resolve to.
  final pulumi.Input<String> ip;

  /// Creates a new [ContainerHost].
  /// [host] Hostname to add
  /// [ip] IP address this hostname should resolve to.
  const ContainerHost({
    required this.host,
    required this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': host,
      'ip': ip,
    };
  }

  factory ContainerHost.fromMap(Map<String, dynamic> map) {
    return ContainerHost(
      host: pulumi.Input.fromValue(map['host'] as String),
      ip: pulumi.Input.fromValue(map['ip'] as String),
    );
  }
}

