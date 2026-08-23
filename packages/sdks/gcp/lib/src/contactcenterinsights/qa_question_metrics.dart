// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class QaQuestionMetrics {
  /// (Output)
  /// Accuracy of the model. Measures the percentage of correct answers the
  /// model gave on the test set.
  final pulumi.Input<double>? accuracy;

  /// Creates a new [QaQuestionMetrics].
  /// [accuracy] (Output)
  const QaQuestionMetrics({
    this.accuracy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accuracy': ?accuracy,
    };
  }

  factory QaQuestionMetrics.fromMap(Map<String, dynamic> map) {
    return QaQuestionMetrics(
      accuracy: (() { final guardedValue = map['accuracy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
