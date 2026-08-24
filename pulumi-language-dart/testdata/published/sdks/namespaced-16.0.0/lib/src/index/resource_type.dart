import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_args.dart';
import 'package:pulumi_component/index.dart' as pulumi_component_index;

class ResourceType extends pulumi.CustomResource {
  late final pulumi.Output<pulumi_component_index.Custom?> resourceRef;
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
          'namespaced:index:Resource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '16.0.0').merge(options),
        ) {
    resourceRef = registerOutput<pulumi_component_index.Custom?>('resourceRef');
    value = registerOutput<bool>('value');
  }

  /// Creates a typed reference to an existing [ResourceType] resource.
  ResourceType.reference(String urn)
    : super(
        'namespaced:index:Resource',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    resourceRef = registerOutput<pulumi_component_index.Custom?>('resourceRef');
    value = registerOutput<bool>('value');
  }
}
