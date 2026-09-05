// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ActionGroupArmRoleReceiver {
  /// The name of the ARM role receiver.
  final pulumi.Input<String> name;
  /// The arm role id.
  final pulumi.Input<String> roleId;
  /// Enables or disables the common alert schema.
  final pulumi.Input<bool?>? useCommonAlertSchema;

  /// Creates a new [ActionGroupArmRoleReceiver].
  /// [name] The name of the ARM role receiver.
  /// [roleId] The arm role id.
  /// [useCommonAlertSchema] Enables or disables the common alert schema.
  const ActionGroupArmRoleReceiver({
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
      name: pulumi.Input.fromValue(map['name'] as String),
      roleId: pulumi.Input.fromValue(map['roleId'] as String),
      useCommonAlertSchema: (() { final guardedValue = map['useCommonAlertSchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
