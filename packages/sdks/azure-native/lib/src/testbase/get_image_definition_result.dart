// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getImageDefinition.
class GetImageDefinitionResult {
  /// Custom image architecture.
  final String architecture;

  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;

  /// The name of the resource
  final String name;

  /// Custom image OS state.
  final String osState;
  final String provisioningState;

  /// Custom image security type.
  final String securityType;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetImageDefinitionResult].
  /// [architecture] Custom image architecture.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [osState] Custom image OS state.
  /// [provisioningState] Required.
  /// [securityType] Custom image security type.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetImageDefinitionResult({
    required this.architecture,
    required this.azureApiVersion,
    required this.id,
    required this.name,
    required this.osState,
    required this.provisioningState,
    required this.securityType,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': architecture,
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'osState': osState,
      'provisioningState': provisioningState,
      'securityType': securityType,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetImageDefinitionResult.fromMap(Map<String, dynamic> map) {
    return GetImageDefinitionResult(
      architecture: map['architecture'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      osState: map['osState'] as String,
      provisioningState: map['provisioningState'] as String,
      securityType: map['securityType'] as String,
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      type: map['type'] as String,
    );
  }
}
