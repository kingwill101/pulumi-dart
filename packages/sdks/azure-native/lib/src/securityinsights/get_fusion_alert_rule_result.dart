// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getFusionAlertRule.
class GetFusionAlertRuleResult {
  /// The Name of the alert rule template used to create this rule.
  final String? alertRuleTemplateName;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The description of the alert rule.
  final String? description;
  /// The display name for alerts created by this alert rule.
  final String? displayName;
  /// Determines whether this alert rule is enabled or disabled.
  final bool? enabled;
  /// Etag of the azure resource
  final String? etag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The kind of the alert rule
  /// Expected value is 'Fusion'.
  final String? kind;
  /// The last time that this alert has been modified.
  final String? lastModifiedUtc;
  /// The name of the resource
  final String? name;
  /// The severity for alerts created by this alert rule.
  final String? severity;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The tactics of the alert rule
  final List<String>? tactics;
  /// The techniques of the alert rule
  final List<String>? techniques;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
  const GetFusionAlertRuleResult({
    this.alertRuleTemplateName,
    this.azureApiVersion,
    this.description,
    this.displayName,
    this.enabled,
    this.etag,
    this.id,
    this.kind,
    this.lastModifiedUtc,
    this.name,
    this.severity,
    this.systemData,
    this.tactics,
    this.techniques,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertRuleTemplateName': ?alertRuleTemplateName,
      'azureApiVersion': ?azureApiVersion,
      'description': ?description,
      'displayName': ?displayName,
      'enabled': ?enabled,
      'etag': ?etag,
      'id': ?id,
      'kind': ?kind,
      'lastModifiedUtc': ?lastModifiedUtc,
      'name': ?name,
      'severity': ?severity,
      'systemData': ?systemData?.toMap(),
      'tactics': ?tactics,
      'techniques': ?techniques,
      'type': ?type,
    };
  }

  factory GetFusionAlertRuleResult.fromMap(Map<String, dynamic> map) {
    return GetFusionAlertRuleResult(
      alertRuleTemplateName: (() { final guardedValue = map['alertRuleTemplateName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastModifiedUtc: (() { final guardedValue = map['lastModifiedUtc']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      severity: (() { final guardedValue = map['severity']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tactics: (() { final guardedValue = map['tactics']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      techniques: (() { final guardedValue = map['techniques']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
