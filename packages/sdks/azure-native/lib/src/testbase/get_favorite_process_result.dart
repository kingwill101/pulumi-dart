// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getFavoriteProcess.
class GetFavoriteProcessResult {
  /// The actual name of the favorite process. It will be equal to resource name except for the scenario that the process name contains characters that are not allowed in the resource name.
  final String? actualProcessName;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetFavoriteProcessResult].
  /// [actualProcessName] The actual name of the favorite process. It will be equal to resource name except for the scenario that the process name contains characters that are not allowed in the resource name.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetFavoriteProcessResult({
    this.actualProcessName,
    this.azureApiVersion,
    this.id,
    this.name,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actualProcessName': ?actualProcessName,
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetFavoriteProcessResult.fromMap(Map<String, dynamic> map) {
    return GetFavoriteProcessResult(
      actualProcessName: (() { final guardedValue = map['actualProcessName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
