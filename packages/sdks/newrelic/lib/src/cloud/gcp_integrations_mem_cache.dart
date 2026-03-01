// ignore_for_file: unused_element, unnecessary_cast


class GcpIntegrationsMemCache {
  /// the data polling interval in seconds
  final int? metricsPollingInterval;

  /// Creates a new [GcpIntegrationsMemCache].
  /// [metricsPollingInterval] the data polling interval in seconds
  GcpIntegrationsMemCache({
    this.metricsPollingInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricsPollingInterval': ?metricsPollingInterval,
    };
  }

  factory GcpIntegrationsMemCache.fromMap(Map<String, dynamic> map) {
    return GcpIntegrationsMemCache(
      metricsPollingInterval: map['metricsPollingInterval'] == null ? null : map['metricsPollingInterval'] as int,
    );
  }
}

