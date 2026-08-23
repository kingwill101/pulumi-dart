import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_api_args.dart';

/// Creates a new custom role for an organization. Custom roles define fine-grained permission sets that can be assigned to organization members and teams, enabling precise access control beyond the built-in admin and member roles. Optionally, an associated policy and role binding can be created alongside the role. Role definitions are subject to two limits: a permission descriptor group may contain at most 500 entries (each directly-specified entity counts as one entry), and the total serialized size of the role definition may not exceed 1 MB. Exceeding either limit returns a 400 error. If you need to grant access to more than 500 individually listed resources, use tag-based (ABAC) rules instead.
class RoleApi extends pulumi.CustomResource {
  /// When the role was created.
  late final pulumi.Output<String> created;
  /// The identifier for default roles. Empty for custom roles.
  late final pulumi.Output<String?> defaultIdentifier;
  /// A human-readable description of the permission descriptor.
  late final pulumi.Output<String?> description;
  /// The detailed permission descriptor tree.
  late final pulumi.Output<dynamic> details;
  /// Whether this role is the organization default.
  late final pulumi.Output<bool> isOrgDefault;
  /// When the role was last modified.
  late final pulumi.Output<String> modified;
  /// The name of the permission descriptor.
  late final pulumi.Output<String?> name;
  /// The ID of the organization this role belongs to.
  late final pulumi.Output<String> orgId;
  /// The resource type this permission descriptor applies to.
  late final pulumi.Output<String?> resourceType;
  /// The unique identifier for this role.
  late final pulumi.Output<String> roleID;
  /// The UX purpose of this permission descriptor (e.g. role, policy, set).
  late final pulumi.Output<String?> uxPurpose;
  /// The version of this role.
  late final pulumi.Output<int> version;

  /// Creates a new [RoleApi].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RoleApi]. {@macro pulumi_api_role_api_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RoleApi(
    String name, {
    RoleApiArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:api:Role',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    created = registerOutput<String>('created');
    defaultIdentifier = registerOutput<String?>('defaultIdentifier');
    description = registerOutput<String?>('description');
    details = registerOutput<dynamic>('details');
    isOrgDefault = registerOutput<bool>('isOrgDefault');
    modified = registerOutput<String>('modified');
    this.name = registerOutput<String?>('name');
    orgId = registerOutput<String>('orgId');
    resourceType = registerOutput<String?>('resourceType');
    roleID = registerOutput<String>('roleID');
    uxPurpose = registerOutput<String?>('uxPurpose');
    version = registerOutput<int>('version');
  }
}
