// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsToolMatchingSettings {
  /// Defines the behavior when an extra tool call is encountered. An extra
  /// tool call is a tool call that is present in the execution but does
  /// not match any tool call in the golden expectation.
  /// Possible values are: `FAIL`, `ALLOW`.
  final pulumi.Input<String?>? extraToolCallBehavior;

  /// Creates a new [AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsToolMatchingSettings].
  /// [extraToolCallBehavior] Defines the behavior when an extra tool call is encountered. An extra
  const AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsToolMatchingSettings({
    this.extraToolCallBehavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extraToolCallBehavior': ?extraToolCallBehavior,
    };
  }

  factory AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsToolMatchingSettings.fromMap(Map<String, dynamic> map) {
    return AppEvaluationMetricsThresholdsGoldenEvaluationMetricsThresholdsToolMatchingSettings(
      extraToolCallBehavior: (() { final guardedValue = map['extraToolCallBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
