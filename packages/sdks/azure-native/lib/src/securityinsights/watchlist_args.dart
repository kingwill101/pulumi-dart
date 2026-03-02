// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'watchlist_user_info.dart';

/// {@template pulumi_securityinsights_watchlist_args_doc}
/// The set of arguments for Watchlist.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_watchlist_args_doc}
class WatchlistArgs {
  /// The content type of the raw content. Example : text/csv or text/tsv
  final pulumi.Input<String>? contentType;
  /// The time the watchlist was created
  final pulumi.Input<String>? created;
  /// Describes a user that created the watchlist
  final pulumi.Input<WatchlistUserInfo>? createdBy;
  /// The default duration of a watchlist (in ISO 8601 duration format)
  final pulumi.Input<String>? defaultDuration;
  /// A description of the watchlist
  final pulumi.Input<String>? description;
  /// The display name of the watchlist
  final pulumi.Input<String> displayName;
  /// A flag that indicates if the watchlist is deleted or not
  final pulumi.Input<bool>? isDeleted;
  /// The search key is used to optimize query performance when using watchlists for joins with other data. For example, enable a column with IP addresses to be the designated SearchKey field, then use this field as the key field when joining to other event data by IP address.
  final pulumi.Input<String> itemsSearchKey;
  /// List of labels relevant to this watchlist
  final pulumi.Input<List<String>>? labels;
  /// The number of lines in a csv/tsv content to skip before the header
  final pulumi.Input<int>? numberOfLinesToSkip;
  /// The provider of the watchlist
  final pulumi.Input<String> provider;
  /// The raw content that represents to watchlist items to create. In case of csv/tsv content type, it's the content of the file that will parsed by the endpoint
  final pulumi.Input<String>? rawContent;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The filename of the watchlist, called 'source'
  final pulumi.Input<String>? source;
  /// The sourceType of the watchlist
  final pulumi.Input<String>? sourceType;
  /// The tenantId where the watchlist belongs to
  final pulumi.Input<String>? tenantId;
  /// The last time the watchlist was updated
  final pulumi.Input<String>? updated;
  /// Describes a user that updated the watchlist
  final pulumi.Input<WatchlistUserInfo>? updatedBy;
  /// The status of the Watchlist upload : New, InProgress or Complete. **Note** : When a Watchlist upload status is InProgress, the Watchlist cannot be deleted
  final pulumi.Input<String>? uploadStatus;
  /// The alias of the watchlist
  final pulumi.Input<String>? watchlistAlias;
  /// The id (a Guid) of the watchlist
  final pulumi.Input<String>? watchlistId;
  /// The type of the watchlist
  final pulumi.Input<String>? watchlistType;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [WatchlistArgs].
  /// [contentType] The content type of the raw content. Example : text/csv or text/tsv
  /// [created] The time the watchlist was created
  /// [createdBy] Describes a user that created the watchlist
  /// [defaultDuration] The default duration of a watchlist (in ISO 8601 duration format)
  /// [description] A description of the watchlist
  /// [displayName] The display name of the watchlist
  /// [isDeleted] A flag that indicates if the watchlist is deleted or not
  /// [itemsSearchKey] The search key is used to optimize query performance when using watchlists for joins with other data. For example, enable a column with IP addresses to be the designated SearchKey field, then use this field as the key field when joining to other event data by IP address.
  /// [labels] List of labels relevant to this watchlist
  /// [numberOfLinesToSkip] The number of lines in a csv/tsv content to skip before the header
  /// [provider] The provider of the watchlist
  /// [rawContent] The raw content that represents to watchlist items to create. In case of csv/tsv content type, it's the content of the file that will parsed by the endpoint
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [source] The filename of the watchlist, called 'source'
  /// [sourceType] The sourceType of the watchlist
  /// [tenantId] The tenantId where the watchlist belongs to
  /// [updated] The last time the watchlist was updated
  /// [updatedBy] Describes a user that updated the watchlist
  /// [uploadStatus] The status of the Watchlist upload : New, InProgress or Complete. **Note** : When a Watchlist upload status is InProgress, the Watchlist cannot be deleted
  /// [watchlistAlias] The alias of the watchlist
  /// [watchlistId] The id (a Guid) of the watchlist
  /// [watchlistType] The type of the watchlist
  /// [workspaceName] The name of the workspace.
  WatchlistArgs({
    this.contentType,
    this.created,
    this.createdBy,
    this.defaultDuration,
    this.description,
    required this.displayName,
    this.isDeleted,
    required this.itemsSearchKey,
    this.labels,
    this.numberOfLinesToSkip,
    required this.provider,
    this.rawContent,
    required this.resourceGroupName,
    this.source,
    this.sourceType,
    this.tenantId,
    this.updated,
    this.updatedBy,
    this.uploadStatus,
    this.watchlistAlias,
    this.watchlistId,
    this.watchlistType,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentType': ?contentType,
      'created': ?created,
      'createdBy': ?pulumi.Input.mapOptionalInputValue<WatchlistUserInfo, Map<String, dynamic>>(createdBy, (value) => value.toMap()),
      'defaultDuration': ?defaultDuration,
      'description': ?description,
      'displayName': displayName,
      'isDeleted': ?isDeleted,
      'itemsSearchKey': itemsSearchKey,
      'labels': ?labels,
      'numberOfLinesToSkip': ?numberOfLinesToSkip,
      'provider': provider,
      'rawContent': ?rawContent,
      'resourceGroupName': resourceGroupName,
      'source': ?source,
      'sourceType': ?sourceType,
      'tenantId': ?tenantId,
      'updated': ?updated,
      'updatedBy': ?pulumi.Input.mapOptionalInputValue<WatchlistUserInfo, Map<String, dynamic>>(updatedBy, (value) => value.toMap()),
      'uploadStatus': ?uploadStatus,
      'watchlistAlias': ?watchlistAlias,
      'watchlistId': ?watchlistId,
      'watchlistType': ?watchlistType,
      'workspaceName': workspaceName,
    };
  }

