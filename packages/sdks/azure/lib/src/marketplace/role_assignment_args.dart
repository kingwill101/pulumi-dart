// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_marketplace_role_assignment_role_assignment_args_doc}
/// The set of arguments for RoleAssignment.
/// {@endtemplate}
/// {@macro pulumi_marketplace_role_assignment_role_assignment_args_doc}
class RoleAssignmentArgs {
  /// The condition that limits the resources that the role can be assigned to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? condition;
  /// The version of the condition. Possible values are `1.0` or `2.0`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? conditionVersion;
  /// The delegated Azure Resource ID which contains a Managed Identity. Changing this forces a new resource to be created.
  ///
  /// > **Note:** This field is only used in cross tenant scenarios.
  final pulumi.Input<String>? delegatedManagedIdentityResourceId;
  /// The description for this Role Assignment. Changing this forces a new resource to be created.
  final pulumi.Input<String>? description;
  /// A unique UUID/GUID for this Role Assignment - one will be generated if not specified. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Principal (User, Group or Service Principal) to assign the Role Definition to. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The Principal ID is also known as the Object ID (i.e. not the "Application ID" for applications). To assign Azure roles, the Principal must have `Microsoft.Authorization/roleAssignments/write` permissions. See [documentation](https://learn.microsoft.com/en-us/azure/role-based-access-control/role-assignments-portal) for more information.
  final pulumi.Input<String> principalId;
  /// The Scoped-ID of the Role Definition. Changing this forces a new resource to be created. Conflicts with `role_definition_name`.
  final pulumi.Input<String>? roleDefinitionId;
  /// The name of a built-in Role. Changing this forces a new resource to be created. Conflicts with `role_definition_id`.
  ///
  /// > **Note:** To assign `Marketplace Admin` role, the calling Principal must first be assigned Privileged Role Administrator (like `Owner` role) or Global Administrator. See [documentation](https://learn.microsoft.com/en-us/marketplace/create-manage-private-azure-marketplace-new#prerequisites) for more information.
  final pulumi.Input<String>? roleDefinitionName;
  /// If the `principal_id` is a newly provisioned `Service Principal` set this value to `true` to skip the `Azure Active Directory` check which may fail due to replication lag. This argument is only valid if the `principal_id` is a `Service Principal` identity. Defaults to `false`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** This field takes effect only when `principal_id` is a `Service Principal` identity.
  final pulumi.Input<bool>? skipServicePrincipalAadCheck;

  /// Creates a new [RoleAssignmentArgs].
  /// [condition] The condition that limits the resources that the role can be assigned to. Changing this forces a new resource to be created.
  /// [conditionVersion] The version of the condition. Possible values are `1.0` or `2.0`. Changing this forces a new resource to be created.
  /// [delegatedManagedIdentityResourceId] The delegated Azure Resource ID which contains a Managed Identity. Changing this forces a new resource to be created.
  /// [description] The description for this Role Assignment. Changing this forces a new resource to be created.
  /// [name] A unique UUID/GUID for this Role Assignment - one will be generated if not specified. Changing this forces a new resource to be created.
  /// [principalId] The ID of the Principal (User, Group or Service Principal) to assign the Role Definition to. Changing this forces a new resource to be created.
  /// [roleDefinitionId] The Scoped-ID of the Role Definition. Changing this forces a new resource to be created. Conflicts with `role_definition_name`.
  /// [roleDefinitionName] The name of a built-in Role. Changing this forces a new resource to be created. Conflicts with `role_definition_id`.
  /// [skipServicePrincipalAadCheck] If the `principal_id` is a newly provisioned `Service Principal` set this value to `true` to skip the `Azure Active Directory` check which may fail due to replication lag. This argument is only valid if the `principal_id` is a `Service Principal` identity. Defaults to `false`. Changing this forces a new resource to be created.
  RoleAssignmentArgs({
    this.condition,
    this.conditionVersion,
    this.delegatedManagedIdentityResourceId,
    this.description,
    this.name,
    required this.principalId,
    this.roleDefinitionId,
    this.roleDefinitionName,
    this.skipServicePrincipalAadCheck,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?condition,
      'conditionVersion': ?conditionVersion,
      'delegatedManagedIdentityResourceId': ?delegatedManagedIdentityResourceId,
      'description': ?description,
      'name': ?name,
      'principalId': principalId,
      'roleDefinitionId': ?roleDefinitionId,
      'roleDefinitionName': ?roleDefinitionName,
      'skipServicePrincipalAadCheck': ?skipServicePrincipalAadCheck,
    };
  }

  factory RoleAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return RoleAssignmentArgs(
      condition: map['condition'] == null ? null : (map['condition']! as String).input(),
      conditionVersion: map['conditionVersion'] == null ? null : (map['conditionVersion']! as String).input(),
      delegatedManagedIdentityResourceId: map['delegatedManagedIdentityResourceId'] == null ? null : (map['delegatedManagedIdentityResourceId']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      principalId: (map['principalId'] as String).input(),
      roleDefinitionId: map['roleDefinitionId'] == null ? null : (map['roleDefinitionId']! as String).input(),
      roleDefinitionName: map['roleDefinitionName'] == null ? null : (map['roleDefinitionName']! as String).input(),
      skipServicePrincipalAadCheck: map['skipServicePrincipalAadCheck'] == null ? null : (map['skipServicePrincipalAadCheck']! as bool).input(),
    );
  }
}

