import 'package:pulumi/pulumi.dart' as pulumi;
import 'provider_args.dart';

class ProviderProvider extends pulumi.ProviderResource {
  /// Access Token to authenticate with Pulumi Cloud.
  late final pulumi.Output<String?> accessToken;
  /// Optional override of Pulumi Cloud API endpoint.
  late final pulumi.Output<String?> apiUrl;

  /// Creates a new [ProviderProvider].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProviderProvider]. {@macro pulumi_providers_provider_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProviderProvider(
    String name, {
    ProviderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessToken = registerOutput<String?>('accessToken');
    this.apiUrl = registerOutput<String?>('apiUrl');
  }
}
