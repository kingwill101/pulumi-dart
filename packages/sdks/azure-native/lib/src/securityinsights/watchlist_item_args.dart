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
    pulumi.Output<String>? created,
    pulumi.Output<WatchlistUserInfo>? createdBy,
    pulumi.Output<dynamic>? entityMapping,
    pulumi.Output<bool>? isDeleted,
    required pulumi.Output<dynamic> itemsKeyValue,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? tenantId,
    pulumi.Output<String>? updated,
    pulumi.Output<WatchlistUserInfo>? updatedBy,
    required pulumi.Output<String> watchlistAlias,
    pulumi.Output<String>? watchlistItemId,
    pulumi.Output<String>? watchlistItemType,
    required pulumi.Output<String> workspaceName,
  }) :
      created = pulumi.Input.asOptionalInput<String>(created),
      createdBy = pulumi.Input.asOptionalInput<WatchlistUserInfo>(createdBy),
      entityMapping = pulumi.Input.asOptionalInput<dynamic>(entityMapping),
      isDeleted = pulumi.Input.asOptionalInput<bool>(isDeleted),
      itemsKeyValue = pulumi.Input.asInput<dynamic>(itemsKeyValue),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId),
      updated = pulumi.Input.asOptionalInput<String>(updated),
      updatedBy = pulumi.Input.asOptionalInput<WatchlistUserInfo>(updatedBy),
      watchlistAlias = pulumi.Input.asInput<String>(watchlistAlias),
      watchlistItemId = pulumi.Input.asOptionalInput<String>(watchlistItemId),
      watchlistItemType = pulumi.Input.asOptionalInput<String>(watchlistItemType),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

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
      created: map['created'] == null ? null : pulumi.Output.create<String>(map['created'] as String),
      createdBy: map['createdBy'] == null ? null : pulumi.Output.create<WatchlistUserInfo>(WatchlistUserInfo.fromMap((map['createdBy'] as Map).cast<String, dynamic>())),
      entityMapping: map['entityMapping'] == null ? null : pulumi.Output.create<dynamic>(map['entityMapping']),
      isDeleted: map['isDeleted'] == null ? null : pulumi.Output.create<bool>(map['isDeleted'] as bool),
      itemsKeyValue: pulumi.Output.create<dynamic>(map['itemsKeyValue']),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
      updated: map['updated'] == null ? null : pulumi.Output.create<String>(map['updated'] as String),
      updatedBy: map['updatedBy'] == null ? null : pulumi.Output.create<WatchlistUserInfo>(WatchlistUserInfo.fromMap((map['updatedBy'] as Map).cast<String, dynamic>())),
      watchlistAlias: pulumi.Output.create<String>(map['watchlistAlias'] as String),
      watchlistItemId: map['watchlistItemId'] == null ? null : pulumi.Output.create<String>(map['watchlistItemId'] as String),
      watchlistItemType: map['watchlistItemType'] == null ? null : pulumi.Output.create<String>(map['watchlistItemType'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

