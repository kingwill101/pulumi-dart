// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getAction.
class GetActionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// ETag of the action.
  final String? etag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Logic App Resource Id, /subscriptions/{my-subscription}/resourceGroups/{my-resource-group}/providers/Microsoft.Logic/workflows/{my-workflow-id}.
  final String logicAppResourceId;
  /// The name of the resource
  final String name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// The name of the logic app's workflow.
  final String? workflowId;

  /// Creates a new [GetActionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] ETag of the action.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [logicAppResourceId] Logic App Resource Id, /subscriptions/{my-subscription}/resourceGroups/{my-resource-group}/providers/Microsoft.Logic/workflows/{my-workflow-id}.
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [workflowId] The name of the logic app's workflow.
  GetActionResult({
    required this.azureApiVersion,
    this.etag,
    required this.id,
    required this.logicAppResourceId,
    required this.name,
    required this.systemData,
    required this.type,
    this.workflowId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'etag': ?etag,
      'id': id,
      'logicAppResourceId': logicAppResourceId,
      'name': name,
      'systemData': systemData.toMap(),
      'type': type,
      'workflowId': ?workflowId,
    };
  }

  factory GetActionResult.fromMap(Map<String, dynamic> map) {
    return GetActionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      id: map['id'] as String,
      logicAppResourceId: map['logicAppResourceId'] as String,
      name: map['name'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      workflowId: map['workflowId'] == null ? null : map['workflowId'] as String,
    );
  }
}

