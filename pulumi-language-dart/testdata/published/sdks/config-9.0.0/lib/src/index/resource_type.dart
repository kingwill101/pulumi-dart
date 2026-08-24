import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_args.dart';

class ResourceType extends pulumi.CustomResource {
  late final pulumi.Output<String> text;

  /// Creates a new [ResourceType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceType]. {@macro pulumi_index_resource_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceType(
    String name, {
    ResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'config:index:Resource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.0.0', pluginDownloadURL: 'http://example.com').merge(options),
        ) {
    text = registerOutput<String>('text');
  }

  /// Creates a typed reference to an existing [ResourceType] resource.
  ResourceType.reference(String urn)
    : super(
        'config:index:Resource',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    text = registerOutput<String>('text');
  }
}
