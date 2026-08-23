// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WatchlistEntityCount {
  /// (Output)
  /// Output only. Count of asset type entities in the watchlist.
  final pulumi.Input<int>? asset;
  /// (Output)
  /// Output only. Count of user type entities in the watchlist.
  final pulumi.Input<int>? user;

  /// Creates a new [WatchlistEntityCount].
  /// [asset] (Output)
  /// [user] (Output)
  const WatchlistEntityCount({
    this.asset,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asset': ?asset,
      'user': ?user,
    };
  }

  factory WatchlistEntityCount.fromMap(Map<String, dynamic> map) {
    return WatchlistEntityCount(
      asset: (() { final guardedValue = map['asset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
