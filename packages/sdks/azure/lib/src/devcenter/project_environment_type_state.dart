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
  final pulumi.Input<List<ProjectEnvironmentTypeUserRoleAssignment>>? userRoleAssignments;

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
    pulumi.Output<List<String>>? creatorRoleAssignmentRoles,
    pulumi.Output<String>? deploymentTargetId,
    pulumi.Output<String>? devCenterProjectId,
    pulumi.Output<ProjectEnvironmentTypeIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<List<ProjectEnvironmentTypeUserRoleAssignment>>? userRoleAssignments,
  }) :
      creatorRoleAssignmentRoles = pulumi.Input.asOptionalInput<List<String>>(creatorRoleAssignmentRoles),
      deploymentTargetId = pulumi.Input.asOptionalInput<String>(deploymentTargetId),
      devCenterProjectId = pulumi.Input.asOptionalInput<String>(devCenterProjectId),
      identity = pulumi.Input.asOptionalInput<ProjectEnvironmentTypeIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      userRoleAssignments = pulumi.Input.asOptionalInput<List<ProjectEnvironmentTypeUserRoleAssignment>>(userRoleAssignments);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creatorRoleAssignmentRoles': ?creatorRoleAssignmentRoles,
      'deploymentTargetId': ?deploymentTargetId,
      'devCenterProjectId': ?devCenterProjectId,
      'identity': ?pulumi.Input.mapOptionalInputValue<ProjectEnvironmentTypeIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'tags': ?tags,
      'userRoleAssignments': ?pulumi.Input.mapOptionalInputValue<List<ProjectEnvironmentTypeUserRoleAssignment>, List<Map<String, dynamic>>>(userRoleAssignments, (value) => pulumi.Input.encodeList<ProjectEnvironmentTypeUserRoleAssignment, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ProjectEnvironmentTypeState.fromMap(Map<String, dynamic> map) {
    return ProjectEnvironmentTypeState(
      creatorRoleAssignmentRoles: map['creatorRoleAssignmentRoles'] == null ? null : pulumi.Output.create<List<String>>((map['creatorRoleAssignmentRoles'] as List).cast<String>()),
      deploymentTargetId: map['deploymentTargetId'] == null ? null : pulumi.Output.create<String>(map['deploymentTargetId'] as String),
      devCenterProjectId: map['devCenterProjectId'] == null ? null : pulumi.Output.create<String>(map['devCenterProjectId'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<ProjectEnvironmentTypeIdentity>(ProjectEnvironmentTypeIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      userRoleAssignments: map['userRoleAssignments'] == null ? null : pulumi.Output.create<List<ProjectEnvironmentTypeUserRoleAssignment>>(pulumi.Input.decodeList<ProjectEnvironmentTypeUserRoleAssignment>(map['userRoleAssignments'], (value) => ProjectEnvironmentTypeUserRoleAssignment.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

