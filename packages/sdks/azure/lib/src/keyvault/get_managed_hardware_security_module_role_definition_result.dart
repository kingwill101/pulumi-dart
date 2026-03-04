// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_hardware_security_module_role_definition_permission.dart';

/// Result data returned by getManagedHardwareSecurityModuleRoleDefinition.
class GetManagedHardwareSecurityModuleRoleDefinitionResult {
  /// A list of assignable role scopes. Possible values are `/` and `/keys`.
  final List<String> assignableScopes;

  /// A text description of the Key Vault Managed Hardware Security Module Role Definition.
  final String description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String managedHsmId;
  final String name;

  /// A `permission` block as defined below.
  final List<GetManagedHardwareSecurityModuleRoleDefinitionPermission>
  permissions;

  /// The ID of the Key Vault Managed Hardware Security Module Role Definition resource without base url.
  final String resourceManagerId;

  /// The display name of the Key Vault Managed Hardware Security Module Role Definition.
  final String roleName;

  /// The type of the Key Vault Managed Hardware Security Module Role Definition. Possible values are `AKVBuiltInRole` and `CustomRole`.
  final String roleType;

  /// Creates a new [GetManagedHardwareSecurityModuleRoleDefinitionResult].
  /// [assignableScopes] A list of assignable role scopes. Possible values are `/` and `/keys`.
  /// [description] A text description of the Key Vault Managed Hardware Security Module Role Definition.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [managedHsmId] Required.
  /// [name] Required.
  /// [permissions] A `permission` block as defined below.
  /// [resourceManagerId] The ID of the Key Vault Managed Hardware Security Module Role Definition resource without base url.
  /// [roleName] The display name of the Key Vault Managed Hardware Security Module Role Definition.
  /// [roleType] The type of the Key Vault Managed Hardware Security Module Role Definition. Possible values are `AKVBuiltInRole` and `CustomRole`.
  GetManagedHardwareSecurityModuleRoleDefinitionResult({
    required this.assignableScopes,
    required this.description,
    required this.id,
    required this.managedHsmId,
    required this.name,
    required this.permissions,
    required this.resourceManagerId,
    required this.roleName,
    required this.roleType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignableScopes': assignableScopes,
      'description': description,
      'id': id,
      'managedHsmId': managedHsmId,
      'name': name,
      'permissions':
          pulumi.Input.encodeList<
            GetManagedHardwareSecurityModuleRoleDefinitionPermission,
            Map<String, dynamic>
          >(permissions, (value) => value.toMap()),
      'resourceManagerId': resourceManagerId,
      'roleName': roleName,
      'roleType': roleType,
    };
  }

  factory GetManagedHardwareSecurityModuleRoleDefinitionResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetManagedHardwareSecurityModuleRoleDefinitionResult(
      assignableScopes: (map['assignableScopes'] as List).cast<String>(),
      description: map['description'] as String,
      id: map['id'] as String,
      managedHsmId: map['managedHsmId'] as String,
      name: map['name'] as String,
      permissions:
          pulumi.Input.decodeList<
            GetManagedHardwareSecurityModuleRoleDefinitionPermission
          >(
            map['permissions']!,
            (value) =>
                GetManagedHardwareSecurityModuleRoleDefinitionPermission.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      resourceManagerId: map['resourceManagerId'] as String,
      roleName: map['roleName'] as String,
      roleType: map['roleType'] as String,
    );
  }
}
