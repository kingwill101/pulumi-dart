// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GcpIntegrationsBigTable {
  /// the data polling interval in seconds
  final pulumi.Input<int>? metricsPollingInterval;

  /// Creates a new [GcpIntegrationsBigTable].
  /// [metricsPollingInterval] the data polling interval in seconds
  const GcpIntegrationsBigTable({
    this.metricsPollingInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricsPollingInterval': ?metricsPollingInterval,
    };
  }

  factory GcpIntegrationsBigTable.fromMap(Map<String, dynamic> map) {
    return GcpIntegrationsBigTable(
      metricsPollingInterval: (() { final guardedValue = map['metricsPollingInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

