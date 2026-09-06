// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'create_or_update_dryrun_parameters_response.dart';
import 'dryrun_operation_preview_response.dart';
import 'system_data_response.dart';

/// Result data returned by getConnectorDryrun.
class GetConnectorDryrunResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The name of the resource
  final String? name;
  /// the preview of the operations for creation
  final List<DryrunOperationPreviewResponse>? operationPreviews;
  /// The parameters of the dryrun
  final CreateOrUpdateDryrunParametersResponse? parameters;
  /// the result of the dryrun
  final List<dynamic>? prerequisiteResults;
  /// The provisioning state.
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
  const GetConnectorDryrunResult({
    this.azureApiVersion,
    this.id,
    this.name,
    this.operationPreviews,
    this.parameters,
    this.prerequisiteResults,
    this.provisioningState,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'operationPreviews': ?(() { final guardedValue = operationPreviews; if (guardedValue == null) return null; return pulumi.Input.encodeList<DryrunOperationPreviewResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'parameters': ?parameters?.toMap(),
      'prerequisiteResults': ?prerequisiteResults,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetConnectorDryrunResult.fromMap(Map<String, dynamic> map) {
    return GetConnectorDryrunResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      operationPreviews: (() { final guardedValue = map['operationPreviews']; if (guardedValue == null) return null; return pulumi.Input.decodeList<DryrunOperationPreviewResponse>(guardedValue, (value) => DryrunOperationPreviewResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return CreateOrUpdateDryrunParametersResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      prerequisiteResults: (() { final guardedValue = map['prerequisiteResults']; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
