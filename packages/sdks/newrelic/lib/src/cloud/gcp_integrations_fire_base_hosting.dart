// ignore_for_file: unused_element, unnecessary_cast


class GcpIntegrationsFireBaseHosting {
  /// the data polling interval in seconds
  final int? metricsPollingInterval;

  /// Creates a new [GcpIntegrationsFireBaseHosting].
  /// [metricsPollingInterval] the data polling interval in seconds
  GcpIntegrationsFireBaseHosting({
    this.metricsPollingInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricsPollingInterval': ?metricsPollingInterval,
    };
  }

  factory GcpIntegrationsFireBaseHosting.fromMap(Map<String, dynamic> map) {
    return GcpIntegrationsFireBaseHosting(
      metricsPollingInterval: map['metricsPollingInterval'] == null ? null : map['metricsPollingInterval'] as int,
    );
  }
}

