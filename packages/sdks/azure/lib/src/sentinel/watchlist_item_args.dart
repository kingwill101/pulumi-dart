// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sentinel_watchlist_item_watchlist_item_args_doc}
/// The set of arguments for WatchlistItem.
/// {@endtemplate}
/// {@macro pulumi_sentinel_watchlist_item_watchlist_item_args_doc}
class WatchlistItemArgs {
  /// The name in UUID format which should be used for this Sentinel Watchlist Item. Changing this forces a new Sentinel Watchlist Item to be created.
  final pulumi.Input<String>? name;
  /// The key value pairs of the Sentinel Watchlist Item.
  final pulumi.Input<Map<String, String>> properties;
  /// The ID of the Sentinel Watchlist that this Item resides in. Changing this forces a new Sentinel Watchlist Item to be created.
  final pulumi.Input<String> watchlistId;

  /// Creates a new [WatchlistItemArgs].
  /// [name] The name in UUID format which should be used for this Sentinel Watchlist Item. Changing this forces a new Sentinel Watchlist Item to be created.
  /// [properties] The key value pairs of the Sentinel Watchlist Item.
  /// [watchlistId] The ID of the Sentinel Watchlist that this Item resides in. Changing this forces a new Sentinel Watchlist Item to be created.
  const WatchlistItemArgs({
    this.name,
    required this.properties,
    required this.watchlistId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'properties': properties,
      'watchlistId': watchlistId,
    };
  }

  factory WatchlistItemArgs.fromMap(Map<String, dynamic> map) {
    return WatchlistItemArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: pulumi.Input.fromValue((map['properties'] as Map).cast<String, String>()),
      watchlistId: pulumi.Input.fromValue(map['watchlistId'] as String),
    );
  }
}

