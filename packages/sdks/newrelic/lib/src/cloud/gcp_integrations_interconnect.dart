// ignore_for_file: unused_element, unnecessary_cast


class GcpIntegrationsInterconnect {
  /// the data polling interval in seconds
  final int? metricsPollingInterval;

  /// Creates a new [GcpIntegrationsInterconnect].
  /// [metricsPollingInterval] the data polling interval in seconds
  GcpIntegrationsInterconnect({
    this.metricsPollingInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricsPollingInterval': ?metricsPollingInterval,
    };
  }

  factory GcpIntegrationsInterconnect.fromMap(Map<String, dynamic> map) {
    return GcpIntegrationsInterconnect(
      metricsPollingInterval: map['metricsPollingInterval'] == null ? null : map['metricsPollingInterval'] as int,
    );
  }
}

