import 'package:pulumi/pulumi.dart' as pulumi;
import 'provider_args.dart';
import 'provider_terraform_config_result.dart';

/// The provider type for the newrelic package. By default, resources use package-wide configuration
/// settings, however an explicit `Provider` instance may be created and passed during resource
/// construction to achieve fine-grained programmatic control over provider settings. See the
/// [documentation](https://www.pulumi.com/docs/reference/programming-model/#providers) for more information.
class ProviderProvider extends pulumi.ProviderResource {
  late final pulumi.Output<String?> accountId;
  late final pulumi.Output<String?> adminApiKey;
  late final pulumi.Output<String?> apiKey;
  late final pulumi.Output<String?> apiUrl;
  late final pulumi.Output<String?> cacertFile;
  late final pulumi.Output<String?> infrastructureApiUrl;
  late final pulumi.Output<String?> insightsInsertKey;
  late final pulumi.Output<String?> insightsInsertUrl;
  late final pulumi.Output<String?> insightsQueryUrl;
  late final pulumi.Output<String?> nerdgraphApiUrl;
  /// The data center for which your New Relic account is configured. Only one region per provider block is permitted.
  late final pulumi.Output<String?> region;
  late final pulumi.Output<String?> syntheticsApiUrl;

  /// Creates a new [ProviderProvider].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProviderProvider]. {@macro pulumi_providers_provider_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProviderProvider(
    String name, {
    ProviderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String?>('accountId');
    adminApiKey = registerOutput<String?>('adminApiKey');
    apiKey = registerOutput<String?>('apiKey');
    apiUrl = registerOutput<String?>('apiUrl');
    cacertFile = registerOutput<String?>('cacertFile');
    infrastructureApiUrl = registerOutput<String?>('infrastructureApiUrl');
    insightsInsertKey = registerOutput<String?>('insightsInsertKey');
    insightsInsertUrl = registerOutput<String?>('insightsInsertUrl');
    insightsQueryUrl = registerOutput<String?>('insightsQueryUrl');
    nerdgraphApiUrl = registerOutput<String?>('nerdgraphApiUrl');
    region = registerOutput<String?>('region');
    syntheticsApiUrl = registerOutput<String?>('syntheticsApiUrl');
  }

  /// This function returns a Terraform config object with terraform-namecased keys,to be used with the Terraform Module Provider.
  Future<ProviderTerraformConfigResult> terraformConfig() async {
    final deployment = pulumi.DeploymentImpl.instance as pulumi.DeploymentImpl;
    final result = await deployment.callWithResult<Map<String, dynamic>>(
      'pulumi:providers:newrelic/terraformConfig',
      const <String, dynamic>{},
      self: this,
    );
    return ProviderTerraformConfigResult.fromMap(result);
  }
}
