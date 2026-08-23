// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_environment_type_identity.dart';
import 'project_environment_type_user_role_assignment.dart';

/// {@template pulumi_devcenter_project_environment_type_project_environment_type_args_doc}
/// The set of arguments for ProjectEnvironmentType.
/// {@endtemplate}
/// {@macro pulumi_devcenter_project_environment_type_project_environment_type_args_doc}
class ProjectEnvironmentTypeArgs {
  /// A list of roles to assign to the environment creator.
  final pulumi.Input<List<String>>? creatorRoleAssignmentRoles;
  /// The ID of the subscription that the Environment Type will be mapped to. The environment's resources will be deployed into this subscription.
  final pulumi.Input<String> deploymentTargetId;
  /// The ID of the associated Dev Center Project. Changing this forces a new resource to be created.
  final pulumi.Input<String> devCenterProjectId;
  /// An `identity` block as defined below.
  final pulumi.Input<ProjectEnvironmentTypeIdentity> identity;
  /// The Azure Region where the Dev Center Project Environment Type should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of this Dev Center Project Environment Type. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A mapping of tags which should be assigned to the Dev Center Project Environment Type.
  final pulumi.Input<Map<String, String>>? tags;
  /// A `userRoleAssignment` block as defined below.
  final pulumi.Input<List<ProjectEnvironmentTypeUserRoleAssignment>>? userRoleAssignments;

  /// Creates a new [ProjectEnvironmentTypeArgs].
  /// [creatorRoleAssignmentRoles] A list of roles to assign to the environment creator.
  /// [deploymentTargetId] The ID of the subscription that the Environment Type will be mapped to. The environment's resources will be deployed into this subscription.
  /// [devCenterProjectId] The ID of the associated Dev Center Project. Changing this forces a new resource to be created.
  /// [identity] An `identity` block as defined below.
  /// [location] The Azure Region where the Dev Center Project Environment Type should exist. Changing this forces a new resource to be created.
  /// [name] Specifies the name of this Dev Center Project Environment Type. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the Dev Center Project Environment Type.
  /// [userRoleAssignments] A `userRoleAssignment` block as defined below.
  const ProjectEnvironmentTypeArgs({
    this.creatorRoleAssignmentRoles,
    required this.deploymentTargetId,
    required this.devCenterProjectId,
    required this.identity,
    this.location,
    this.name,
    this.tags,
    this.userRoleAssignments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creatorRoleAssignmentRoles': ?creatorRoleAssignmentRoles,
      'deploymentTargetId': deploymentTargetId,
      'devCenterProjectId': devCenterProjectId,
      'identity': pulumi.Input.mapInputValue<ProjectEnvironmentTypeIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'tags': ?tags,
      'userRoleAssignments': ?pulumi.Input.mapOptionalInputValue<List<ProjectEnvironmentTypeUserRoleAssignment>, List<Map<String, dynamic>>>(userRoleAssignments, (value) => pulumi.Input.encodeList<ProjectEnvironmentTypeUserRoleAssignment, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ProjectEnvironmentTypeArgs.fromMap(Map<String, dynamic> map) {
    return ProjectEnvironmentTypeArgs(
      creatorRoleAssignmentRoles: (() { final guardedValue = map['creatorRoleAssignmentRoles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      deploymentTargetId: pulumi.Input.fromValue(map['deploymentTargetId'] as String),
      devCenterProjectId: pulumi.Input.fromValue(map['devCenterProjectId'] as String),
      identity: pulumi.Input.fromValue(ProjectEnvironmentTypeIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      userRoleAssignments: (() { final guardedValue = map['userRoleAssignments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ProjectEnvironmentTypeUserRoleAssignment>(guardedValue, (value) => ProjectEnvironmentTypeUserRoleAssignment.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
