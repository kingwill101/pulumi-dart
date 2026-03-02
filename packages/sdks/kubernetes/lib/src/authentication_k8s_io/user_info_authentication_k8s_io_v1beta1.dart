// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// UserInfo holds the information about the user needed to implement the user.Info interface.
class UserInfoAuthenticationK8sIoV1beta1 {
  /// Any additional information provided by the authenticator.
  final pulumi.Input<Map<String, List<String>>>? extra;
  /// The names of groups this user is a part of.
  final pulumi.Input<List<String>>? groups;
  /// A unique value that identifies this user across time. If this user is deleted and another user by the same name is added, they will have different UIDs.
  final pulumi.Input<String>? uid;
  /// The name that uniquely identifies this user among all active users.
  final pulumi.Input<String>? username;

  /// Creates a new [UserInfoAuthenticationK8sIoV1beta1].
  /// [extra] Any additional information provided by the authenticator.
  /// [groups] The names of groups this user is a part of.
  /// [uid] A unique value that identifies this user across time. If this user is deleted and another user by the same name is added, they will have different UIDs.
  /// [username] The name that uniquely identifies this user among all active users.
  UserInfoAuthenticationK8sIoV1beta1({
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

  factory UserInfoAuthenticationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return UserInfoAuthenticationK8sIoV1beta1(
      extra: map['extra'] == null ? null : ((map['extra']! as Map).cast<String, List<String>>()).input(),
      groups: map['groups'] == null ? null : ((map['groups']! as List).cast<String>()).input(),
      uid: map['uid'] == null ? null : (map['uid']! as String).input(),
      username: map['username'] == null ? null : (map['username']! as String).input(),
    );
  }
}

