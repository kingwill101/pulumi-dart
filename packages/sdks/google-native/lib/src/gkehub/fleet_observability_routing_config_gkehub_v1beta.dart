// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fleet_observability_routing_config_mode_gkehub_v1beta.dart';

/// RoutingConfig configures the behaviour of fleet logging feature.
class FleetObservabilityRoutingConfigGkehubV1beta {
  /// mode configures the logs routing mode.
  final pulumi.Input<FleetObservabilityRoutingConfigModeGkehubV1beta>? mode;

  /// Creates a new [FleetObservabilityRoutingConfigGkehubV1beta].
  /// [mode] mode configures the logs routing mode.
  FleetObservabilityRoutingConfigGkehubV1beta({
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?pulumi.Input.mapOptionalInputValue<FleetObservabilityRoutingConfigModeGkehubV1beta, String>(mode, (value) => value.value),
    };
  }

  factory FleetObservabilityRoutingConfigGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return FleetObservabilityRoutingConfigGkehubV1beta(
      mode: map['mode'] == null ? null : (FleetObservabilityRoutingConfigModeGkehubV1beta.fromValue(map['mode']! as String)).input(),
    );
  }
}

