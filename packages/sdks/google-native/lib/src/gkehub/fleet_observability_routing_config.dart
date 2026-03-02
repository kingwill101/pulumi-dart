// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_observability_routing_config_mode.dart';

/// RoutingConfig configures the behaviour of fleet logging feature.
class FleetObservabilityRoutingConfig {
  /// mode configures the logs routing mode.
  final pulumi.Input<FleetObservabilityRoutingConfigMode>? mode;

  /// Creates a new [FleetObservabilityRoutingConfig].
  /// [mode] mode configures the logs routing mode.
  FleetObservabilityRoutingConfig({
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?pulumi.Input.mapOptionalInputValue<FleetObservabilityRoutingConfigMode, String>(mode, (value) => value.value),
    };
  }

  factory FleetObservabilityRoutingConfig.fromMap(Map<String, dynamic> map) {
    return FleetObservabilityRoutingConfig(
      mode: map['mode'] == null ? null : (FleetObservabilityRoutingConfigMode.fromValue(map['mode'] as String)).input(),
    );
  }
}

