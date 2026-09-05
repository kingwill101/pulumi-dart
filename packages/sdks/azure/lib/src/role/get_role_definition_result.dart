// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_role_definition_permission.dart';

/// Result data returned by getRoleDefinition.
class GetRoleDefinitionResult {
  /// One or more assignable scopes for this Role Definition, such as `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333`, `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup`, or `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup/providers/Microsoft.Compute/virtualMachines/myVM`.
  final List<String>? assignableScopes;
  /// The Description of the built-in Role.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  /// A `permissions` block as documented below.
  final List<GetRoleDefinitionPermission>? permissions;
  final String? roleDefinitionId;
  final String? scope;
  /// The Type of the Role.
  final String? type;

  /// Creates a new [GetRoleDefinitionResult].
  /// [assignableScopes] One or more assignable scopes for this Role Definition, such as `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333`, `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup`, or `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup/providers/Microsoft.Compute/virtualMachines/myVM`.
  /// [description] The Description of the built-in Role.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [permissions] A `permissions` block as documented below.
  /// [roleDefinitionId] Optional.
  /// [scope] Optional.
  /// [type] The Type of the Role.
  const GetRoleDefinitionResult({
    this.assignableScopes,
    this.description,
    this.id,
    this.name,
    this.permissions,
    this.roleDefinitionId,
    this.scope,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignableScopes': ?assignableScopes,
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'permissions': ?(() { final guardedValue = permissions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRoleDefinitionPermission, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'roleDefinitionId': ?roleDefinitionId,
      'scope': ?scope,
      'type': ?type,
    };
  }

  factory GetRoleDefinitionResult.fromMap(Map<String, dynamic> map) {
    return GetRoleDefinitionResult(
      assignableScopes: (() { final guardedValue = map['assignableScopes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRoleDefinitionPermission>(guardedValue, (value) => GetRoleDefinitionPermission.fromMap((value as Map).cast<String, dynamic>())); })(),
      roleDefinitionId: (() { final guardedValue = map['roleDefinitionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
