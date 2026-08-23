import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_args.dart';
import 'resource_state.dart';

class ResourceType extends pulumi.CustomResource {
  late final pulumi.Output<String> lookup;
  late final pulumi.Output<bool> value;

  /// Creates a new [ResourceType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceType]. {@macro pulumi_index_resource_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceType(
    String name, {
    ResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'read:index:Resource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '39.0.0').merge(options),
        ) {
    lookup = registerOutput<String>('lookup');
    value = registerOutput<bool>('value');
  }

  /// Gets an existing [ResourceType] resource's state with the given [name] and [id].
  static ResourceType get(
    String name,
    pulumi.Input<String> id, {
    ResourceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ResourceType._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ResourceType._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'read:index:Resource',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    lookup = registerOutput<String>('lookup');
    value = registerOutput<bool>('value');
  }
}
