// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// RoutingConfig configures the behaviour of fleet logging feature.
class FleetObservabilityRoutingConfigResponseGkehubV1alpha {
  /// mode configures the logs routing mode.
  final pulumi.Input<String> mode;

  /// Creates a new [FleetObservabilityRoutingConfigResponseGkehubV1alpha].
  /// [mode] mode configures the logs routing mode.
  FleetObservabilityRoutingConfigResponseGkehubV1alpha({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory FleetObservabilityRoutingConfigResponseGkehubV1alpha.fromMap(Map<String, dynamic> map) {
    return FleetObservabilityRoutingConfigResponseGkehubV1alpha(
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}

