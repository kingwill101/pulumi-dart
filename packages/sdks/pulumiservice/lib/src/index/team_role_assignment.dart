import 'package:pulumi/pulumi.dart' as pulumi;
import 'team_role_assignment_args.dart';

/// Assigns a custom (fine-grained) role to a Pulumi Cloud team. The Pulumi Cloud API currently supports one role per team; creating a second assignment replaces the first. The team's organization must already have the custom-roles feature enabled.
///
/// ## Import
///
/// This resource can be imported using its `id`, which has the format `{organization}/{team}/{roleId}`, e.g.,
///
/// ```sh
///  $ pulumi import pulumiservice:index:TeamRoleAssignment my-team-role-assignment my-org/my-team/1e5b8d3a-6c42-4f90-b7a1-8d2c4e6f0b95
/// ```
///
/// The role ID is the last segment of its page URL in the Pulumi Cloud console, for example `https://app.pulumi.com/my-org/settings/access-management/roles/details/1e5b8d3a-6c42-4f90-b7a1-8d2c4e6f0b95`.
class TeamRoleAssignment extends pulumi.CustomResource {
  /// The Pulumi Cloud organization name.
  late final pulumi.Output<String> organizationName;
  /// The ID of the custom role to assign.
  late final pulumi.Output<String> roleId;
  /// The name of the currently assigned role (custom role name, or built-in role).
  late final pulumi.Output<String> roleName;
  /// The team name.
  late final pulumi.Output<String> teamName;

  /// Creates a new [TeamRoleAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TeamRoleAssignment]. {@macro pulumi_index_team_role_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TeamRoleAssignment(
    String name, {
    TeamRoleAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:index:TeamRoleAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(replaceOnChanges: ['organizationName', 'roleId', 'teamName']).merge(options),
        ) {
    organizationName = registerOutput<String>('organizationName');
    roleId = registerOutput<String>('roleId');
    roleName = registerOutput<String>('roleName');
    teamName = registerOutput<String>('teamName');
  }

  /// Creates a typed reference to an existing [TeamRoleAssignment] resource.
  TeamRoleAssignment.reference(String urn)
    : super(
        'pulumiservice:index:TeamRoleAssignment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    organizationName = registerOutput<String>('organizationName');
    roleId = registerOutput<String>('roleId');
    roleName = registerOutput<String>('roleName');
    teamName = registerOutput<String>('teamName');
  }
}
