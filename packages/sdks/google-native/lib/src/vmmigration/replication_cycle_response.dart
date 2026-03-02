// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cycle_step_response.dart';
import 'migration_warning_response.dart';
import 'status_response.dart';

/// ReplicationCycle contains information about the current replication cycle status.
class ReplicationCycleResponse {
  /// The cycle's ordinal number.
  final pulumi.Input<int> cycleNumber;
  /// The time the replication cycle has ended.
  final pulumi.Input<String> endTime;
  /// Provides details on the state of the cycle in case of an error.
  final pulumi.Input<StatusResponse> error;
  /// The identifier of the ReplicationCycle.
  final pulumi.Input<String> name;
  /// The current progress in percentage of this cycle. Was replaced by 'steps' field, which breaks down the cycle progression more accurately.
  final pulumi.Input<int> progressPercent;
  /// The time the replication cycle has started.
  final pulumi.Input<String> startTime;
  /// State of the ReplicationCycle.
  final pulumi.Input<String> state;
  /// The cycle's steps list representing its progress.
  final pulumi.Input<List<CycleStepResponse>> steps;
  /// The accumulated duration the replication cycle was paused.
  final pulumi.Input<String> totalPauseDuration;
  /// Warnings that occurred during the cycle.
  final pulumi.Input<List<MigrationWarningResponse>> warnings;

  /// Creates a new [ReplicationCycleResponse].
  /// [cycleNumber] The cycle's ordinal number.
  /// [endTime] The time the replication cycle has ended.
  /// [error] Provides details on the state of the cycle in case of an error.
  /// [name] The identifier of the ReplicationCycle.
  /// [progressPercent] The current progress in percentage of this cycle. Was replaced by 'steps' field, which breaks down the cycle progression more accurately.
  /// [startTime] The time the replication cycle has started.
  /// [state] State of the ReplicationCycle.
  /// [steps] The cycle's steps list representing its progress.
  /// [totalPauseDuration] The accumulated duration the replication cycle was paused.
  /// [warnings] Warnings that occurred during the cycle.
  ReplicationCycleResponse({
    required this.cycleNumber,
    required this.endTime,
    required this.error,
    required this.name,
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
      'error': pulumi.Input.mapInputValue<StatusResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
      'name': name,
      'progressPercent': progressPercent,
      'startTime': startTime,
      'state': state,
      'steps': pulumi.Input.mapInputValue<List<CycleStepResponse>, List<Map<String, dynamic>>>(steps, (value) => pulumi.Input.encodeList<CycleStepResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'totalPauseDuration': totalPauseDuration,
      'warnings': pulumi.Input.mapInputValue<List<MigrationWarningResponse>, List<Map<String, dynamic>>>(warnings, (value) => pulumi.Input.encodeList<MigrationWarningResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ReplicationCycleResponse.fromMap(Map<String, dynamic> map) {
    return ReplicationCycleResponse(
      cycleNumber: (map['cycleNumber'] as int).input(),
      endTime: (map['endTime'] as String).input(),
      error: (StatusResponse.fromMap((map['error'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      progressPercent: (map['progressPercent'] as int).input(),
      startTime: (map['startTime'] as String).input(),
      state: (map['state'] as String).input(),
      steps: (pulumi.Input.decodeList<CycleStepResponse>(map['steps'], (value) => CycleStepResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      totalPauseDuration: (map['totalPauseDuration'] as String).input(),
      warnings: (pulumi.Input.decodeList<MigrationWarningResponse>(map['warnings'], (value) => MigrationWarningResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

