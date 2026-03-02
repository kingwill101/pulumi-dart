// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sentinel_get_alert_rule_template_get_alert_rule_template_args_doc}
/// Arguments for getAlertRuleTemplate.
/// {@endtemplate}
/// {@macro pulumi_sentinel_get_alert_rule_template_get_alert_rule_template_args_doc}
class GetAlertRuleTemplateArgs {
  /// The display name of this Sentinel Alert Rule Template. Either `display_name` or `name` have to be specified.
  ///
  /// > **Note:** As `display_name` is not unique, errors may occur when there are multiple Sentinel Alert Rule Template with same `display_name`.
  final pulumi.Input<String>? displayName;
  /// The ID of the Log Analytics Workspace.
  final pulumi.Input<String> logAnalyticsWorkspaceId;
  /// The name of this Sentinel Alert Rule Template. Either `display_name` or `name` have to be specified.
  final pulumi.Input<String>? name;

  /// Creates a new [GetAlertRuleTemplateArgs].
  /// [displayName] The display name of this Sentinel Alert Rule Template. Either `display_name` or `name` have to be specified.
  /// [logAnalyticsWorkspaceId] The ID of the Log Analytics Workspace.
  /// [name] The name of this Sentinel Alert Rule Template. Either `display_name` or `name` have to be specified.
  GetAlertRuleTemplateArgs({
    this.displayName,
    required this.logAnalyticsWorkspaceId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'logAnalyticsWorkspaceId': logAnalyticsWorkspaceId,
      'name': ?name,
    };
  }

  factory GetAlertRuleTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetAlertRuleTemplateArgs(
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      logAnalyticsWorkspaceId: (map['logAnalyticsWorkspaceId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

