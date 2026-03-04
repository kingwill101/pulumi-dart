import 'package:pulumi/pulumi.dart' as pulumi;
import 'object_access_control_args.dart';
import 'object_access_control_project_team_response.dart';

/// Creates a new ACL entry on the specified object.
/// Auto-naming is currently not supported for this resource.
class ObjectAccessControlStorageV1 extends pulumi.CustomResource {
  late final pulumi.Output<String> bucket;

  /// The domain associated with the entity, if any.
  late final pulumi.Output<String> domain;

  /// The email address associated with the entity, if any.
  late final pulumi.Output<String> email;

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
  late final pulumi.Output<String> entity;

  /// The ID for the entity, if any.
  late final pulumi.Output<String> entityId;

  /// HTTP 1.1 Entity tag for the access-control entry.
  late final pulumi.Output<String> etag;

  /// If present, selects a specific revision of this object (as opposed to the latest version, the default).
  late final pulumi.Output<String> generation;

  /// The kind of item this is. For object access control entries, this is always storage#objectAccessControl.
  late final pulumi.Output<String> kind;
  late final pulumi.Output<String> object_;

  /// The project team associated with the entity, if any.
  late final pulumi.Output<ObjectAccessControlProjectTeamResponse> projectTeam;

  /// The access permission for the entity.
  late final pulumi.Output<String> role;

  /// The link to this access-control entry.
  late final pulumi.Output<String> selfLink;

  /// The project to be billed for this request. Required for Requester Pays buckets.
  late final pulumi.Output<String?> userProject;

  /// Creates a new [ObjectAccessControlStorageV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ObjectAccessControlStorageV1]. {@macro pulumi_storage_v1_object_access_control_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ObjectAccessControlStorageV1(
    String name, {
    ObjectAccessControlArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:storage/v1:ObjectAccessControl',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    bucket = registerOutput<String>('bucket');
    domain = registerOutput<String>('domain');
    email = registerOutput<String>('email');
    entity = registerOutput<String>('entity');
    entityId = registerOutput<String>('entityId');
    etag = registerOutput<String>('etag');
    generation = registerOutput<String>('generation');
    kind = registerOutput<String>('kind');
    object_ = registerOutput<String>('object');
    projectTeam = registerOutput<ObjectAccessControlProjectTeamResponse>(
      'projectTeam',
    );
    role = registerOutput<String>('role');
    selfLink = registerOutput<String>('selfLink');
    userProject = registerOutput<String?>('userProject');
  }
}
