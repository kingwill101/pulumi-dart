import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_token_args.dart';

/// Access tokens allow a user to authenticate against the Pulumi Cloud.
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
