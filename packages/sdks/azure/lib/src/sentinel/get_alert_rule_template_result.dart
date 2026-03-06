// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_alert_rule_template_nrt_template.dart';
import 'get_alert_rule_template_scheduled_template.dart';
import 'get_alert_rule_template_security_incident_template.dart';

/// Result data returned by getAlertRuleTemplate.
class GetAlertRuleTemplateResult {
  final String displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String logAnalyticsWorkspaceId;
  final String name;
  /// A `nrt_template` block as defined below. This only applies to Sentinel NRT Alert Rule Template.
  final List<GetAlertRuleTemplateNrtTemplate> nrtTemplates;
  /// A `scheduled_template` block as defined below. This only applies to Sentinel Scheduled Alert Rule Template.
  final List<GetAlertRuleTemplateScheduledTemplate> scheduledTemplates;
  /// A `security_incident_template` block as defined below. This only applies to Sentinel MS Security Incident Alert Rule Template.
  final List<GetAlertRuleTemplateSecurityIncidentTemplate> securityIncidentTemplates;

  /// Creates a new [GetAlertRuleTemplateResult].
  /// [displayName] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [logAnalyticsWorkspaceId] Required.
  /// [name] Required.
  /// [nrtTemplates] A `nrt_template` block as defined below. This only applies to Sentinel NRT Alert Rule Template.
  /// [scheduledTemplates] A `scheduled_template` block as defined below. This only applies to Sentinel Scheduled Alert Rule Template.
  /// [securityIncidentTemplates] A `security_incident_template` block as defined below. This only applies to Sentinel MS Security Incident Alert Rule Template.
  const GetAlertRuleTemplateResult({
    required this.displayName,
    required this.id,
    required this.logAnalyticsWorkspaceId,
    required this.name,
    required this.nrtTemplates,
    required this.scheduledTemplates,
    required this.securityIncidentTemplates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'id': id,
      'logAnalyticsWorkspaceId': logAnalyticsWorkspaceId,
      'name': name,
      'nrtTemplates': pulumi.Input.encodeList<GetAlertRuleTemplateNrtTemplate, Map<String, dynamic>>(nrtTemplates, (value) => value.toMap()),
      'scheduledTemplates': pulumi.Input.encodeList<GetAlertRuleTemplateScheduledTemplate, Map<String, dynamic>>(scheduledTemplates, (value) => value.toMap()),
      'securityIncidentTemplates': pulumi.Input.encodeList<GetAlertRuleTemplateSecurityIncidentTemplate, Map<String, dynamic>>(securityIncidentTemplates, (value) => value.toMap()),
    };
  }

  factory GetAlertRuleTemplateResult.fromMap(Map<String, dynamic> map) {
    return GetAlertRuleTemplateResult(
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      logAnalyticsWorkspaceId: map['logAnalyticsWorkspaceId'] as String,
      name: map['name'] as String,
      nrtTemplates: pulumi.Input.decodeList<GetAlertRuleTemplateNrtTemplate>(map['nrtTemplates']!, (value) => GetAlertRuleTemplateNrtTemplate.fromMap((value as Map).cast<String, dynamic>())),
      scheduledTemplates: pulumi.Input.decodeList<GetAlertRuleTemplateScheduledTemplate>(map['scheduledTemplates']!, (value) => GetAlertRuleTemplateScheduledTemplate.fromMap((value as Map).cast<String, dynamic>())),
      securityIncidentTemplates: pulumi.Input.decodeList<GetAlertRuleTemplateSecurityIncidentTemplate>(map['securityIncidentTemplates']!, (value) => GetAlertRuleTemplateSecurityIncidentTemplate.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

