import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_member_args.dart';

/// Manages a user's membership in a Pulumi Cloud organization and their assigned role. The user must already have a Pulumi Cloud account before they can be added. Custom (fine-grained) roles are assigned by setting `roleId`; built-in roles are assigned by setting `role`. When both are set, `roleId` takes precedence.
class OrganizationMember extends pulumi.CustomResource {
  /// True when this resource adopted an existing organization member (the user was already in the org at Create time). Adopted memberships are left in place on destroy; only the role is reset.
  late final pulumi.Output<bool> adopted;
  /// The member's email address.
  late final pulumi.Output<String> email;
  /// The member's display name.
  late final pulumi.Output<String> name;
  /// The Pulumi Cloud organization name.
  late final pulumi.Output<String> organizationName;
  /// The built-in organization role. One of `member`, `admin`, `billing-manager`. Defaults to `member` on create. Ignored when `roleId` is set.
  late final pulumi.Output<String?> role;
  /// The ID of a custom (fine-grained) organization role to assign. Takes precedence over `role`.
  late final pulumi.Output<String?> roleId;
  /// The name of the currently assigned role (custom role name, or built-in role).
  late final pulumi.Output<String> roleName;
  /// The Pulumi Cloud username of the member.
  late final pulumi.Output<String> username;

  /// Creates a new [OrganizationMember].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationMember]. {@macro pulumi_index_organization_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationMember(
    String name, {
    OrganizationMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:index:OrganizationMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    adopted = registerOutput<bool>('adopted');
    email = registerOutput<String>('email');
    this.name = registerOutput<String>('name');
    organizationName = registerOutput<String>('organizationName');
    role = registerOutput<String?>('role');
    roleId = registerOutput<String?>('roleId');
    roleName = registerOutput<String>('roleName');
    username = registerOutput<String>('username');
  }
}
