// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_get_watchlist_args_doc}
/// Arguments for getWatchlist.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_get_watchlist_args_doc}
class GetWatchlistArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The watchlist alias
  final pulumi.Input<String> watchlistAlias;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetWatchlistArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [watchlistAlias] The watchlist alias
  /// [workspaceName] The name of the workspace.
  GetWatchlistArgs({
    required this.resourceGroupName,
    required this.watchlistAlias,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'watchlistAlias': watchlistAlias,
      'workspaceName': workspaceName,
    };
  }

  factory GetWatchlistArgs.fromMap(Map<String, dynamic> map) {
    return GetWatchlistArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      watchlistAlias: pulumi.Input.fromValue(map['watchlistAlias'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}

