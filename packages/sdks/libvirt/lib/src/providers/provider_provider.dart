import 'package:pulumi/pulumi.dart' as pulumi;
import 'provider_args.dart';
import 'provider_terraform_config_result.dart';
import '../internal/package_registration.dart' as package_registration;

/// The provider type for the libvirt package. By default, resources use package-wide configuration
/// settings, however an explicit `Provider` instance may be created and passed during resource
/// construction to achieve fine-grained programmatic control over provider settings. See the
/// [documentation](https://www.pulumi.com/docs/reference/programming-model/#providers) for more information.
class ProviderProvider extends pulumi.ProviderResource {
  /// Libvirt connection URI. Defaults to `qemu:///system` if not specified. See [libvirt URI documentation](https://libvirt.org/uri.html) for details.
  late final pulumi.Output<String?> uri;

  /// Creates a new [ProviderProvider].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProviderProvider]. {@macro pulumi_providers_provider_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProviderProvider(
    String name, {
    ProviderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'libvirt',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.uri = registerOutput<String?>('uri');
  }

  /// This function returns a Terraform config object with terraform-namecased keys,to be used with the Terraform Module Provider.
  Future<ProviderTerraformConfigResult> terraformConfig() async {
    final deployment = pulumi.Deployment.instance;
    final result = await deployment.callWithResult<Map<String, dynamic>>(
      'pulumi:providers:libvirt/terraformConfig',
      const <String, dynamic>{},
      self: this,
      registerPackageRequest: package_registration.registerPackageRequest,
    );
    return ProviderTerraformConfigResult.fromMap(result);
  }
}
