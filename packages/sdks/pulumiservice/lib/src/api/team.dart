import 'package:pulumi/pulumi.dart' as pulumi;
import 'team_args.dart';

/// CreatePulumiTeam creates a "Pulumi" team, i.e. one whose membership is managed by Pulumi.
/// (As opposed to a GitHub or GitLab-based team.)
class Team extends pulumi.CustomResource {
  /// The list of account permissions granted to the team.
  late final pulumi.Output<List<dynamic>?> accounts;
  /// A free-form text description of the team's purpose.
  late final pulumi.Output<String> description;
  /// The human-readable display name shown in the UI.
  late final pulumi.Output<String> displayName;
  /// The list of environment settings for the team.
  late final pulumi.Output<List<dynamic>?> environments;
  /// The kind of team (e.g., pulumi or GitHub-backed).
  late final pulumi.Output<String> kind;
  /// ListMembersError is the error message if an error was encountered whilst trying to
  /// contact the team's backend (eg. GitHub). The UI will only show this error if it is non-nil
  /// and if Members itself is an empty slice.
  late final pulumi.Output<String?> listMembersError;
  /// The list of team members.
  late final pulumi.Output<List<dynamic>?> members;
  /// The unique identifier name of the team within the organization.
  late final pulumi.Output<String> name;
  /// RoleIDs are the IDs of the FGA roles assigned to the team, if any.
  /// Currently only one role per team is supported.
  late final pulumi.Output<List<String>?> roleIds;
  /// The list of stack permissions granted to the team.
  late final pulumi.Output<List<dynamic>?> stacks;
  /// UserRole is the calling user's role on the given team.
  late final pulumi.Output<String?> userRole;

  /// Creates a new [Team].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Team]. {@macro pulumi_api_teams_team_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Team(
    String name, {
    TeamArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:api/teams:Team',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accounts = registerOutput<List<dynamic>?>('accounts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); });
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    environments = registerOutput<List<dynamic>?>('environments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); });
    kind = registerOutput<String>('kind');
    listMembersError = registerOutput<String?>('listMembersError');
    members = registerOutput<List<dynamic>?>('members', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); });
    this.name = registerOutput<String>('name');
    roleIds = registerOutput<List<String>?>('roleIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    stacks = registerOutput<List<dynamic>?>('stacks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); });
    userRole = registerOutput<String?>('userRole');
  }

  /// Creates a typed reference to an existing [Team] resource.
  Team.reference(String urn)
    : super(
        'pulumiservice:api/teams:Team',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accounts = registerOutput<List<dynamic>?>('accounts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); });
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    environments = registerOutput<List<dynamic>?>('environments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); });
    kind = registerOutput<String>('kind');
    listMembersError = registerOutput<String?>('listMembersError');
    members = registerOutput<List<dynamic>?>('members', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); });
    this.name = registerOutput<String>('name');
    roleIds = registerOutput<List<String>?>('roleIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    stacks = registerOutput<List<dynamic>?>('stacks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); });
    userRole = registerOutput<String?>('userRole');
  }
}
