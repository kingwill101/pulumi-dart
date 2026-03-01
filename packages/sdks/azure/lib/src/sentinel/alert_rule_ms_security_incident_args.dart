// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sentinel_alert_rule_ms_security_incident_alert_rule_ms_security_incident_args_doc}
/// The set of arguments for AlertRuleMsSecurityIncident.
/// {@endtemplate}
/// {@macro pulumi_sentinel_alert_rule_ms_security_incident_alert_rule_ms_security_incident_args_doc}
class AlertRuleMsSecurityIncidentArgs {
  /// The GUID of the alert rule template which is used to create this Sentinel Scheduled Alert Rule. Changing this forces a new Sentinel MS Security Incident Alert Rule to be created.
  final pulumi.Input<String>? alertRuleTemplateGuid;
  /// The description of this Sentinel MS Security Incident Alert Rule.
  final pulumi.Input<String>? description;
  /// The friendly name of this Sentinel MS Security Incident Alert Rule.
  final pulumi.Input<String> displayName;
  /// Only create incidents when the alert display name doesn't contain text from this list.
  final pulumi.Input<List<String>>? displayNameExcludeFilters;
  /// Only create incidents when the alert display name contain text from this list, leave empty to apply no filter.
  final pulumi.Input<List<String>>? displayNameFilters;
  /// Should this Sentinel MS Security Incident Alert Rule be enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// The ID of the Log Analytics Workspace this Sentinel MS Security Incident Alert Rule belongs to. Changing this forces a new Sentinel MS Security Incident Alert Rule to be created.
  final pulumi.Input<String> logAnalyticsWorkspaceId;
  /// The name which should be used for this Sentinel MS Security Incident Alert Rule. Changing this forces a new Sentinel MS Security Incident Alert Rule to be created.
  final pulumi.Input<String>? name;
  /// The Microsoft Security Service from where the alert will be generated. Possible values are `Azure Active Directory Identity Protection`, `Azure Advanced Threat Protection`, `Azure Security Center`, `Azure Security Center for IoT`, `Microsoft Cloud App Security`, `Microsoft Defender Advanced Threat Protection` and `Office 365 Advanced Threat Protection`.
  final pulumi.Input<String> productFilter;
  /// Only create incidents from alerts when alert severity level is contained in this list. Possible values are `High`, `Medium`, `Low` and `Informational`.
  ///
  /// > **Note:** At least one of the severity filters need to be set.
  final pulumi.Input<List<String>> severityFilters;

  /// Creates a new [AlertRuleMsSecurityIncidentArgs].
  /// [alertRuleTemplateGuid] The GUID of the alert rule template which is used to create this Sentinel Scheduled Alert Rule. Changing this forces a new Sentinel MS Security Incident Alert Rule to be created.
  /// [description] The description of this Sentinel MS Security Incident Alert Rule.
  /// [displayName] The friendly name of this Sentinel MS Security Incident Alert Rule.
  /// [displayNameExcludeFilters] Only create incidents when the alert display name doesn't contain text from this list.
  /// [displayNameFilters] Only create incidents when the alert display name contain text from this list, leave empty to apply no filter.
  /// [enabled] Should this Sentinel MS Security Incident Alert Rule be enabled? Defaults to `true`.
  /// [logAnalyticsWorkspaceId] The ID of the Log Analytics Workspace this Sentinel MS Security Incident Alert Rule belongs to. Changing this forces a new Sentinel MS Security Incident Alert Rule to be created.
  /// [name] The name which should be used for this Sentinel MS Security Incident Alert Rule. Changing this forces a new Sentinel MS Security Incident Alert Rule to be created.
  /// [productFilter] The Microsoft Security Service from where the alert will be generated. Possible values are `Azure Active Directory Identity Protection`, `Azure Advanced Threat Protection`, `Azure Security Center`, `Azure Security Center for IoT`, `Microsoft Cloud App Security`, `Microsoft Defender Advanced Threat Protection` and `Office 365 Advanced Threat Protection`.
  /// [severityFilters] Only create incidents from alerts when alert severity level is contained in this list. Possible values are `High`, `Medium`, `Low` and `Informational`.
  AlertRuleMsSecurityIncidentArgs({
    pulumi.Output<String>? alertRuleTemplateGuid,
    pulumi.Output<String>? description,
    required pulumi.Output<String> displayName,
    pulumi.Output<List<String>>? displayNameExcludeFilters,
    pulumi.Output<List<String>>? displayNameFilters,
    pulumi.Output<bool>? enabled,
    required pulumi.Output<String> logAnalyticsWorkspaceId,
    pulumi.Output<String>? name,
    required pulumi.Output<String> productFilter,
    required pulumi.Output<List<String>> severityFilters,
  }) :
      alertRuleTemplateGuid = pulumi.Input.asOptionalInput<String>(alertRuleTemplateGuid),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      displayNameExcludeFilters = pulumi.Input.asOptionalInput<List<String>>(displayNameExcludeFilters),
      displayNameFilters = pulumi.Input.asOptionalInput<List<String>>(displayNameFilters),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      logAnalyticsWorkspaceId = pulumi.Input.asInput<String>(logAnalyticsWorkspaceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      productFilter = pulumi.Input.asInput<String>(productFilter),
      severityFilters = pulumi.Input.asInput<List<String>>(severityFilters);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertRuleTemplateGuid': ?alertRuleTemplateGuid,
      'description': ?description,
      'displayName': displayName,
      'displayNameExcludeFilters': ?displayNameExcludeFilters,
      'displayNameFilters': ?displayNameFilters,
      'enabled': ?enabled,
      'logAnalyticsWorkspaceId': logAnalyticsWorkspaceId,
      'name': ?name,
      'productFilter': productFilter,
      'severityFilters': severityFilters,
    };
  }

  factory AlertRuleMsSecurityIncidentArgs.fromMap(Map<String, dynamic> map) {
    return AlertRuleMsSecurityIncidentArgs(
      alertRuleTemplateGuid: map['alertRuleTemplateGuid'] == null ? null : pulumi.Output.create<String>(map['alertRuleTemplateGuid'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      displayNameExcludeFilters: map['displayNameExcludeFilters'] == null ? null : pulumi.Output.create<List<String>>((map['displayNameExcludeFilters'] as List).cast<String>()),
      displayNameFilters: map['displayNameFilters'] == null ? null : pulumi.Output.create<List<String>>((map['displayNameFilters'] as List).cast<String>()),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      logAnalyticsWorkspaceId: pulumi.Output.create<String>(map['logAnalyticsWorkspaceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      productFilter: pulumi.Output.create<String>(map['productFilter'] as String),
      severityFilters: pulumi.Output.create<List<String>>((map['severityFilters'] as List).cast<String>()),
    );
  }
}

