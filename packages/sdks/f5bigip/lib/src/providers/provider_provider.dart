import 'package:pulumi/pulumi.dart' as pulumi;
import 'provider_args.dart';
import 'provider_terraform_config_result.dart';

/// The provider type for the bigip package. By default, resources use package-wide configuration
/// settings, however an explicit `Provider` instance may be created and passed during resource
/// construction to achieve fine-grained programmatic control over provider settings. See the
/// [documentation](https://www.pulumi.com/docs/reference/programming-model/#providers) for more information.
class ProviderProvider extends pulumi.ProviderResource {
  /// Domain name/IP of the BigIP
  late final pulumi.Output<String?> address;
  /// Login reference for token authentication (see BIG-IP REST docs for details)
  late final pulumi.Output<String?> loginRef;
  /// The user's password. Leave empty if using token_value
  late final pulumi.Output<String?> password;
  /// Management Port to connect to Bigip
  late final pulumi.Output<String?> port;
  /// A token generated outside the provider, in place of password
  late final pulumi.Output<String?> tokenValue;
  /// Valid Trusted Certificate path
  late final pulumi.Output<String?> trustedCertPath;
  /// Username with API access to the BigIP
  late final pulumi.Output<String?> username;

  /// Creates a new [ProviderProvider].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProviderProvider]. {@macro pulumi_providers_provider_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProviderProvider(
    String name, {
    ProviderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    address = registerOutput<String?>('address');
    loginRef = registerOutput<String?>('loginRef');
    password = registerOutput<String?>('password');
    port = registerOutput<String?>('port');
    tokenValue = registerOutput<String?>('tokenValue');
    trustedCertPath = registerOutput<String?>('trustedCertPath');
    username = registerOutput<String?>('username');
  }

  /// This function returns a Terraform config object with terraform-namecased keys,to be used with the Terraform Module Provider.
  Future<ProviderTerraformConfigResult> terraformConfig() async {
    final deployment = pulumi.DeploymentImpl.instance as pulumi.DeploymentImpl;
    final result = await deployment.callWithResult<Map<String, dynamic>>(
      'pulumi:providers:f5bigip/terraformConfig',
      const <String, dynamic>{},
      self: this,
    );
    return ProviderTerraformConfigResult.fromMap(result);
  }
}
