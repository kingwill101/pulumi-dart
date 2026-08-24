import 'package:pulumi/pulumi.dart' as pulumi;

class Base extends pulumi.CustomResource {
  late final pulumi.Output<String> baseValue;

  /// Creates a new [Base].
  /// [name] The Pulumi resource name.
  /// [args] The raw input arguments for this resource.
  /// [options] Resource options controlling this resource's behavior.
  Base(
    String name, {
    Map<String, dynamic>? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'extbase:index:Base',
          name,
          pulumi.Input.mapToInputs(args ?? const {}),
          pulumi.CustomResourceOptions(version: '45.0.0').merge(options),
        ) {
    baseValue = registerOutput<String>('baseValue');
  }

  /// Creates a typed reference to an existing [Base] resource.
  Base.reference(String urn)
    : super(
        'extbase:index:Base',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    baseValue = registerOutput<String>('baseValue');
  }
}
