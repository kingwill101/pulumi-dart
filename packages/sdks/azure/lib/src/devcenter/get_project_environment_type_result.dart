// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_project_environment_type_identity.dart';
import 'get_project_environment_type_user_role_assignment.dart';

/// Result data returned by getProjectEnvironmentType.
class GetProjectEnvironmentTypeResult {
  /// A list of roles assigned to the environment creator.
  final List<String> creatorRoleAssignmentRoles;
  /// The ID of the subscription that the Environment Type is mapped to.
  final String deploymentTargetId;
  final String devCenterProjectId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// An `identity` block as defined below.
  final List<GetProjectEnvironmentTypeIdentity> identities;
  /// The Azure Region where the Dev Center Project Environment Type exists.
  final String location;
  final String name;
  /// A mapping of tags assigned to the Dev Center Project Environment Type.
  final Map<String, String> tags;
  /// A `user_role_assignment` block as defined below.
  final List<GetProjectEnvironmentTypeUserRoleAssignment> userRoleAssignments;

  /// Creates a new [GetProjectEnvironmentTypeResult].
  /// [creatorRoleAssignmentRoles] A list of roles assigned to the environment creator.
  /// [deploymentTargetId] The ID of the subscription that the Environment Type is mapped to.
  /// [devCenterProjectId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [location] The Azure Region where the Dev Center Project Environment Type exists.
  /// [name] Required.
  /// [tags] A mapping of tags assigned to the Dev Center Project Environment Type.
  /// [userRoleAssignments] A `user_role_assignment` block as defined below.
  const GetProjectEnvironmentTypeResult({
    required this.creatorRoleAssignmentRoles,
    required this.deploymentTargetId,
    required this.devCenterProjectId,
    required this.id,
    required this.identities,
    required this.location,
    required this.name,
    required this.tags,
    required this.userRoleAssignments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creatorRoleAssignmentRoles': creatorRoleAssignmentRoles,
      'deploymentTargetId': deploymentTargetId,
      'devCenterProjectId': devCenterProjectId,
      'id': id,
      'identities': pulumi.Input.encodeList<GetProjectEnvironmentTypeIdentity, Map<String, dynamic>>(identities, (value) => value.toMap()),
      'location': location,
      'name': name,
      'tags': tags,
      'userRoleAssignments': pulumi.Input.encodeList<GetProjectEnvironmentTypeUserRoleAssignment, Map<String, dynamic>>(userRoleAssignments, (value) => value.toMap()),
    };
  }

  factory GetProjectEnvironmentTypeResult.fromMap(Map<String, dynamic> map) {
    return GetProjectEnvironmentTypeResult(
      creatorRoleAssignmentRoles: (map['creatorRoleAssignmentRoles'] as List).cast<String>(),
      deploymentTargetId: map['deploymentTargetId'] as String,
      devCenterProjectId: map['devCenterProjectId'] as String,
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetProjectEnvironmentTypeIdentity>(map['identities']!, (value) => GetProjectEnvironmentTypeIdentity.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      name: map['name'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      userRoleAssignments: pulumi.Input.decodeList<GetProjectEnvironmentTypeUserRoleAssignment>(map['userRoleAssignments']!, (value) => GetProjectEnvironmentTypeUserRoleAssignment.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

