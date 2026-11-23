// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiOnlineEvaluatorCloudObservabilitySessionScopeInactivityTrigger {
  /// The amount of time that must pass with no new traces before a
  /// session is considered ready for evaluation. Must be a positive
  /// duration no greater than 7 days (604800 seconds), e.g. "3600s".
  final pulumi.Input<String> threshold;

  /// Creates a new [AiOnlineEvaluatorCloudObservabilitySessionScopeInactivityTrigger].
  /// [threshold] The amount of time that must pass with no new traces before a
  const AiOnlineEvaluatorCloudObservabilitySessionScopeInactivityTrigger({
    required this.threshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'threshold': threshold,
    };
  }

  factory AiOnlineEvaluatorCloudObservabilitySessionScopeInactivityTrigger.fromMap(Map<String, dynamic> map) {
    return AiOnlineEvaluatorCloudObservabilitySessionScopeInactivityTrigger(
      threshold: pulumi.Input.fromValue(map['threshold'] as String),
    );
  }
}
