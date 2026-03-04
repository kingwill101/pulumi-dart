// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GcpIntegrationsFireBaseDatabase {
  /// the data polling interval in seconds
  final pulumi.Input<int>? metricsPollingInterval;

  /// Creates a new [GcpIntegrationsFireBaseDatabase].
  /// [metricsPollingInterval] the data polling interval in seconds
  GcpIntegrationsFireBaseDatabase({this.metricsPollingInterval});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'metricsPollingInterval': ?metricsPollingInterval};
  }

  factory GcpIntegrationsFireBaseDatabase.fromMap(Map<String, dynamic> map) {
    return GcpIntegrationsFireBaseDatabase(
      metricsPollingInterval: (() {
        final guardedValue = map['metricsPollingInterval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
