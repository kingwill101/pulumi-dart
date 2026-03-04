import 'package:pulumi/pulumi.dart' as pulumi;
import 'provider_args.dart';

class ProviderProvider extends pulumi.ProviderResource {
  /// The build daemon's address.
  late final pulumi.Output<String?> host;

  /// Creates a new [ProviderProvider].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProviderProvider]. {@macro pulumi_providers_provider_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProviderProvider(
    String name, {
    ProviderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'docker-build',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    host = registerOutput<String?>('host');
  }
}
