// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IterationResultResponse {
  /// Time taken to run the iteration in milliseconds.
  final pulumi.Input<String> durationMs;
  /// Loss computed on the eval data at the end of iteration.
  final pulumi.Input<double> evalLoss;
  /// Index of the iteration, 0 based.
  final pulumi.Input<int> index;
  /// Learn rate used for this iteration.
  final pulumi.Input<double> learnRate;
  /// Loss computed on the training data at the end of iteration.
  final pulumi.Input<double> trainingLoss;

  /// Creates a new [IterationResultResponse].
  /// [durationMs] Time taken to run the iteration in milliseconds.
  /// [evalLoss] Loss computed on the eval data at the end of iteration.
  /// [index] Index of the iteration, 0 based.
  /// [learnRate] Learn rate used for this iteration.
  /// [trainingLoss] Loss computed on the training data at the end of iteration.
  const IterationResultResponse({
    required this.durationMs,
    required this.evalLoss,
    required this.index,
    required this.learnRate,
    required this.trainingLoss,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'durationMs': durationMs,
      'evalLoss': evalLoss,
      'index': index,
      'learnRate': learnRate,
      'trainingLoss': trainingLoss,
    };
  }

  factory IterationResultResponse.fromMap(Map<String, dynamic> map) {
    return IterationResultResponse(
      durationMs: pulumi.Input.fromValue(map['durationMs'] as String),
      evalLoss: pulumi.Input.fromValue(map['evalLoss'] as double),
      index: pulumi.Input.fromValue(map['index'] as int),
      learnRate: pulumi.Input.fromValue(map['learnRate'] as double),
      trainingLoss: pulumi.Input.fromValue(map['trainingLoss'] as double),
    );
  }
}
