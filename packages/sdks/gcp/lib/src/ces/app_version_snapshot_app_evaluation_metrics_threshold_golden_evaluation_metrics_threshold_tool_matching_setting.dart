// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThresholdToolMatchingSetting {
  /// (Output)
  /// Defines the behavior when an extra tool call is encountered. An extra
  /// tool call is a tool call that is present in the execution but does
  /// not match any tool call in the golden expectation.
  /// Possible values:
  /// FAIL
  /// ALLOW
  final pulumi.Input<String?>? extraToolCallBehavior;

  /// Creates a new [AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThresholdToolMatchingSetting].
  /// [extraToolCallBehavior] (Output)
  const AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThresholdToolMatchingSetting({
    this.extraToolCallBehavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extraToolCallBehavior': ?extraToolCallBehavior,
    };
  }

  factory AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThresholdToolMatchingSetting.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotAppEvaluationMetricsThresholdGoldenEvaluationMetricsThresholdToolMatchingSetting(
      extraToolCallBehavior: (() { final guardedValue = map['extraToolCallBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
