// ignore_for_file: unused_element, unnecessary_cast


class GetPoolAutoScale {
  /// The interval to wait before evaluating if the pool needs to be scaled.
  final String evaluationInterval;
  /// The autoscale formula that needs to be used for scaling the Batch pool.
  final String formula;

  /// Creates a new [GetPoolAutoScale].
  /// [evaluationInterval] The interval to wait before evaluating if the pool needs to be scaled.
  /// [formula] The autoscale formula that needs to be used for scaling the Batch pool.
  GetPoolAutoScale({
    required this.evaluationInterval,
    required this.formula,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluationInterval': evaluationInterval,
      'formula': formula,
    };
  }

  factory GetPoolAutoScale.fromMap(Map<String, dynamic> map) {
    return GetPoolAutoScale(
      evaluationInterval: map['evaluationInterval'] as String,
      formula: map['formula'] as String,
    );
  }
}

