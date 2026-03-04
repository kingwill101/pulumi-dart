// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ManagedPrometheusConfig defines the configuration for Google Cloud Managed Service for Prometheus.
class ManagedPrometheusConfig {
  /// Enable Managed Collection.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ManagedPrometheusConfig].
  /// [enabled] Enable Managed Collection.
  ManagedPrometheusConfig({this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled};
  }

  factory ManagedPrometheusConfig.fromMap(Map<String, dynamic> map) {
    return ManagedPrometheusConfig(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
