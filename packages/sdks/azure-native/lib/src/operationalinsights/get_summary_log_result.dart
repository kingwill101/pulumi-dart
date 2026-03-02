// ignore_for_file: unused_element, unnecessary_cast

import 'rule_definition_response.dart';
import 'system_data_response.dart';

/// Result data returned by getSummaryLog.
class GetSummaryLogResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The description of the Summary rule.
  final String? description;
  /// The display name of the Summary rule.
  final String? displayName;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Indicates if Summary rule is active. If not, Summary rule execution stops.
  final bool isActive;
  /// The name of the resource
  final String name;
  /// Summary rule is in provisioning state. If set to 'updating' or 'deleting', indicates a resource lock due to an ongoing operation, preventing any update to the Summary rule until the operation is complete.
  final String provisioningState;
  /// Rule definition parameters.
  final RuleDefinitionResponse? ruleDefinition;
  /// SummaryRules rule type: User.
  final String? ruleType;
  /// Indicates the reason for rule deactivation.
  final String statusCode;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

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
  GetSummaryLogResult({
    required this.azureApiVersion,
    this.description,
    this.displayName,
    required this.id,
    required this.isActive,
    required this.name,
    required this.provisioningState,
    this.ruleDefinition,
    this.ruleType,
    required this.statusCode,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'displayName': ?displayName,
      'id': id,
      'isActive': isActive,
      'name': name,
      'provisioningState': provisioningState,
      'ruleDefinition': ?ruleDefinition == null ? null : ruleDefinition!.toMap(),
      'ruleType': ?ruleType,
      'statusCode': statusCode,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetSummaryLogResult.fromMap(Map<String, dynamic> map) {
    return GetSummaryLogResult(
      azureApiVersion: map['azureApiVersion'] as String,
      description: map['description'] == null ? null : map['description']! as String,
      displayName: map['displayName'] == null ? null : map['displayName']! as String,
      id: map['id'] as String,
      isActive: map['isActive'] as bool,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      ruleDefinition: map['ruleDefinition'] == null ? null : RuleDefinitionResponse.fromMap((map['ruleDefinition']! as Map).cast<String, dynamic>()),
      ruleType: map['ruleType'] == null ? null : map['ruleType']! as String,
      statusCode: map['statusCode'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

