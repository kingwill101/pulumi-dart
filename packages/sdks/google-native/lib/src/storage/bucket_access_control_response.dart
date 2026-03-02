// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_access_control_project_team_response.dart';

/// An access-control entry.
class BucketAccessControlResponse {
  /// The name of the bucket.
  final pulumi.Input<String> bucket;
  /// The domain associated with the entity, if any.
  final pulumi.Input<String> domain;
  /// The email address associated with the entity, if any.
  final pulumi.Input<String> email;
  /// The entity holding the permission, in one of the following forms:
  /// - user-userId
  /// - user-email
  /// - group-groupId
  /// - group-email
  /// - domain-domain
  /// - project-team-projectId
  /// - allUsers
  /// - allAuthenticatedUsers Examples:
  /// - The user liz@example.com would be user-liz@example.com.
  /// - The group example@googlegroups.com would be group-example@googlegroups.com.
  /// - To refer to all members of the Google Apps for Business domain example.com, the entity would be domain-example.com.
  final pulumi.Input<String> entity;
  /// The ID for the entity, if any.
  final pulumi.Input<String> entityId;
  /// HTTP 1.1 Entity tag for the access-control entry.
  final pulumi.Input<String> etag;
  /// The kind of item this is. For bucket access control entries, this is always storage#bucketAccessControl.
  final pulumi.Input<String> kind;
  /// The project team associated with the entity, if any.
  final pulumi.Input<BucketAccessControlProjectTeamResponse> projectTeam;
  /// The access permission for the entity.
  final pulumi.Input<String> role;
  /// The link to this access-control entry.
  final pulumi.Input<String> selfLink;

  /// Creates a new [BucketAccessControlResponse].
  /// [bucket] The name of the bucket.
  /// [domain] The domain associated with the entity, if any.
  /// [email] The email address associated with the entity, if any.
  /// [entity] The entity holding the permission, in one of the following forms:
  /// [entityId] The ID for the entity, if any.
  /// [etag] HTTP 1.1 Entity tag for the access-control entry.
  /// [kind] The kind of item this is. For bucket access control entries, this is always storage#bucketAccessControl.
  /// [projectTeam] The project team associated with the entity, if any.
  /// [role] The access permission for the entity.
  /// [selfLink] The link to this access-control entry.
  BucketAccessControlResponse({
    required this.bucket,
    required this.domain,
    required this.email,
    required this.entity,
    required this.entityId,
    required this.etag,
    required this.kind,
    required this.projectTeam,
    required this.role,
    required this.selfLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'domain': domain,
      'email': email,
      'entity': entity,
      'entityId': entityId,
      'etag': etag,
      'kind': kind,
      'projectTeam': pulumi.Input.mapInputValue<BucketAccessControlProjectTeamResponse, Map<String, dynamic>>(projectTeam, (value) => value.toMap()),
      'role': role,
      'selfLink': selfLink,
    };
  }

  factory BucketAccessControlResponse.fromMap(Map<String, dynamic> map) {
    return BucketAccessControlResponse(
      bucket: (map['bucket'] as String).input(),
      domain: (map['domain'] as String).input(),
      email: (map['email'] as String).input(),
      entity: (map['entity'] as String).input(),
      entityId: (map['entityId'] as String).input(),
      etag: (map['etag'] as String).input(),
      kind: (map['kind'] as String).input(),
      projectTeam: (BucketAccessControlProjectTeamResponse.fromMap((map['projectTeam'] as Map).cast<String, dynamic>())).input(),
      role: (map['role'] as String).input(),
      selfLink: (map['selfLink'] as String).input(),
    );
  }
}

