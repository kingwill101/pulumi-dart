// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bqml_iteration_result_response.dart';
import 'bqml_training_run_training_options_response.dart';

class BqmlTrainingRunResponse {
  /// [Output-only, Beta] List of each iteration results.
  final pulumi.Input<List<BqmlIterationResultResponse>> iterationResults;
  /// [Output-only, Beta] Training run start time in milliseconds since the epoch.
  final pulumi.Input<String> startTime;
  /// [Output-only, Beta] Different state applicable for a training run. IN PROGRESS: Training run is in progress. FAILED: Training run ended due to a non-retryable failure. SUCCEEDED: Training run successfully completed. CANCELLED: Training run cancelled by the user.
  final pulumi.Input<String> state;
  /// [Output-only, Beta] Training options used by this training run. These options are mutable for subsequent training runs. Default values are explicitly stored for options not specified in the input query of the first training run. For subsequent training runs, any option not explicitly specified in the input query will be copied from the previous training run.
  final pulumi.Input<BqmlTrainingRunTrainingOptionsResponse> trainingOptions;

  /// Creates a new [BqmlTrainingRunResponse].
  /// [iterationResults] [Output-only, Beta] List of each iteration results.
  /// [startTime] [Output-only, Beta] Training run start time in milliseconds since the epoch.
  /// [state] [Output-only, Beta] Different state applicable for a training run. IN PROGRESS: Training run is in progress. FAILED: Training run ended due to a non-retryable failure. SUCCEEDED: Training run successfully completed. CANCELLED: Training run cancelled by the user.
  /// [trainingOptions] [Output-only, Beta] Training options used by this training run. These options are mutable for subsequent training runs. Default values are explicitly stored for options not specified in the input query of the first training run. For subsequent training runs, any option not explicitly specified in the input query will be copied from the previous training run.
  BqmlTrainingRunResponse({
    required this.iterationResults,
    required this.startTime,
    required this.state,
    required this.trainingOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iterationResults': pulumi.Input.mapInputValue<List<BqmlIterationResultResponse>, List<Map<String, dynamic>>>(iterationResults, (value) => pulumi.Input.encodeList<BqmlIterationResultResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'startTime': startTime,
      'state': state,
      'trainingOptions': pulumi.Input.mapInputValue<BqmlTrainingRunTrainingOptionsResponse, Map<String, dynamic>>(trainingOptions, (value) => value.toMap()),
    };
  }

  factory BqmlTrainingRunResponse.fromMap(Map<String, dynamic> map) {
    return BqmlTrainingRunResponse(
      iterationResults: (pulumi.Input.decodeList<BqmlIterationResultResponse>(map['iterationResults'], (value) => BqmlIterationResultResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      startTime: (map['startTime'] as String).input(),
      state: (map['state'] as String).input(),
      trainingOptions: (BqmlTrainingRunTrainingOptionsResponse.fromMap((map['trainingOptions'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

