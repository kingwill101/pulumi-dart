// ignore_for_file: unused_element, unnecessary_cast

import 'rule_definition_response.dart';
import 'system_data_response.dart';

/// Result data returned by getSummaryLog.
class GetSummaryLogResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The description of the Summary rule.
  final String? description;
  /// The display name of the Summary rule.
  final String? displayName;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Indicates if Summary rule is active. If not, Summary rule execution stops.
  final bool? isActive;
  /// The name of the resource
  final String? name;
  /// Summary rule is in provisioning state. If set to 'updating' or 'deleting', indicates a resource lock due to an ongoing operation, preventing any update to the Summary rule until the operation is complete.
  final String? provisioningState;
  /// Rule definition parameters.
  final RuleDefinitionResponse? ruleDefinition;
  /// SummaryRules rule type: User.
  final String? ruleType;
  /// Indicates the reason for rule deactivation.
  final String? statusCode;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetSummaryLogResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] The description of the Summary rule.
  /// [displayName] The display name of the Summary rule.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [isActive] Indicates if Summary rule is active. If not, Summary rule execution stops.
  /// [name] The name of the resource
  /// [provisioningState] Summary rule is in provisioning state. If set to 'updating' or 'deleting', indicates a resource lock due to an ongoing operation, preventing any update to the Summary rule until the operation is complete.
  /// [ruleDefinition] Rule definition parameters.
  /// [ruleType] SummaryRules rule type: User.
  /// [statusCode] Indicates the reason for rule deactivation.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetSummaryLogResult({
    this.azureApiVersion,
    this.description,
    this.displayName,
    this.id,
    this.isActive,
    this.name,
    this.provisioningState,
    this.ruleDefinition,
    this.ruleType,
    this.statusCode,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'description': ?description,
      'displayName': ?displayName,
      'id': ?id,
      'isActive': ?isActive,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'ruleDefinition': ?ruleDefinition?.toMap(),
      'ruleType': ?ruleType,
      'statusCode': ?statusCode,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetSummaryLogResult.fromMap(Map<String, dynamic> map) {
    return GetSummaryLogResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isActive: (() { final guardedValue = map['isActive']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ruleDefinition: (() { final guardedValue = map['ruleDefinition']; if (guardedValue == null) return null; return RuleDefinitionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      ruleType: (() { final guardedValue = map['ruleType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statusCode: (() { final guardedValue = map['statusCode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
