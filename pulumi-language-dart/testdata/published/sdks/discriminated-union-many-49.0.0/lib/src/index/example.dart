import 'package:pulumi/pulumi.dart' as pulumi;
import 'example_args.dart';

class Example extends pulumi.CustomResource {
  late final pulumi.Output<dynamic> unionOf;

  /// Creates a new [Example].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Example]. {@macro pulumi_index_example_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Example(
    String name, {
    ExampleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'discriminated-union-many:index:Example',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '49.0.0').merge(options),
        ) {
    unionOf = registerOutput<dynamic>('unionOf');
  }

  /// Creates a typed reference to an existing [Example] resource.
  Example.reference(String urn)
    : super(
        'discriminated-union-many:index:Example',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    unionOf = registerOutput<dynamic>('unionOf');
  }
}
