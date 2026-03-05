import 'package:pulumi/pulumi.dart' as pulumi;
import 'provider_args.dart';
import 'provider_terraform_config_result.dart';

/// The provider type for the hcloud package. By default, resources use package-wide configuration
/// settings, however an explicit `Provider` instance may be created and passed during resource
/// construction to achieve fine-grained programmatic control over provider settings. See the
/// [documentation](https://www.pulumi.com/docs/reference/programming-model/#providers) for more information.
class ProviderProvider extends pulumi.ProviderResource {
  /// The Hetzner Cloud API endpoint, can be used to override the default API Endpoint https://api.hetzner.cloud/v1.
  late final pulumi.Output<String?> endpoint;
  /// The Hetzner API endpoint, can be used to override the default API Endpoint https://api.hetzner.com/v1.
  late final pulumi.Output<String?> endpointHetzner;
  /// The type of function to be used during the polling.
  late final pulumi.Output<String?> pollFunction;
  /// The interval at which actions are polled by the client. Default `500ms`. Increase this interval if you run into rate limiting errors.
  late final pulumi.Output<String?> pollInterval;
  /// The Hetzner Cloud API token, can also be specified with the HCLOUD_TOKEN environment variable.
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
          'hcloud',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    endpoint = registerOutput<String?>('endpoint');
    endpointHetzner = registerOutput<String?>('endpointHetzner');
    pollFunction = registerOutput<String?>('pollFunction');
    pollInterval = registerOutput<String?>('pollInterval');
    token = registerOutput<String?>('token');
  }

  /// This function returns a Terraform config object with terraform-namecased keys,to be used with the Terraform Module Provider.
  Future<ProviderTerraformConfigResult> terraformConfig() async {
    final deployment = pulumi.DeploymentImpl.instance as pulumi.DeploymentImpl;
    final result = await deployment.callWithResult<Map<String, dynamic>>(
      'pulumi:providers:hcloud/terraformConfig',
      const <String, dynamic>{},
      self: this,
    );
    return ProviderTerraformConfigResult.fromMap(result);
  }
}
