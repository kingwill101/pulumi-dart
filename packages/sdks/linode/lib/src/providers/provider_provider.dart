import 'package:pulumi/pulumi.dart' as pulumi;
import 'provider_args.dart';
import 'provider_terraform_config_result.dart';

/// The provider type for the linode package. By default, resources use package-wide configuration
/// settings, however an explicit `Provider` instance may be created and passed during resource
/// construction to achieve fine-grained programmatic control over provider settings. See the
/// [documentation](https://www.pulumi.com/docs/reference/programming-model/#providers) for more information.
class ProviderProvider extends pulumi.ProviderResource {
  /// The path to a Linode API CA file to trust.
  late final pulumi.Output<String?> apiCaPath;

  /// The version of Linode API.
  late final pulumi.Output<String?> apiVersion;

  /// The path to the Linode config file to use. (default `~/.config/linode`)
  late final pulumi.Output<String?> configPath;

  /// The Linode config profile to use. (default `default`)
  late final pulumi.Output<String?> configProfile;

  /// The access key to be used in linode.ObjectStorageBucket and linode_object_storage_object.
  late final pulumi.Output<String?> objAccessKey;

  /// The secret key to be used in linode.ObjectStorageBucket and linode_object_storage_object.
  late final pulumi.Output<String?> objSecretKey;

  /// The token that allows you access to your Linode account
  late final pulumi.Output<String?> token;

  /// An HTTP User-Agent Prefix to prepend in API requests.
  late final pulumi.Output<String?> uaPrefix;

  /// The HTTP(S) API address of the Linode API to use.
  late final pulumi.Output<String?> url;

  /// Creates a new [ProviderProvider].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProviderProvider]. {@macro pulumi_providers_provider_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProviderProvider(
    String name, {
    ProviderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'linode',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiCaPath = registerOutput<String?>('apiCaPath');
    apiVersion = registerOutput<String?>('apiVersion');
    configPath = registerOutput<String?>('configPath');
    configProfile = registerOutput<String?>('configProfile');
    objAccessKey = registerOutput<String?>('objAccessKey');
    objSecretKey = registerOutput<String?>('objSecretKey');
    token = registerOutput<String?>('token');
    uaPrefix = registerOutput<String?>('uaPrefix');
    url = registerOutput<String?>('url');
  }

  /// This function returns a Terraform config object with terraform-namecased keys,to be used with the Terraform Module Provider.
  Future<ProviderTerraformConfigResult> terraformConfig() async {
    final deployment = pulumi.DeploymentImpl.instance as pulumi.DeploymentImpl;
    final result = await deployment.callWithResult<Map<String, dynamic>>(
      'pulumi:providers:linode/terraformConfig',
      const <String, dynamic>{},
      self: this,
    );
    return ProviderTerraformConfigResult.fromMap(result);
  }
}
