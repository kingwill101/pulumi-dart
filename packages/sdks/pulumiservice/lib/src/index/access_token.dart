import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_token_args.dart';

/// Creates a personal access token for the Pulumi Cloud user that the provider is authenticated as. The token acts with that user's permissions.
///
/// To create a token that isn't tied to a user, use `OrgAccessToken` or `TeamAccessToken`.
class AccessToken extends pulumi.CustomResource {
  /// Description of the access token.
  late final pulumi.Output<String> description;
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
          pulumi.CustomResourceOptions(replaceOnChanges: ['description']).merge(options),
          additionalSecretOutputs: const ['value'],
        ) {
    description = registerOutput<String>('description');
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
    value = registerOutput<String>('value', isSecret: true);
  }
}
