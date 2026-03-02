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
      'createdBy': ?createdBy == null ? null : createdBy!.toMap(),
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
      'updatedBy': ?updatedBy == null ? null : updatedBy!.toMap(),
      'watchlistItemId': ?watchlistItemId,
      'watchlistItemType': ?watchlistItemType,
    };
  }

  factory GetWatchlistItemResult.fromMap(Map<String, dynamic> map) {
    return GetWatchlistItemResult(
      azureApiVersion: map['azureApiVersion'] as String,
      created: map['created'] == null ? null : map['created']! as String,
      createdBy: map['createdBy'] == null ? null : WatchlistUserInfoResponse.fromMap((map['createdBy']! as Map).cast<String, dynamic>()),
      entityMapping: map['entityMapping'] == null ? null : map['entityMapping']!,
      etag: map['etag'] == null ? null : map['etag']! as String,
      id: map['id'] as String,
      isDeleted: map['isDeleted'] == null ? null : map['isDeleted']! as bool,
      itemsKeyValue: map['itemsKeyValue'],
      name: map['name'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tenantId: map['tenantId'] == null ? null : map['tenantId']! as String,
      type: map['type'] as String,
      updated: map['updated'] == null ? null : map['updated']! as String,
      updatedBy: map['updatedBy'] == null ? null : WatchlistUserInfoResponse.fromMap((map['updatedBy']! as Map).cast<String, dynamic>()),
      watchlistItemId: map['watchlistItemId'] == null ? null : map['watchlistItemId']! as String,
      watchlistItemType: map['watchlistItemType'] == null ? null : map['watchlistItemType']! as String,
    );
  }
}

