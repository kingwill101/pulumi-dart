// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'definition_permission.dart';

/// Input properties used for looking up and filtering Definition resources.
class DefinitionState {
  /// One or more assignable scopes for this Role Definition, such as `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333`, `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup`, `/providers/Microsoft.Management/managementGroups/0b1f6471-1bf0-4dda-aec3-111122223333` , or `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup/providers/Microsoft.Compute/virtualMachines/myVM`.
  ///
  /// > **NOTE:** The value for `scope` is automatically included in this list if no other values supplied.
  final pulumi.Input<List<String>>? assignableScopes;
  /// A description of the Role Definition.
  final pulumi.Input<String>? description;
  /// The name of the Role Definition.
  final pulumi.Input<String>? name;
  /// A `permissions` block as defined below.
  final pulumi.Input<List<DefinitionPermission>>? permissions;
  /// A unique UUID/GUID which identifies this role - one will be generated if not specified. Changing this forces a new resource to be created.
  final pulumi.Input<String>? roleDefinitionId;
  /// The Azure Resource Manager ID for the resource.
  final pulumi.Input<String>? roleDefinitionResourceId;
  /// The scope at which the Role Definition applies to, such as `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333`, `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup`, `/providers/Microsoft.Management/managementGroups/0b1f6471-1bf0-4dda-aec3-111122223333`, or `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup/providers/Microsoft.Compute/virtualMachines/myVM`. It is recommended to use the first entry of the `assignable_scopes`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? scope;

  /// Creates a new [DefinitionState].
  /// [assignableScopes] One or more assignable scopes for this Role Definition, such as `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333`, `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup`, `/providers/Microsoft.Management/managementGroups/0b1f6471-1bf0-4dda-aec3-111122223333` , or `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup/providers/Microsoft.Compute/virtualMachines/myVM`.
  /// [description] A description of the Role Definition.
  /// [name] The name of the Role Definition.
  /// [permissions] A `permissions` block as defined below.
  /// [roleDefinitionId] A unique UUID/GUID which identifies this role - one will be generated if not specified. Changing this forces a new resource to be created.
  /// [roleDefinitionResourceId] The Azure Resource Manager ID for the resource.
  /// [scope] The scope at which the Role Definition applies to, such as `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333`, `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup`, `/providers/Microsoft.Management/managementGroups/0b1f6471-1bf0-4dda-aec3-111122223333`, or `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup/providers/Microsoft.Compute/virtualMachines/myVM`. It is recommended to use the first entry of the `assignable_scopes`. Changing this forces a new resource to be created.
  DefinitionState({
    pulumi.Output<List<String>>? assignableScopes,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<List<DefinitionPermission>>? permissions,
    pulumi.Output<String>? roleDefinitionId,
    pulumi.Output<String>? roleDefinitionResourceId,
    pulumi.Output<String>? scope,
  }) :
      assignableScopes = pulumi.Input.asOptionalInput<List<String>>(assignableScopes),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      permissions = pulumi.Input.asOptionalInput<List<DefinitionPermission>>(permissions),
      roleDefinitionId = pulumi.Input.asOptionalInput<String>(roleDefinitionId),
      roleDefinitionResourceId = pulumi.Input.asOptionalInput<String>(roleDefinitionResourceId),
      scope = pulumi.Input.asOptionalInput<String>(scope);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignableScopes': ?assignableScopes,
      'description': ?description,
      'name': ?name,
      'permissions': ?pulumi.Input.mapOptionalInputValue<List<DefinitionPermission>, List<Map<String, dynamic>>>(permissions, (value) => pulumi.Input.encodeList<DefinitionPermission, Map<String, dynamic>>(value, (value) => value.toMap())),
      'roleDefinitionId': ?roleDefinitionId,
      'roleDefinitionResourceId': ?roleDefinitionResourceId,
      'scope': ?scope,
    };
  }

  factory DefinitionState.fromMap(Map<String, dynamic> map) {
    return DefinitionState(
      assignableScopes: map['assignableScopes'] == null ? null : pulumi.Output.create<List<String>>((map['assignableScopes'] as List).cast<String>()),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      permissions: map['permissions'] == null ? null : pulumi.Output.create<List<DefinitionPermission>>(pulumi.Input.decodeList<DefinitionPermission>(map['permissions'], (value) => DefinitionPermission.fromMap((value as Map).cast<String, dynamic>()))),
      roleDefinitionId: map['roleDefinitionId'] == null ? null : pulumi.Output.create<String>(map['roleDefinitionId'] as String),
      roleDefinitionResourceId: map['roleDefinitionResourceId'] == null ? null : pulumi.Output.create<String>(map['roleDefinitionResourceId'] as String),
      scope: map['scope'] == null ? null : pulumi.Output.create<String>(map['scope'] as String),
    );
  }
}

