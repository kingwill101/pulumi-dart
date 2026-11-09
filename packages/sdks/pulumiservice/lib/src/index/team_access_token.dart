import 'package:pulumi/pulumi.dart' as pulumi;
import 'team_access_token_args.dart';

/// Creates a team access token in Pulumi Cloud. The token isn't tied to a user, and it has the permissions granted to its team.
///
/// Unlike `OrgAccessToken`, a provider authenticated with an organization or team access token can create this resource.
///
/// ## Import
///
/// This resource can be imported using its `id`, which has the format `{organization}/{team}/{name}/{tokenId}`, e.g.,
///
/// ```sh
///  $ pulumi import pulumiservice:index:TeamAccessToken my-team-access-token my-org/my-team/my-token/5c7e0a92-1b3d-4f6e-8a24-9d1b7e3c0f58
/// ```
///
/// The Pulumi Cloud console doesn't show the token ID. List it with the [Pulumi Cloud REST API](https://www.pulumi.com/docs/reference/cloud-rest-api/):
///
/// ```sh
/// curl -s -H "Authorization: token $PULUMI_ACCESS_TOKEN" \
///   https://api.pulumi.com/api/orgs/my-org/teams/my-team/tokens | jq '.tokens[] | {name, id}'
/// ```
///
/// The token's `value` can't be read back from Pulumi Cloud, so it's empty after import.
class TeamAccessToken extends pulumi.CustomResource {
  /// A description of the token.
  late final pulumi.Output<String?> description;
  /// The name for the token. This must be unique among all organization and team tokens in the organization.
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
          pulumi.CustomResourceOptions(replaceOnChanges: ['description', 'name', 'organizationName', 'teamName']).merge(options),
          additionalSecretOutputs: const ['value'],
        ) {
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    organizationName = registerOutput<String>('organizationName');
    teamName = registerOutput<String>('teamName');
    value = registerOutput<String>('value', isSecret: true);
  }

  /// Creates a typed reference to an existing [TeamAccessToken] resource.
  TeamAccessToken.reference(String urn)
    : super(
        'pulumiservice:index:TeamAccessToken',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['value'],
        isResourceReference: true,
      ) {
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    organizationName = registerOutput<String>('organizationName');
    teamName = registerOutput<String>('teamName');
    value = registerOutput<String>('value', isSecret: true);
  }
}
