// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BqmlIterationResultResponse {
  /// [Output-only, Beta] Time taken to run the training iteration in milliseconds.
  final pulumi.Input<String> durationMs;

  /// [Output-only, Beta] Eval loss computed on the eval data at the end of the iteration. The eval loss is used for early stopping to avoid overfitting. No eval loss if eval_split_method option is specified as no_split or auto_split with input data size less than 500 rows.
  final pulumi.Input<double> evalLoss;

  /// [Output-only, Beta] Index of the ML training iteration, starting from zero for each training run.
  final pulumi.Input<int> index;

  /// [Output-only, Beta] Learning rate used for this iteration, it varies for different training iterations if learn_rate_strategy option is not constant.
  final pulumi.Input<double> learnRate;

  /// [Output-only, Beta] Training loss computed on the training data at the end of the iteration. The training loss function is defined by model type.
  final pulumi.Input<double> trainingLoss;

  /// Creates a new [BqmlIterationResultResponse].
  /// [durationMs] [Output-only, Beta] Time taken to run the training iteration in milliseconds.
  /// [evalLoss] [Output-only, Beta] Eval loss computed on the eval data at the end of the iteration. The eval loss is used for early stopping to avoid overfitting. No eval loss if eval_split_method option is specified as no_split or auto_split with input data size less than 500 rows.
  /// [index] [Output-only, Beta] Index of the ML training iteration, starting from zero for each training run.
  /// [learnRate] [Output-only, Beta] Learning rate used for this iteration, it varies for different training iterations if learn_rate_strategy option is not constant.
  /// [trainingLoss] [Output-only, Beta] Training loss computed on the training data at the end of the iteration. The training loss function is defined by model type.
  BqmlIterationResultResponse({
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

  factory BqmlIterationResultResponse.fromMap(Map<String, dynamic> map) {
    return BqmlIterationResultResponse(
      durationMs: pulumi.Input.fromValue(map['durationMs'] as String),
      evalLoss: pulumi.Input.fromValue(map['evalLoss'] as double),
      index: pulumi.Input.fromValue(map['index'] as int),
      learnRate: pulumi.Input.fromValue(map['learnRate'] as double),
      trainingLoss: pulumi.Input.fromValue(map['trainingLoss'] as double),
    );
  }
}
