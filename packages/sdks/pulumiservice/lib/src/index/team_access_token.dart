import 'package:pulumi/pulumi.dart' as pulumi;
import 'team_access_token_args.dart';

/// The Pulumi Cloud allows users to create access tokens scoped to team. Team access tokens is a resource to create them and assign them to a team
class TeamAccessToken extends pulumi.CustomResource {
  /// Optional. Description for the token.
  late final pulumi.Output<String?> description;
  /// The name for the token. This must be unique amongst all machine tokens within your organization.
  late final pulumi.Output<String> name;
  /// The organization's name.
  late final pulumi.Output<String> organizationName;
  /// The team name.
  late final pulumi.Output<String> teamName;
  /// The token's value.
  late final pulumi.Output<String> value;

  /// Creates a new [TeamAccessToken].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TeamAccessToken]. {@macro pulumi_index_team_access_token_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TeamAccessToken(
    String name, {
    TeamAccessTokenArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:index:TeamAccessToken',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.organizationName = registerOutput<String>('organizationName');
    this.teamName = registerOutput<String>('teamName');
    this.value = registerOutput<String>('value');
  }
}
