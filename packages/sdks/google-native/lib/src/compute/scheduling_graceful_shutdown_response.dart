// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'duration_response.dart';

/// Configuration for gracefully shutting down the instance.
class SchedulingGracefulShutdownResponse {
  /// Opts-in for graceful shutdown.
  final pulumi.Input<bool> enabled;
  /// Specifies time needed to gracefully shut down the instance. After that time, the instance goes to STOPPING even if graceful shutdown is not completed.
  final pulumi.Input<DurationResponse> maxDuration;

  /// Creates a new [SchedulingGracefulShutdownResponse].
  /// [enabled] Opts-in for graceful shutdown.
  /// [maxDuration] Specifies time needed to gracefully shut down the instance. After that time, the instance goes to STOPPING even if graceful shutdown is not completed.
  SchedulingGracefulShutdownResponse({
    required this.enabled,
    required this.maxDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'maxDuration': pulumi.Input.mapInputValue<DurationResponse, Map<String, dynamic>>(maxDuration, (value) => value.toMap()),
    };
  }

  factory SchedulingGracefulShutdownResponse.fromMap(Map<String, dynamic> map) {
    return SchedulingGracefulShutdownResponse(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      maxDuration: pulumi.Input.fromValue(DurationResponse.fromMap((map['maxDuration']! as Map).cast<String, dynamic>())),
    );
  }
}

