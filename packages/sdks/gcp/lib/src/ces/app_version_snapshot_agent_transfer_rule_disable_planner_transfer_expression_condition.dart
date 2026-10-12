// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppVersionSnapshotAgentTransferRuleDisablePlannerTransferExpressionCondition {
  /// (Output)
  /// The string representation of cloud.api.Expression condition.
  final pulumi.Input<String?>? expression;

  /// Creates a new [AppVersionSnapshotAgentTransferRuleDisablePlannerTransferExpressionCondition].
  /// [expression] (Output)
  const AppVersionSnapshotAgentTransferRuleDisablePlannerTransferExpressionCondition({
    this.expression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expression': ?expression,
    };
  }

  factory AppVersionSnapshotAgentTransferRuleDisablePlannerTransferExpressionCondition.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotAgentTransferRuleDisablePlannerTransferExpressionCondition(
      expression: (() { final guardedValue = map['expression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
