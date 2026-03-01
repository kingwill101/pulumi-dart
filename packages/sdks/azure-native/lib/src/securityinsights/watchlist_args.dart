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
    pulumi.Output<String>? contentType,
    pulumi.Output<String>? created,
    pulumi.Output<WatchlistUserInfo>? createdBy,
    pulumi.Output<String>? defaultDuration,
    pulumi.Output<String>? description,
    required pulumi.Output<String> displayName,
    pulumi.Output<bool>? isDeleted,
    required pulumi.Output<String> itemsSearchKey,
    pulumi.Output<List<String>>? labels,
    pulumi.Output<int>? numberOfLinesToSkip,
    required pulumi.Output<String> provider,
    pulumi.Output<String>? rawContent,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? source,
    pulumi.Output<String>? sourceType,
    pulumi.Output<String>? tenantId,
    pulumi.Output<String>? updated,
    pulumi.Output<WatchlistUserInfo>? updatedBy,
    pulumi.Output<String>? uploadStatus,
    pulumi.Output<String>? watchlistAlias,
    pulumi.Output<String>? watchlistId,
    pulumi.Output<String>? watchlistType,
    required pulumi.Output<String> workspaceName,
  }) :
      contentType = pulumi.Input.asOptionalInput<String>(contentType),
      created = pulumi.Input.asOptionalInput<String>(created),
      createdBy = pulumi.Input.asOptionalInput<WatchlistUserInfo>(createdBy),
      defaultDuration = pulumi.Input.asOptionalInput<String>(defaultDuration),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      isDeleted = pulumi.Input.asOptionalInput<bool>(isDeleted),
      itemsSearchKey = pulumi.Input.asInput<String>(itemsSearchKey),
      labels = pulumi.Input.asOptionalInput<List<String>>(labels),
      numberOfLinesToSkip = pulumi.Input.asOptionalInput<int>(numberOfLinesToSkip),
      provider = pulumi.Input.asInput<String>(provider),
      rawContent = pulumi.Input.asOptionalInput<String>(rawContent),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      source = pulumi.Input.asOptionalInput<String>(source),
      sourceType = pulumi.Input.asOptionalInput<String>(sourceType),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId),
      updated = pulumi.Input.asOptionalInput<String>(updated),
      updatedBy = pulumi.Input.asOptionalInput<WatchlistUserInfo>(updatedBy),
      uploadStatus = pulumi.Input.asOptionalInput<String>(uploadStatus),
      watchlistAlias = pulumi.Input.asOptionalInput<String>(watchlistAlias),
      watchlistId = pulumi.Input.asOptionalInput<String>(watchlistId),
      watchlistType = pulumi.Input.asOptionalInput<String>(watchlistType),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

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
      contentType: map['contentType'] == null ? null : pulumi.Output.create<String>(map['contentType'] as String),
      created: map['created'] == null ? null : pulumi.Output.create<String>(map['created'] as String),
      createdBy: map['createdBy'] == null ? null : pulumi.Output.create<WatchlistUserInfo>(WatchlistUserInfo.fromMap((map['createdBy'] as Map).cast<String, dynamic>())),
      defaultDuration: map['defaultDuration'] == null ? null : pulumi.Output.create<String>(map['defaultDuration'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      isDeleted: map['isDeleted'] == null ? null : pulumi.Output.create<bool>(map['isDeleted'] as bool),
      itemsSearchKey: pulumi.Output.create<String>(map['itemsSearchKey'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<List<String>>((map['labels'] as List).cast<String>()),
      numberOfLinesToSkip: map['numberOfLinesToSkip'] == null ? null : pulumi.Output.create<int>(map['numberOfLinesToSkip'] as int),
      provider: pulumi.Output.create<String>(map['provider'] as String),
      rawContent: map['rawContent'] == null ? null : pulumi.Output.create<String>(map['rawContent'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      source: map['source'] == null ? null : pulumi.Output.create<String>(map['source'] as String),
      sourceType: map['sourceType'] == null ? null : pulumi.Output.create<String>(map['sourceType'] as String),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
      updated: map['updated'] == null ? null : pulumi.Output.create<String>(map['updated'] as String),
      updatedBy: map['updatedBy'] == null ? null : pulumi.Output.create<WatchlistUserInfo>(WatchlistUserInfo.fromMap((map['updatedBy'] as Map).cast<String, dynamic>())),
      uploadStatus: map['uploadStatus'] == null ? null : pulumi.Output.create<String>(map['uploadStatus'] as String),
      watchlistAlias: map['watchlistAlias'] == null ? null : pulumi.Output.create<String>(map['watchlistAlias'] as String),
      watchlistId: map['watchlistId'] == null ? null : pulumi.Output.create<String>(map['watchlistId'] as String),
      watchlistType: map['watchlistType'] == null ? null : pulumi.Output.create<String>(map['watchlistType'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

