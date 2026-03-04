// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AdvancedDatapathObservabilityConfig specifies configuration of observability features of advanced datapath.
class AdvancedDatapathObservabilityConfigResponse {
  /// Expose flow metrics on nodes
  final pulumi.Input<bool> enableMetrics;

  /// Method used to make Relay available
  final pulumi.Input<String> relayMode;

  /// Creates a new [AdvancedDatapathObservabilityConfigResponse].
  /// [enableMetrics] Expose flow metrics on nodes
  /// [relayMode] Method used to make Relay available
  AdvancedDatapathObservabilityConfigResponse({
    required this.enableMetrics,
    required this.relayMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableMetrics': enableMetrics,
      'relayMode': relayMode,
    };
  }

  factory AdvancedDatapathObservabilityConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return AdvancedDatapathObservabilityConfigResponse(
      enableMetrics: pulumi.Input.fromValue(map['enableMetrics'] as bool),
      relayMode: pulumi.Input.fromValue(map['relayMode'] as String),
    );
  }
}
