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
      disable: (() { final guardedValue = map['disable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      level: (() { final guardedValue = map['level']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

