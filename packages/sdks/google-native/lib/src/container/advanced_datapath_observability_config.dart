// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'advanced_datapath_observability_config_relay_mode.dart';

/// AdvancedDatapathObservabilityConfig specifies configuration of observability features of advanced datapath.
class AdvancedDatapathObservabilityConfig {
  /// Expose flow metrics on nodes
  final pulumi.Input<bool>? enableMetrics;
  /// Method used to make Relay available
  final pulumi.Input<AdvancedDatapathObservabilityConfigRelayMode>? relayMode;

  /// Creates a new [AdvancedDatapathObservabilityConfig].
  /// [enableMetrics] Expose flow metrics on nodes
  /// [relayMode] Method used to make Relay available
  AdvancedDatapathObservabilityConfig({
    this.enableMetrics,
    this.relayMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableMetrics': ?enableMetrics,
      'relayMode': ?pulumi.Input.mapOptionalInputValue<AdvancedDatapathObservabilityConfigRelayMode, String>(relayMode, (value) => value.wireValue),
    };
  }

  factory AdvancedDatapathObservabilityConfig.fromMap(Map<String, dynamic> map) {
    return AdvancedDatapathObservabilityConfig(
      enableMetrics: (() { final guardedValue = map['enableMetrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      relayMode: (() { final guardedValue = map['relayMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AdvancedDatapathObservabilityConfigRelayMode.fromValue(guardedValue as String)); })(),
    );
  }
}

