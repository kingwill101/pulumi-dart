// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BigQueryModelTrainingResponse {
  /// [Output-only, Beta] Index of current ML training iteration. Updated during create model query job to show job progress.
  final pulumi.Input<int> currentIteration;

  /// [Output-only, Beta] Expected number of iterations for the create model query job specified as num_iterations in the input query. The actual total number of iterations may be less than this number due to early stop.
  final pulumi.Input<String> expectedTotalIterations;

  /// Creates a new [BigQueryModelTrainingResponse].
  /// [currentIteration] [Output-only, Beta] Index of current ML training iteration. Updated during create model query job to show job progress.
  /// [expectedTotalIterations] [Output-only, Beta] Expected number of iterations for the create model query job specified as num_iterations in the input query. The actual total number of iterations may be less than this number due to early stop.
  BigQueryModelTrainingResponse({
    required this.currentIteration,
    required this.expectedTotalIterations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentIteration': currentIteration,
      'expectedTotalIterations': expectedTotalIterations,
    };
  }

  factory BigQueryModelTrainingResponse.fromMap(Map<String, dynamic> map) {
    return BigQueryModelTrainingResponse(
      currentIteration: pulumi.Input.fromValue(map['currentIteration'] as int),
      expectedTotalIterations: pulumi.Input.fromValue(
        map['expectedTotalIterations'] as String,
      ),
    );
  }
}
