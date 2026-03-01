// ignore_for_file: unused_element, unnecessary_cast


class GcpIntegrationsSql {
  /// the data polling interval in seconds
  final int? metricsPollingInterval;

  /// Creates a new [GcpIntegrationsSql].
  /// [metricsPollingInterval] the data polling interval in seconds
  GcpIntegrationsSql({
    this.metricsPollingInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricsPollingInterval': ?metricsPollingInterval,
    };
  }

  factory GcpIntegrationsSql.fromMap(Map<String, dynamic> map) {
    return GcpIntegrationsSql(
      metricsPollingInterval: map['metricsPollingInterval'] == null ? null : map['metricsPollingInterval'] as int,
    );
  }
}

