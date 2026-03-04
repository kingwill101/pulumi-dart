// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GcpIntegrationsFireBaseHosting {
  /// the data polling interval in seconds
  final pulumi.Input<int>? metricsPollingInterval;

  /// Creates a new [GcpIntegrationsFireBaseHosting].
  /// [metricsPollingInterval] the data polling interval in seconds
  GcpIntegrationsFireBaseHosting({this.metricsPollingInterval});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'metricsPollingInterval': ?metricsPollingInterval};
  }

  factory GcpIntegrationsFireBaseHosting.fromMap(Map<String, dynamic> map) {
    return GcpIntegrationsFireBaseHosting(
      metricsPollingInterval: (() {
        final guardedValue = map['metricsPollingInterval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
