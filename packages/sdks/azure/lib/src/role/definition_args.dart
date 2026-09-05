// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'definition_permission.dart';

/// {@template pulumi_role_definition_definition_args_doc}
/// The set of arguments for Definition.
/// {@endtemplate}
/// {@macro pulumi_role_definition_definition_args_doc}
class DefinitionArgs {
  /// One or more assignable scopes for this Role Definition, such as `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333`, `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup`, `/providers/Microsoft.Management/managementGroups/0b1f6471-1bf0-4dda-aec3-111122223333` , or `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup/providers/Microsoft.Compute/virtualMachines/myVM`.
  ///
  /// &gt; **NOTE:** The value for `scope` is automatically included in this list if no other values supplied.
  final pulumi.Input<List<String>?>? assignableScopes;
  /// A description of the Role Definition.
  final pulumi.Input<String?>? description;
  /// The name of the Role Definition.
  final pulumi.Input<String?>? name;
  /// A `permissions` block as defined below.
  final pulumi.Input<List<DefinitionPermission>?>? permissions;
  /// A unique UUID/GUID which identifies this role - one will be generated if not specified. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? roleDefinitionId;
  /// The scope at which the Role Definition applies to, such as `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333`, `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup`, `/providers/Microsoft.Management/managementGroups/0b1f6471-1bf0-4dda-aec3-111122223333`, or `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup/providers/Microsoft.Compute/virtualMachines/myVM`. It is recommended to use the first entry of the `assignableScopes`. Changing this forces a new resource to be created.
  final pulumi.Input<String> scope;

  /// Creates a new [DefinitionArgs].
  /// [assignableScopes] One or more assignable scopes for this Role Definition, such as `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333`, `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup`, `/providers/Microsoft.Management/managementGroups/0b1f6471-1bf0-4dda-aec3-111122223333` , or `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup/providers/Microsoft.Compute/virtualMachines/myVM`.
  /// [description] A description of the Role Definition.
  /// [name] The name of the Role Definition.
  /// [permissions] A `permissions` block as defined below.
  /// [roleDefinitionId] A unique UUID/GUID which identifies this role - one will be generated if not specified. Changing this forces a new resource to be created.
  /// [scope] The scope at which the Role Definition applies to, such as `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333`, `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup`, `/providers/Microsoft.Management/managementGroups/0b1f6471-1bf0-4dda-aec3-111122223333`, or `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup/providers/Microsoft.Compute/virtualMachines/myVM`. It is recommended to use the first entry of the `assignableScopes`. Changing this forces a new resource to be created.
  const DefinitionArgs({
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
      'permissions': ?pulumi.Input.mapOptionalInputValue<List<DefinitionPermission>, List<Map<String, dynamic>>>(permissions, (value) => pulumi.Input.encodeList<DefinitionPermission, Map<String, dynamic>>(value, (value) => value.toMap())),
      'roleDefinitionId': ?roleDefinitionId,
      'scope': scope,
    };
  }

  factory DefinitionArgs.fromMap(Map<String, dynamic> map) {
    return DefinitionArgs(
      assignableScopes: (() { final guardedValue = map['assignableScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DefinitionPermission>(guardedValue, (value) => DefinitionPermission.fromMap((value as Map).cast<String, dynamic>()))); })(),
      roleDefinitionId: (() { final guardedValue = map['roleDefinitionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: pulumi.Input.fromValue(map['scope'] as String),
    );
  }
}
