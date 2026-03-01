// ignore_for_file: unused_element, unnecessary_cast


class GcpIntegrationsFireStore {
  /// the data polling interval in seconds
  final int? metricsPollingInterval;

  /// Creates a new [GcpIntegrationsFireStore].
  /// [metricsPollingInterval] the data polling interval in seconds
  GcpIntegrationsFireStore({
    this.metricsPollingInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricsPollingInterval': ?metricsPollingInterval,
    };
  }

  factory GcpIntegrationsFireStore.fromMap(Map<String, dynamic> map) {
    return GcpIntegrationsFireStore(
      metricsPollingInterval: map['metricsPollingInterval'] == null ? null : map['metricsPollingInterval'] as int,
    );
  }
}

