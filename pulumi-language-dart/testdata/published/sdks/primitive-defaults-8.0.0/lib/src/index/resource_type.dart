import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_args.dart';

class ResourceType extends pulumi.CustomResource {
  late final pulumi.Output<bool?> boolean;
  late final pulumi.Output<double?> float;
  late final pulumi.Output<int?> integer;
  late final pulumi.Output<String?> string_;

  /// Creates a new [ResourceType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceType]. {@macro pulumi_index_resource_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceType(
    String name, {
    ResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'primitive-defaults:index:Resource',
          name,
          pulumi.Input.mapToInputs((args ?? ResourceArgs()).toMap()),
          pulumi.CustomResourceOptions(version: '8.0.0').merge(options),
        ) {
    boolean = registerOutput<bool?>('boolean');
    float = registerOutput<double?>('float');
    integer = registerOutput<int?>('integer');
    string_ = registerOutput<String?>('string');
  }

  /// Creates a typed reference to an existing [ResourceType] resource.
  ResourceType.reference(String urn)
    : super(
        'primitive-defaults:index:Resource',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    boolean = registerOutput<bool?>('boolean');
    float = registerOutput<double?>('float');
    integer = registerOutput<int?>('integer');
    string_ = registerOutput<String?>('string');
  }
}
