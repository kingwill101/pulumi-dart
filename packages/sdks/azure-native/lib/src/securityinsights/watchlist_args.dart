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
      'createdBy':
          ?pulumi.Input.mapOptionalInputValue<
            WatchlistUserInfo,
            Map<String, dynamic>
          >(createdBy, (value) => value.toMap()),
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
      'updatedBy':
          ?pulumi.Input.mapOptionalInputValue<
            WatchlistUserInfo,
            Map<String, dynamic>
          >(updatedBy, (value) => value.toMap()),
      'uploadStatus': ?uploadStatus,
      'watchlistAlias': ?watchlistAlias,
      'watchlistId': ?watchlistId,
      'watchlistType': ?watchlistType,
      'workspaceName': workspaceName,
    };
  }

  factory WatchlistArgs.fromMap(Map<String, dynamic> map) {
    return WatchlistArgs(
      contentType: (() {
        final guardedValue = map['contentType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      created: (() {
        final guardedValue = map['created'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createdBy: (() {
        final guardedValue = map['createdBy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WatchlistUserInfo.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      defaultDuration: (() {
        final guardedValue = map['defaultDuration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      isDeleted: (() {
        final guardedValue = map['isDeleted'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      itemsSearchKey: pulumi.Input.fromValue(map['itemsSearchKey'] as String),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      numberOfLinesToSkip: (() {
        final guardedValue = map['numberOfLinesToSkip'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      provider: pulumi.Input.fromValue(map['provider'] as String),
      rawContent: (() {
        final guardedValue = map['rawContent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      source: (() {
        final guardedValue = map['source'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceType: (() {
        final guardedValue = map['sourceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tenantId: (() {
        final guardedValue = map['tenantId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      updated: (() {
        final guardedValue = map['updated'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      updatedBy: (() {
        final guardedValue = map['updatedBy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WatchlistUserInfo.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      uploadStatus: (() {
        final guardedValue = map['uploadStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      watchlistAlias: (() {
        final guardedValue = map['watchlistAlias'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      watchlistId: (() {
        final guardedValue = map['watchlistId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      watchlistType: (() {
        final guardedValue = map['watchlistType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
