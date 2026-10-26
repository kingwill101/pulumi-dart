// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiOnlineEvaluatorCloudObservabilitySessionScopeFilterUserTurns {
  /// The comparison operator to apply. Possible values are:
  /// LESS, LESS_OR_EQUAL, EQUAL, NOT_EQUAL, GREATER_OR_EQUAL,
  /// GREATER.
  final pulumi.Input<String> comparisonOperator;
  /// The value to compare against.
  final pulumi.Input<double> value;

  /// Creates a new [AiOnlineEvaluatorCloudObservabilitySessionScopeFilterUserTurns].
  /// [comparisonOperator] The comparison operator to apply. Possible values are:
  /// [value] The value to compare against.
  const AiOnlineEvaluatorCloudObservabilitySessionScopeFilterUserTurns({
    required this.comparisonOperator,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparisonOperator': comparisonOperator,
      'value': value,
    };
  }

  factory AiOnlineEvaluatorCloudObservabilitySessionScopeFilterUserTurns.fromMap(Map<String, dynamic> map) {
    return AiOnlineEvaluatorCloudObservabilitySessionScopeFilterUserTurns(
      comparisonOperator: pulumi.Input.fromValue(map['comparisonOperator'] as String),
      value: pulumi.Input.fromValue((map['value'] as num).toDouble()),
    );
  }
}
