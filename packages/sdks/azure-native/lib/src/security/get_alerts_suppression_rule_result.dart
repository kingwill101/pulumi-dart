// ignore_for_file: unused_element, unnecessary_cast

import 'suppression_alerts_scope_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAlertsSuppressionRule.
class GetAlertsSuppressionRuleResult {
  /// Type of the alert to automatically suppress. For all alert types, use '*'
  final String? alertType;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Any comment regarding the rule
  final String? comment;
  /// Expiration date of the rule, if value is not provided or provided as null there will no expiration at all
  final String? expirationDateUtc;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The last time this rule was modified
  final String? lastModifiedUtc;
  /// The name of the resource
  final String? name;
  /// The reason for dismissing the alert
  final String? reason;
  /// Possible states of the rule
  final String? state;
  /// The suppression conditions
  final SuppressionAlertsScopeResponse? suppressionAlertsScope;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetAlertsSuppressionRuleResult].
  /// [alertType] Type of the alert to automatically suppress. For all alert types, use '*'
  /// [azureApiVersion] The Azure API version of the resource.
  /// [comment] Any comment regarding the rule
  /// [expirationDateUtc] Expiration date of the rule, if value is not provided or provided as null there will no expiration at all
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [lastModifiedUtc] The last time this rule was modified
  /// [name] The name of the resource
  /// [reason] The reason for dismissing the alert
  /// [state] Possible states of the rule
  /// [suppressionAlertsScope] The suppression conditions
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetAlertsSuppressionRuleResult({
    this.alertType,
    this.azureApiVersion,
    this.comment,
    this.expirationDateUtc,
    this.id,
    this.lastModifiedUtc,
    this.name,
    this.reason,
    this.state,
    this.suppressionAlertsScope,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertType': ?alertType,
      'azureApiVersion': ?azureApiVersion,
      'comment': ?comment,
      'expirationDateUtc': ?expirationDateUtc,
      'id': ?id,
      'lastModifiedUtc': ?lastModifiedUtc,
      'name': ?name,
      'reason': ?reason,
      'state': ?state,
      'suppressionAlertsScope': ?suppressionAlertsScope?.toMap(),
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetAlertsSuppressionRuleResult.fromMap(Map<String, dynamic> map) {
    return GetAlertsSuppressionRuleResult(
      alertType: (() { final guardedValue = map['alertType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expirationDateUtc: (() { final guardedValue = map['expirationDateUtc']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastModifiedUtc: (() { final guardedValue = map['lastModifiedUtc']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      reason: (() { final guardedValue = map['reason']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      suppressionAlertsScope: (() { final guardedValue = map['suppressionAlertsScope']; if (guardedValue == null) return null; return SuppressionAlertsScopeResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
