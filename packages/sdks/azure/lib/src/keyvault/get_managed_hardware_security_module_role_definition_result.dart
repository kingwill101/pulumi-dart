// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_hardware_security_module_role_definition_permission.dart';

/// Result data returned by getManagedHardwareSecurityModuleRoleDefinition.
class GetManagedHardwareSecurityModuleRoleDefinitionResult {
  /// A list of assignable role scopes. Possible values are `/` and `/keys`.
  final List<String>? assignableScopes;
  /// A text description of the Key Vault Managed Hardware Security Module Role Definition.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? managedHsmId;
  final String? name;
  /// A `permission` block as defined below.
  final List<GetManagedHardwareSecurityModuleRoleDefinitionPermission>? permissions;
  /// The ID of the Key Vault Managed Hardware Security Module Role Definition resource without base url.
  final String? resourceManagerId;
  /// The display name of the Key Vault Managed Hardware Security Module Role Definition.
  final String? roleName;
  /// The type of the Key Vault Managed Hardware Security Module Role Definition. Possible values are `AKVBuiltInRole` and `CustomRole`.
  final String? roleType;

  /// Creates a new [GetManagedHardwareSecurityModuleRoleDefinitionResult].
  /// [assignableScopes] A list of assignable role scopes. Possible values are `/` and `/keys`.
  /// [description] A text description of the Key Vault Managed Hardware Security Module Role Definition.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [managedHsmId] Optional.
  /// [name] Optional.
  /// [permissions] A `permission` block as defined below.
  /// [resourceManagerId] The ID of the Key Vault Managed Hardware Security Module Role Definition resource without base url.
  /// [roleName] The display name of the Key Vault Managed Hardware Security Module Role Definition.
  /// [roleType] The type of the Key Vault Managed Hardware Security Module Role Definition. Possible values are `AKVBuiltInRole` and `CustomRole`.
  const GetManagedHardwareSecurityModuleRoleDefinitionResult({
    this.assignableScopes,
    this.description,
    this.id,
    this.managedHsmId,
    this.name,
    this.permissions,
    this.resourceManagerId,
    this.roleName,
    this.roleType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignableScopes': ?assignableScopes,
      'description': ?description,
      'id': ?id,
      'managedHsmId': ?managedHsmId,
      'name': ?name,
      'permissions': ?(() { final guardedValue = permissions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetManagedHardwareSecurityModuleRoleDefinitionPermission, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'resourceManagerId': ?resourceManagerId,
      'roleName': ?roleName,
      'roleType': ?roleType,
    };
  }

  factory GetManagedHardwareSecurityModuleRoleDefinitionResult.fromMap(Map<String, dynamic> map) {
    return GetManagedHardwareSecurityModuleRoleDefinitionResult(
      assignableScopes: (() { final guardedValue = map['assignableScopes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedHsmId: (() { final guardedValue = map['managedHsmId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetManagedHardwareSecurityModuleRoleDefinitionPermission>(guardedValue, (value) => GetManagedHardwareSecurityModuleRoleDefinitionPermission.fromMap((value as Map).cast<String, dynamic>())); })(),
      resourceManagerId: (() { final guardedValue = map['resourceManagerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      roleName: (() { final guardedValue = map['roleName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      roleType: (() { final guardedValue = map['roleType']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
