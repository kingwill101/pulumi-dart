// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ManagedPrometheusConfig defines the configuration for Google Cloud Managed Service for Prometheus.
class ManagedPrometheusConfigContainerV1beta1 {
  /// Enable Managed Collection.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ManagedPrometheusConfigContainerV1beta1].
  /// [enabled] Enable Managed Collection.
  ManagedPrometheusConfigContainerV1beta1({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ManagedPrometheusConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return ManagedPrometheusConfigContainerV1beta1(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
    );
  }
}

