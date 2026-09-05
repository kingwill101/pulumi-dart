// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// UserInfo holds the information about the user needed to implement the user.Info interface.
class UserInfo {
  /// extra is any additional information provided by the authenticator.
  final pulumi.Input<Map<String, List<String>>?>? extra;
  /// groups is the names of groups this user is a part of.
  final pulumi.Input<List<String>?>? groups;
  /// uid is a unique value that identifies this user across time. If this user is deleted and another user by the same name is added, they will have different UIDs.
  final pulumi.Input<String?>? uid;
  /// username is the name that uniquely identifies this user among all active users.
  final pulumi.Input<String?>? username;

  /// Creates a new [UserInfo].
  /// [extra] extra is any additional information provided by the authenticator.
  /// [groups] groups is the names of groups this user is a part of.
  /// [uid] uid is a unique value that identifies this user across time. If this user is deleted and another user by the same name is added, they will have different UIDs.
  /// [username] username is the name that uniquely identifies this user among all active users.
  const UserInfo({
    this.extra,
    this.groups,
    this.uid,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extra': ?extra,
      'groups': ?groups,
      'uid': ?uid,
      'username': ?username,
    };
  }

  factory UserInfo.fromMap(Map<String, dynamic> map) {
    return UserInfo(
      extra: (() { final guardedValue = map['extra']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<List<String>>(guardedValue, (value) => (value as List).cast<String>())); })(),
      groups: (() { final guardedValue = map['groups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
