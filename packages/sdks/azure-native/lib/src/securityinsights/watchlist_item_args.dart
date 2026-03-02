// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'watchlist_user_info.dart';

/// {@template pulumi_securityinsights_watchlist_item_args_doc}
/// The set of arguments for WatchlistItem.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_watchlist_item_args_doc}
class WatchlistItemArgs {
  /// The time the watchlist item was created
  final pulumi.Input<String>? created;
  /// Describes a user that created the watchlist item
  final pulumi.Input<WatchlistUserInfo>? createdBy;
  /// key-value pairs for a watchlist item entity mapping
  final pulumi.Input<dynamic>? entityMapping;
  /// A flag that indicates if the watchlist item is deleted or not
  final pulumi.Input<bool>? isDeleted;
  /// key-value pairs for a watchlist item
  final pulumi.Input<dynamic> itemsKeyValue;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The tenantId to which the watchlist item belongs to
  final pulumi.Input<String>? tenantId;
  /// The last time the watchlist item was updated
  final pulumi.Input<String>? updated;
  /// Describes a user that updated the watchlist item
  final pulumi.Input<WatchlistUserInfo>? updatedBy;
  /// The watchlist alias
  final pulumi.Input<String> watchlistAlias;
  /// The id (a Guid) of the watchlist item
  final pulumi.Input<String>? watchlistItemId;
  /// The type of the watchlist item
  final pulumi.Input<String>? watchlistItemType;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [WatchlistItemArgs].
  /// [created] The time the watchlist item was created
  /// [createdBy] Describes a user that created the watchlist item
  /// [entityMapping] key-value pairs for a watchlist item entity mapping
  /// [isDeleted] A flag that indicates if the watchlist item is deleted or not
  /// [itemsKeyValue] key-value pairs for a watchlist item
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tenantId] The tenantId to which the watchlist item belongs to
  /// [updated] The last time the watchlist item was updated
  /// [updatedBy] Describes a user that updated the watchlist item
  /// [watchlistAlias] The watchlist alias
  /// [watchlistItemId] The id (a Guid) of the watchlist item
  /// [watchlistItemType] The type of the watchlist item
  /// [workspaceName] The name of the workspace.
  WatchlistItemArgs({
    this.created,
    this.createdBy,
    this.entityMapping,
    this.isDeleted,
    required this.itemsKeyValue,
    required this.resourceGroupName,
    this.tenantId,
    this.updated,
    this.updatedBy,
    required this.watchlistAlias,
    this.watchlistItemId,
    this.watchlistItemType,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': ?created,
      'createdBy': ?pulumi.Input.mapOptionalInputValue<WatchlistUserInfo, Map<String, dynamic>>(createdBy, (value) => value.toMap()),
      'entityMapping': ?entityMapping,
      'isDeleted': ?isDeleted,
      'itemsKeyValue': itemsKeyValue,
      'resourceGroupName': resourceGroupName,
      'tenantId': ?tenantId,
      'updated': ?updated,
      'updatedBy': ?pulumi.Input.mapOptionalInputValue<WatchlistUserInfo, Map<String, dynamic>>(updatedBy, (value) => value.toMap()),
      'watchlistAlias': watchlistAlias,
      'watchlistItemId': ?watchlistItemId,
      'watchlistItemType': ?watchlistItemType,
      'workspaceName': workspaceName,
    };
  }

  factory WatchlistItemArgs.fromMap(Map<String, dynamic> map) {
    return WatchlistItemArgs(
      created: map['created'] == null ? null : (map['created'] as String).input(),
      createdBy: map['createdBy'] == null ? null : (WatchlistUserInfo.fromMap((map['createdBy'] as Map).cast<String, dynamic>())).input(),
      entityMapping: map['entityMapping'] == null ? null : (map['entityMapping']).input(),
      isDeleted: map['isDeleted'] == null ? null : (map['isDeleted'] as bool).input(),
      itemsKeyValue: (map['itemsKeyValue']).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId'] as String).input(),
      updated: map['updated'] == null ? null : (map['updated'] as String).input(),
      updatedBy: map['updatedBy'] == null ? null : (WatchlistUserInfo.fromMap((map['updatedBy'] as Map).cast<String, dynamic>())).input(),
      watchlistAlias: (map['watchlistAlias'] as String).input(),
      watchlistItemId: map['watchlistItemId'] == null ? null : (map['watchlistItemId'] as String).input(),
      watchlistItemType: map['watchlistItemType'] == null ? null : (map['watchlistItemType'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