  factory WatchlistArgs.fromMap(Map<String, dynamic> map) {
    return WatchlistArgs(
      contentType: map['contentType'] == null ? null : (map['contentType']! as String).input(),
      created: map['created'] == null ? null : (map['created']! as String).input(),
      createdBy: map['createdBy'] == null ? null : (WatchlistUserInfo.fromMap((map['createdBy']! as Map).cast<String, dynamic>())).input(),
      defaultDuration: map['defaultDuration'] == null ? null : (map['defaultDuration']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: (map['displayName'] as String).input(),
      isDeleted: map['isDeleted'] == null ? null : (map['isDeleted']! as bool).input(),
      itemsSearchKey: (map['itemsSearchKey'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as List).cast<String>()).input(),
      numberOfLinesToSkip: map['numberOfLinesToSkip'] == null ? null : (map['numberOfLinesToSkip']! as int).input(),
      provider: (map['provider'] as String).input(),
      rawContent: map['rawContent'] == null ? null : (map['rawContent']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      source: map['source'] == null ? null : (map['source']! as String).input(),
      sourceType: map['sourceType'] == null ? null : (map['sourceType']! as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId']! as String).input(),
      updated: map['updated'] == null ? null : (map['updated']! as String).input(),
      updatedBy: map['updatedBy'] == null ? null : (WatchlistUserInfo.fromMap((map['updatedBy']! as Map).cast<String, dynamic>())).input(),
      uploadStatus: map['uploadStatus'] == null ? null : (map['uploadStatus']! as String).input(),
      watchlistAlias: map['watchlistAlias'] == null ? null : (map['watchlistAlias']! as String).input(),
      watchlistId: map['watchlistId'] == null ? null : (map['watchlistId']! as String).input(),
      watchlistType: map['watchlistType'] == null ? null : (map['watchlistType']! as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

