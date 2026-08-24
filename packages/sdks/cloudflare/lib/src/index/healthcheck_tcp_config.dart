// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HealthcheckTcpConfig {
  /// The TCP connection method to use for the health check.
  /// Available values: "connectionEstablished".
  final pulumi.Input<String?>? method;
  /// Port number to connect to for the health check. Defaults to 80.
  final pulumi.Input<int?>? port;

  /// Creates a new [HealthcheckTcpConfig].
  /// [method] The TCP connection method to use for the health check.
  /// [port] Port number to connect to for the health check. Defaults to 80.
  const HealthcheckTcpConfig({
    this.method,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'method': ?method,
      'port': ?port,
    };
  }

  factory HealthcheckTcpConfig.fromMap(Map<String, dynamic> map) {
    return HealthcheckTcpConfig(
      method: (() { final guardedValue = map['method']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
