// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// RoutingConfig configures the behaviour of fleet logging feature.
class FleetObservabilityRoutingConfigResponseGkehubV1beta {
  /// mode configures the logs routing mode.
  final pulumi.Input<String> mode;

  /// Creates a new [FleetObservabilityRoutingConfigResponseGkehubV1beta].
  /// [mode] mode configures the logs routing mode.
  FleetObservabilityRoutingConfigResponseGkehubV1beta({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory FleetObservabilityRoutingConfigResponseGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return FleetObservabilityRoutingConfigResponseGkehubV1beta(
      mode: (map['mode'] as String).input(),
    );
  }
}

