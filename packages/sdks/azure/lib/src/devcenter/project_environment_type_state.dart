// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_environment_type_identity.dart';
import 'project_environment_type_user_role_assignment.dart';

/// Input properties used for looking up and filtering ProjectEnvironmentType resources.
class ProjectEnvironmentTypeState {
  /// A list of roles to assign to the environment creator.
  final pulumi.Input<List<String>>? creatorRoleAssignmentRoles;

  /// The ID of the subscription that the Environment Type will be mapped to. The environment's resources will be deployed into this subscription.
  final pulumi.Input<String>? deploymentTargetId;

  /// The ID of the associated Dev Center Project. Changing this forces a new resource to be created.
  final pulumi.Input<String>? devCenterProjectId;

  /// An `identity` block as defined below.
  final pulumi.Input<ProjectEnvironmentTypeIdentity>? identity;

  /// The Azure Region where the Dev Center Project Environment Type should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;

  /// Specifies the name of this Dev Center Project Environment Type. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// A mapping of tags which should be assigned to the Dev Center Project Environment Type.
  final pulumi.Input<Map<String, String>>? tags;

  /// A `user_role_assignment` block as defined below.
  final pulumi.Input<List<ProjectEnvironmentTypeUserRoleAssignment>>?
  userRoleAssignments;

  /// Creates a new [ProjectEnvironmentTypeState].
  /// [creatorRoleAssignmentRoles] A list of roles to assign to the environment creator.
  /// [deploymentTargetId] The ID of the subscription that the Environment Type will be mapped to. The environment's resources will be deployed into this subscription.
  /// [devCenterProjectId] The ID of the associated Dev Center Project. Changing this forces a new resource to be created.
  /// [identity] An `identity` block as defined below.
  /// [location] The Azure Region where the Dev Center Project Environment Type should exist. Changing this forces a new resource to be created.
  /// [name] Specifies the name of this Dev Center Project Environment Type. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the Dev Center Project Environment Type.
  /// [userRoleAssignments] A `user_role_assignment` block as defined below.
  ProjectEnvironmentTypeState({
    this.creatorRoleAssignmentRoles,
    this.deploymentTargetId,
    this.devCenterProjectId,
    this.identity,
    this.location,
    this.name,
    this.tags,
    this.userRoleAssignments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creatorRoleAssignmentRoles': ?creatorRoleAssignmentRoles,
      'deploymentTargetId': ?deploymentTargetId,
      'devCenterProjectId': ?devCenterProjectId,
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            ProjectEnvironmentTypeIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'tags': ?tags,
      'userRoleAssignments':
          ?pulumi.Input.mapOptionalInputValue<
            List<ProjectEnvironmentTypeUserRoleAssignment>,
            List<Map<String, dynamic>>
          >(
            userRoleAssignments,
            (value) =>
                pulumi.Input.encodeList<
                  ProjectEnvironmentTypeUserRoleAssignment,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ProjectEnvironmentTypeState.fromMap(Map<String, dynamic> map) {
    return ProjectEnvironmentTypeState(
      creatorRoleAssignmentRoles: (() {
        final guardedValue = map['creatorRoleAssignmentRoles'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      deploymentTargetId: (() {
        final guardedValue = map['deploymentTargetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      devCenterProjectId: (() {
        final guardedValue = map['devCenterProjectId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ProjectEnvironmentTypeIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      userRoleAssignments: (() {
        final guardedValue = map['userRoleAssignments'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ProjectEnvironmentTypeUserRoleAssignment>(
            guardedValue,
            (value) => ProjectEnvironmentTypeUserRoleAssignment.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
