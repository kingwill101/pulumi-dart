// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// User information that made some action
class WatchlistUserInfo {
  /// The object id of the user.
  final pulumi.Input<String>? objectId;

  /// Creates a new [WatchlistUserInfo].
  /// [objectId] The object id of the user.
  WatchlistUserInfo({
    this.objectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectId': ?objectId,
    };
  }

  factory WatchlistUserInfo.fromMap(Map<String, dynamic> map) {
    return WatchlistUserInfo(
      objectId: map['objectId'] == null ? null : (map['objectId'] as String).input(),
    );
  }
}

