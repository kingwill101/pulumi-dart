// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRoleAssignmentsRoleAssignment {
  /// The condition that limits the resource the role can be assigned to.
  final pulumi.Input<String> condition;
  /// The version of the condition.
  final pulumi.Input<String> conditionVersion;
  /// The ID of the delegated managed identity resource.
  final pulumi.Input<String> delegatedManagedIdentityResourceId;
  /// The description for this Role Assignment.
  final pulumi.Input<String> description;
  /// The principal ID to filter the list of Role Assignments against.
  final pulumi.Input<String> principalId;
  /// The type of the `principal_id`.
  final pulumi.Input<String> principalType;
  /// The ID of the Role Assignment.
  final pulumi.Input<String> roleAssignmentId;
  /// The name of the Role Assignment.
  final pulumi.Input<String> roleAssignmentName;
  /// The scope of the Role Assignment.
  final pulumi.Input<String> roleAssignmentScope;
  /// The ID of the Role Definition.
  final pulumi.Input<String> roleDefinitionId;

  /// Creates a new [GetRoleAssignmentsRoleAssignment].
  /// [condition] The condition that limits the resource the role can be assigned to.
  /// [conditionVersion] The version of the condition.
  /// [delegatedManagedIdentityResourceId] The ID of the delegated managed identity resource.
  /// [description] The description for this Role Assignment.
  /// [principalId] The principal ID to filter the list of Role Assignments against.
  /// [principalType] The type of the `principal_id`.
  /// [roleAssignmentId] The ID of the Role Assignment.
  /// [roleAssignmentName] The name of the Role Assignment.
  /// [roleAssignmentScope] The scope of the Role Assignment.
  /// [roleDefinitionId] The ID of the Role Definition.
  const GetRoleAssignmentsRoleAssignment({
    required this.condition,
    required this.conditionVersion,
    required this.delegatedManagedIdentityResourceId,
    required this.description,
    required this.principalId,
    required this.principalType,
    required this.roleAssignmentId,
    required this.roleAssignmentName,
    required this.roleAssignmentScope,
    required this.roleDefinitionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': condition,
      'conditionVersion': conditionVersion,
      'delegatedManagedIdentityResourceId': delegatedManagedIdentityResourceId,
      'description': description,
      'principalId': principalId,
      'principalType': principalType,
      'roleAssignmentId': roleAssignmentId,
      'roleAssignmentName': roleAssignmentName,
      'roleAssignmentScope': roleAssignmentScope,
      'roleDefinitionId': roleDefinitionId,
    };
  }

  factory GetRoleAssignmentsRoleAssignment.fromMap(Map<String, dynamic> map) {
    return GetRoleAssignmentsRoleAssignment(
      condition: pulumi.Input.fromValue(map['condition'] as String),
      conditionVersion: pulumi.Input.fromValue(map['conditionVersion'] as String),
      delegatedManagedIdentityResourceId: pulumi.Input.fromValue(map['delegatedManagedIdentityResourceId'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      principalType: pulumi.Input.fromValue(map['principalType'] as String),
      roleAssignmentId: pulumi.Input.fromValue(map['roleAssignmentId'] as String),
      roleAssignmentName: pulumi.Input.fromValue(map['roleAssignmentName'] as String),
      roleAssignmentScope: pulumi.Input.fromValue(map['roleAssignmentScope'] as String),
      roleDefinitionId: pulumi.Input.fromValue(map['roleDefinitionId'] as String),
    );
  }
}

