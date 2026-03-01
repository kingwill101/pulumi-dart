// ignore_for_file: unused_element, unnecessary_cast


class GcpIntegrationsRedis {
  /// the data polling interval in seconds
  final int? metricsPollingInterval;

  /// Creates a new [GcpIntegrationsRedis].
  /// [metricsPollingInterval] the data polling interval in seconds
  GcpIntegrationsRedis({
    this.metricsPollingInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricsPollingInterval': ?metricsPollingInterval,
    };
  }

  factory GcpIntegrationsRedis.fromMap(Map<String, dynamic> map) {
    return GcpIntegrationsRedis(
      metricsPollingInterval: map['metricsPollingInterval'] == null ? null : map['metricsPollingInterval'] as int,
    );
  }
}

