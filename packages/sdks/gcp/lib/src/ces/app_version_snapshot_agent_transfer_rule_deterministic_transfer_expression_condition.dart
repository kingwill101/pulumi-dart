// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppVersionSnapshotAgentTransferRuleDeterministicTransferExpressionCondition {
  /// (Output)
  /// The string representation of cloud.api.Expression condition.
  final pulumi.Input<String?>? expression;

  /// Creates a new [AppVersionSnapshotAgentTransferRuleDeterministicTransferExpressionCondition].
  /// [expression] (Output)
  const AppVersionSnapshotAgentTransferRuleDeterministicTransferExpressionCondition({
    this.expression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expression': ?expression,
    };
  }

  factory AppVersionSnapshotAgentTransferRuleDeterministicTransferExpressionCondition.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotAgentTransferRuleDeterministicTransferExpressionCondition(
      expression: (() { final guardedValue = map['expression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
