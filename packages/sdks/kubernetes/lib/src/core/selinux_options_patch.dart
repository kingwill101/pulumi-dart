// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SELinuxOptions are the labels to be applied to the container
class SELinuxOptionsPatch {
  /// Level is SELinux level label that applies to the container.
  final pulumi.Input<String>? level;
  /// Role is a SELinux role label that applies to the container.
  final pulumi.Input<String>? role;
  /// Type is a SELinux type label that applies to the container.
  final pulumi.Input<String>? type;
  /// User is a SELinux user label that applies to the container.
  final pulumi.Input<String>? user;

  /// Creates a new [SELinuxOptionsPatch].
  /// [level] Level is SELinux level label that applies to the container.
  /// [role] Role is a SELinux role label that applies to the container.
  /// [type] Type is a SELinux type label that applies to the container.
  /// [user] User is a SELinux user label that applies to the container.
  SELinuxOptionsPatch({
    this.level,
    this.role,
    this.type,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'level': ?level,
      'role': ?role,
      'type': ?type,
      'user': ?user,
    };
  }

  factory SELinuxOptionsPatch.fromMap(Map<String, dynamic> map) {
    return SELinuxOptionsPatch(
      level: map['level'] == null ? null : (map['level'] as String).input(),
      role: map['role'] == null ? null : (map['role'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      user: map['user'] == null ? null : (map['user'] as String).input(),
    );
  }
}

