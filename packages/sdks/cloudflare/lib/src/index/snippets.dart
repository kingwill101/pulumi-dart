import 'package:pulumi/pulumi.dart' as pulumi;
import 'snippets_args.dart';
import 'snippets_metadata.dart';
import 'snippets_state.dart';

/// ## Import
///
/// &gt; This resource does not currently support `pulumi import`.
class Snippets extends pulumi.CustomResource {
  /// The timestamp of when the snippet was created.
  late final pulumi.Output<String> createdOn;
  /// The list of files belonging to the snippet.
  late final pulumi.Output<List<String>> files;
  /// Metadata about the snippet.
  late final pulumi.Output<SnippetsMetadata> metadata;
  /// The timestamp of when the snippet was last modified.
  late final pulumi.Output<String> modifiedOn;
  /// The identifying name of the snippet.
  late final pulumi.Output<String> snippetName;
  /// The unique ID of the zone.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [Snippets].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Snippets]. {@macro pulumi_index_snippets_snippets_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Snippets(
    String name, {
    SnippetsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/snippets:Snippets',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    createdOn = registerOutput<String>('createdOn');
    files = registerOutput<List<String>>('files', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    metadata = registerOutput<SnippetsMetadata>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SnippetsMetadata.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modifiedOn = registerOutput<String>('modifiedOn');
    snippetName = registerOutput<String>('snippetName');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [Snippets] resource's state with the given [name] and [id].
  static Snippets get(
    String name,
    pulumi.Input<String> id, {
    SnippetsState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Snippets._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Snippets._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/snippets:Snippets',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createdOn = registerOutput<String>('createdOn');
    files = registerOutput<List<String>>('files', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    metadata = registerOutput<SnippetsMetadata>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SnippetsMetadata.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modifiedOn = registerOutput<String>('modifiedOn');
    snippetName = registerOutput<String>('snippetName');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [Snippets] resource.
  Snippets.reference(String urn)
    : super(
        'cloudflare:index/snippets:Snippets',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createdOn = registerOutput<String>('createdOn');
    files = registerOutput<List<String>>('files', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    metadata = registerOutput<SnippetsMetadata>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SnippetsMetadata.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modifiedOn = registerOutput<String>('modifiedOn');
    snippetName = registerOutput<String>('snippetName');
    zoneId = registerOutput<String>('zoneId');
  }
}
