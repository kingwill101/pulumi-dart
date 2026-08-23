// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetActionGroupArmRoleReceiver {
  /// Specifies the name of the Action Group.
  final pulumi.Input<String> name;
  /// The arm role id.
  final pulumi.Input<String> roleId;
  /// Indicates whether to use common alert schema.
  final pulumi.Input<bool> useCommonAlertSchema;

  /// Creates a new [GetActionGroupArmRoleReceiver].
  /// [name] Specifies the name of the Action Group.
  /// [roleId] The arm role id.
  /// [useCommonAlertSchema] Indicates whether to use common alert schema.
  const GetActionGroupArmRoleReceiver({
    required this.name,
    required this.roleId,
    required this.useCommonAlertSchema,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'roleId': roleId,
      'useCommonAlertSchema': useCommonAlertSchema,
    };
  }

  factory GetActionGroupArmRoleReceiver.fromMap(Map<String, dynamic> map) {
    return GetActionGroupArmRoleReceiver(
      name: pulumi.Input.fromValue(map['name'] as String),
      roleId: pulumi.Input.fromValue(map['roleId'] as String),
      useCommonAlertSchema: pulumi.Input.fromValue(map['useCommonAlertSchema'] as bool),
    );
  }
}
