// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkConnectionMonitorTestConfigurationTcpConfiguration {
  /// The destination port behavior for the TCP connection. Possible values are `None` and `ListenIfAvailable`.
  final pulumi.Input<String>? destinationPortBehavior;
  /// The port for the TCP connection.
  final pulumi.Input<int> port;
  /// Should path evaluation with trace route be enabled? Defaults to `true`.
  final pulumi.Input<bool>? traceRouteEnabled;

  /// Creates a new [NetworkConnectionMonitorTestConfigurationTcpConfiguration].
  /// [destinationPortBehavior] The destination port behavior for the TCP connection. Possible values are `None` and `ListenIfAvailable`.
  /// [port] The port for the TCP connection.
  /// [traceRouteEnabled] Should path evaluation with trace route be enabled? Defaults to `true`.
  const NetworkConnectionMonitorTestConfigurationTcpConfiguration({
    this.destinationPortBehavior,
    required this.port,
    this.traceRouteEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationPortBehavior': ?destinationPortBehavior,
      'port': port,
      'traceRouteEnabled': ?traceRouteEnabled,
    };
  }

  factory NetworkConnectionMonitorTestConfigurationTcpConfiguration.fromMap(Map<String, dynamic> map) {
    return NetworkConnectionMonitorTestConfigurationTcpConfiguration(
      destinationPortBehavior: (() { final guardedValue = map['destinationPortBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: pulumi.Input.fromValue(map['port'] as int),
      traceRouteEnabled: (() { final guardedValue = map['traceRouteEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

