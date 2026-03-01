// ignore_for_file: unused_element, unnecessary_cast


class IterationResultResponse {
  /// Time taken to run the iteration in milliseconds.
  final String durationMs;
  /// Loss computed on the eval data at the end of iteration.
  final double evalLoss;
  /// Index of the iteration, 0 based.
  final int index;
  /// Learn rate used for this iteration.
  final double learnRate;
  /// Loss computed on the training data at the end of iteration.
  final double trainingLoss;

  /// Creates a new [IterationResultResponse].
  /// [durationMs] Time taken to run the iteration in milliseconds.
  /// [evalLoss] Loss computed on the eval data at the end of iteration.
  /// [index] Index of the iteration, 0 based.
  /// [learnRate] Learn rate used for this iteration.
  /// [trainingLoss] Loss computed on the training data at the end of iteration.
  IterationResultResponse({
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
      durationMs: map['durationMs'] as String,
      evalLoss: map['evalLoss'] as double,
      index: map['index'] as int,
      learnRate: map['learnRate'] as double,
      trainingLoss: map['trainingLoss'] as double,
    );
  }
}

