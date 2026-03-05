// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bqml_iteration_result.dart';
import 'bqml_training_run_training_options.dart';

class BqmlTrainingRun {
  /// [Output-only, Beta] List of each iteration results.
  final pulumi.Input<List<BqmlIterationResult>>? iterationResults;
  /// [Output-only, Beta] Training run start time in milliseconds since the epoch.
  final pulumi.Input<String>? startTime;
  /// [Output-only, Beta] Different state applicable for a training run. IN PROGRESS: Training run is in progress. FAILED: Training run ended due to a non-retryable failure. SUCCEEDED: Training run successfully completed. CANCELLED: Training run cancelled by the user.
  final pulumi.Input<String>? state;
  /// [Output-only, Beta] Training options used by this training run. These options are mutable for subsequent training runs. Default values are explicitly stored for options not specified in the input query of the first training run. For subsequent training runs, any option not explicitly specified in the input query will be copied from the previous training run.
  final pulumi.Input<BqmlTrainingRunTrainingOptions>? trainingOptions;

  /// Creates a new [BqmlTrainingRun].
  /// [iterationResults] [Output-only, Beta] List of each iteration results.
  /// [startTime] [Output-only, Beta] Training run start time in milliseconds since the epoch.
  /// [state] [Output-only, Beta] Different state applicable for a training run. IN PROGRESS: Training run is in progress. FAILED: Training run ended due to a non-retryable failure. SUCCEEDED: Training run successfully completed. CANCELLED: Training run cancelled by the user.
  /// [trainingOptions] [Output-only, Beta] Training options used by this training run. These options are mutable for subsequent training runs. Default values are explicitly stored for options not specified in the input query of the first training run. For subsequent training runs, any option not explicitly specified in the input query will be copied from the previous training run.
  BqmlTrainingRun({
    this.iterationResults,
    this.startTime,
    this.state,
    this.trainingOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iterationResults': ?pulumi.Input.mapOptionalInputValue<List<BqmlIterationResult>, List<Map<String, dynamic>>>(iterationResults, (value) => pulumi.Input.encodeList<BqmlIterationResult, Map<String, dynamic>>(value, (value) => value.toMap())),
      'startTime': ?startTime,
      'state': ?state,
      'trainingOptions': ?pulumi.Input.mapOptionalInputValue<BqmlTrainingRunTrainingOptions, Map<String, dynamic>>(trainingOptions, (value) => value.toMap()),
    };
  }

  factory BqmlTrainingRun.fromMap(Map<String, dynamic> map) {
    return BqmlTrainingRun(
      iterationResults: (() { final guardedValue = map['iterationResults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BqmlIterationResult>(guardedValue, (value) => BqmlIterationResult.fromMap((value as Map).cast<String, dynamic>()))); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trainingOptions: (() { final guardedValue = map['trainingOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BqmlTrainingRunTrainingOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

