// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SELinuxOptions are the labels to be applied to the container
class SELinuxOptions {
  /// Level is SELinux level label that applies to the container.
  final pulumi.Input<String>? level;
  /// Role is a SELinux role label that applies to the container.
  final pulumi.Input<String>? role;
  /// Type is a SELinux type label that applies to the container.
  final pulumi.Input<String>? type;
  /// User is a SELinux user label that applies to the container.
  final pulumi.Input<String>? user;

  /// Creates a new [SELinuxOptions].
  /// [level] Level is SELinux level label that applies to the container.
  /// [role] Role is a SELinux role label that applies to the container.
  /// [type] Type is a SELinux type label that applies to the container.
  /// [user] User is a SELinux user label that applies to the container.
  const SELinuxOptions({
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

  factory SELinuxOptions.fromMap(Map<String, dynamic> map) {
    return SELinuxOptions(
      level: (() { final guardedValue = map['level']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

