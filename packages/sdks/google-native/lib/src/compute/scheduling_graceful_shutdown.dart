// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'duration.dart';

/// Configuration for gracefully shutting down the instance.
class SchedulingGracefulShutdown {
  /// Opts-in for graceful shutdown.
  final pulumi.Input<bool>? enabled;
  /// Specifies time needed to gracefully shut down the instance. After that time, the instance goes to STOPPING even if graceful shutdown is not completed.
  final pulumi.Input<Duration>? maxDuration;

  /// Creates a new [SchedulingGracefulShutdown].
  /// [enabled] Opts-in for graceful shutdown.
  /// [maxDuration] Specifies time needed to gracefully shut down the instance. After that time, the instance goes to STOPPING even if graceful shutdown is not completed.
  const SchedulingGracefulShutdown({
    this.enabled,
    this.maxDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'maxDuration': ?pulumi.Input.mapOptionalInputValue<Duration, Map<String, dynamic>>(maxDuration, (value) => value.toMap()),
    };
  }

  factory SchedulingGracefulShutdown.fromMap(Map<String, dynamic> map) {
    return SchedulingGracefulShutdown(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxDuration: (() { final guardedValue = map['maxDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Duration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
