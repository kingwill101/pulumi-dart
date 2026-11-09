import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_token_args.dart';

/// Creates a personal access token for the Pulumi Cloud user that the provider is authenticated as. The token acts with that user's permissions.
///
/// To create a token that isn't tied to a user, use `OrgAccessToken` or `TeamAccessToken`.
///
/// ## Import
///
/// This resource can be imported using its `id`, which has the format `{tokenId}`, e.g.,
///
/// ```sh
///  $ pulumi import pulumiservice:index:AccessToken my-access-token 3f2b9c1e-7d4a-4e8b-9a61-0c5d2e8f7b13
/// ```
///
/// The Pulumi Cloud console doesn't show the token ID. List it with the [Pulumi Cloud REST API](https://www.pulumi.com/docs/reference/cloud-rest-api/):
///
/// ```sh
/// curl -s -H "Authorization: token $PULUMI_ACCESS_TOKEN" \
///   https://api.pulumi.com/api/user/tokens | jq '.tokens[] | {name, id}'
/// ```
///
/// The token's `value` can't be read back from Pulumi Cloud, so it's empty after import.
class AccessToken extends pulumi.CustomResource {
  /// Description of the access token.
  late final pulumi.Output<String> description;
  /// When the token expires, as an RFC 3339 date-time such as `2027-06-30T17:00:00Z`. Omit it for a token that never expires. Pulumi Cloud rejects an expiry that is in the past or more than two years away.
  late final pulumi.Output<String?> expires;
  /// The token's value.
  late final pulumi.Output<String> value;

  /// Creates a new [AccessToken].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessToken]. {@macro pulumi_index_access_token_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessToken(
    String name, {
    AccessTokenArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:index:AccessToken',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(replaceOnChanges: ['description', 'expires']).merge(options),
          additionalSecretOutputs: const ['value'],
        ) {
    description = registerOutput<String>('description');
    expires = registerOutput<String?>('expires');
    value = registerOutput<String>('value', isSecret: true);
  }

  /// Creates a typed reference to an existing [AccessToken] resource.
  AccessToken.reference(String urn)
    : super(
        'pulumiservice:index:AccessToken',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['value'],
        isResourceReference: true,
      ) {
    description = registerOutput<String>('description');
    expires = registerOutput<String?>('expires');
    value = registerOutput<String>('value', isSecret: true);
  }
}
