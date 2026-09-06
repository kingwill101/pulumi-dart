// ignore_for_file: unused_element, unnecessary_cast

import 'storage_account_response.dart';
import 'storage_insight_status_response.dart';

/// Result data returned by getStorageInsightConfig.
class GetStorageInsightConfigResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The names of the blob containers that the workspace should read
  final List<String>? containers;
  /// The ETag of the storage insight.
  final String? eTag;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The name of the resource
  final String? name;
  /// The status of the storage insight
  final StorageInsightStatusResponse? status;
  /// The storage account connection details
  final StorageAccountResponse? storageAccount;
  /// The names of the Azure tables that the workspace should read
  final List<String>? tables;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetStorageInsightConfigResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [containers] The names of the blob containers that the workspace should read
  /// [eTag] The ETag of the storage insight.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [status] The status of the storage insight
  /// [storageAccount] The storage account connection details
  /// [tables] The names of the Azure tables that the workspace should read
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetStorageInsightConfigResult({
    this.azureApiVersion,
    this.containers,
    this.eTag,
    this.id,
    this.name,
    this.status,
    this.storageAccount,
    this.tables,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'containers': ?containers,
      'eTag': ?eTag,
      'id': ?id,
      'name': ?name,
      'status': ?status?.toMap(),
      'storageAccount': ?storageAccount?.toMap(),
      'tables': ?tables,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetStorageInsightConfigResult.fromMap(Map<String, dynamic> map) {
    return GetStorageInsightConfigResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      containers: (() { final guardedValue = map['containers']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      eTag: (() { final guardedValue = map['eTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return StorageInsightStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      storageAccount: (() { final guardedValue = map['storageAccount']; if (guardedValue == null) return null; return StorageAccountResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tables: (() { final guardedValue = map['tables']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
