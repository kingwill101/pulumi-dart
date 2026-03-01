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
  MicrosoftSecurityIncidentCreationAlertRuleArgs({
    pulumi.Output<String>? alertRuleTemplateName,
    pulumi.Output<String>? description,
    required pulumi.Output<String> displayName,
    pulumi.Output<List<String>>? displayNamesExcludeFilter,
    pulumi.Output<List<String>>? displayNamesFilter,
    required pulumi.Output<bool> enabled,
    required pulumi.Output<String> kind,
    required pulumi.Output<String> productFilter,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? ruleId,
    pulumi.Output<List<String>>? severitiesFilter,
    required pulumi.Output<String> workspaceName,
  }) :
      alertRuleTemplateName = pulumi.Input.asOptionalInput<String>(alertRuleTemplateName),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      displayNamesExcludeFilter = pulumi.Input.asOptionalInput<List<String>>(displayNamesExcludeFilter),
      displayNamesFilter = pulumi.Input.asOptionalInput<List<String>>(displayNamesFilter),
      enabled = pulumi.Input.asInput<bool>(enabled),
      kind = pulumi.Input.asInput<String>(kind),
      productFilter = pulumi.Input.asInput<String>(productFilter),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      ruleId = pulumi.Input.asOptionalInput<String>(ruleId),
      severitiesFilter = pulumi.Input.asOptionalInput<List<String>>(severitiesFilter),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

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
      alertRuleTemplateName: map['alertRuleTemplateName'] == null ? null : pulumi.Output.create<String>(map['alertRuleTemplateName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      displayNamesExcludeFilter: map['displayNamesExcludeFilter'] == null ? null : pulumi.Output.create<List<String>>((map['displayNamesExcludeFilter'] as List).cast<String>()),
      displayNamesFilter: map['displayNamesFilter'] == null ? null : pulumi.Output.create<List<String>>((map['displayNamesFilter'] as List).cast<String>()),
      enabled: pulumi.Output.create<bool>(map['enabled'] as bool),
      kind: pulumi.Output.create<String>(map['kind'] as String),
      productFilter: pulumi.Output.create<String>(map['productFilter'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      ruleId: map['ruleId'] == null ? null : pulumi.Output.create<String>(map['ruleId'] as String),
      severitiesFilter: map['severitiesFilter'] == null ? null : pulumi.Output.create<List<String>>((map['severitiesFilter'] as List).cast<String>()),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

