// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GcpIntegrationsSql {
  /// the data polling interval in seconds
  final pulumi.Input<int>? metricsPollingInterval;

  /// Creates a new [GcpIntegrationsSql].
  /// [metricsPollingInterval] the data polling interval in seconds
  GcpIntegrationsSql({this.metricsPollingInterval});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'metricsPollingInterval': ?metricsPollingInterval};
  }

  factory GcpIntegrationsSql.fromMap(Map<String, dynamic> map) {
    return GcpIntegrationsSql(
      metricsPollingInterval: (() {
        final guardedValue = map['metricsPollingInterval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
