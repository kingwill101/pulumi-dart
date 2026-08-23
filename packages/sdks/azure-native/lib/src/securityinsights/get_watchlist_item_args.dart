// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_get_watchlist_item_args_doc}
/// Arguments for getWatchlistItem.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_get_watchlist_item_args_doc}
class GetWatchlistItemArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The watchlist alias
  final pulumi.Input<String> watchlistAlias;
  /// The watchlist item id (GUID)
  final pulumi.Input<String> watchlistItemId;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetWatchlistItemArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [watchlistAlias] The watchlist alias
  /// [watchlistItemId] The watchlist item id (GUID)
  /// [workspaceName] The name of the workspace.
  const GetWatchlistItemArgs({
    required this.resourceGroupName,
    required this.watchlistAlias,
    required this.watchlistItemId,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'watchlistAlias': watchlistAlias,
      'watchlistItemId': watchlistItemId,
      'workspaceName': workspaceName,
    };
  }

  factory GetWatchlistItemArgs.fromMap(Map<String, dynamic> map) {
    return GetWatchlistItemArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      watchlistAlias: pulumi.Input.fromValue(map['watchlistAlias'] as String),
      watchlistItemId: pulumi.Input.fromValue(map['watchlistItemId'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
