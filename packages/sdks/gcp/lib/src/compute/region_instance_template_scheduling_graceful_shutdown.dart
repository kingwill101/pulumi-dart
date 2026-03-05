// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_instance_template_scheduling_graceful_shutdown_max_duration.dart';

class RegionInstanceTemplateSchedulingGracefulShutdown {
  /// Opts-in for graceful shutdown.
  final pulumi.Input<bool> enabled;
  /// The time allotted for the instance to gracefully shut down.
  /// If the graceful shutdown isn't complete after this time, then the instance
  /// transitions to the STOPPING state. Structure is documented below:
  final pulumi.Input<RegionInstanceTemplateSchedulingGracefulShutdownMaxDuration>? maxDuration;

  /// Creates a new [RegionInstanceTemplateSchedulingGracefulShutdown].
  /// [enabled] Opts-in for graceful shutdown.
  /// [maxDuration] The time allotted for the instance to gracefully shut down.
  RegionInstanceTemplateSchedulingGracefulShutdown({
    required this.enabled,
    this.maxDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'maxDuration': ?pulumi.Input.mapOptionalInputValue<RegionInstanceTemplateSchedulingGracefulShutdownMaxDuration, Map<String, dynamic>>(maxDuration, (value) => value.toMap()),
    };
  }

  factory RegionInstanceTemplateSchedulingGracefulShutdown.fromMap(Map<String, dynamic> map) {
    return RegionInstanceTemplateSchedulingGracefulShutdown(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      maxDuration: (() { final guardedValue = map['maxDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegionInstanceTemplateSchedulingGracefulShutdownMaxDuration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

