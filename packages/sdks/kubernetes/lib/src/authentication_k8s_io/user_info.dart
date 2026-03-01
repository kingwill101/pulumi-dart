// ignore_for_file: unused_element, unnecessary_cast


/// UserInfo holds the information about the user needed to implement the user.Info interface.
class UserInfo {
  /// Any additional information provided by the authenticator.
  final Map<String, List<String>>? extra;
  /// The names of groups this user is a part of.
  final List<String>? groups;
  /// A unique value that identifies this user across time. If this user is deleted and another user by the same name is added, they will have different UIDs.
  final String? uid;
  /// The name that uniquely identifies this user among all active users.
  final String? username;

  /// Creates a new [UserInfo].
  /// [extra] Any additional information provided by the authenticator.
  /// [groups] The names of groups this user is a part of.
  /// [uid] A unique value that identifies this user across time. If this user is deleted and another user by the same name is added, they will have different UIDs.
  /// [username] The name that uniquely identifies this user among all active users.
  UserInfo({
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
      extra: map['extra'] == null ? null : (map['extra'] as Map).cast<String, List<String>>(),
      groups: map['groups'] == null ? null : (map['groups'] as List).cast<String>(),
      uid: map['uid'] == null ? null : map['uid'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

