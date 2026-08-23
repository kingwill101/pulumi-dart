// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WatchlistWatchlistUserPreferences {
  /// Optional. Whether the watchlist is pinned on the dashboard.
  final pulumi.Input<bool>? pinned;

  /// Creates a new [WatchlistWatchlistUserPreferences].
  /// [pinned] Optional. Whether the watchlist is pinned on the dashboard.
  const WatchlistWatchlistUserPreferences({
    this.pinned,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pinned': ?pinned,
    };
  }

  factory WatchlistWatchlistUserPreferences.fromMap(Map<String, dynamic> map) {
    return WatchlistWatchlistUserPreferences(
      pinned: (() { final guardedValue = map['pinned']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
