import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_args.dart';

/// Creates a new custom Role.
class Role extends pulumi.CustomResource {
  /// The current deleted state of the role. This field is read only. It will be ignored in calls to CreateRole and UpdateRole.
  late final pulumi.Output<bool> deleted;

  /// Optional. A human-readable description for the role.
  late final pulumi.Output<String> description;

  /// Used to perform a consistent read-modify-write.
  late final pulumi.Output<String> etag;

  /// The names of the permissions this role grants when bound in an IAM policy.
  late final pulumi.Output<List<String>> includedPermissions;

  /// The name of the role. When `Role` is used in `CreateRole`, the role name must not be set. When `Role` is used in output and other input such as `UpdateRole`, the role name is the complete path. For example, `roles/logging.viewer` for predefined roles, `organizations/{ORGANIZATION_ID}/roles/my-role` for organization-level custom roles, and `projects/{PROJECT_ID}/roles/my-role` for project-level custom roles.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// The current launch stage of the role. If the `ALPHA` launch stage has been selected for a role, the `stage` field will not be included in the returned definition for the role.
  late final pulumi.Output<String> stage;

  /// Optional. A human-readable title for the role. Typically this is limited to 100 UTF-8 bytes.
  late final pulumi.Output<String> title;

  /// Creates a new [Role].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Role]. {@macro pulumi_iam_v1_role_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Role(String name, {RoleArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'google-native:iam/v1:Role',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    deleted = registerOutput<bool>('deleted');
    description = registerOutput<String>('description');
    etag = registerOutput<String>('etag');
    includedPermissions = registerOutput<List<String>>('includedPermissions');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    stage = registerOutput<String>('stage');
    title = registerOutput<String>('title');
  }
}
