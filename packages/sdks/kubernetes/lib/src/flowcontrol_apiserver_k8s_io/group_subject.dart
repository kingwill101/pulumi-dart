// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GroupSubject holds detailed information for group-kind subject.
class GroupSubject {
  /// name is the user group that matches, or "*" to match all user groups. See https://github.com/kubernetes/apiserver/blob/master/pkg/authentication/user/user.go for some well-known group names. Required.
  final pulumi.Input<String> name;

  /// Creates a new [GroupSubject].
  /// [name] name is the user group that matches, or "*" to match all user groups. See https://github.com/kubernetes/apiserver/blob/master/pkg/authentication/user/user.go for some well-known group names. Required.
  const GroupSubject({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GroupSubject.fromMap(Map<String, dynamic> map) {
    return GroupSubject(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
