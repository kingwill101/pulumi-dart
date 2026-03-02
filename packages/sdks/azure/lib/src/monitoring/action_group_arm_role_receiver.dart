// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ActionGroupArmRoleReceiver {
  /// The name of the ARM role receiver.
  final pulumi.Input<String> name;
  /// The arm role id.
  final pulumi.Input<String> roleId;
  /// Enables or disables the common alert schema.
  final pulumi.Input<bool>? useCommonAlertSchema;

  /// Creates a new [ActionGroupArmRoleReceiver].
  /// [name] The name of the ARM role receiver.
  /// [roleId] The arm role id.
  /// [useCommonAlertSchema] Enables or disables the common alert schema.
  ActionGroupArmRoleReceiver({
    required this.name,
    required this.roleId,
    this.useCommonAlertSchema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'roleId': roleId,
      'useCommonAlertSchema': ?useCommonAlertSchema,
    };
  }

  factory ActionGroupArmRoleReceiver.fromMap(Map<String, dynamic> map) {
    return ActionGroupArmRoleReceiver(
      name: (map['name'] as String).input(),
      roleId: (map['roleId'] as String).input(),
      useCommonAlertSchema: map['useCommonAlertSchema'] == null ? null : (map['useCommonAlertSchema'] as bool).input(),
    );
  }
}

