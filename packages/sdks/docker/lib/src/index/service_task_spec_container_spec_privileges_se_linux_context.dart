// ignore_for_file: unused_element, unnecessary_cast


class ServiceTaskSpecContainerSpecPrivilegesSeLinuxContext {
  /// Disable SELinux
  final bool? disable;
  /// SELinux level label
  final String? level;
  /// SELinux role label
  final String? role;
  /// SELinux type label
  final String? type;
  /// SELinux user label
  final String? user;

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
      disable: map['disable'] == null ? null : map['disable'] as bool,
      level: map['level'] == null ? null : map['level'] as String,
      role: map['role'] == null ? null : map['role'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      user: map['user'] == null ? null : map['user'] as String,
    );
  }
}

