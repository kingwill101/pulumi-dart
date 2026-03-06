// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_scheduling_graceful_shutdown_max_duration.dart';

class GetInstanceSchedulingGracefulShutdown {
  /// Opts-in for graceful shutdown.
  final pulumi.Input<bool> enabled;
  /// The time allotted for the instance to gracefully shut down.
  /// If the graceful shutdown isn't complete after this time, then the instance
  /// transitions to the STOPPING state.
  final pulumi.Input<List<GetInstanceSchedulingGracefulShutdownMaxDuration>> maxDurations;

  /// Creates a new [GetInstanceSchedulingGracefulShutdown].
  /// [enabled] Opts-in for graceful shutdown.
  /// [maxDurations] The time allotted for the instance to gracefully shut down.
  const GetInstanceSchedulingGracefulShutdown({
    required this.enabled,
    required this.maxDurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'maxDurations': pulumi.Input.mapInputValue<List<GetInstanceSchedulingGracefulShutdownMaxDuration>, List<Map<String, dynamic>>>(maxDurations, (value) => pulumi.Input.encodeList<GetInstanceSchedulingGracefulShutdownMaxDuration, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetInstanceSchedulingGracefulShutdown.fromMap(Map<String, dynamic> map) {
    return GetInstanceSchedulingGracefulShutdown(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      maxDurations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInstanceSchedulingGracefulShutdownMaxDuration>(map['maxDurations']!, (value) => GetInstanceSchedulingGracefulShutdownMaxDuration.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

