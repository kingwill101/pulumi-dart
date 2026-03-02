// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_cycle_response.dart';

/// CutoverStep holds information about the cutover step progress.
class CutoverStepResponse {
  /// The time the step has ended.
  final pulumi.Input<String> endTime;
  /// Final sync step.
  final pulumi.Input<ReplicationCycleResponse> finalSync;
  /// Instantiating migrated VM step.
  final pulumi.Input<Map<String, dynamic>> instantiatingMigratedVm;
  /// Preparing VM disks step.
  final pulumi.Input<Map<String, dynamic>> preparingVmDisks;
  /// A replication cycle prior cutover step.
  final pulumi.Input<ReplicationCycleResponse> previousReplicationCycle;
  /// Shutting down VM step.
  final pulumi.Input<Map<String, dynamic>> shuttingDownSourceVm;
  /// The time the step has started.
  final pulumi.Input<String> startTime;

  /// Creates a new [CutoverStepResponse].
  /// [endTime] The time the step has ended.
  /// [finalSync] Final sync step.
  /// [instantiatingMigratedVm] Instantiating migrated VM step.
  /// [preparingVmDisks] Preparing VM disks step.
  /// [previousReplicationCycle] A replication cycle prior cutover step.
  /// [shuttingDownSourceVm] Shutting down VM step.
  /// [startTime] The time the step has started.
  CutoverStepResponse({
    required this.endTime,
    required this.finalSync,
    required this.instantiatingMigratedVm,
    required this.preparingVmDisks,
    required this.previousReplicationCycle,
    required this.shuttingDownSourceVm,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'finalSync': pulumi.Input.mapInputValue<ReplicationCycleResponse, Map<String, dynamic>>(finalSync, (value) => value.toMap()),
      'instantiatingMigratedVm': instantiatingMigratedVm,
      'preparingVmDisks': preparingVmDisks,
      'previousReplicationCycle': pulumi.Input.mapInputValue<ReplicationCycleResponse, Map<String, dynamic>>(previousReplicationCycle, (value) => value.toMap()),
      'shuttingDownSourceVm': shuttingDownSourceVm,
      'startTime': startTime,
    };
  }

  factory CutoverStepResponse.fromMap(Map<String, dynamic> map) {
    return CutoverStepResponse(
      endTime: (map['endTime'] as String).input(),
      finalSync: (ReplicationCycleResponse.fromMap((map['finalSync'] as Map).cast<String, dynamic>())).input(),
      instantiatingMigratedVm: ((map['instantiatingMigratedVm'] as Map).cast<String, dynamic>()).input(),
      preparingVmDisks: ((map['preparingVmDisks'] as Map).cast<String, dynamic>()).input(),
      previousReplicationCycle: (ReplicationCycleResponse.fromMap((map['previousReplicationCycle'] as Map).cast<String, dynamic>())).input(),
      shuttingDownSourceVm: ((map['shuttingDownSourceVm'] as Map).cast<String, dynamic>()).input(),
      startTime: (map['startTime'] as String).input(),
    );
  }
}

