import 'package:pulumi/pulumi.dart' as pulumi;
import 'provider_args.dart';

class ProviderProvider extends pulumi.ProviderResource {
  late final pulumi.Output<String> name;
  late final pulumi.Output<String?> pluginDownloadURL;
  late final pulumi.Output<String> version;

  /// Creates a new [ProviderProvider].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProviderProvider]. {@macro pulumi_providers_provider_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProviderProvider(
    String name, {
    ProviderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'config',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.0.0', pluginDownloadURL: 'http://example.com').merge(options),
        ) {
    this.name = registerOutput<String>('name');
    pluginDownloadURL = registerOutput<String?>('pluginDownloadURL');
    version = registerOutput<String>('version');
  }
}
