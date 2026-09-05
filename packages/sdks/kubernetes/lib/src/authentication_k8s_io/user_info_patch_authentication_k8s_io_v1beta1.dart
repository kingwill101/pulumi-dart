// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// UserInfo holds the information about the user needed to implement the user.Info interface.
class UserInfoPatchAuthenticationK8sIoV1beta1 {
  /// Any additional information provided by the authenticator.
  final pulumi.Input<Map<String, List<String>>?>? extra;
  /// The names of groups this user is a part of.
  final pulumi.Input<List<String>?>? groups;
  /// A unique value that identifies this user across time. If this user is deleted and another user by the same name is added, they will have different UIDs.
  final pulumi.Input<String?>? uid;
  /// The name that uniquely identifies this user among all active users.
  final pulumi.Input<String?>? username;

  /// Creates a new [UserInfoPatchAuthenticationK8sIoV1beta1].
  /// [extra] Any additional information provided by the authenticator.
  /// [groups] The names of groups this user is a part of.
  /// [uid] A unique value that identifies this user across time. If this user is deleted and another user by the same name is added, they will have different UIDs.
  /// [username] The name that uniquely identifies this user among all active users.
  const UserInfoPatchAuthenticationK8sIoV1beta1({
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

  factory UserInfoPatchAuthenticationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return UserInfoPatchAuthenticationK8sIoV1beta1(
      extra: (() { final guardedValue = map['extra']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<List<String>>(guardedValue, (value) => (value as List).cast<String>())); })(),
      groups: (() { final guardedValue = map['groups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
