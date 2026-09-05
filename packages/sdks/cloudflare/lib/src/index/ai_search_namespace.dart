import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_search_namespace_args.dart';
import 'ai_search_namespace_public_endpoint_params.dart';
import 'ai_search_namespace_state.dart';

/// ## Import
///
/// &gt; This resource does not currently support `pulumi import`.
class AiSearchNamespace extends pulumi.CustomResource {
  late final pulumi.Output<String> accountId;
  late final pulumi.Output<String> createdAt;
  /// Optional description for the namespace. Max 256 characters.
  late final pulumi.Output<String?> description;
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> publicEndpointId;
  late final pulumi.Output<AiSearchNamespacePublicEndpointParams> publicEndpointParams;

  /// Creates a new [AiSearchNamespace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiSearchNamespace]. {@macro pulumi_index_ai_search_namespace_ai_search_namespace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiSearchNamespace(
    String name, {
    AiSearchNamespaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/aiSearchNamespace:AiSearchNamespace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    publicEndpointId = registerOutput<String>('publicEndpointId');
    publicEndpointParams = registerOutput<AiSearchNamespacePublicEndpointParams>('publicEndpointParams', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiSearchNamespacePublicEndpointParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [AiSearchNamespace] resource's state with the given [name] and [id].
  static AiSearchNamespace get(
    String name,
    pulumi.Input<String> id, {
    AiSearchNamespaceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AiSearchNamespace._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AiSearchNamespace._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/aiSearchNamespace:AiSearchNamespace',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    publicEndpointId = registerOutput<String>('publicEndpointId');
    publicEndpointParams = registerOutput<AiSearchNamespacePublicEndpointParams>('publicEndpointParams', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiSearchNamespacePublicEndpointParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [AiSearchNamespace] resource.
  AiSearchNamespace.reference(String urn)
    : super(
        'cloudflare:index/aiSearchNamespace:AiSearchNamespace',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    publicEndpointId = registerOutput<String>('publicEndpointId');
    publicEndpointParams = registerOutput<AiSearchNamespacePublicEndpointParams>('publicEndpointParams', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AiSearchNamespacePublicEndpointParams.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
