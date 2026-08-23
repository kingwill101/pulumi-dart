// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getWebAppSlotConfigurationNames.
class GetWebAppSlotConfigurationNamesResult {
  /// List of application settings names.
  final List<String>? appSettingNames;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// List of external Azure storage account identifiers.
  final List<String>? azureStorageConfigNames;
  /// List of connection string names.
  final List<String>? connectionStringNames;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Kind of resource.
  final String? kind;
  /// The name of the resource
  final String name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetWebAppSlotConfigurationNamesResult].
  /// [appSettingNames] List of application settings names.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [azureStorageConfigNames] List of external Azure storage account identifiers.
  /// [connectionStringNames] List of connection string names.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [kind] Kind of resource.
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetWebAppSlotConfigurationNamesResult({
    this.appSettingNames,
    required this.azureApiVersion,
    this.azureStorageConfigNames,
    this.connectionStringNames,
    required this.id,
    this.kind,
    required this.name,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appSettingNames': ?appSettingNames,
      'azureApiVersion': azureApiVersion,
      'azureStorageConfigNames': ?azureStorageConfigNames,
      'connectionStringNames': ?connectionStringNames,
      'id': id,
      'kind': ?kind,
      'name': name,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetWebAppSlotConfigurationNamesResult.fromMap(Map<String, dynamic> map) {
    return GetWebAppSlotConfigurationNamesResult(
      appSettingNames: (() { final guardedValue = map['appSettingNames']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      azureStorageConfigNames: (() { final guardedValue = map['azureStorageConfigNames']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      connectionStringNames: (() { final guardedValue = map['connectionStringNames']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: map['id'] as String,
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
