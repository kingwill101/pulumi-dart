import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_args.dart';

/// UpdateTeamRoles upserts the role assigned to a team since we currently only support
/// a 1:1 mapping of teams to roles.
class Role extends pulumi.CustomResource {
  /// Creates a new [Role].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Role]. {@macro pulumi_api_teams_role_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Role(
    String name, {
    RoleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:api/teams:Role',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        );
}
