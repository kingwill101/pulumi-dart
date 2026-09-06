// ignore_for_file: unused_element, unnecessary_cast

import 'sku_response.dart';

/// Result data returned by getSqlPool.
class GetSqlPoolResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Collation mode
  final String? collation;
  /// Date the SQL pool was created
  final String? creationDate;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// Maximum size in bytes
  final double? maxSizeBytes;
  /// The name of the resource
  final String? name;
  /// Resource state
  final String? provisioningState;
  /// Backup database to restore from
  final String? recoverableDatabaseId;
  /// Snapshot time to restore
  final String? restorePointInTime;
  /// SQL pool SKU
  final SkuResponse? sku;
  /// Specifies the time that the sql pool was deleted
  final String? sourceDatabaseDeletionDate;
  /// Resource status
  final String? status;
  /// The storage account type used to store backups for this sql pool.
  final String? storageAccountType;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetSqlPoolResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [collation] Collation mode
  /// [creationDate] Date the SQL pool was created
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [maxSizeBytes] Maximum size in bytes
  /// [name] The name of the resource
  /// [provisioningState] Resource state
  /// [recoverableDatabaseId] Backup database to restore from
  /// [restorePointInTime] Snapshot time to restore
  /// [sku] SQL pool SKU
  /// [sourceDatabaseDeletionDate] Specifies the time that the sql pool was deleted
  /// [status] Resource status
  /// [storageAccountType] The storage account type used to store backups for this sql pool.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetSqlPoolResult({
    this.azureApiVersion,
    String? collation,
    this.creationDate,
    this.id,
    this.location,
    this.maxSizeBytes,
    this.name,
    this.provisioningState,
    this.recoverableDatabaseId,
    this.restorePointInTime,
    this.sku,
    this.sourceDatabaseDeletionDate,
    this.status,
    String? storageAccountType,
    this.tags,
    this.type,
  }) : collation = collation ?? '', storageAccountType = storageAccountType ?? 'GRS';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'collation': ?collation,
      'creationDate': ?creationDate,
      'id': ?id,
      'location': ?location,
      'maxSizeBytes': ?maxSizeBytes,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'recoverableDatabaseId': ?recoverableDatabaseId,
      'restorePointInTime': ?restorePointInTime,
      'sku': ?sku?.toMap(),
      'sourceDatabaseDeletionDate': ?sourceDatabaseDeletionDate,
      'status': ?status,
      'storageAccountType': ?storageAccountType,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetSqlPoolResult.fromMap(Map<String, dynamic> map) {
    return GetSqlPoolResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      collation: (() { final guardedValue = map['collation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationDate: (() { final guardedValue = map['creationDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxSizeBytes: (() { final guardedValue = map['maxSizeBytes']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      recoverableDatabaseId: (() { final guardedValue = map['recoverableDatabaseId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      restorePointInTime: (() { final guardedValue = map['restorePointInTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sourceDatabaseDeletionDate: (() { final guardedValue = map['sourceDatabaseDeletionDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageAccountType: (() { final guardedValue = map['storageAccountType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
