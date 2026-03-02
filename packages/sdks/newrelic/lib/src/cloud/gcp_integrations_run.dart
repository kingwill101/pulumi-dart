// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GcpIntegrationsRun {
  /// the data polling interval in seconds
  final pulumi.Input<int>? metricsPollingInterval;

  /// Creates a new [GcpIntegrationsRun].
  /// [metricsPollingInterval] the data polling interval in seconds
  GcpIntegrationsRun({
    this.metricsPollingInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricsPollingInterval': ?metricsPollingInterval,
    };
  }

  factory GcpIntegrationsRun.fromMap(Map<String, dynamic> map) {
    return GcpIntegrationsRun(
      metricsPollingInterval: map['metricsPollingInterval'] == null ? null : (map['metricsPollingInterval'] as int).input(),
    );
  }
}

