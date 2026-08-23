// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sentinel_get_alert_rule_get_alert_rule_args_doc}
/// Arguments for getAlertRule.
/// {@endtemplate}
/// {@macro pulumi_sentinel_get_alert_rule_get_alert_rule_args_doc}
class GetAlertRuleArgs {
  /// The ID of the Log Analytics Workspace this Sentinel Alert Rule belongs to.
  final pulumi.Input<String> logAnalyticsWorkspaceId;
  /// The name which should be used for this Sentinel Alert Rule.
  final pulumi.Input<String> name;

  /// Creates a new [GetAlertRuleArgs].
  /// [logAnalyticsWorkspaceId] The ID of the Log Analytics Workspace this Sentinel Alert Rule belongs to.
  /// [name] The name which should be used for this Sentinel Alert Rule.
  const GetAlertRuleArgs({
    required this.logAnalyticsWorkspaceId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logAnalyticsWorkspaceId': logAnalyticsWorkspaceId,
      'name': name,
    };
  }

  factory GetAlertRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetAlertRuleArgs(
      logAnalyticsWorkspaceId: pulumi.Input.fromValue(map['logAnalyticsWorkspaceId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
