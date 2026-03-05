// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_get_alerts_suppression_rule_args_doc}
/// Arguments for getAlertsSuppressionRule.
/// {@endtemplate}
/// {@macro pulumi_security_get_alerts_suppression_rule_args_doc}
class GetAlertsSuppressionRuleArgs {
  /// The unique name of the suppression alert rule
  final pulumi.Input<String> alertsSuppressionRuleName;

  /// Creates a new [GetAlertsSuppressionRuleArgs].
  /// [alertsSuppressionRuleName] The unique name of the suppression alert rule
  GetAlertsSuppressionRuleArgs({
    required this.alertsSuppressionRuleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertsSuppressionRuleName': alertsSuppressionRuleName,
    };
  }

  factory GetAlertsSuppressionRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetAlertsSuppressionRuleArgs(
      alertsSuppressionRuleName: pulumi.Input.fromValue(map['alertsSuppressionRuleName'] as String),
    );
  }
}

