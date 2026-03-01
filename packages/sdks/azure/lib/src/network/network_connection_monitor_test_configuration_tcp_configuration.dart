// ignore_for_file: unused_element, unnecessary_cast


class NetworkConnectionMonitorTestConfigurationTcpConfiguration {
  /// The destination port behavior for the TCP connection. Possible values are `None` and `ListenIfAvailable`.
  final String? destinationPortBehavior;
  /// The port for the TCP connection.
  final int port;
  /// Should path evaluation with trace route be enabled? Defaults to `true`.
  final bool? traceRouteEnabled;

  /// Creates a new [NetworkConnectionMonitorTestConfigurationTcpConfiguration].
  /// [destinationPortBehavior] The destination port behavior for the TCP connection. Possible values are `None` and `ListenIfAvailable`.
  /// [port] The port for the TCP connection.
  /// [traceRouteEnabled] Should path evaluation with trace route be enabled? Defaults to `true`.
  NetworkConnectionMonitorTestConfigurationTcpConfiguration({
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
      destinationPortBehavior: map['destinationPortBehavior'] == null ? null : map['destinationPortBehavior'] as String,
      port: map['port'] as int,
      traceRouteEnabled: map['traceRouteEnabled'] == null ? null : map['traceRouteEnabled'] as bool,
    );
  }
}

