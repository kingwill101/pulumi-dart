// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetManagedHardwareSecurityModuleRoleDefinitionPermission {
  /// A list of action permission granted.
  final pulumi.Input<List<String>> actions;
  /// A list of data action permission granted.
  final pulumi.Input<List<String>> dataActions;
  /// A list of action permission excluded (but not denied).
  final pulumi.Input<List<String>> notActions;
  /// A list of data action permission granted.
  final pulumi.Input<List<String>> notDataActions;

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
      actions: ((map['actions'] as List).cast<String>()).input(),
      dataActions: ((map['dataActions'] as List).cast<String>()).input(),
      notActions: ((map['notActions'] as List).cast<String>()).input(),
      notDataActions: ((map['notDataActions'] as List).cast<String>()).input(),
    );
  }
}

