import 'package:pulumi/pulumi.dart' as pulumi;
import 'team_token_args.dart';

/// Generates a new access token scoped to a specific team within an organization. Team tokens inherit the stack permissions assigned to the team, making them suitable for CI/CD pipelines that need access limited to a specific set of stacks.
///
/// The `name` field must be unique across the organization (including deleted tokens) and cannot exceed 40 characters. The `expires` field accepts a unix epoch timestamp up to two years from the present, or `0` for no expiry (default).
///
/// **Important:** The token value in the response is only returned once at creation time and cannot be retrieved later.
class TeamToken extends pulumi.CustomResource {
  /// The unique identifier
  late final pulumi.Output<String> tokenId;
  /// The token value
  late final pulumi.Output<String> tokenValue;

  /// Creates a new [TeamToken].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TeamToken]. {@macro pulumi_api_tokens_team_token_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TeamToken(
    String name, {
    TeamTokenArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:api/tokens:TeamToken',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    tokenId = registerOutput<String>('tokenId');
    tokenValue = registerOutput<String>('tokenValue');
  }
}
