// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_from_machine_image_scheduling_graceful_shutdown_max_duration.dart';

class InstanceFromMachineImageSchedulingGracefulShutdown {
  /// Opts-in for graceful shutdown.
  final pulumi.Input<bool> enabled;
  /// The time allotted for the instance to gracefully shut down.
  /// If the graceful shutdown isn't complete after this time, then the instance
  /// transitions to the STOPPING state.
  final pulumi.Input<InstanceFromMachineImageSchedulingGracefulShutdownMaxDuration>? maxDuration;

  /// Creates a new [InstanceFromMachineImageSchedulingGracefulShutdown].
  /// [enabled] Opts-in for graceful shutdown.
  /// [maxDuration] The time allotted for the instance to gracefully shut down.
  InstanceFromMachineImageSchedulingGracefulShutdown({
    required this.enabled,
    this.maxDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'maxDuration': ?pulumi.Input.mapOptionalInputValue<InstanceFromMachineImageSchedulingGracefulShutdownMaxDuration, Map<String, dynamic>>(maxDuration, (value) => value.toMap()),
    };
  }

  factory InstanceFromMachineImageSchedulingGracefulShutdown.fromMap(Map<String, dynamic> map) {
    return InstanceFromMachineImageSchedulingGracefulShutdown(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      maxDuration: (() { final guardedValue = map['maxDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceFromMachineImageSchedulingGracefulShutdownMaxDuration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

