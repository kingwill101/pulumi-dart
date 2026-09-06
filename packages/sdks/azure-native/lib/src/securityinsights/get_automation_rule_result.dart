// ignore_for_file: unused_element, unnecessary_cast

import 'automation_rule_triggering_logic_response.dart';
import 'client_info_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAutomationRule.
class GetAutomationRuleResult {
  /// The actions to execute when the automation rule is triggered.
  final List<dynamic>? actions;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Information on the client (user or application) that made some action
  final ClientInfoResponse? createdBy;
  /// The time the automation rule was created.
  final String? createdTimeUtc;
  /// The display name of the automation rule.
  final String? displayName;
  /// Etag of the azure resource
  final String? etag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Information on the client (user or application) that made some action
  final ClientInfoResponse? lastModifiedBy;
  /// The last time the automation rule was updated.
  final String? lastModifiedTimeUtc;
  /// The name of the resource
  final String? name;
  /// The order of execution of the automation rule.
  final int? order;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Describes automation rule triggering logic.
  final AutomationRuleTriggeringLogicResponse? triggeringLogic;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetAutomationRuleResult].
  /// [actions] The actions to execute when the automation rule is triggered.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdBy] Information on the client (user or application) that made some action
  /// [createdTimeUtc] The time the automation rule was created.
  /// [displayName] The display name of the automation rule.
  /// [etag] Etag of the azure resource
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [lastModifiedBy] Information on the client (user or application) that made some action
  /// [lastModifiedTimeUtc] The last time the automation rule was updated.
  /// [name] The name of the resource
  /// [order] The order of execution of the automation rule.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [triggeringLogic] Describes automation rule triggering logic.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetAutomationRuleResult({
    this.actions,
    this.azureApiVersion,
    this.createdBy,
    this.createdTimeUtc,
    this.displayName,
    this.etag,
    this.id,
    this.lastModifiedBy,
    this.lastModifiedTimeUtc,
    this.name,
    this.order,
    this.systemData,
    this.triggeringLogic,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?actions,
      'azureApiVersion': ?azureApiVersion,
      'createdBy': ?createdBy?.toMap(),
      'createdTimeUtc': ?createdTimeUtc,
      'displayName': ?displayName,
      'etag': ?etag,
      'id': ?id,
      'lastModifiedBy': ?lastModifiedBy?.toMap(),
      'lastModifiedTimeUtc': ?lastModifiedTimeUtc,
      'name': ?name,
      'order': ?order,
      'systemData': ?systemData?.toMap(),
      'triggeringLogic': ?triggeringLogic?.toMap(),
      'type': ?type,
    };
  }

  factory GetAutomationRuleResult.fromMap(Map<String, dynamic> map) {
    return GetAutomationRuleResult(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdBy: (() { final guardedValue = map['createdBy']; if (guardedValue == null) return null; return ClientInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createdTimeUtc: (() { final guardedValue = map['createdTimeUtc']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastModifiedBy: (() { final guardedValue = map['lastModifiedBy']; if (guardedValue == null) return null; return ClientInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      lastModifiedTimeUtc: (() { final guardedValue = map['lastModifiedTimeUtc']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      triggeringLogic: (() { final guardedValue = map['triggeringLogic']; if (guardedValue == null) return null; return AutomationRuleTriggeringLogicResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
