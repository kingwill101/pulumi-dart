// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rollout_plan_wave_orchestration_options_delay.dart';

class RolloutPlanWaveOrchestrationOptions {
  /// Delays, if any, to be added between batches of projects.
  /// Structure is documented below.
  final pulumi.Input<List<RolloutPlanWaveOrchestrationOptionsDelay>>? delays;
  /// Maximum number of locations to be orchestrated in parallel.
  final pulumi.Input<int>? maxConcurrentLocations;
  /// Maximum number of resources to be orchestrated per location in parallel.
  final pulumi.Input<int>? maxConcurrentResourcesPerLocation;

  /// Creates a new [RolloutPlanWaveOrchestrationOptions].
  /// [delays] Delays, if any, to be added between batches of projects.
  /// [maxConcurrentLocations] Maximum number of locations to be orchestrated in parallel.
  /// [maxConcurrentResourcesPerLocation] Maximum number of resources to be orchestrated per location in parallel.
  const RolloutPlanWaveOrchestrationOptions({
    this.delays,
    this.maxConcurrentLocations,
    this.maxConcurrentResourcesPerLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delays': ?pulumi.Input.mapOptionalInputValue<List<RolloutPlanWaveOrchestrationOptionsDelay>, List<Map<String, dynamic>>>(delays, (value) => pulumi.Input.encodeList<RolloutPlanWaveOrchestrationOptionsDelay, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxConcurrentLocations': ?maxConcurrentLocations,
      'maxConcurrentResourcesPerLocation': ?maxConcurrentResourcesPerLocation,
    };
  }

  factory RolloutPlanWaveOrchestrationOptions.fromMap(Map<String, dynamic> map) {
    return RolloutPlanWaveOrchestrationOptions(
      delays: (() { final guardedValue = map['delays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RolloutPlanWaveOrchestrationOptionsDelay>(guardedValue, (value) => RolloutPlanWaveOrchestrationOptionsDelay.fromMap((value as Map).cast<String, dynamic>()))); })(),
      maxConcurrentLocations: (() { final guardedValue = map['maxConcurrentLocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxConcurrentResourcesPerLocation: (() { final guardedValue = map['maxConcurrentResourcesPerLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
