import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_binding_collection_args.dart';
import 'tag_binding_collection_state.dart';

class TagBindingCollection extends pulumi.CustomResource {
  /// (Output) The most recent state of all direct tags on the resource, as reported by the API.
  /// This includes the tags configured through Terraform, Google system tags, and tags attached by other clients.
  late final pulumi.Output<Map<String, String>> activeTags;
  /// The full resource name of the resource to which the tags are bound. E.g. //cloudresourcemanager.googleapis.com/projects/123
  late final pulumi.Output<String> fullResourceName;
  /// The location of the TagBindingCollection.
  late final pulumi.Output<String?> location;
  /// The name of the TagBindingCollection, in the format:
  /// locations/{location}/tagBindingCollections/{encoded_full_resource_name}
  late final pulumi.Output<String> name;
  /// A map of tag keys to values directly bound to this resource, specified in namespaced format.
  /// For example:
  /// "123/environment": "production"
  /// Keys must be namespaced names of TagKeys, and values must be short names of TagValues.
  /// This field is non-authoritative. Terraform will only manage the precise tags present in this map.
  late final pulumi.Output<Map<String, String>> tags;

  /// Creates a new [TagBindingCollection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TagBindingCollection]. {@macro pulumi_tags_tag_binding_collection_tag_binding_collection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TagBindingCollection(
    String name, {
    TagBindingCollectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:tags/tagBindingCollection:TagBindingCollection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    activeTags = registerOutput<Map<String, String>>('activeTags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    fullResourceName = registerOutput<String>('fullResourceName');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [TagBindingCollection] resource's state with the given [name] and [id].
  static TagBindingCollection get(
    String name,
    pulumi.Input<String> id, {
    TagBindingCollectionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return TagBindingCollection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  TagBindingCollection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:tags/tagBindingCollection:TagBindingCollection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    activeTags = registerOutput<Map<String, String>>('activeTags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    fullResourceName = registerOutput<String>('fullResourceName');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [TagBindingCollection] resource.
  TagBindingCollection.reference(String urn)
    : super(
        'gcp:tags/tagBindingCollection:TagBindingCollection',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    activeTags = registerOutput<Map<String, String>>('activeTags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    fullResourceName = registerOutput<String>('fullResourceName');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
