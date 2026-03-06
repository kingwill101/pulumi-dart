// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// User information that made some action
class WatchlistUserInfoResponse {
  /// The email of the user.
  final pulumi.Input<String> email;
  /// The name of the user.
  final pulumi.Input<String> name;
  /// The object id of the user.
  final pulumi.Input<String>? objectId;

  /// Creates a new [WatchlistUserInfoResponse].
  /// [email] The email of the user.
  /// [name] The name of the user.
  /// [objectId] The object id of the user.
  const WatchlistUserInfoResponse({
    required this.email,
    required this.name,
    this.objectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'name': name,
      'objectId': ?objectId,
    };
  }

  factory WatchlistUserInfoResponse.fromMap(Map<String, dynamic> map) {
    return WatchlistUserInfoResponse(
      email: pulumi.Input.fromValue(map['email'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

