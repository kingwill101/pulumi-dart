import 'package:pulumi/pulumi.dart' as pulumi;
import 'team_role_assignment_args.dart';

/// Assigns a custom (fine-grained) role to a Pulumi Cloud team. The Pulumi Cloud API currently supports one role per team; creating a second assignment replaces the first. The team's organization must already have the custom-roles feature enabled.
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
          options ?? pulumi.CustomResourceOptions(),
        ) {
    organizationName = registerOutput<String>('organizationName');
    roleId = registerOutput<String>('roleId');
    roleName = registerOutput<String>('roleName');
    teamName = registerOutput<String>('teamName');
  }
}
