// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GcpIntegrationsRedis {
  /// the data polling interval in seconds
  final pulumi.Input<int>? metricsPollingInterval;

  /// Creates a new [GcpIntegrationsRedis].
  /// [metricsPollingInterval] the data polling interval in seconds
  GcpIntegrationsRedis({this.metricsPollingInterval});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'metricsPollingInterval': ?metricsPollingInterval};
  }

  factory GcpIntegrationsRedis.fromMap(Map<String, dynamic> map) {
    return GcpIntegrationsRedis(
      metricsPollingInterval: (() {
        final guardedValue = map['metricsPollingInterval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
