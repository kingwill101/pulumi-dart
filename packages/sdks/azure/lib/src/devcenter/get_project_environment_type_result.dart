// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_project_environment_type_identity.dart';
import 'get_project_environment_type_user_role_assignment.dart';

/// Result data returned by getProjectEnvironmentType.
class GetProjectEnvironmentTypeResult {
  /// A list of roles assigned to the environment creator.
  final List<String>? creatorRoleAssignmentRoles;
  /// The ID of the subscription that the Environment Type is mapped to.
  final String? deploymentTargetId;
  final String? devCenterProjectId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// An `identity` block as defined below.
  final List<GetProjectEnvironmentTypeIdentity>? identities;
  /// The Azure Region where the Dev Center Project Environment Type exists.
  final String? location;
  final String? name;
  /// A mapping of tags assigned to the Dev Center Project Environment Type.
  final Map<String, String>? tags;
  /// A `userRoleAssignment` block as defined below.
  final List<GetProjectEnvironmentTypeUserRoleAssignment>? userRoleAssignments;

  /// Creates a new [GetProjectEnvironmentTypeResult].
  /// [creatorRoleAssignmentRoles] A list of roles assigned to the environment creator.
  /// [deploymentTargetId] The ID of the subscription that the Environment Type is mapped to.
  /// [devCenterProjectId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [location] The Azure Region where the Dev Center Project Environment Type exists.
  /// [name] Optional.
  /// [tags] A mapping of tags assigned to the Dev Center Project Environment Type.
  /// [userRoleAssignments] A `userRoleAssignment` block as defined below.
  const GetProjectEnvironmentTypeResult({
    this.creatorRoleAssignmentRoles,
    this.deploymentTargetId,
    this.devCenterProjectId,
    this.id,
    this.identities,
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
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetProjectEnvironmentTypeIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'name': ?name,
      'tags': ?tags,
      'userRoleAssignments': ?(() { final guardedValue = userRoleAssignments; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetProjectEnvironmentTypeUserRoleAssignment, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetProjectEnvironmentTypeResult.fromMap(Map<String, dynamic> map) {
    return GetProjectEnvironmentTypeResult(
      creatorRoleAssignmentRoles: (() { final guardedValue = map['creatorRoleAssignmentRoles']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      deploymentTargetId: (() { final guardedValue = map['deploymentTargetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      devCenterProjectId: (() { final guardedValue = map['devCenterProjectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetProjectEnvironmentTypeIdentity>(guardedValue, (value) => GetProjectEnvironmentTypeIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      userRoleAssignments: (() { final guardedValue = map['userRoleAssignments']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetProjectEnvironmentTypeUserRoleAssignment>(guardedValue, (value) => GetProjectEnvironmentTypeUserRoleAssignment.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
