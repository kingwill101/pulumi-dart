// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GcpIntegrationsRouter {
  /// the data polling interval in seconds
  final pulumi.Input<int>? metricsPollingInterval;

  /// Creates a new [GcpIntegrationsRouter].
  /// [metricsPollingInterval] the data polling interval in seconds
  GcpIntegrationsRouter({this.metricsPollingInterval});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'metricsPollingInterval': ?metricsPollingInterval};
  }

  factory GcpIntegrationsRouter.fromMap(Map<String, dynamic> map) {
    return GcpIntegrationsRouter(
      metricsPollingInterval: (() {
        final guardedValue = map['metricsPollingInterval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
