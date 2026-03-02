// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'suppression_alerts_scope.dart';

/// {@template pulumi_security_alerts_suppression_rule_args_doc}
/// The set of arguments for AlertsSuppressionRule.
/// {@endtemplate}
/// {@macro pulumi_security_alerts_suppression_rule_args_doc}
class AlertsSuppressionRuleArgs {
  /// Type of the alert to automatically suppress. For all alert types, use '*'
  final pulumi.Input<String> alertType;
  /// The unique name of the suppression alert rule
  final pulumi.Input<String>? alertsSuppressionRuleName;
  /// Any comment regarding the rule
  final pulumi.Input<String>? comment;
  /// Expiration date of the rule, if value is not provided or provided as null there will no expiration at all
  final pulumi.Input<String>? expirationDateUtc;
  /// The reason for dismissing the alert
  final pulumi.Input<String> reason;
  /// Possible states of the rule
  final pulumi.Input<String> state;
  /// The suppression conditions
  final pulumi.Input<SuppressionAlertsScope>? suppressionAlertsScope;

  /// Creates a new [AlertsSuppressionRuleArgs].
  /// [alertType] Type of the alert to automatically suppress. For all alert types, use '*'
  /// [alertsSuppressionRuleName] The unique name of the suppression alert rule
  /// [comment] Any comment regarding the rule
  /// [expirationDateUtc] Expiration date of the rule, if value is not provided or provided as null there will no expiration at all
  /// [reason] The reason for dismissing the alert
  /// [state] Possible states of the rule
  /// [suppressionAlertsScope] The suppression conditions
  AlertsSuppressionRuleArgs({
    required this.alertType,
    this.alertsSuppressionRuleName,
    this.comment,
    this.expirationDateUtc,
    required this.reason,
    required this.state,
    this.suppressionAlertsScope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertType': alertType,
      'alertsSuppressionRuleName': ?alertsSuppressionRuleName,
      'comment': ?comment,
      'expirationDateUtc': ?expirationDateUtc,
      'reason': reason,
      'state': state,
      'suppressionAlertsScope': ?pulumi.Input.mapOptionalInputValue<SuppressionAlertsScope, Map<String, dynamic>>(suppressionAlertsScope, (value) => value.toMap()),
    };
  }

  factory AlertsSuppressionRuleArgs.fromMap(Map<String, dynamic> map) {
    return AlertsSuppressionRuleArgs(
      alertType: (map['alertType'] as String).input(),
      alertsSuppressionRuleName: map['alertsSuppressionRuleName'] == null ? null : (map['alertsSuppressionRuleName']! as String).input(),
      comment: map['comment'] == null ? null : (map['comment']! as String).input(),
      expirationDateUtc: map['expirationDateUtc'] == null ? null : (map['expirationDateUtc']! as String).input(),
      reason: (map['reason'] as String).input(),
      state: (map['state'] as String).input(),
      suppressionAlertsScope: map['suppressionAlertsScope'] == null ? null : (SuppressionAlertsScope.fromMap((map['suppressionAlertsScope']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

