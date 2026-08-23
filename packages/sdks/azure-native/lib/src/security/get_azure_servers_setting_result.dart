// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getAzureServersSetting.
class GetAzureServersSettingResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The kind of the server vulnerability assessments setting
  /// Expected value is 'AzureServersSetting'.
  final String kind;
  /// The name of the resource
  final String name;
  /// The selected vulnerability assessments provider on Azure servers in the defined scope.
  final String selectedProvider;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetAzureServersSettingResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [kind] The kind of the server vulnerability assessments setting
  /// [name] The name of the resource
  /// [selectedProvider] The selected vulnerability assessments provider on Azure servers in the defined scope.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetAzureServersSettingResult({
    required this.azureApiVersion,
    required this.id,
    required this.kind,
    required this.name,
    required this.selectedProvider,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'kind': kind,
      'name': name,
      'selectedProvider': selectedProvider,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetAzureServersSettingResult.fromMap(Map<String, dynamic> map) {
    return GetAzureServersSettingResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      selectedProvider: map['selectedProvider'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
