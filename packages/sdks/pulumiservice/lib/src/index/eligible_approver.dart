// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rbac_permission.dart';

class EligibleApprover {
  /// RBAC permission that gives right to approve.
  final pulumi.Input<RbacPermission>? rbacPermission;
  /// Name of the team that can approve.
  final pulumi.Input<String>? teamName;
  /// Login of the user that can approve.
  final pulumi.Input<String>? user;

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
      'rbacPermission': ?pulumi.Input.mapOptionalInputValue<RbacPermission, String>(rbacPermission, (value) => value.value),
      'teamName': ?teamName,
      'user': ?user,
    };
  }

  factory EligibleApprover.fromMap(Map<String, dynamic> map) {
    return EligibleApprover(
      rbacPermission: map['rbacPermission'] == null ? null : (RbacPermission.fromValue(map['rbacPermission']! as String)).input(),
      teamName: map['teamName'] == null ? null : (map['teamName']! as String).input(),
      user: map['user'] == null ? null : (map['user']! as String).input(),
    );
  }
}

