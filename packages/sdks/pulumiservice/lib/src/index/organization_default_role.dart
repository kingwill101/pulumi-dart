import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_default_role_args.dart';

/// Sets the default role of a Pulumi Cloud organization: the role that members without an explicit role follow, and that new members receive. Set either `role`, for a built-in role, or `roleId`, for a custom role. An organization always has a default role and Pulumi Cloud has no call to clear it, so destroying this resource leaves the current default role in place. At most one `OrganizationDefaultRole` should manage an organization.
///
/// ## Import
///
/// This resource can be imported using its `id`, which has the format `{organization}`, e.g.,
///
/// ```sh
///  $ pulumi import pulumiservice:index:OrganizationDefaultRole my-organization-default-role my-org
/// ```
class OrganizationDefaultRole extends pulumi.CustomResource {
  /// The Pulumi Cloud organization name.
  late final pulumi.Output<String> organizationName;
  /// The built-in role to use as the default. One of `reader`, `builder` or `maintainer`. Exactly one of `role` and `roleId` must be set.
  late final pulumi.Output<String?> role;
  /// The ID of a custom role to use as the default. Exactly one of `role` and `roleId` must be set.
  late final pulumi.Output<String?> roleId;
  /// The name of the current default role.
  late final pulumi.Output<String> roleName;

  /// Creates a new [OrganizationDefaultRole].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationDefaultRole]. {@macro pulumi_index_organization_default_role_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationDefaultRole(
    String name, {
    OrganizationDefaultRoleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:index:OrganizationDefaultRole',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(replaceOnChanges: ['organizationName']).merge(options),
        ) {
    organizationName = registerOutput<String>('organizationName');
    role = registerOutput<String?>('role');
    roleId = registerOutput<String?>('roleId');
    roleName = registerOutput<String>('roleName');
  }

  /// Creates a typed reference to an existing [OrganizationDefaultRole] resource.
  OrganizationDefaultRole.reference(String urn)
    : super(
        'pulumiservice:index:OrganizationDefaultRole',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    organizationName = registerOutput<String>('organizationName');
    role = registerOutput<String?>('role');
    roleId = registerOutput<String?>('roleId');
    roleName = registerOutput<String>('roleName');
  }
}
