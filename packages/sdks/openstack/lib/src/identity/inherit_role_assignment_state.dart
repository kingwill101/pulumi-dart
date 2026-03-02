// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering InheritRoleAssignment resources.
class InheritRoleAssignmentState {
  /// The domain to assign the role in.
  final pulumi.Input<String>? domainId;
  /// The group to assign the role to.
  final pulumi.Input<String>? groupId;
  /// The project to assign the role in.
  /// The project should be able to containt child projects.
  final pulumi.Input<String>? projectId;
  /// The region in which to obtain the V3 Keystone client.
  /// If omitted, the `region` argument of the provider is used. Changing this
  /// creates a new inherit role assignment.
  final pulumi.Input<String>? region;
  /// The role to assign.
  final pulumi.Input<String>? roleId;
  /// The user to assign the role to.
  final pulumi.Input<String>? userId;

  /// Creates a new [InheritRoleAssignmentState].
  /// [domainId] The domain to assign the role in.
  /// [groupId] The group to assign the role to.
  /// [projectId] The project to assign the role in.
  /// [region] The region in which to obtain the V3 Keystone client.
  /// [roleId] The role to assign.
  /// [userId] The user to assign the role to.
  InheritRoleAssignmentState({
    this.domainId,
    this.groupId,
    this.projectId,
    this.region,
    this.roleId,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainId': ?domainId,
      'groupId': ?groupId,
      'projectId': ?projectId,
      'region': ?region,
      'roleId': ?roleId,
      'userId': ?userId,
    };
  }

  factory InheritRoleAssignmentState.fromMap(Map<String, dynamic> map) {
    return InheritRoleAssignmentState(
      domainId: map['domainId'] == null ? null : (map['domainId']! as String).input(),
      groupId: map['groupId'] == null ? null : (map['groupId']! as String).input(),
      projectId: map['projectId'] == null ? null : (map['projectId']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      roleId: map['roleId'] == null ? null : (map['roleId']! as String).input(),
      userId: map['userId'] == null ? null : (map['userId']! as String).input(),
    );
  }
}

