import 'package:pulumi/pulumi.dart' as pulumi;
import 'provider_args.dart';
import 'provider_terraform_config_result.dart';

/// The provider type for the digitalocean package. By default, resources use package-wide configuration
/// settings, however an explicit `Provider` instance may be created and passed during resource
/// construction to achieve fine-grained programmatic control over provider settings. See the
/// [documentation](https://www.pulumi.com/docs/reference/programming-model/#providers) for more information.
class ProviderProvider extends pulumi.ProviderResource {
  /// The URL to use for the DigitalOcean API.
  late final pulumi.Output<String?> apiEndpoint;
  /// The access key ID for Spaces API operations.
  late final pulumi.Output<String?> spacesAccessId;
  /// The URL to use for the DigitalOcean Spaces API.
  late final pulumi.Output<String?> spacesEndpoint;
  /// The secret access key for Spaces API operations.
  late final pulumi.Output<String?> spacesSecretKey;
  /// The token key for API operations.
  late final pulumi.Output<String?> token;

  /// Creates a new [ProviderProvider].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProviderProvider]. {@macro pulumi_providers_provider_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProviderProvider(
    String name, {
    ProviderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiEndpoint = registerOutput<String?>('apiEndpoint');
    this.spacesAccessId = registerOutput<String?>('spacesAccessId');
    this.spacesEndpoint = registerOutput<String?>('spacesEndpoint');
    this.spacesSecretKey = registerOutput<String?>('spacesSecretKey');
    this.token = registerOutput<String?>('token');
  }

  /// This function returns a Terraform config object with terraform-namecased keys,to be used with the Terraform Module Provider.
  Future<ProviderTerraformConfigResult> terraformConfig() async {
    final deployment = pulumi.Deployment.instance;
    final result = await deployment.callWithResult<Map<String, dynamic>>(
      'pulumi:providers:digitalocean/terraformConfig',
      const <String, dynamic>{},
      self: this,
    );
    return ProviderTerraformConfigResult.fromMap(result);
  }
}
