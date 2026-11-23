// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiOnlineEvaluatorConfigRandomSampling {
  /// The percentage of traces to sample for evaluation. Must be an
  /// integer between 1 and 100.
  final pulumi.Input<int> percentage;

  /// Creates a new [AiOnlineEvaluatorConfigRandomSampling].
  /// [percentage] The percentage of traces to sample for evaluation. Must be an
  const AiOnlineEvaluatorConfigRandomSampling({
    required this.percentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percentage': percentage,
    };
  }

  factory AiOnlineEvaluatorConfigRandomSampling.fromMap(Map<String, dynamic> map) {
    return AiOnlineEvaluatorConfigRandomSampling(
      percentage: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['percentage'])),
    );
  }
}
