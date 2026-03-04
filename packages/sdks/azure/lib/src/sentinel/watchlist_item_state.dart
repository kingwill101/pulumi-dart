// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WatchlistItem resources.
class WatchlistItemState {
  /// The name in UUID format which should be used for this Sentinel Watchlist Item. Changing this forces a new Sentinel Watchlist Item to be created.
  final pulumi.Input<String>? name;

  /// The key value pairs of the Sentinel Watchlist Item.
  final pulumi.Input<Map<String, String>>? properties;

  /// The ID of the Sentinel Watchlist that this Item resides in. Changing this forces a new Sentinel Watchlist Item to be created.
  final pulumi.Input<String>? watchlistId;

  /// Creates a new [WatchlistItemState].
  /// [name] The name in UUID format which should be used for this Sentinel Watchlist Item. Changing this forces a new Sentinel Watchlist Item to be created.
  /// [properties] The key value pairs of the Sentinel Watchlist Item.
  /// [watchlistId] The ID of the Sentinel Watchlist that this Item resides in. Changing this forces a new Sentinel Watchlist Item to be created.
  WatchlistItemState({this.name, this.properties, this.watchlistId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'properties': ?properties,
      'watchlistId': ?watchlistId,
    };
  }

  factory WatchlistItemState.fromMap(Map<String, dynamic> map) {
    return WatchlistItemState(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      watchlistId: (() {
        final guardedValue = map['watchlistId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
