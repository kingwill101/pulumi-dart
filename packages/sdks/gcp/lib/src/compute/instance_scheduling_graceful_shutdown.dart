// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_scheduling_graceful_shutdown_max_duration.dart';

class InstanceSchedulingGracefulShutdown {
  /// Opts-in for graceful shutdown.
  final pulumi.Input<bool> enabled;
  /// The time allotted for the instance to gracefully shut down.
  /// If the graceful shutdown isn't complete after this time, then the instance
  /// transitions to the STOPPING state. Structure is documented below:
  final pulumi.Input<InstanceSchedulingGracefulShutdownMaxDuration>? maxDuration;

  /// Creates a new [InstanceSchedulingGracefulShutdown].
  /// [enabled] Opts-in for graceful shutdown.
  /// [maxDuration] The time allotted for the instance to gracefully shut down.
  InstanceSchedulingGracefulShutdown({
    required this.enabled,
    this.maxDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'maxDuration': ?pulumi.Input.mapOptionalInputValue<InstanceSchedulingGracefulShutdownMaxDuration, Map<String, dynamic>>(maxDuration, (value) => value.toMap()),
    };
  }

  factory InstanceSchedulingGracefulShutdown.fromMap(Map<String, dynamic> map) {
    return InstanceSchedulingGracefulShutdown(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      maxDuration: (() { final guardedValue = map['maxDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceSchedulingGracefulShutdownMaxDuration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

