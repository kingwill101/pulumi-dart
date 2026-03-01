// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RoleAssignment resources.
class RoleAssignmentState {
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
  final pulumi.Input<String>? roleId;
  /// The user to assign the role to.
  final pulumi.Input<String>? userId;

  /// Creates a new [RoleAssignmentState].
  /// [domainId] The domain to assign the role in.
  /// [groupId] The group to assign the role to.
  /// [projectId] The project to assign the role in.
  /// [region] The region in which to obtain the V3 Keystone client.
  /// [roleId] The role to assign.
  /// [userId] The user to assign the role to.
  RoleAssignmentState({
    pulumi.Output<String>? domainId,
    pulumi.Output<String>? groupId,
    pulumi.Output<String>? projectId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? roleId,
    pulumi.Output<String>? userId,
  }) :
      domainId = pulumi.Input.asOptionalInput<String>(domainId),
      groupId = pulumi.Input.asOptionalInput<String>(groupId),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleId = pulumi.Input.asOptionalInput<String>(roleId),
      userId = pulumi.Input.asOptionalInput<String>(userId);

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

  factory RoleAssignmentState.fromMap(Map<String, dynamic> map) {
    return RoleAssignmentState(
      domainId: map['domainId'] == null ? null : pulumi.Output.create<String>(map['domainId'] as String),
      groupId: map['groupId'] == null ? null : pulumi.Output.create<String>(map['groupId'] as String),
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      roleId: map['roleId'] == null ? null : pulumi.Output.create<String>(map['roleId'] as String),
      userId: map['userId'] == null ? null : pulumi.Output.create<String>(map['userId'] as String),
    );
  }
}

