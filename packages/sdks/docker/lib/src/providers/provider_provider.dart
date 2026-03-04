import 'package:pulumi/pulumi.dart' as pulumi;
import 'provider_args.dart';
import 'provider_terraform_config_result.dart';

/// The provider type for the docker package. By default, resources use package-wide configuration
/// settings, however an explicit `Provider` instance may be created and passed during resource
/// construction to achieve fine-grained programmatic control over provider settings. See the
/// [documentation](https://www.pulumi.com/docs/reference/programming-model/#providers) for more information.
class ProviderProvider extends pulumi.ProviderResource {
  /// PEM-encoded content of Docker host CA certificate
  late final pulumi.Output<String?> caMaterial;

  /// PEM-encoded content of Docker client certificate
  late final pulumi.Output<String?> certMaterial;

  /// Path to directory with Docker TLS config
  late final pulumi.Output<String?> certPath;

  /// The name of the Docker context to use. Can also be set via `DOCKER_CONTEXT` environment variable. Overrides the `host` if set.
  late final pulumi.Output<String?> context;

  /// The Docker daemon address
  late final pulumi.Output<String?> host;

  /// PEM-encoded content of Docker client private key
  late final pulumi.Output<String?> keyMaterial;

  /// Creates a new [ProviderProvider].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProviderProvider]. {@macro pulumi_providers_provider_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProviderProvider(
    String name, {
    ProviderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'docker',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    caMaterial = registerOutput<String?>('caMaterial');
    certMaterial = registerOutput<String?>('certMaterial');
    certPath = registerOutput<String?>('certPath');
    context = registerOutput<String?>('context');
    host = registerOutput<String?>('host');
    keyMaterial = registerOutput<String?>('keyMaterial');
  }

  /// This function returns a Terraform config object with terraform-namecased keys,to be used with the Terraform Module Provider.
  Future<ProviderTerraformConfigResult> terraformConfig() async {
    final deployment = pulumi.DeploymentImpl.instance as pulumi.DeploymentImpl;
    final result = await deployment.callWithResult<Map<String, dynamic>>(
      'pulumi:providers:docker/terraformConfig',
      const <String, dynamic>{},
      self: this,
    );
    return ProviderTerraformConfigResult.fromMap(result);
  }
}
