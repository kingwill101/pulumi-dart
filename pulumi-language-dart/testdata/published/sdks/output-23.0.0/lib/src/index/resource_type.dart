import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_args.dart';

class ResourceType extends pulumi.CustomResource {
  late final pulumi.Output<String> output;
  late final pulumi.Output<String> secretOutput;
  late final pulumi.Output<double> value;

  /// Creates a new [ResourceType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceType]. {@macro pulumi_index_resource_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceType(
    String name, {
    ResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'output:index:Resource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '23.0.0').merge(options),
          additionalSecretOutputs: const ['secretOutput'],
        ) {
    output = registerOutput<String>('output');
    secretOutput = registerOutput<String>('secretOutput', isSecret: true);
    value = registerOutput<double>('value');
  }

  /// Creates a typed reference to an existing [ResourceType] resource.
  ResourceType.reference(String urn)
    : super(
        'output:index:Resource',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['secretOutput'],
        isResourceReference: true,
      ) {
    output = registerOutput<String>('output');
    secretOutput = registerOutput<String>('secretOutput', isSecret: true);
    value = registerOutput<double>('value');
  }
}
