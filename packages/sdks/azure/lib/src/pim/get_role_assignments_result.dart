// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_role_assignments_role_assignment.dart';

/// Result data returned by getRoleAssignments.
class GetRoleAssignmentsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool? limitAtScope;
  /// The principal ID.
  final String? principalId;
  /// A `role_assignments` block as defined below.
  final List<GetRoleAssignmentsRoleAssignment> roleAssignments;
  final String scope;
  final String? tenantId;

  /// Creates a new [GetRoleAssignmentsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [limitAtScope] Optional.
  /// [principalId] The principal ID.
  /// [roleAssignments] A `role_assignments` block as defined below.
  /// [scope] Required.
  /// [tenantId] Optional.
  GetRoleAssignmentsResult({
    required this.id,
    this.limitAtScope,
    this.principalId,
    required this.roleAssignments,
    required this.scope,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'limitAtScope': ?limitAtScope,
      'principalId': ?principalId,
      'roleAssignments': pulumi.Input.encodeList<GetRoleAssignmentsRoleAssignment, Map<String, dynamic>>(roleAssignments, (value) => value.toMap()),
      'scope': scope,
      'tenantId': ?tenantId,
    };
  }

  factory GetRoleAssignmentsResult.fromMap(Map<String, dynamic> map) {
    return GetRoleAssignmentsResult(
      id: map['id'] as String,
      limitAtScope: map['limitAtScope'] == null ? null : map['limitAtScope'] as bool,
      principalId: map['principalId'] == null ? null : map['principalId'] as String,
      roleAssignments: pulumi.Input.decodeList<GetRoleAssignmentsRoleAssignment>(map['roleAssignments'], (value) => GetRoleAssignmentsRoleAssignment.fromMap((value as Map).cast<String, dynamic>())),
      scope: map['scope'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

