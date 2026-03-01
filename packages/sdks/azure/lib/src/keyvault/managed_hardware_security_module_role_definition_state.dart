// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_hardware_security_module_role_definition_permission.dart';

/// Input properties used for looking up and filtering ManagedHardwareSecurityModuleRoleDefinition resources.
class ManagedHardwareSecurityModuleRoleDefinitionState {
  /// Specifies a text description about this Key Vault Managed Hardware Security Module Role Definition.
  final pulumi.Input<String>? description;
  /// The ID of the Key Vault Managed Hardware Security Module. Changing this forces a new Key Vault Managed Hardware Security Module Role Definition to be created.
  final pulumi.Input<String>? managedHsmId;
  /// The name in UUID notation of this Key Vault Managed Hardware Security Module Role Definition. Changing this forces a new Key Vault Managed Hardware Security Module Role Definition to be created.
  final pulumi.Input<String>? name;
  /// One or more `permission` blocks as defined below.
  final pulumi.Input<List<ManagedHardwareSecurityModuleRoleDefinitionPermission>>? permissions;
  /// The ID of the role definition resource without Key Vault base URL.
  final pulumi.Input<String>? resourceManagerId;
  /// Specify a display name for this Key Vault Managed Hardware Security Module Role Definition.
  final pulumi.Input<String>? roleName;
  /// The type of the role definition. Possible values are `AKVBuiltInRole` and `CustomRole`.
  final pulumi.Input<String>? roleType;

  /// Creates a new [ManagedHardwareSecurityModuleRoleDefinitionState].
  /// [description] Specifies a text description about this Key Vault Managed Hardware Security Module Role Definition.
  /// [managedHsmId] The ID of the Key Vault Managed Hardware Security Module. Changing this forces a new Key Vault Managed Hardware Security Module Role Definition to be created.
  /// [name] The name in UUID notation of this Key Vault Managed Hardware Security Module Role Definition. Changing this forces a new Key Vault Managed Hardware Security Module Role Definition to be created.
  /// [permissions] One or more `permission` blocks as defined below.
  /// [resourceManagerId] The ID of the role definition resource without Key Vault base URL.
  /// [roleName] Specify a display name for this Key Vault Managed Hardware Security Module Role Definition.
  /// [roleType] The type of the role definition. Possible values are `AKVBuiltInRole` and `CustomRole`.
  ManagedHardwareSecurityModuleRoleDefinitionState({
    pulumi.Output<String>? description,
    pulumi.Output<String>? managedHsmId,
    pulumi.Output<String>? name,
    pulumi.Output<List<ManagedHardwareSecurityModuleRoleDefinitionPermission>>? permissions,
    pulumi.Output<String>? resourceManagerId,
    pulumi.Output<String>? roleName,
    pulumi.Output<String>? roleType,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      managedHsmId = pulumi.Input.asOptionalInput<String>(managedHsmId),
      name = pulumi.Input.asOptionalInput<String>(name),
      permissions = pulumi.Input.asOptionalInput<List<ManagedHardwareSecurityModuleRoleDefinitionPermission>>(permissions),
      resourceManagerId = pulumi.Input.asOptionalInput<String>(resourceManagerId),
      roleName = pulumi.Input.asOptionalInput<String>(roleName),
      roleType = pulumi.Input.asOptionalInput<String>(roleType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'managedHsmId': ?managedHsmId,
      'name': ?name,
      'permissions': ?pulumi.Input.mapOptionalInputValue<List<ManagedHardwareSecurityModuleRoleDefinitionPermission>, List<Map<String, dynamic>>>(permissions, (value) => pulumi.Input.encodeList<ManagedHardwareSecurityModuleRoleDefinitionPermission, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceManagerId': ?resourceManagerId,
      'roleName': ?roleName,
      'roleType': ?roleType,
    };
  }

  factory ManagedHardwareSecurityModuleRoleDefinitionState.fromMap(Map<String, dynamic> map) {
    return ManagedHardwareSecurityModuleRoleDefinitionState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      managedHsmId: map['managedHsmId'] == null ? null : pulumi.Output.create<String>(map['managedHsmId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      permissions: map['permissions'] == null ? null : pulumi.Output.create<List<ManagedHardwareSecurityModuleRoleDefinitionPermission>>(pulumi.Input.decodeList<ManagedHardwareSecurityModuleRoleDefinitionPermission>(map['permissions'], (value) => ManagedHardwareSecurityModuleRoleDefinitionPermission.fromMap((value as Map).cast<String, dynamic>()))),
      resourceManagerId: map['resourceManagerId'] == null ? null : pulumi.Output.create<String>(map['resourceManagerId'] as String),
      roleName: map['roleName'] == null ? null : pulumi.Output.create<String>(map['roleName'] as String),
      roleType: map['roleType'] == null ? null : pulumi.Output.create<String>(map['roleType'] as String),
    );
  }
}

