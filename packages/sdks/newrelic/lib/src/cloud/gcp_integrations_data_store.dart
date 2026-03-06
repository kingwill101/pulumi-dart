// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GcpIntegrationsDataStore {
  /// the data polling interval in seconds
  final pulumi.Input<int>? metricsPollingInterval;

  /// Creates a new [GcpIntegrationsDataStore].
  /// [metricsPollingInterval] the data polling interval in seconds
  const GcpIntegrationsDataStore({
    this.metricsPollingInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricsPollingInterval': ?metricsPollingInterval,
    };
  }

  factory GcpIntegrationsDataStore.fromMap(Map<String, dynamic> map) {
    return GcpIntegrationsDataStore(
      metricsPollingInterval: (() { final guardedValue = map['metricsPollingInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

