// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_rule_add_incident_task_action_response.dart';
import 'automation_rule_triggering_logic_response.dart';
import 'client_info_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAutomationRule.
class GetAutomationRuleResult {
  /// The actions to execute when the automation rule is triggered.
  final List<AutomationRuleAddIncidentTaskActionResponse> actions;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Information on the client (user or application) that made some action
  final ClientInfoResponse createdBy;
  /// The time the automation rule was created.
  final String createdTimeUtc;
  /// The display name of the automation rule.
  final String displayName;
  /// Etag of the azure resource
  final String? etag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Information on the client (user or application) that made some action
  final ClientInfoResponse lastModifiedBy;
  /// The last time the automation rule was updated.
  final String lastModifiedTimeUtc;
  /// The name of the resource
  final String name;
  /// The order of execution of the automation rule.
  final int order;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Describes automation rule triggering logic.
  final AutomationRuleTriggeringLogicResponse triggeringLogic;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

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
    required this.actions,
    required this.azureApiVersion,
    required this.createdBy,
    required this.createdTimeUtc,
    required this.displayName,
    this.etag,
    required this.id,
    required this.lastModifiedBy,
    required this.lastModifiedTimeUtc,
    required this.name,
    required this.order,
    required this.systemData,
    required this.triggeringLogic,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': pulumi.Input.encodeList<AutomationRuleAddIncidentTaskActionResponse, Map<String, dynamic>>(actions, (value) => value.toMap()),
      'azureApiVersion': azureApiVersion,
      'createdBy': createdBy.toMap(),
      'createdTimeUtc': createdTimeUtc,
      'displayName': displayName,
      'etag': ?etag,
      'id': id,
      'lastModifiedBy': lastModifiedBy.toMap(),
      'lastModifiedTimeUtc': lastModifiedTimeUtc,
      'name': name,
      'order': order,
      'systemData': systemData.toMap(),
      'triggeringLogic': triggeringLogic.toMap(),
      'type': type,
    };
  }

  factory GetAutomationRuleResult.fromMap(Map<String, dynamic> map) {
    return GetAutomationRuleResult(
      actions: pulumi.Input.decodeList<AutomationRuleAddIncidentTaskActionResponse>(map['actions']!, (value) => AutomationRuleAddIncidentTaskActionResponse.fromMap((value as Map).cast<String, dynamic>())),
      azureApiVersion: map['azureApiVersion'] as String,
      createdBy: ClientInfoResponse.fromMap((map['createdBy']! as Map).cast<String, dynamic>()),
      createdTimeUtc: map['createdTimeUtc'] as String,
      displayName: map['displayName'] as String,
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      lastModifiedBy: ClientInfoResponse.fromMap((map['lastModifiedBy']! as Map).cast<String, dynamic>()),
      lastModifiedTimeUtc: map['lastModifiedTimeUtc'] as String,
      name: map['name'] as String,
      order: map['order'] as int,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      triggeringLogic: AutomationRuleTriggeringLogicResponse.fromMap((map['triggeringLogic']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

