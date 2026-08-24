import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigFetcher extends pulumi.CustomResource {
  late final pulumi.Output<String> config;

  /// Creates a new [ConfigFetcher].
  /// [name] The Pulumi resource name.
  /// [args] The raw input arguments for this resource.
  /// [options] Resource options controlling this resource's behavior.
  ConfigFetcher(
    String name, {
    Map<String, dynamic>? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'config-grpc:index:ConfigFetcher',
          name,
          pulumi.Input.mapToInputs(args ?? const {}),
          pulumi.CustomResourceOptions(version: '1.0.0').merge(options),
        ) {
    config = registerOutput<String>('config');
  }

  /// Creates a typed reference to an existing [ConfigFetcher] resource.
  ConfigFetcher.reference(String urn)
    : super(
        'config-grpc:index:ConfigFetcher',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    config = registerOutput<String>('config');
  }
}
