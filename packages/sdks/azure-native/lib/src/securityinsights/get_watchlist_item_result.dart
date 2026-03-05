// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';
import 'watchlist_user_info_response.dart';

/// Result data returned by getWatchlistItem.
class GetWatchlistItemResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The time the watchlist item was created
  final String? created;
  /// Describes a user that created the watchlist item
  final WatchlistUserInfoResponse? createdBy;
  /// key-value pairs for a watchlist item entity mapping
  final dynamic entityMapping;
  /// Etag of the azure resource
  final String? etag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// A flag that indicates if the watchlist item is deleted or not
  final bool? isDeleted;
  /// key-value pairs for a watchlist item
  final dynamic itemsKeyValue;
  /// The name of the resource
  final String name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The tenantId to which the watchlist item belongs to
  final String? tenantId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// The last time the watchlist item was updated
  final String? updated;
  /// Describes a user that updated the watchlist item
  final WatchlistUserInfoResponse? updatedBy;
  /// The id (a Guid) of the watchlist item
  final String? watchlistItemId;
  /// The type of the watchlist item
  final String? watchlistItemType;

  /// Creates a new [GetWatchlistItemResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [created] The time the watchlist item was created
  /// [createdBy] Describes a user that created the watchlist item
  /// [entityMapping] key-value pairs for a watchlist item entity mapping
  /// [etag] Etag of the azure resource
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [isDeleted] A flag that indicates if the watchlist item is deleted or not
  /// [itemsKeyValue] key-value pairs for a watchlist item
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tenantId] The tenantId to which the watchlist item belongs to
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [updated] The last time the watchlist item was updated
  /// [updatedBy] Describes a user that updated the watchlist item
  /// [watchlistItemId] The id (a Guid) of the watchlist item
  /// [watchlistItemType] The type of the watchlist item
  GetWatchlistItemResult({
    required this.azureApiVersion,
    this.created,
    this.createdBy,
    this.entityMapping,
    this.etag,
    required this.id,
    this.isDeleted,
    required this.itemsKeyValue,
    required this.name,
    required this.systemData,
    this.tenantId,
    required this.type,
    this.updated,
    this.updatedBy,
    this.watchlistItemId,
    this.watchlistItemType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'created': ?created,
      'createdBy': ?createdBy?.toMap(),
      'entityMapping': ?entityMapping,
      'etag': ?etag,
      'id': id,
      'isDeleted': ?isDeleted,
      'itemsKeyValue': itemsKeyValue,
      'name': name,
      'systemData': systemData.toMap(),
      'tenantId': ?tenantId,
      'type': type,
      'updated': ?updated,
      'updatedBy': ?updatedBy?.toMap(),
      'watchlistItemId': ?watchlistItemId,
      'watchlistItemType': ?watchlistItemType,
    };
  }

  factory GetWatchlistItemResult.fromMap(Map<String, dynamic> map) {
    return GetWatchlistItemResult(
      azureApiVersion: map['azureApiVersion'] as String,
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdBy: (() { final guardedValue = map['createdBy']; if (guardedValue == null) return null; return WatchlistUserInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      entityMapping: (() { final guardedValue = map['entityMapping']; if (guardedValue == null) return null; return guardedValue; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      isDeleted: (() { final guardedValue = map['isDeleted']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      itemsKeyValue: map['itemsKeyValue'],
      name: map['name'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
      updated: (() { final guardedValue = map['updated']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedBy: (() { final guardedValue = map['updatedBy']; if (guardedValue == null) return null; return WatchlistUserInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      watchlistItemId: (() { final guardedValue = map['watchlistItemId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      watchlistItemType: (() { final guardedValue = map['watchlistItemType']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

