// ignore_for_file: unused_element, unnecessary_cast

import 'advanced_datapath_observability_config_relay_mode_container_v1beta1.dart';

/// AdvancedDatapathObservabilityConfig specifies configuration of observability features of advanced datapath.
class AdvancedDatapathObservabilityConfigContainerV1beta1 {
  /// Expose flow metrics on nodes
  final bool? enableMetrics;
  /// Method used to make Relay available
  final AdvancedDatapathObservabilityConfigRelayModeContainerV1beta1? relayMode;

  /// Creates a new [AdvancedDatapathObservabilityConfigContainerV1beta1].
  /// [enableMetrics] Expose flow metrics on nodes
  /// [relayMode] Method used to make Relay available
  AdvancedDatapathObservabilityConfigContainerV1beta1({
    this.enableMetrics,
    this.relayMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableMetrics': ?enableMetrics,
      'relayMode': ?relayMode == null ? null : relayMode!.value,
    };
  }

  factory AdvancedDatapathObservabilityConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return AdvancedDatapathObservabilityConfigContainerV1beta1(
      enableMetrics: map['enableMetrics'] == null ? null : map['enableMetrics'] as bool,
      relayMode: map['relayMode'] == null ? null : AdvancedDatapathObservabilityConfigRelayModeContainerV1beta1.fromValue(map['relayMode'] as String),
    );
  }
}

