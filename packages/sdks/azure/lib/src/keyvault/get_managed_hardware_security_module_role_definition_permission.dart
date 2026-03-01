// ignore_for_file: unused_element, unnecessary_cast


class GetManagedHardwareSecurityModuleRoleDefinitionPermission {
  /// A list of action permission granted.
  final List<String> actions;
  /// A list of data action permission granted.
  final List<String> dataActions;
  /// A list of action permission excluded (but not denied).
  final List<String> notActions;
  /// A list of data action permission granted.
  final List<String> notDataActions;

  /// Creates a new [GetManagedHardwareSecurityModuleRoleDefinitionPermission].
  /// [actions] A list of action permission granted.
  /// [dataActions] A list of data action permission granted.
  /// [notActions] A list of action permission excluded (but not denied).
  /// [notDataActions] A list of data action permission granted.
  GetManagedHardwareSecurityModuleRoleDefinitionPermission({
    required this.actions,
    required this.dataActions,
    required this.notActions,
    required this.notDataActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': actions,
      'dataActions': dataActions,
      'notActions': notActions,
      'notDataActions': notDataActions,
    };
  }

  factory GetManagedHardwareSecurityModuleRoleDefinitionPermission.fromMap(Map<String, dynamic> map) {
    return GetManagedHardwareSecurityModuleRoleDefinitionPermission(
      actions: (map['actions'] as List).cast<String>(),
      dataActions: (map['dataActions'] as List).cast<String>(),
      notActions: (map['notActions'] as List).cast<String>(),
      notDataActions: (map['notDataActions'] as List).cast<String>(),
    );
  }
}

