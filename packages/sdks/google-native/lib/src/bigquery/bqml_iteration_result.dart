// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BqmlIterationResult {
  /// [Output-only, Beta] Time taken to run the training iteration in milliseconds.
  final pulumi.Input<String>? durationMs;
  /// [Output-only, Beta] Eval loss computed on the eval data at the end of the iteration. The eval loss is used for early stopping to avoid overfitting. No eval loss if eval_split_method option is specified as no_split or auto_split with input data size less than 500 rows.
  final pulumi.Input<double>? evalLoss;
  /// [Output-only, Beta] Index of the ML training iteration, starting from zero for each training run.
  final pulumi.Input<int>? index;
  /// [Output-only, Beta] Learning rate used for this iteration, it varies for different training iterations if learn_rate_strategy option is not constant.
  final pulumi.Input<double>? learnRate;
  /// [Output-only, Beta] Training loss computed on the training data at the end of the iteration. The training loss function is defined by model type.
  final pulumi.Input<double>? trainingLoss;

  /// Creates a new [BqmlIterationResult].
  /// [durationMs] [Output-only, Beta] Time taken to run the training iteration in milliseconds.
  /// [evalLoss] [Output-only, Beta] Eval loss computed on the eval data at the end of the iteration. The eval loss is used for early stopping to avoid overfitting. No eval loss if eval_split_method option is specified as no_split or auto_split with input data size less than 500 rows.
  /// [index] [Output-only, Beta] Index of the ML training iteration, starting from zero for each training run.
  /// [learnRate] [Output-only, Beta] Learning rate used for this iteration, it varies for different training iterations if learn_rate_strategy option is not constant.
  /// [trainingLoss] [Output-only, Beta] Training loss computed on the training data at the end of the iteration. The training loss function is defined by model type.
  const BqmlIterationResult({
    this.durationMs,
    this.evalLoss,
    this.index,
    this.learnRate,
    this.trainingLoss,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'durationMs': ?durationMs,
      'evalLoss': ?evalLoss,
      'index': ?index,
      'learnRate': ?learnRate,
      'trainingLoss': ?trainingLoss,
    };
  }

  factory BqmlIterationResult.fromMap(Map<String, dynamic> map) {
    return BqmlIterationResult(
      durationMs: (() { final guardedValue = map['durationMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      evalLoss: (() { final guardedValue = map['evalLoss']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      index: (() { final guardedValue = map['index']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      learnRate: (() { final guardedValue = map['learnRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      trainingLoss: (() { final guardedValue = map['trainingLoss']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

