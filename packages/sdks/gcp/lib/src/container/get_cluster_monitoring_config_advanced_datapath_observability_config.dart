// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterMonitoringConfigAdvancedDatapathObservabilityConfig {
  /// Whether or not the advanced datapath metrics are enabled.
  final pulumi.Input<bool> enableMetrics;
  /// Whether or not Relay is enabled.
  final pulumi.Input<bool> enableRelay;

  /// Creates a new [GetClusterMonitoringConfigAdvancedDatapathObservabilityConfig].
  /// [enableMetrics] Whether or not the advanced datapath metrics are enabled.
  /// [enableRelay] Whether or not Relay is enabled.
  GetClusterMonitoringConfigAdvancedDatapathObservabilityConfig({
    required this.enableMetrics,
    required this.enableRelay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableMetrics': enableMetrics,
      'enableRelay': enableRelay,
    };
  }

  factory GetClusterMonitoringConfigAdvancedDatapathObservabilityConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterMonitoringConfigAdvancedDatapathObservabilityConfig(
      enableMetrics: pulumi.Input.fromValue(map['enableMetrics'] as bool),
      enableRelay: pulumi.Input.fromValue(map['enableRelay'] as bool),
    );
  }
}

