import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_member_args.dart';

/// Adds an existing Pulumi user to an organization with a built-in role. **Important:** The user must have already signed up for a Pulumi account before they can be added to an organization.
///
/// This endpoint only assigns built-in roles. To onboard a user with a custom role, use the organization invite flow (`BatchCreateOrgInviteEmail`) and set `roleId` on the invite — the custom role is applied when the user accepts. Alternatively, add the user here with a built-in role and then call `UpdateOrganizationMember` with `fgaRoleId` to reassign.
///
/// Returns the newly created organization member record. Returns 409 if the user is already a member of the organization.
class OrganizationMember extends pulumi.CustomResource {
  /// When the member joined the organization.
  late final pulumi.Output<String> created;
  /// The role currently assigned to this member — either a built-in role (member, admin, billingManager) or a custom role. Falls back to the organization's default role if no role is assigned directly.
  late final pulumi.Output<dynamic> fgaRole;
  /// KnownToPulumi returns if the organization member has a Pulumi account.
  late final pulumi.Output<bool> knownToPulumi;
  /// Links to the member in the Pulumi Console
  late final pulumi.Output<dynamic> links;
  /// **Deprecated:** Use `fgaRole` instead. The member's built-in role within the organization. For members assigned a custom role, this is the closest built-in projection (`member`, `admin`, or `billingManager`) and may lose detail; `fgaRole` is authoritative.
  late final pulumi.Output<String> role;
  /// Deprecated. Use GetOrganizationMemberTeams to list teams.
  late final pulumi.Output<List<String>?> teams;
  /// The user information for this organization member.
  late final pulumi.Output<dynamic> user;
  /// VirtualAdmin indicates that the member does not have admin access on the
  /// backing identity provider, but does have admin access to the Pulumi organization.
  late final pulumi.Output<bool> virtualAdmin;

  /// Creates a new [OrganizationMember].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationMember]. {@macro pulumi_api_organization_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationMember(
    String name, {
    OrganizationMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:api:OrganizationMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    created = registerOutput<String>('created');
    fgaRole = registerOutput<dynamic>('fgaRole');
    knownToPulumi = registerOutput<bool>('knownToPulumi');
    links = registerOutput<dynamic>('links');
    role = registerOutput<String>('role');
    teams = registerOutput<List<String>?>('teams');
    user = registerOutput<dynamic>('user');
    virtualAdmin = registerOutput<bool>('virtualAdmin');
  }
}
