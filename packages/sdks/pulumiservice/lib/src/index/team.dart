import 'package:pulumi/pulumi.dart' as pulumi;
import 'team_args.dart';

/// The Pulumi Cloud offers role-based access control (RBAC) using teams. Teams allow organization admins to assign a set of stack permissions to a group of users.
class Team extends pulumi.CustomResource {
  /// Optional. Team description.
  late final pulumi.Output<String?> description;

  /// Optional. Team display name.
  late final pulumi.Output<String?> displayName;

  /// The GitHub ID of the team to mirror. Must be in the same GitHub organization that the Pulumi org is backed by. Required for "github" teams.
  late final pulumi.Output<double?> githubTeamId;

  /// List of Pulumi Cloud usernames of team members.
  late final pulumi.Output<List<String>> members;

  /// The team's name. Required for "pulumi" teams.
  late final pulumi.Output<String?> name;

  /// The name of the Pulumi organization the team belongs to.
  late final pulumi.Output<String> organizationName;

  /// The type of team. Must be either `pulumi` or `github`.
  late final pulumi.Output<String> teamType;

  /// Creates a new [Team].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Team]. {@macro pulumi_index_team_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Team(String name, {TeamArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'pulumiservice:index:Team',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    githubTeamId = registerOutput<double?>('githubTeamId');
    members = registerOutput<List<String>>('members');
    this.name = registerOutput<String?>('name');
    organizationName = registerOutput<String>('organizationName');
    teamType = registerOutput<String>('teamType');
  }
}
