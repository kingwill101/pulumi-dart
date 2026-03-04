// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getFusionAlertRule.
class GetFusionAlertRuleResult {
  /// The Name of the alert rule template used to create this rule.
  final String alertRuleTemplateName;

  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// The description of the alert rule.
  final String description;

  /// The display name for alerts created by this alert rule.
  final String displayName;

  /// Determines whether this alert rule is enabled or disabled.
  final bool enabled;

  /// Etag of the azure resource
  final String? etag;

  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;

  /// The kind of the alert rule
  /// Expected value is 'Fusion'.
  final String kind;

  /// The last time that this alert has been modified.
  final String lastModifiedUtc;

  /// The name of the resource
  final String name;

  /// The severity for alerts created by this alert rule.
  final String severity;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// The tactics of the alert rule
  final List<String> tactics;

  /// The techniques of the alert rule
  final List<String> techniques;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetFusionAlertRuleResult].
  /// [alertRuleTemplateName] The Name of the alert rule template used to create this rule.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] The description of the alert rule.
  /// [displayName] The display name for alerts created by this alert rule.
  /// [enabled] Determines whether this alert rule is enabled or disabled.
  /// [etag] Etag of the azure resource
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [kind] The kind of the alert rule
  /// [lastModifiedUtc] The last time that this alert has been modified.
  /// [name] The name of the resource
  /// [severity] The severity for alerts created by this alert rule.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tactics] The tactics of the alert rule
  /// [techniques] The techniques of the alert rule
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetFusionAlertRuleResult({
    required this.alertRuleTemplateName,
    required this.azureApiVersion,
    required this.description,
    required this.displayName,
    required this.enabled,
    this.etag,
    required this.id,
    required this.kind,
    required this.lastModifiedUtc,
    required this.name,
    required this.severity,
    required this.systemData,
    required this.tactics,
    required this.techniques,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertRuleTemplateName': alertRuleTemplateName,
      'azureApiVersion': azureApiVersion,
      'description': description,
      'displayName': displayName,
      'enabled': enabled,
      'etag': ?etag,
      'id': id,
      'kind': kind,
      'lastModifiedUtc': lastModifiedUtc,
      'name': name,
      'severity': severity,
      'systemData': systemData.toMap(),
      'tactics': tactics,
      'techniques': techniques,
      'type': type,
    };
  }

  factory GetFusionAlertRuleResult.fromMap(Map<String, dynamic> map) {
    return GetFusionAlertRuleResult(
      alertRuleTemplateName: map['alertRuleTemplateName'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      enabled: map['enabled'] as bool,
      etag: (() {
        final guardedValue = map['etag'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      kind: map['kind'] as String,
      lastModifiedUtc: map['lastModifiedUtc'] as String,
      name: map['name'] as String,
      severity: map['severity'] as String,
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      tactics: (map['tactics'] as List).cast<String>(),
      techniques: (map['techniques'] as List).cast<String>(),
      type: map['type'] as String,
    );
  }
}
