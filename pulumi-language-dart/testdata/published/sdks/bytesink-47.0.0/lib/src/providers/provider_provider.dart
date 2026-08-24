import 'package:pulumi/pulumi.dart' as pulumi;

class ProviderProvider extends pulumi.ProviderResource {
  /// Creates a new [ProviderProvider].
  /// [name] The Pulumi resource name.
  /// [options] Resource options controlling this resource's behavior.
  ProviderProvider(
    String name, {
    pulumi.CustomResourceOptions? options,
  }) : super(
          'bytesink',
          name,
          const <String, pulumi.Input<dynamic>>{},
          pulumi.CustomResourceOptions(version: '47.0.0').merge(options),
        );
}
