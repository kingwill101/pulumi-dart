// ignore_for_file: unused_element, unnecessary_cast


class NetworkConnectionMonitorTestConfigurationIcmpConfiguration {
  /// Should path evaluation with trace route be enabled? Defaults to `true`.
  final bool? traceRouteEnabled;

  /// Creates a new [NetworkConnectionMonitorTestConfigurationIcmpConfiguration].
  /// [traceRouteEnabled] Should path evaluation with trace route be enabled? Defaults to `true`.
  NetworkConnectionMonitorTestConfigurationIcmpConfiguration({
    this.traceRouteEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'traceRouteEnabled': ?traceRouteEnabled,
    };
  }

  factory NetworkConnectionMonitorTestConfigurationIcmpConfiguration.fromMap(Map<String, dynamic> map) {
    return NetworkConnectionMonitorTestConfigurationIcmpConfiguration(
      traceRouteEnabled: map['traceRouteEnabled'] == null ? null : map['traceRouteEnabled'] as bool,
    );
  }
}

