// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_role_assignments_role_assignment.dart';

/// Result data returned by getRoleAssignments.
class GetRoleAssignmentsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final bool? limitAtScope;
  /// The principal ID.
  final String? principalId;
  /// A `roleAssignments` block as defined below.
  final List<GetRoleAssignmentsRoleAssignment>? roleAssignments;
  final String? scope;
  final String? tenantId;

  /// Creates a new [GetRoleAssignmentsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [limitAtScope] Optional.
  /// [principalId] The principal ID.
  /// [roleAssignments] A `roleAssignments` block as defined below.
  /// [scope] Optional.
  /// [tenantId] Optional.
  const GetRoleAssignmentsResult({
    this.id,
    this.limitAtScope,
    this.principalId,
    this.roleAssignments,
    this.scope,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'limitAtScope': ?limitAtScope,
      'principalId': ?principalId,
      'roleAssignments': ?(() { final guardedValue = roleAssignments; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRoleAssignmentsRoleAssignment, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'scope': ?scope,
      'tenantId': ?tenantId,
    };
  }

  factory GetRoleAssignmentsResult.fromMap(Map<String, dynamic> map) {
    return GetRoleAssignmentsResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      limitAtScope: (() { final guardedValue = map['limitAtScope']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      roleAssignments: (() { final guardedValue = map['roleAssignments']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRoleAssignmentsRoleAssignment>(guardedValue, (value) => GetRoleAssignmentsRoleAssignment.fromMap((value as Map).cast<String, dynamic>())); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
