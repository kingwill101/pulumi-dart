// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'advanced_datapath_observability_config_relay_mode_container_v1beta1.dart';

/// AdvancedDatapathObservabilityConfig specifies configuration of observability features of advanced datapath.
class AdvancedDatapathObservabilityConfigContainerV1beta1 {
  /// Expose flow metrics on nodes
  final pulumi.Input<bool>? enableMetrics;
  /// Method used to make Relay available
  final pulumi.Input<AdvancedDatapathObservabilityConfigRelayModeContainerV1beta1>? relayMode;

  /// Creates a new [AdvancedDatapathObservabilityConfigContainerV1beta1].
  /// [enableMetrics] Expose flow metrics on nodes
  /// [relayMode] Method used to make Relay available
  const AdvancedDatapathObservabilityConfigContainerV1beta1({
    this.enableMetrics,
    this.relayMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableMetrics': ?enableMetrics,
      'relayMode': ?pulumi.Input.mapOptionalInputValue<AdvancedDatapathObservabilityConfigRelayModeContainerV1beta1, String>(relayMode, (value) => value.wireValue),
    };
  }

  factory AdvancedDatapathObservabilityConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return AdvancedDatapathObservabilityConfigContainerV1beta1(
      enableMetrics: (() { final guardedValue = map['enableMetrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      relayMode: (() { final guardedValue = map['relayMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AdvancedDatapathObservabilityConfigRelayModeContainerV1beta1.fromValue(guardedValue as String)); })(),
    );
  }
}
