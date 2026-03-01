// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_role_assignment_assignment_args_doc}
/// The set of arguments for Assignment.
/// {@endtemplate}
/// {@macro pulumi_role_assignment_assignment_args_doc}
class AssignmentArgs {
  /// The condition that limits the resources that the role can be assigned to. Changing this forces a new resource to be created.
  final pulumi.Input<String>? condition;
  /// The version of the condition. Possible values are `1.0` or `2.0`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** `condition` is required when `condition_version` is set.
  final pulumi.Input<String>? conditionVersion;
  /// The delegated Azure Resource Id which contains a Managed Identity. Changing this forces a new resource to be created.
  ///
  /// > **Note:** This field is only used in cross tenant scenarios.
  final pulumi.Input<String>? delegatedManagedIdentityResourceId;
  /// The description for this Role Assignment. Changing this forces a new resource to be created.
  final pulumi.Input<String>? description;
  /// A unique UUID/GUID for this Role Assignment - one will be generated if not specified. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Principal (User, Group or Service Principal) to assign the Role Definition to. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The Principal ID is also known as the Object ID (i.e. not the "Application ID" for applications).
  final pulumi.Input<String> principalId;
  /// The type of the `principal_id`. Possible values are `User`, `Group` and `ServicePrincipal`. Changing this forces a new resource to be created. It is necessary to explicitly set this attribute when creating role assignments if the principal creating the assignment is constrained by ABAC rules that filters on the PrincipalType attribute.
  final pulumi.Input<String>? principalType;
  /// The Scoped-ID of the Role Definition. Changing this forces a new resource to be created.
  final pulumi.Input<String>? roleDefinitionId;
  /// The name of a built-in Role. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Either `role_definition_id` or `role_definition_name` must be set.
  final pulumi.Input<String>? roleDefinitionName;
  /// The scope at which the Role Assignment applies to, such as `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333`, `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup`, or `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup/providers/Microsoft.Compute/virtualMachines/myVM`, or `/providers/Microsoft.Management/managementGroups/myMG`. Changing this forces a new resource to be created.
  final pulumi.Input<String> scope;
  /// If the `principal_id` is a newly provisioned `Service Principal` set this value to `true` to skip the `Azure Active Directory` check which may fail due to replication lag. This argument is only valid if the `principal_id` is a `Service Principal` identity. Defaults to `false`.
  ///
  /// > **Note:** If it is not a `Service Principal` identity it will cause the role assignment to fail.
  final pulumi.Input<bool>? skipServicePrincipalAadCheck;

  /// Creates a new [AssignmentArgs].
  /// [condition] The condition that limits the resources that the role can be assigned to. Changing this forces a new resource to be created.
  /// [conditionVersion] The version of the condition. Possible values are `1.0` or `2.0`. Changing this forces a new resource to be created.
  /// [delegatedManagedIdentityResourceId] The delegated Azure Resource Id which contains a Managed Identity. Changing this forces a new resource to be created.
  /// [description] The description for this Role Assignment. Changing this forces a new resource to be created.
  /// [name] A unique UUID/GUID for this Role Assignment - one will be generated if not specified. Changing this forces a new resource to be created.
  /// [principalId] The ID of the Principal (User, Group or Service Principal) to assign the Role Definition to. Changing this forces a new resource to be created.
  /// [principalType] The type of the `principal_id`. Possible values are `User`, `Group` and `ServicePrincipal`. Changing this forces a new resource to be created. It is necessary to explicitly set this attribute when creating role assignments if the principal creating the assignment is constrained by ABAC rules that filters on the PrincipalType attribute.
  /// [roleDefinitionId] The Scoped-ID of the Role Definition. Changing this forces a new resource to be created.
  /// [roleDefinitionName] The name of a built-in Role. Changing this forces a new resource to be created.
  /// [scope] The scope at which the Role Assignment applies to, such as `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333`, `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup`, or `/subscriptions/0b1f6471-1bf0-4dda-aec3-111122223333/resourceGroups/myGroup/providers/Microsoft.Compute/virtualMachines/myVM`, or `/providers/Microsoft.Management/managementGroups/myMG`. Changing this forces a new resource to be created.
  /// [skipServicePrincipalAadCheck] If the `principal_id` is a newly provisioned `Service Principal` set this value to `true` to skip the `Azure Active Directory` check which may fail due to replication lag. This argument is only valid if the `principal_id` is a `Service Principal` identity. Defaults to `false`.
  AssignmentArgs({
    pulumi.Output<String>? condition,
    pulumi.Output<String>? conditionVersion,
    pulumi.Output<String>? delegatedManagedIdentityResourceId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    required pulumi.Output<String> principalId,
    pulumi.Output<String>? principalType,
    pulumi.Output<String>? roleDefinitionId,
    pulumi.Output<String>? roleDefinitionName,
    required pulumi.Output<String> scope,
    pulumi.Output<bool>? skipServicePrincipalAadCheck,
  }) :
      condition = pulumi.Input.asOptionalInput<String>(condition),
      conditionVersion = pulumi.Input.asOptionalInput<String>(conditionVersion),
      delegatedManagedIdentityResourceId = pulumi.Input.asOptionalInput<String>(delegatedManagedIdentityResourceId),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      principalId = pulumi.Input.asInput<String>(principalId),
      principalType = pulumi.Input.asOptionalInput<String>(principalType),
      roleDefinitionId = pulumi.Input.asOptionalInput<String>(roleDefinitionId),
      roleDefinitionName = pulumi.Input.asOptionalInput<String>(roleDefinitionName),
      scope = pulumi.Input.asInput<String>(scope),
      skipServicePrincipalAadCheck = pulumi.Input.asOptionalInput<bool>(skipServicePrincipalAadCheck);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?condition,
      'conditionVersion': ?conditionVersion,
      'delegatedManagedIdentityResourceId': ?delegatedManagedIdentityResourceId,
      'description': ?description,
      'name': ?name,
      'principalId': principalId,
      'principalType': ?principalType,
      'roleDefinitionId': ?roleDefinitionId,
      'roleDefinitionName': ?roleDefinitionName,
      'scope': scope,
      'skipServicePrincipalAadCheck': ?skipServicePrincipalAadCheck,
    };
  }

  factory AssignmentArgs.fromMap(Map<String, dynamic> map) {
    return AssignmentArgs(
      condition: map['condition'] == null ? null : pulumi.Output.create<String>(map['condition'] as String),
      conditionVersion: map['conditionVersion'] == null ? null : pulumi.Output.create<String>(map['conditionVersion'] as String),
      delegatedManagedIdentityResourceId: map['delegatedManagedIdentityResourceId'] == null ? null : pulumi.Output.create<String>(map['delegatedManagedIdentityResourceId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      principalId: pulumi.Output.create<String>(map['principalId'] as String),
      principalType: map['principalType'] == null ? null : pulumi.Output.create<String>(map['principalType'] as String),
      roleDefinitionId: map['roleDefinitionId'] == null ? null : pulumi.Output.create<String>(map['roleDefinitionId'] as String),
      roleDefinitionName: map['roleDefinitionName'] == null ? null : pulumi.Output.create<String>(map['roleDefinitionName'] as String),
      scope: pulumi.Output.create<String>(map['scope'] as String),
      skipServicePrincipalAadCheck: map['skipServicePrincipalAadCheck'] == null ? null : pulumi.Output.create<bool>(map['skipServicePrincipalAadCheck'] as bool),
    );
  }
}

