// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_alert_rule_template_nrt_template.dart';
import 'get_alert_rule_template_scheduled_template.dart';
import 'get_alert_rule_template_security_incident_template.dart';

/// Result data returned by getAlertRuleTemplate.
class GetAlertRuleTemplateResult {
  final String? displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? logAnalyticsWorkspaceId;
  final String? name;
  /// A `nrtTemplate` block as defined below. This only applies to Sentinel NRT Alert Rule Template.
  final List<GetAlertRuleTemplateNrtTemplate>? nrtTemplates;
  /// A `scheduledTemplate` block as defined below. This only applies to Sentinel Scheduled Alert Rule Template.
  final List<GetAlertRuleTemplateScheduledTemplate>? scheduledTemplates;
  /// A `securityIncidentTemplate` block as defined below. This only applies to Sentinel MS Security Incident Alert Rule Template.
  final List<GetAlertRuleTemplateSecurityIncidentTemplate>? securityIncidentTemplates;

  /// Creates a new [GetAlertRuleTemplateResult].
  /// [displayName] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [logAnalyticsWorkspaceId] Optional.
  /// [name] Optional.
  /// [nrtTemplates] A `nrtTemplate` block as defined below. This only applies to Sentinel NRT Alert Rule Template.
  /// [scheduledTemplates] A `scheduledTemplate` block as defined below. This only applies to Sentinel Scheduled Alert Rule Template.
  /// [securityIncidentTemplates] A `securityIncidentTemplate` block as defined below. This only applies to Sentinel MS Security Incident Alert Rule Template.
  const GetAlertRuleTemplateResult({
    this.displayName,
    this.id,
    this.logAnalyticsWorkspaceId,
    this.name,
    this.nrtTemplates,
    this.scheduledTemplates,
    this.securityIncidentTemplates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'id': ?id,
      'logAnalyticsWorkspaceId': ?logAnalyticsWorkspaceId,
      'name': ?name,
      'nrtTemplates': ?(() { final guardedValue = nrtTemplates; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAlertRuleTemplateNrtTemplate, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'scheduledTemplates': ?(() { final guardedValue = scheduledTemplates; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAlertRuleTemplateScheduledTemplate, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'securityIncidentTemplates': ?(() { final guardedValue = securityIncidentTemplates; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAlertRuleTemplateSecurityIncidentTemplate, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetAlertRuleTemplateResult.fromMap(Map<String, dynamic> map) {
    return GetAlertRuleTemplateResult(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logAnalyticsWorkspaceId: (() { final guardedValue = map['logAnalyticsWorkspaceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nrtTemplates: (() { final guardedValue = map['nrtTemplates']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAlertRuleTemplateNrtTemplate>(guardedValue, (value) => GetAlertRuleTemplateNrtTemplate.fromMap((value as Map).cast<String, dynamic>())); })(),
      scheduledTemplates: (() { final guardedValue = map['scheduledTemplates']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAlertRuleTemplateScheduledTemplate>(guardedValue, (value) => GetAlertRuleTemplateScheduledTemplate.fromMap((value as Map).cast<String, dynamic>())); })(),
      securityIncidentTemplates: (() { final guardedValue = map['securityIncidentTemplates']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAlertRuleTemplateSecurityIncidentTemplate>(guardedValue, (value) => GetAlertRuleTemplateSecurityIncidentTemplate.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
