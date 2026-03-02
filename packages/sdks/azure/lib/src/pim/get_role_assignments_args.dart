// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pim_get_role_assignments_get_role_assignments_args_doc}
/// Arguments for getRoleAssignments.
/// {@endtemplate}
/// {@macro pulumi_pim_get_role_assignments_get_role_assignments_args_doc}
class GetRoleAssignmentsArgs {
  /// Whether to limit the result exactly at the specified scope and not above or below it. Defaults to `false`.
  final pulumi.Input<bool>? limitAtScope;
  /// The principal ID to filter the list of Role Assignments against.
  final pulumi.Input<String>? principalId;
  /// The scope at which to list Role Assignments.
  final pulumi.Input<String> scope;
  /// The tenant ID for cross-tenant requests.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [GetRoleAssignmentsArgs].
  /// [limitAtScope] Whether to limit the result exactly at the specified scope and not above or below it. Defaults to `false`.
  /// [principalId] The principal ID to filter the list of Role Assignments against.
  /// [scope] The scope at which to list Role Assignments.
  /// [tenantId] The tenant ID for cross-tenant requests.
  GetRoleAssignmentsArgs({
    this.limitAtScope,
    this.principalId,
    required this.scope,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limitAtScope': ?limitAtScope,
      'principalId': ?principalId,
      'scope': scope,
      'tenantId': ?tenantId,
    };
  }

  factory GetRoleAssignmentsArgs.fromMap(Map<String, dynamic> map) {
    return GetRoleAssignmentsArgs(
      limitAtScope: map['limitAtScope'] == null ? null : (map['limitAtScope'] as bool).input(),
      principalId: map['principalId'] == null ? null : (map['principalId'] as String).input(),
      scope: (map['scope'] as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId'] as String).input(),
    );
  }
}

