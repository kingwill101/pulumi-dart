// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceTaskSpecContainerSpecPrivilegesSeLinuxContext {
  /// Disable SELinux
  final pulumi.Input<bool>? disable;
  /// SELinux level label
  final pulumi.Input<String>? level;
  /// SELinux role label
  final pulumi.Input<String>? role;
  /// SELinux type label
  final pulumi.Input<String>? type;
  /// SELinux user label
  final pulumi.Input<String>? user;

  /// Creates a new [ServiceTaskSpecContainerSpecPrivilegesSeLinuxContext].
  /// [disable] Disable SELinux
  /// [level] SELinux level label
  /// [role] SELinux role label
  /// [type] SELinux type label
  /// [user] SELinux user label
  ServiceTaskSpecContainerSpecPrivilegesSeLinuxContext({
    this.disable,
    this.level,
    this.role,
    this.type,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disable': ?disable,
      'level': ?level,
      'role': ?role,
      'type': ?type,
      'user': ?user,
    };
  }

  factory ServiceTaskSpecContainerSpecPrivilegesSeLinuxContext.fromMap(Map<String, dynamic> map) {
    return ServiceTaskSpecContainerSpecPrivilegesSeLinuxContext(
      disable: map['disable'] == null ? null : (map['disable'] as bool).input(),
      level: map['level'] == null ? null : (map['level'] as String).input(),
      role: map['role'] == null ? null : (map['role'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      user: map['user'] == null ? null : (map['user'] as String).input(),
    );
  }
}

