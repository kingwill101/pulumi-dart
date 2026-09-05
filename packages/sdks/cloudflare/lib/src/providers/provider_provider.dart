import 'package:pulumi/pulumi.dart' as pulumi;
import 'provider_args.dart';
import 'provider_terraform_config_result.dart';

/// The provider type for the cloudflare package. By default, resources use package-wide configuration
/// settings, however an explicit `Provider` instance may be created and passed during resource
/// construction to achieve fine-grained programmatic control over provider settings. See the
/// [documentation](https://www.pulumi.com/docs/reference/programming-model/#providers) for more information.
class ProviderProvider extends pulumi.ProviderResource {
  /// The API key for operations. Alternatively, can be configured using the `CLOUDFLARE_API_KEY` environment variable. API keys are [now considered legacy by Cloudflare](https://developers.cloudflare.com/fundamentals/api/get-started/keys/#limitations), API tokens should be used instead. Must provide only one of `apiKey`, `apiToken`, `apiUserServiceKey`.
  late final pulumi.Output<String?> apiKey;
  /// The API Token for operations. Alternatively, can be configured using the `CLOUDFLARE_API_TOKEN` environment variable. Must provide only one of `apiKey`, `apiToken`, `apiUserServiceKey`.
  late final pulumi.Output<String?> apiToken;
  /// A special Cloudflare API key good for a restricted set of endpoints. Alternatively, can be configured using the `CLOUDFLARE_API_USER_SERVICE_KEY` environment variable. Must provide only one of `apiKey`, `apiToken`, `apiUserServiceKey`.
  late final pulumi.Output<String?> apiUserServiceKey;
  /// Value to override the default HTTP client base URL. Alternatively, can be configured using the `baseUrl` environment variable.
  late final pulumi.Output<String?> baseUrl;
  /// A registered Cloudflare email address. Alternatively, can be configured using the `CLOUDFLARE_EMAIL` environment variable. Required when using `apiKey`. Conflicts with `apiToken`.
  late final pulumi.Output<String?> email;
  /// A value to append to the HTTP User Agent for all API calls. This value is not something most users need to modify however, if you are using a non-standard provider or operator configuration, this is recommended to assist in uniquely identifying your traffic. **Setting this value will remove the Terraform version from the HTTP User Agent string and may have unintended consequences**. Alternatively, can be configured using the `CLOUDFLARE_USER_AGENT_OPERATOR_SUFFIX` environment variable.
  late final pulumi.Output<String?> userAgentOperatorSuffix;

  /// Creates a new [ProviderProvider].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProviderProvider]. {@macro pulumi_providers_provider_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProviderProvider(
    String name, {
    ProviderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
          additionalSecretOutputs: const ['apiKey', 'apiToken', 'apiUserServiceKey'],
        ) {
    apiKey = registerOutput<String?>('apiKey', isSecret: true);
    apiToken = registerOutput<String?>('apiToken', isSecret: true);
    apiUserServiceKey = registerOutput<String?>('apiUserServiceKey', isSecret: true);
    baseUrl = registerOutput<String?>('baseUrl');
    email = registerOutput<String?>('email');
    userAgentOperatorSuffix = registerOutput<String?>('userAgentOperatorSuffix');
  }

  /// This function returns a Terraform config object with terraform-namecased keys,to be used with the Terraform Module Provider.
  Future<ProviderTerraformConfigResult> terraformConfig() async {
    final deployment = pulumi.DeploymentImpl.instance as pulumi.DeploymentImpl;
    final result = await deployment.callWithResult<Map<String, dynamic>>(
      'pulumi:providers:cloudflare/terraformConfig',
      const <String, dynamic>{},
      self: this,
    );
    return ProviderTerraformConfigResult.fromMap(result);
  }
}
