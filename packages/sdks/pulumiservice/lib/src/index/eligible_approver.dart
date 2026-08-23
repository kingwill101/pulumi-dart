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
  const EligibleApprover({
    this.rbacPermission,
    this.teamName,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rbacPermission': ?pulumi.Input.mapOptionalInputValue<RbacPermission, String>(rbacPermission, (value) => value.wireValue),
      'teamName': ?teamName,
      'user': ?user,
    };
  }

  factory EligibleApprover.fromMap(Map<String, dynamic> map) {
    return EligibleApprover(
      rbacPermission: (() { final guardedValue = map['rbacPermission']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RbacPermission.fromValue(guardedValue as String)); })(),
      teamName: (() { final guardedValue = map['teamName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
