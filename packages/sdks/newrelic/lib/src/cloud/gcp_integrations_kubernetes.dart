// ignore_for_file: unused_element, unnecessary_cast


class GcpIntegrationsKubernetes {
  /// the data polling interval in seconds
  final int? metricsPollingInterval;

  /// Creates a new [GcpIntegrationsKubernetes].
  /// [metricsPollingInterval] the data polling interval in seconds
  GcpIntegrationsKubernetes({
    this.metricsPollingInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricsPollingInterval': ?metricsPollingInterval,
    };
  }

  factory GcpIntegrationsKubernetes.fromMap(Map<String, dynamic> map) {
    return GcpIntegrationsKubernetes(
      metricsPollingInterval: map['metricsPollingInterval'] == null ? null : map['metricsPollingInterval'] as int,
    );
  }
}

