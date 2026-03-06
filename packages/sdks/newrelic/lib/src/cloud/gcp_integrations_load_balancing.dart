// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GcpIntegrationsLoadBalancing {
  /// the data polling interval in seconds
  final pulumi.Input<int>? metricsPollingInterval;

  /// Creates a new [GcpIntegrationsLoadBalancing].
  /// [metricsPollingInterval] the data polling interval in seconds
  const GcpIntegrationsLoadBalancing({
    this.metricsPollingInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricsPollingInterval': ?metricsPollingInterval,
    };
  }

  factory GcpIntegrationsLoadBalancing.fromMap(Map<String, dynamic> map) {
    return GcpIntegrationsLoadBalancing(
      metricsPollingInterval: (() { final guardedValue = map['metricsPollingInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

