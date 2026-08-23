// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iteration_result_response.dart';

class MlStatisticsResponse {
  /// Results for all completed iterations.
  final pulumi.Input<List<IterationResultResponse>> iterationResults;
  /// Maximum number of iterations specified as max_iterations in the 'CREATE MODEL' query. The actual number of iterations may be less than this number due to early stop.
  final pulumi.Input<String> maxIterations;

  /// Creates a new [MlStatisticsResponse].
  /// [iterationResults] Results for all completed iterations.
  /// [maxIterations] Maximum number of iterations specified as max_iterations in the 'CREATE MODEL' query. The actual number of iterations may be less than this number due to early stop.
  const MlStatisticsResponse({
    required this.iterationResults,
    required this.maxIterations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iterationResults': pulumi.Input.mapInputValue<List<IterationResultResponse>, List<Map<String, dynamic>>>(iterationResults, (value) => pulumi.Input.encodeList<IterationResultResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxIterations': maxIterations,
    };
  }

  factory MlStatisticsResponse.fromMap(Map<String, dynamic> map) {
    return MlStatisticsResponse(
      iterationResults: pulumi.Input.fromValue(pulumi.Input.decodeList<IterationResultResponse>(map['iterationResults']!, (value) => IterationResultResponse.fromMap((value as Map).cast<String, dynamic>()))),
      maxIterations: pulumi.Input.fromValue(map['maxIterations'] as String),
    );
  }
}
