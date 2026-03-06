// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cycle_step_response_vmmigration_v1alpha1.dart';
import 'migration_warning_response_vmmigration_v1alpha1.dart';
import 'status_response_vmmigration_v1alpha1.dart';

/// ReplicationCycle contains information about the current replication cycle status.
class ReplicationCycleResponseVmmigrationV1alpha1 {
  /// The cycle's ordinal number.
  final pulumi.Input<int> cycleNumber;
  /// The time the replication cycle has ended.
  final pulumi.Input<String> endTime;
  /// Provides details on the state of the cycle in case of an error.
  final pulumi.Input<StatusResponseVmmigrationV1alpha1> error;
  /// The identifier of the ReplicationCycle.
  final pulumi.Input<String> name;
  /// The current progress in percentage of this cycle.
  final pulumi.Input<int> progress;
  /// The current progress in percentage of this cycle. Was replaced by 'steps' field, which breaks down the cycle progression more accurately.
  final pulumi.Input<int> progressPercent;
  /// The time the replication cycle has started.
  final pulumi.Input<String> startTime;
  /// State of the ReplicationCycle.
  final pulumi.Input<String> state;
  /// The cycle's steps list representing its progress.
  final pulumi.Input<List<CycleStepResponseVmmigrationV1alpha1>> steps;
  /// The accumulated duration the replication cycle was paused.
  final pulumi.Input<String> totalPauseDuration;
  /// Warnings that occurred during the cycle.
  final pulumi.Input<List<MigrationWarningResponseVmmigrationV1alpha1>> warnings;

  /// Creates a new [ReplicationCycleResponseVmmigrationV1alpha1].
  /// [cycleNumber] The cycle's ordinal number.
  /// [endTime] The time the replication cycle has ended.
  /// [error] Provides details on the state of the cycle in case of an error.
  /// [name] The identifier of the ReplicationCycle.
  /// [progress] The current progress in percentage of this cycle.
  /// [progressPercent] The current progress in percentage of this cycle. Was replaced by 'steps' field, which breaks down the cycle progression more accurately.
  /// [startTime] The time the replication cycle has started.
  /// [state] State of the ReplicationCycle.
  /// [steps] The cycle's steps list representing its progress.
  /// [totalPauseDuration] The accumulated duration the replication cycle was paused.
  /// [warnings] Warnings that occurred during the cycle.
  const ReplicationCycleResponseVmmigrationV1alpha1({
    required this.cycleNumber,
    required this.endTime,
    required this.error,
    required this.name,
    required this.progress,
    required this.progressPercent,
    required this.startTime,
    required this.state,
    required this.steps,
    required this.totalPauseDuration,
    required this.warnings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cycleNumber': cycleNumber,
      'endTime': endTime,
      'error': pulumi.Input.mapInputValue<StatusResponseVmmigrationV1alpha1, Map<String, dynamic>>(error, (value) => value.toMap()),
      'name': name,
      'progress': progress,
      'progressPercent': progressPercent,
      'startTime': startTime,
      'state': state,
      'steps': pulumi.Input.mapInputValue<List<CycleStepResponseVmmigrationV1alpha1>, List<Map<String, dynamic>>>(steps, (value) => pulumi.Input.encodeList<CycleStepResponseVmmigrationV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'totalPauseDuration': totalPauseDuration,
      'warnings': pulumi.Input.mapInputValue<List<MigrationWarningResponseVmmigrationV1alpha1>, List<Map<String, dynamic>>>(warnings, (value) => pulumi.Input.encodeList<MigrationWarningResponseVmmigrationV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ReplicationCycleResponseVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return ReplicationCycleResponseVmmigrationV1alpha1(
      cycleNumber: pulumi.Input.fromValue(map['cycleNumber'] as int),
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      error: pulumi.Input.fromValue(StatusResponseVmmigrationV1alpha1.fromMap((map['error']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      progress: pulumi.Input.fromValue(map['progress'] as int),
      progressPercent: pulumi.Input.fromValue(map['progressPercent'] as int),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      steps: pulumi.Input.fromValue(pulumi.Input.decodeList<CycleStepResponseVmmigrationV1alpha1>(map['steps']!, (value) => CycleStepResponseVmmigrationV1alpha1.fromMap((value as Map).cast<String, dynamic>()))),
      totalPauseDuration: pulumi.Input.fromValue(map['totalPauseDuration'] as String),
      warnings: pulumi.Input.fromValue(pulumi.Input.decodeList<MigrationWarningResponseVmmigrationV1alpha1>(map['warnings']!, (value) => MigrationWarningResponseVmmigrationV1alpha1.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

