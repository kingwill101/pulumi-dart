// ignore_for_file: unused_element, unnecessary_cast

import 'rbac_permission.dart';

class EligibleApprover {
  /// RBAC permission that gives right to approve.
  final RbacPermission? rbacPermission;
  /// Name of the team that can approve.
  final String? teamName;
  /// Login of the user that can approve.
  final String? user;

  /// Creates a new [EligibleApprover].
  /// [rbacPermission] RBAC permission that gives right to approve.
  /// [teamName] Name of the team that can approve.
  /// [user] Login of the user that can approve.
  EligibleApprover({
    this.rbacPermission,
    this.teamName,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rbacPermission': ?rbacPermission == null ? null : rbacPermission!.value,
      'teamName': ?teamName,
      'user': ?user,
    };
  }

  factory EligibleApprover.fromMap(Map<String, dynamic> map) {
    return EligibleApprover(
      rbacPermission: map['rbacPermission'] == null ? null : RbacPermission.fromValue(map['rbacPermission'] as String),
      teamName: map['teamName'] == null ? null : map['teamName'] as String,
      user: map['user'] == null ? null : map['user'] as String,
    );
  }
}

