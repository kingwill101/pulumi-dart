// ignore_for_file: unused_element, unnecessary_cast

import 'region_instance_template_scheduling_graceful_shutdown_max_duration.dart';

class RegionInstanceTemplateSchedulingGracefulShutdown {
  /// Opts-in for graceful shutdown.
  final bool enabled;
  /// The time allotted for the instance to gracefully shut down.
  /// If the graceful shutdown isn't complete after this time, then the instance
  /// transitions to the STOPPING state. Structure is documented below:
  final RegionInstanceTemplateSchedulingGracefulShutdownMaxDuration? maxDuration;

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
      'maxDuration': ?maxDuration == null ? null : maxDuration!.toMap(),
    };
  }

  factory RegionInstanceTemplateSchedulingGracefulShutdown.fromMap(Map<String, dynamic> map) {
    return RegionInstanceTemplateSchedulingGracefulShutdown(
      enabled: map['enabled'] as bool,
      maxDuration: map['maxDuration'] == null ? null : RegionInstanceTemplateSchedulingGracefulShutdownMaxDuration.fromMap((map['maxDuration'] as Map).cast<String, dynamic>()),
    );
  }
}

