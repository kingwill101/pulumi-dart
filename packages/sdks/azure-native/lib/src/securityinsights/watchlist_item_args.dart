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
  const WatchlistItemArgs({
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
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdBy: (() { final guardedValue = map['createdBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WatchlistUserInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      entityMapping: (() { final guardedValue = map['entityMapping']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      isDeleted: (() { final guardedValue = map['isDeleted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      itemsKeyValue: pulumi.Input.fromValue(map['itemsKeyValue']),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updated: (() { final guardedValue = map['updated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedBy: (() { final guardedValue = map['updatedBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WatchlistUserInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      watchlistAlias: pulumi.Input.fromValue(map['watchlistAlias'] as String),
      watchlistItemId: (() { final guardedValue = map['watchlistItemId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      watchlistItemType: (() { final guardedValue = map['watchlistItemType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}

