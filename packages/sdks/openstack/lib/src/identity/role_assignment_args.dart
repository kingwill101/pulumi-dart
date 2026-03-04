// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_identity_role_assignment_role_assignment_args_doc}
/// The set of arguments for RoleAssignment.
/// {@endtemplate}
/// {@macro pulumi_identity_role_assignment_role_assignment_args_doc}
class RoleAssignmentArgs {
  /// The domain to assign the role in.
  final pulumi.Input<String>? domainId;

  /// The group to assign the role to.
  final pulumi.Input<String>? groupId;

  /// The project to assign the role in.
  final pulumi.Input<String>? projectId;

  /// The region in which to obtain the V3 Keystone client.
  /// If omitted, the `region` argument of the provider is used. Changing this
  /// creates a new role assignment.
  final pulumi.Input<String>? region;

  /// The role to assign.
  final pulumi.Input<String> roleId;

  /// The user to assign the role to.
  final pulumi.Input<String>? userId;

  /// Creates a new [RoleAssignmentArgs].
  /// [domainId] The domain to assign the role in.
  /// [groupId] The group to assign the role to.
  /// [projectId] The project to assign the role in.
  /// [region] The region in which to obtain the V3 Keystone client.
  /// [roleId] The role to assign.
  /// [userId] The user to assign the role to.
  RoleAssignmentArgs({
    this.domainId,
    this.groupId,
    this.projectId,
    this.region,
    required this.roleId,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainId': ?domainId,
      'groupId': ?groupId,
      'projectId': ?projectId,
      'region': ?region,
      'roleId': roleId,
      'userId': ?userId,
    };
  }

  factory RoleAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return RoleAssignmentArgs(
      domainId: (() {
        final guardedValue = map['domainId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      groupId: (() {
        final guardedValue = map['groupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      projectId: (() {
        final guardedValue = map['projectId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      roleId: pulumi.Input.fromValue(map['roleId'] as String),
      userId: (() {
        final guardedValue = map['userId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
