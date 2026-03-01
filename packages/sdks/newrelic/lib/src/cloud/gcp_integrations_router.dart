// ignore_for_file: unused_element, unnecessary_cast


class GcpIntegrationsRouter {
  /// the data polling interval in seconds
  final int? metricsPollingInterval;

  /// Creates a new [GcpIntegrationsRouter].
  /// [metricsPollingInterval] the data polling interval in seconds
  GcpIntegrationsRouter({
    this.metricsPollingInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricsPollingInterval': ?metricsPollingInterval,
    };
  }

  factory GcpIntegrationsRouter.fromMap(Map<String, dynamic> map) {
    return GcpIntegrationsRouter(
      metricsPollingInterval: map['metricsPollingInterval'] == null ? null : map['metricsPollingInterval'] as int,
    );
  }
}

