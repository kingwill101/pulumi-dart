// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_microsoft_security_incident_creation_alert_rule_args_doc}
/// The set of arguments for MicrosoftSecurityIncidentCreationAlertRule.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_microsoft_security_incident_creation_alert_rule_args_doc}
class MicrosoftSecurityIncidentCreationAlertRuleArgs {
  /// The Name of the alert rule template used to create this rule.
  final pulumi.Input<String>? alertRuleTemplateName;
  /// The description of the alert rule.
  final pulumi.Input<String>? description;
  /// The display name for alerts created by this alert rule.
  final pulumi.Input<String> displayName;
  /// the alerts' displayNames on which the cases will not be generated
  final pulumi.Input<List<String>>? displayNamesExcludeFilter;
  /// the alerts' displayNames on which the cases will be generated
  final pulumi.Input<List<String>>? displayNamesFilter;
  /// Determines whether this alert rule is enabled or disabled.
  final pulumi.Input<bool> enabled;
  /// The kind of the alert rule
  /// Expected value is 'MicrosoftSecurityIncidentCreation'.
  final pulumi.Input<String> kind;
  /// The alerts' productName on which the cases will be generated
  final pulumi.Input<String> productFilter;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Alert rule ID
  final pulumi.Input<String>? ruleId;
  /// the alerts' severities on which the cases will be generated
  final pulumi.Input<List<String>>? severitiesFilter;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [MicrosoftSecurityIncidentCreationAlertRuleArgs].
  /// [alertRuleTemplateName] The Name of the alert rule template used to create this rule.
  /// [description] The description of the alert rule.
  /// [displayName] The display name for alerts created by this alert rule.
  /// [displayNamesExcludeFilter] the alerts' displayNames on which the cases will not be generated
  /// [displayNamesFilter] the alerts' displayNames on which the cases will be generated
  /// [enabled] Determines whether this alert rule is enabled or disabled.
  /// [kind] The kind of the alert rule
  /// [productFilter] The alerts' productName on which the cases will be generated
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [ruleId] Alert rule ID
  /// [severitiesFilter] the alerts' severities on which the cases will be generated
  /// [workspaceName] The name of the workspace.
  const MicrosoftSecurityIncidentCreationAlertRuleArgs({
    this.alertRuleTemplateName,
    this.description,
    required this.displayName,
    this.displayNamesExcludeFilter,
    this.displayNamesFilter,
    required this.enabled,
    required this.kind,
    required this.productFilter,
    required this.resourceGroupName,
    this.ruleId,
    this.severitiesFilter,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertRuleTemplateName': ?alertRuleTemplateName,
      'description': ?description,
      'displayName': displayName,
      'displayNamesExcludeFilter': ?displayNamesExcludeFilter,
      'displayNamesFilter': ?displayNamesFilter,
      'enabled': enabled,
      'kind': kind,
      'productFilter': productFilter,
      'resourceGroupName': resourceGroupName,
      'ruleId': ?ruleId,
      'severitiesFilter': ?severitiesFilter,
      'workspaceName': workspaceName,
    };
  }

  factory MicrosoftSecurityIncidentCreationAlertRuleArgs.fromMap(Map<String, dynamic> map) {
    return MicrosoftSecurityIncidentCreationAlertRuleArgs(
      alertRuleTemplateName: (() { final guardedValue = map['alertRuleTemplateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      displayNamesExcludeFilter: (() { final guardedValue = map['displayNamesExcludeFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      displayNamesFilter: (() { final guardedValue = map['displayNamesFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      productFilter: pulumi.Input.fromValue(map['productFilter'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      ruleId: (() { final guardedValue = map['ruleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      severitiesFilter: (() { final guardedValue = map['severitiesFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
