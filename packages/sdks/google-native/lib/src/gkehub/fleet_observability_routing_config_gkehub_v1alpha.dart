// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_observability_routing_config_mode_gkehub_v1alpha.dart';

/// RoutingConfig configures the behaviour of fleet logging feature.
class FleetObservabilityRoutingConfigGkehubV1alpha {
  /// mode configures the logs routing mode.
  final pulumi.Input<FleetObservabilityRoutingConfigModeGkehubV1alpha>? mode;

  /// Creates a new [FleetObservabilityRoutingConfigGkehubV1alpha].
  /// [mode] mode configures the logs routing mode.
  FleetObservabilityRoutingConfigGkehubV1alpha({
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?pulumi.Input.mapOptionalInputValue<FleetObservabilityRoutingConfigModeGkehubV1alpha, String>(mode, (value) => value.value),
    };
  }

  factory FleetObservabilityRoutingConfigGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return FleetObservabilityRoutingConfigGkehubV1alpha(
      mode: map['mode'] == null ? null : (FleetObservabilityRoutingConfigModeGkehubV1alpha.fromValue(map['mode']! as String)).input(),
    );
  }
}

