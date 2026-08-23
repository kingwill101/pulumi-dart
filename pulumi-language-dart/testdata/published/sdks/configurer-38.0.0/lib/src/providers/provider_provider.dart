import 'package:pulumi/pulumi.dart' as pulumi;
import 'provider_args.dart';

/// The configurer provider. Its `config` setting is echoed onto each Custom resource it creates.
class ProviderProvider extends pulumi.ProviderResource {
  late final pulumi.Output<String> config;

  /// Creates a new [ProviderProvider].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProviderProvider]. {@macro pulumi_providers_provider_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProviderProvider(
    String name, {
    ProviderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'configurer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '38.0.0').merge(options),
        ) {
    config = registerOutput<String>('config');
  }
}
