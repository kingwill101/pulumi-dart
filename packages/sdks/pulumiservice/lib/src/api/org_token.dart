import 'package:pulumi/pulumi.dart' as pulumi;
import 'org_token_args.dart';

/// Generates a new access token scoped to the organization for use in CI/CD pipelines and automated workflows. Organization tokens belong to the organization rather than individual users, ensuring that access is not disrupted when team members leave.
///
/// The `name` field must be unique across the organization (including deleted tokens) and cannot exceed 40 characters. The `expires` field accepts a unix epoch timestamp up to two years from the present, or `0` for no expiry (default).
///
/// **Important:** The token value in the response is only returned once at creation time and cannot be retrieved later. Audit logs for actions performed with organization tokens are attributed to the organization rather than an individual user.
class OrgToken extends pulumi.CustomResource {
  /// The unique identifier
  late final pulumi.Output<String> tokenId;
  /// The token value
  late final pulumi.Output<String> tokenValue;

  /// Creates a new [OrgToken].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrgToken]. {@macro pulumi_api_tokens_org_token_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrgToken(
    String name, {
    OrgTokenArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:api/tokens:OrgToken',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    tokenId = registerOutput<String>('tokenId');
    tokenValue = registerOutput<String>('tokenValue');
  }
}
