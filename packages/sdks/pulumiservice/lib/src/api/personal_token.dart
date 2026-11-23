import 'package:pulumi/pulumi.dart' as pulumi;
import 'personal_token_args.dart';

/// Creates a new personal access token for the authenticated user. The request body includes a description for the token and an optional expiration time. The response includes the token ID and the tokenValue (prefixed with 'pul-'). The token value is only returned once at creation time and cannot be retrieved later.
class PersonalToken extends pulumi.CustomResource {
  /// The unique identifier
  late final pulumi.Output<String> tokenId;
  /// The token value
  late final pulumi.Output<String> tokenValue;

  /// Creates a new [PersonalToken].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PersonalToken]. {@macro pulumi_api_tokens_personal_token_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PersonalToken(
    String name, {
    PersonalTokenArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:api/tokens:PersonalToken',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
          additionalSecretOutputs: const ['tokenValue'],
        ) {
    tokenId = registerOutput<String>('tokenId');
    tokenValue = registerOutput<String>('tokenValue', isSecret: true);
  }

  /// Creates a typed reference to an existing [PersonalToken] resource.
  PersonalToken.reference(String urn)
    : super(
        'pulumiservice:api/tokens:PersonalToken',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['tokenValue'],
        isResourceReference: true,
      ) {
    tokenId = registerOutput<String>('tokenId');
    tokenValue = registerOutput<String>('tokenValue', isSecret: true);
  }
}
