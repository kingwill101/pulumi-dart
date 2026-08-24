import 'package:pulumi/pulumi.dart' as pulumi;

class Block extends pulumi.CustomResource {
  /// Creates a new [Block].
  /// [name] The Pulumi resource name.
  /// [args] The raw input arguments for this resource.
  /// [options] Resource options controlling this resource's behavior.
  Block(
    String name, {
    Map<String, dynamic>? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'sync:index:Block',
          name,
          pulumi.Input.mapToInputs(args ?? const {}),
          pulumi.CustomResourceOptions(version: '3.0.0-alpha.1.internal+exp.sha.2143768').merge(options),
        );

  /// Creates a typed reference to an existing [Block] resource.
  Block.reference(String urn)
    : super(
        'sync:index:Block',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      );
}
