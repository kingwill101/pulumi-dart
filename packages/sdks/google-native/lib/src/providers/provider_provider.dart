import 'package:pulumi/pulumi.dart' as pulumi;
import 'provider_args.dart';

/// The provider type for the Google Cloud package.
class ProviderProvider extends pulumi.ProviderResource {
  /// The default project to manage resources in. If another project is specified on a resource, it will take precedence.
  late final pulumi.Output<String?> project;

  /// The default region to manage resources in. If another region is specified on a regional resource, it will take precedence.
  late final pulumi.Output<String?> region;

  /// The default zone to manage resources in. Generally, this zone should be within the default region you specified. If another zone is specified on a zonal resource, it will take precedence.
  late final pulumi.Output<String?> zone;

  /// Creates a new [ProviderProvider].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProviderProvider]. {@macro pulumi_providers_provider_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProviderProvider(
    String name, {
    ProviderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    project = registerOutput<String?>('project');
    region = registerOutput<String?>('region');
    zone = registerOutput<String?>('zone');
  }
}
