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
  /// &gt; **Note:** At least one of the severity filters need to be set.
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
  const AlertRuleMsSecurityIncidentArgs({
    this.alertRuleTemplateGuid,
    this.description,
    required this.displayName,
    this.displayNameExcludeFilters,
    this.displayNameFilters,
    this.enabled,
    required this.logAnalyticsWorkspaceId,
    this.name,
    required this.productFilter,
    required this.severityFilters,
  });

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
      alertRuleTemplateGuid: (() { final guardedValue = map['alertRuleTemplateGuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      displayNameExcludeFilters: (() { final guardedValue = map['displayNameExcludeFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      displayNameFilters: (() { final guardedValue = map['displayNameFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      logAnalyticsWorkspaceId: pulumi.Input.fromValue(map['logAnalyticsWorkspaceId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      productFilter: pulumi.Input.fromValue(map['productFilter'] as String),
      severityFilters: pulumi.Input.fromValue((map['severityFilters'] as List).cast<String>()),
    );
  }
}
