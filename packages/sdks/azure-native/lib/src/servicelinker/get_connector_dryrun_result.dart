// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'basic_error_dryrun_prerequisite_result_response.dart';
import 'create_or_update_dryrun_parameters_response.dart';
import 'dryrun_operation_preview_response.dart';
import 'system_data_response.dart';

/// Result data returned by getConnectorDryrun.
class GetConnectorDryrunResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// the preview of the operations for creation
  final List<DryrunOperationPreviewResponse> operationPreviews;
  /// The parameters of the dryrun
  final CreateOrUpdateDryrunParametersResponse? parameters;
  /// the result of the dryrun
  final List<BasicErrorDryrunPrerequisiteResultResponse> prerequisiteResults;
  /// The provisioning state.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetConnectorDryrunResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [operationPreviews] the preview of the operations for creation
  /// [parameters] The parameters of the dryrun
  /// [prerequisiteResults] the result of the dryrun
  /// [provisioningState] The provisioning state.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetConnectorDryrunResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.operationPreviews,
    this.parameters,
    required this.prerequisiteResults,
    required this.provisioningState,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'operationPreviews': pulumi.Input.encodeList<DryrunOperationPreviewResponse, Map<String, dynamic>>(operationPreviews, (value) => value.toMap()),
      'parameters': ?parameters == null ? null : parameters!.toMap(),
      'prerequisiteResults': pulumi.Input.encodeList<BasicErrorDryrunPrerequisiteResultResponse, Map<String, dynamic>>(prerequisiteResults, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetConnectorDryrunResult.fromMap(Map<String, dynamic> map) {
    return GetConnectorDryrunResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      operationPreviews: pulumi.Input.decodeList<DryrunOperationPreviewResponse>(map['operationPreviews'], (value) => DryrunOperationPreviewResponse.fromMap((value as Map).cast<String, dynamic>())),
      parameters: map['parameters'] == null ? null : CreateOrUpdateDryrunParametersResponse.fromMap((map['parameters']! as Map).cast<String, dynamic>()),
      prerequisiteResults: pulumi.Input.decodeList<BasicErrorDryrunPrerequisiteResultResponse>(map['prerequisiteResults'], (value) => BasicErrorDryrunPrerequisiteResultResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

