import 'package:pulumi/pulumi.dart' as pulumi;
import 'provider_args.dart';
import '../internal/package_registration.dart' as package_registration;

class ProviderProvider extends pulumi.ProviderResource {
  /// Creates a new [ProviderProvider].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProviderProvider]. {@macro pulumi_providers_provider_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProviderProvider(
    String name, {
    ProviderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'hipackage',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
          registerPackageRequest: package_registration.registerPackageRequest,
        );
}
