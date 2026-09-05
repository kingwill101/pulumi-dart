import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_search_token_args.dart';
import 'ai_search_token_state.dart';

/// ## Import
///
/// &gt; This resource does not currently support `pulumi import`.
class AiSearchToken extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  late final pulumi.Output<String> cfApiId;
  late final pulumi.Output<String> cfApiKey;
  late final pulumi.Output<String> createdAt;
  late final pulumi.Output<String> createdBy;
  late final pulumi.Output<bool> enabled;
  late final pulumi.Output<bool> legacy;
  late final pulumi.Output<String> modifiedAt;
  late final pulumi.Output<String> modifiedBy;
  late final pulumi.Output<String> name;

  /// Creates a new [AiSearchToken].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiSearchToken]. {@macro pulumi_index_ai_search_token_ai_search_token_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiSearchToken(
    String name, {
    AiSearchTokenArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/aiSearchToken:AiSearchToken',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
          additionalSecretOutputs: const ['cfApiKey'],
        ) {
    accountId = registerOutput<String>('accountId');
    cfApiId = registerOutput<String>('cfApiId');
    cfApiKey = registerOutput<String>('cfApiKey', isSecret: true);
    createdAt = registerOutput<String>('createdAt');
    createdBy = registerOutput<String>('createdBy');
    enabled = registerOutput<bool>('enabled');
    legacy = registerOutput<bool>('legacy');
    modifiedAt = registerOutput<String>('modifiedAt');
    modifiedBy = registerOutput<String>('modifiedBy');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [AiSearchToken] resource's state with the given [name] and [id].
  static AiSearchToken get(
    String name,
    pulumi.Input<String> id, {
    AiSearchTokenState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AiSearchToken._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AiSearchToken._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/aiSearchToken:AiSearchToken',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    cfApiId = registerOutput<String>('cfApiId');
    cfApiKey = registerOutput<String>('cfApiKey', isSecret: true);
    createdAt = registerOutput<String>('createdAt');
    createdBy = registerOutput<String>('createdBy');
    enabled = registerOutput<bool>('enabled');
    legacy = registerOutput<bool>('legacy');
    modifiedAt = registerOutput<String>('modifiedAt');
    modifiedBy = registerOutput<String>('modifiedBy');
    this.name = registerOutput<String>('name');
  }

  /// Creates a typed reference to an existing [AiSearchToken] resource.
  AiSearchToken.reference(String urn)
    : super(
        'cloudflare:index/aiSearchToken:AiSearchToken',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['cfApiKey'],
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    cfApiId = registerOutput<String>('cfApiId');
    cfApiKey = registerOutput<String>('cfApiKey', isSecret: true);
    createdAt = registerOutput<String>('createdAt');
    createdBy = registerOutput<String>('createdBy');
    enabled = registerOutput<bool>('enabled');
    legacy = registerOutput<bool>('legacy');
    modifiedAt = registerOutput<String>('modifiedAt');
    modifiedBy = registerOutput<String>('modifiedBy');
    this.name = registerOutput<String>('name');
  }
}
