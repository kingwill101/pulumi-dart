// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';
import 'watchlist_user_info_response.dart';

/// Result data returned by getWatchlist.
class GetWatchlistResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// The content type of the raw content. Example : text/csv or text/tsv
  final String? contentType;

  /// The time the watchlist was created
  final String? created;

  /// Describes a user that created the watchlist
  final WatchlistUserInfoResponse? createdBy;

  /// The default duration of a watchlist (in ISO 8601 duration format)
  final String? defaultDuration;

  /// A description of the watchlist
  final String? description;

  /// The display name of the watchlist
  final String displayName;

  /// Etag of the azure resource
  final String? etag;

  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;

  /// A flag that indicates if the watchlist is deleted or not
  final bool? isDeleted;

  /// The search key is used to optimize query performance when using watchlists for joins with other data. For example, enable a column with IP addresses to be the designated SearchKey field, then use this field as the key field when joining to other event data by IP address.
  final String itemsSearchKey;

  /// List of labels relevant to this watchlist
  final List<String>? labels;

  /// The name of the resource
  final String name;

  /// The number of lines in a csv/tsv content to skip before the header
  final int? numberOfLinesToSkip;

  /// The provider of the watchlist
  final String provider;

  /// Describes provisioning state
  final String provisioningState;

  /// The raw content that represents to watchlist items to create. In case of csv/tsv content type, it's the content of the file that will parsed by the endpoint
  final String? rawContent;

  /// The filename of the watchlist, called 'source'
  final String? source;

  /// The sourceType of the watchlist
  final String? sourceType;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// The tenantId where the watchlist belongs to
  final String? tenantId;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// The last time the watchlist was updated
  final String? updated;

  /// Describes a user that updated the watchlist
  final WatchlistUserInfoResponse? updatedBy;

  /// The status of the Watchlist upload : New, InProgress or Complete. **Note** : When a Watchlist upload status is InProgress, the Watchlist cannot be deleted
  final String? uploadStatus;

  /// The alias of the watchlist
  final String? watchlistAlias;

  /// The id (a Guid) of the watchlist
  final String? watchlistId;

  /// The type of the watchlist
  final String? watchlistType;

  /// Creates a new [GetWatchlistResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [contentType] The content type of the raw content. Example : text/csv or text/tsv
  /// [created] The time the watchlist was created
  /// [createdBy] Describes a user that created the watchlist
  /// [defaultDuration] The default duration of a watchlist (in ISO 8601 duration format)
  /// [description] A description of the watchlist
  /// [displayName] The display name of the watchlist
  /// [etag] Etag of the azure resource
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [isDeleted] A flag that indicates if the watchlist is deleted or not
  /// [itemsSearchKey] The search key is used to optimize query performance when using watchlists for joins with other data. For example, enable a column with IP addresses to be the designated SearchKey field, then use this field as the key field when joining to other event data by IP address.
  /// [labels] List of labels relevant to this watchlist
  /// [name] The name of the resource
  /// [numberOfLinesToSkip] The number of lines in a csv/tsv content to skip before the header
  /// [provider] The provider of the watchlist
  /// [provisioningState] Describes provisioning state
  /// [rawContent] The raw content that represents to watchlist items to create. In case of csv/tsv content type, it's the content of the file that will parsed by the endpoint
  /// [source] The filename of the watchlist, called 'source'
  /// [sourceType] The sourceType of the watchlist
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tenantId] The tenantId where the watchlist belongs to
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [updated] The last time the watchlist was updated
  /// [updatedBy] Describes a user that updated the watchlist
  /// [uploadStatus] The status of the Watchlist upload : New, InProgress or Complete. **Note** : When a Watchlist upload status is InProgress, the Watchlist cannot be deleted
  /// [watchlistAlias] The alias of the watchlist
  /// [watchlistId] The id (a Guid) of the watchlist
  /// [watchlistType] The type of the watchlist
  GetWatchlistResult({
    required this.azureApiVersion,
    this.contentType,
    this.created,
    this.createdBy,
    this.defaultDuration,
    this.description,
    required this.displayName,
    this.etag,
    required this.id,
    this.isDeleted,
    required this.itemsSearchKey,
    this.labels,
    required this.name,
    this.numberOfLinesToSkip,
    required this.provider,
    required this.provisioningState,
    this.rawContent,
    this.source,
    this.sourceType,
    required this.systemData,
    this.tenantId,
    required this.type,
    this.updated,
    this.updatedBy,
    this.uploadStatus,
    this.watchlistAlias,
    this.watchlistId,
    this.watchlistType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'contentType': ?contentType,
      'created': ?created,
      'createdBy': ?createdBy?.toMap(),
      'defaultDuration': ?defaultDuration,
      'description': ?description,
      'displayName': displayName,
      'etag': ?etag,
      'id': id,
      'isDeleted': ?isDeleted,
      'itemsSearchKey': itemsSearchKey,
      'labels': ?labels,
      'name': name,
      'numberOfLinesToSkip': ?numberOfLinesToSkip,
      'provider': provider,
      'provisioningState': provisioningState,
      'rawContent': ?rawContent,
      'source': ?source,
      'sourceType': ?sourceType,
      'systemData': systemData.toMap(),
      'tenantId': ?tenantId,
      'type': type,
      'updated': ?updated,
      'updatedBy': ?updatedBy?.toMap(),
      'uploadStatus': ?uploadStatus,
      'watchlistAlias': ?watchlistAlias,
      'watchlistId': ?watchlistId,
      'watchlistType': ?watchlistType,
    };
  }

  factory GetWatchlistResult.fromMap(Map<String, dynamic> map) {
    return GetWatchlistResult(
      azureApiVersion: map['azureApiVersion'] as String,
      contentType: (() {
        final guardedValue = map['contentType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      created: (() {
        final guardedValue = map['created'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      createdBy: (() {
        final guardedValue = map['createdBy'];
        if (guardedValue == null) return null;
        return WatchlistUserInfoResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      defaultDuration: (() {
        final guardedValue = map['defaultDuration'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      displayName: map['displayName'] as String,
      etag: (() {
        final guardedValue = map['etag'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      isDeleted: (() {
        final guardedValue = map['isDeleted'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      itemsSearchKey: map['itemsSearchKey'] as String,
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
      name: map['name'] as String,
      numberOfLinesToSkip: (() {
        final guardedValue = map['numberOfLinesToSkip'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      provider: map['provider'] as String,
      provisioningState: map['provisioningState'] as String,
      rawContent: (() {
        final guardedValue = map['rawContent'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      source: (() {
        final guardedValue = map['source'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      sourceType: (() {
        final guardedValue = map['sourceType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      tenantId: (() {
        final guardedValue = map['tenantId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      type: map['type'] as String,
      updated: (() {
        final guardedValue = map['updated'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      updatedBy: (() {
        final guardedValue = map['updatedBy'];
        if (guardedValue == null) return null;
        return WatchlistUserInfoResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      uploadStatus: (() {
        final guardedValue = map['uploadStatus'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      watchlistAlias: (() {
        final guardedValue = map['watchlistAlias'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      watchlistId: (() {
        final guardedValue = map['watchlistId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      watchlistType: (() {
        final guardedValue = map['watchlistType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
