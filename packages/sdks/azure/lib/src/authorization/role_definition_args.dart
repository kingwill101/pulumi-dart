// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_definition_permission.dart';

/// {@template pulumi_authorization_role_definition_role_definition_args_doc}
/// The set of arguments for RoleDefinition.
/// {@endtemplate}
/// {@macro pulumi_authorization_role_definition_role_definition_args_doc}
class RoleDefinitionArgs {
  /// One or more assignable scopes for this Role Definition, such as `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333`, `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup`, `/providers/Microsoft.Management/managementGroups/0b1f6471-1bf0-4dda-aec3-111122223333` , or `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup/providers/Microsoft.Compute/virtualMachines/myVM`.
  ///
  /// > **NOTE:** The value for `scope` is automatically included in this list if no other values supplied.
  final pulumi.Input<List<String>>? assignableScopes;
  /// A description of the Role Definition.
  final pulumi.Input<String>? description;
  /// The name of the Role Definition.
  final pulumi.Input<String>? name;
  /// A `permissions` block as defined below.
  final pulumi.Input<List<RoleDefinitionPermission>>? permissions;
  /// A unique UUID/GUID which identifies this role - one will be generated if not specified. Changing this forces a new resource to be created.
  final pulumi.Input<String>? roleDefinitionId;
  /// The scope at which the Role Definition applies to, such as `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333`, `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup`, `/providers/Microsoft.Management/managementGroups/0b1f6471-1bf0-4dda-aec3-111122223333`, or `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup/providers/Microsoft.Compute/virtualMachines/myVM`. It is recommended to use the first entry of the `assignable_scopes`. Changing this forces a new resource to be created.
  final pulumi.Input<String> scope;

  /// Creates a new [RoleDefinitionArgs].
  /// [assignableScopes] One or more assignable scopes for this Role Definition, such as `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333`, `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup`, `/providers/Microsoft.Management/managementGroups/0b1f6471-1bf0-4dda-aec3-111122223333` , or `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup/providers/Microsoft.Compute/virtualMachines/myVM`.
  /// [description] A description of the Role Definition.
  /// [name] The name of the Role Definition.
  /// [permissions] A `permissions` block as defined below.
  /// [roleDefinitionId] A unique UUID/GUID which identifies this role - one will be generated if not specified. Changing this forces a new resource to be created.
  /// [scope] The scope at which the Role Definition applies to, such as `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333`, `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup`, `/providers/Microsoft.Management/managementGroups/0b1f6471-1bf0-4dda-aec3-111122223333`, or `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup/providers/Microsoft.Compute/virtualMachines/myVM`. It is recommended to use the first entry of the `assignable_scopes`. Changing this forces a new resource to be created.
  RoleDefinitionArgs({
    this.assignableScopes,
    this.description,
    this.name,
    this.permissions,
    this.roleDefinitionId,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignableScopes': ?assignableScopes,
      'description': ?description,
      'name': ?name,
      'permissions': ?pulumi.Input.mapOptionalInputValue<List<RoleDefinitionPermission>, List<Map<String, dynamic>>>(permissions, (value) => pulumi.Input.encodeList<RoleDefinitionPermission, Map<String, dynamic>>(value, (value) => value.toMap())),
      'roleDefinitionId': ?roleDefinitionId,
      'scope': scope,
    };
  }

  factory RoleDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return RoleDefinitionArgs(
      assignableScopes: map['assignableScopes'] == null ? null : ((map['assignableScopes']! as List).cast<String>()).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      permissions: map['permissions'] == null ? null : (pulumi.Input.decodeList<RoleDefinitionPermission>(map['permissions']!, (value) => RoleDefinitionPermission.fromMap((value as Map).cast<String, dynamic>()))).input(),
      roleDefinitionId: map['roleDefinitionId'] == null ? null : (map['roleDefinitionId']! as String).input(),
      scope: (map['scope'] as String).input(),
    );
  }
}

