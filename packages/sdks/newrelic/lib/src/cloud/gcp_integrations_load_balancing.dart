// ignore_for_file: unused_element, unnecessary_cast


class GcpIntegrationsLoadBalancing {
  /// the data polling interval in seconds
  final int? metricsPollingInterval;

  /// Creates a new [GcpIntegrationsLoadBalancing].
  /// [metricsPollingInterval] the data polling interval in seconds
  GcpIntegrationsLoadBalancing({
    this.metricsPollingInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricsPollingInterval': ?metricsPollingInterval,
    };
  }

  factory GcpIntegrationsLoadBalancing.fromMap(Map<String, dynamic> map) {
    return GcpIntegrationsLoadBalancing(
      metricsPollingInterval: map['metricsPollingInterval'] == null ? null : map['metricsPollingInterval'] as int,
    );
  }
}

