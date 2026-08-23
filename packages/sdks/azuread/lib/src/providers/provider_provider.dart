import 'package:pulumi/pulumi.dart' as pulumi;
import 'provider_args.dart';
import 'provider_terraform_config_result.dart';

/// The provider type for the azuread package. By default, resources use package-wide configuration
/// settings, however an explicit `Provider` instance may be created and passed during resource
/// construction to achieve fine-grained programmatic control over provider settings. See the
/// [documentation](https://www.pulumi.com/docs/reference/programming-model/#providers) for more information.
class ProviderProvider extends pulumi.ProviderResource {
  /// The Azure DevOps Pipeline Service Connection ID.
  late final pulumi.Output<String?> adoPipelineServiceConnectionId;
  /// Base64 encoded PKCS#12 certificate bundle to use when authenticating as a Service Principal using a Client Certificate
  late final pulumi.Output<String?> clientCertificate;
  /// The password to decrypt the Client Certificate. For use when authenticating as a Service Principal using a Client Certificate
  late final pulumi.Output<String?> clientCertificatePassword;
  /// The path to the Client Certificate associated with the Service Principal for use when authenticating as a Service Principal using a Client Certificate
  late final pulumi.Output<String?> clientCertificatePath;
  /// The Client ID which should be used for service principal authentication
  late final pulumi.Output<String?> clientId;
  /// The path to a file containing the Client ID which should be used for service principal authentication
  late final pulumi.Output<String?> clientIdFilePath;
  /// The application password to use when authenticating as a Service Principal using a Client Secret
  late final pulumi.Output<String?> clientSecret;
  /// The path to a file containing the application password to use when authenticating as a Service Principal using a Client Secret
  late final pulumi.Output<String?> clientSecretFilePath;
  /// The cloud environment which should be used. Possible values are: `global` (also `public`), `usgovernmentl4` (also `usgovernment`), `usgovernmentl5` (also `dod`), and `china`. Defaults to `global`. Not used and should not be specified when `metadataHost` is specified.
  late final pulumi.Output<String?> environment;
  /// The Hostname which should be used for the Azure Metadata Service.
  late final pulumi.Output<String?> metadataHost;
  /// The path to a custom endpoint for Managed Identity - in most circumstances this should be detected automatically
  late final pulumi.Output<String?> msiEndpoint;
  /// The bearer token for the request to the OIDC provider. For use when authenticating as a Service Principal using OpenID Connect.
  late final pulumi.Output<String?> oidcRequestToken;
  /// The URL for the OIDC provider from which to request an ID token. For use when authenticating as a Service Principal using OpenID Connect.
  late final pulumi.Output<String?> oidcRequestUrl;
  /// The ID token for use when authenticating as a Service Principal using OpenID Connect.
  late final pulumi.Output<String?> oidcToken;
  /// The path to a file containing an ID token for use when authenticating as a Service Principal using OpenID Connect.
  late final pulumi.Output<String?> oidcTokenFilePath;
  /// A GUID/UUID that is registered with Microsoft to facilitate partner resource usage attribution
  late final pulumi.Output<String?> partnerId;
  /// The Tenant ID which should be used. Works with all authentication methods except Managed Identity
  late final pulumi.Output<String?> tenantId;

  /// Creates a new [ProviderProvider].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProviderProvider]. {@macro pulumi_providers_provider_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProviderProvider(
    String name, {
    ProviderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    adoPipelineServiceConnectionId = registerOutput<String?>('adoPipelineServiceConnectionId');
    clientCertificate = registerOutput<String?>('clientCertificate');
    clientCertificatePassword = registerOutput<String?>('clientCertificatePassword');
    clientCertificatePath = registerOutput<String?>('clientCertificatePath');
    clientId = registerOutput<String?>('clientId');
    clientIdFilePath = registerOutput<String?>('clientIdFilePath');
    clientSecret = registerOutput<String?>('clientSecret');
    clientSecretFilePath = registerOutput<String?>('clientSecretFilePath');
    environment = registerOutput<String?>('environment');
    metadataHost = registerOutput<String?>('metadataHost');
    msiEndpoint = registerOutput<String?>('msiEndpoint');
    oidcRequestToken = registerOutput<String?>('oidcRequestToken');
    oidcRequestUrl = registerOutput<String?>('oidcRequestUrl');
    oidcToken = registerOutput<String?>('oidcToken');
    oidcTokenFilePath = registerOutput<String?>('oidcTokenFilePath');
    partnerId = registerOutput<String?>('partnerId');
    tenantId = registerOutput<String?>('tenantId');
  }

  /// This function returns a Terraform config object with terraform-namecased keys,to be used with the Terraform Module Provider.
  Future<ProviderTerraformConfigResult> terraformConfig() async {
    final deployment = pulumi.DeploymentImpl.instance as pulumi.DeploymentImpl;
    final result = await deployment.callWithResult<Map<String, dynamic>>(
      'pulumi:providers:azuread/terraformConfig',
      const <String, dynamic>{},
      self: this,
    );
    return ProviderTerraformConfigResult.fromMap(result);
  }
}
