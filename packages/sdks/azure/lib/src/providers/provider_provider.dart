import 'package:pulumi/pulumi.dart' as pulumi;
import 'provider_args.dart';
import 'provider_terraform_config_result.dart';

/// The provider type for the azurerm package. By default, resources use package-wide configuration
/// settings, however an explicit `Provider` instance may be created and passed during resource
/// construction to achieve fine-grained programmatic control over provider settings. See the
/// [documentation](https://www.pulumi.com/docs/reference/programming-model/#providers) for more information.
class ProviderProvider extends pulumi.ProviderResource {
  /// The Azure DevOps Pipeline Service Connection ID.
  late final pulumi.Output<String?> adoPipelineServiceConnectionId;
  /// Base64 encoded PKCS#12 certificate bundle to use when authenticating as a Service Principal using a Client Certificate
  late final pulumi.Output<String?> clientCertificate;
  /// The password associated with the Client Certificate. For use when authenticating as a Service Principal using a Client Certificate
  late final pulumi.Output<String?> clientCertificatePassword;
  /// The path to the Client Certificate associated with the Service Principal for use when authenticating as a Service Principal using a Client Certificate.
  late final pulumi.Output<String?> clientCertificatePath;
  /// The Client ID which should be used.
  late final pulumi.Output<String?> clientId;
  /// The path to a file containing the Client ID which should be used.
  late final pulumi.Output<String?> clientIdFilePath;
  /// The Client Secret which should be used. For use When authenticating as a Service Principal using a Client Secret.
  late final pulumi.Output<String?> clientSecret;
  /// The path to a file containing the Client Secret which should be used. For use When authenticating as a Service Principal using a Client Secret.
  late final pulumi.Output<String?> clientSecretFilePath;
  /// The Cloud Environment which should be used. Possible values are public, usgovernment, and china. Defaults to public. Not used and should not be specified when `metadata_host` is specified.
  late final pulumi.Output<String?> environment;
  /// The Hostname which should be used for the Azure Metadata Service.
  late final pulumi.Output<String?> metadataHost;
  /// The API version to use for Managed Service Identity (IMDS) - for cases where the default API version is not supported by the endpoint. e.g. for Azure Container Apps.
  late final pulumi.Output<String?> msiApiVersion;
  /// The path to a custom endpoint for Managed Service Identity - in most circumstances this should be detected automatically.
  late final pulumi.Output<String?> msiEndpoint;
  /// The bearer token for the request to the OIDC provider. For use when authenticating as a Service Principal using OpenID Connect.
  late final pulumi.Output<String?> oidcRequestToken;
  /// The URL for the OIDC provider from which to request an ID token. For use when authenticating as a Service Principal using OpenID Connect.
  late final pulumi.Output<String?> oidcRequestUrl;
  /// The OIDC ID token for use when authenticating as a Service Principal using OpenID Connect.
  late final pulumi.Output<String?> oidcToken;
  /// The path to a file containing an OIDC ID token for use when authenticating as a Service Principal using OpenID Connect.
  late final pulumi.Output<String?> oidcTokenFilePath;
  /// A GUID/UUID that is registered with Microsoft to facilitate partner resource usage attribution.
  late final pulumi.Output<String?> partnerId;
  /// The set of Resource Providers which should be automatically registered for the subscription.
  late final pulumi.Output<String?> resourceProviderRegistrations;
  /// The Subscription ID which should be used.
  late final pulumi.Output<String?> subscriptionId;
  /// The Tenant ID which should be used.
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
          'azure',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.adoPipelineServiceConnectionId = registerOutput<String?>('adoPipelineServiceConnectionId');
    this.clientCertificate = registerOutput<String?>('clientCertificate');
    this.clientCertificatePassword = registerOutput<String?>('clientCertificatePassword');
    this.clientCertificatePath = registerOutput<String?>('clientCertificatePath');
    this.clientId = registerOutput<String?>('clientId');
    this.clientIdFilePath = registerOutput<String?>('clientIdFilePath');
    this.clientSecret = registerOutput<String?>('clientSecret');
    this.clientSecretFilePath = registerOutput<String?>('clientSecretFilePath');
    this.environment = registerOutput<String?>('environment');
    this.metadataHost = registerOutput<String?>('metadataHost');
    this.msiApiVersion = registerOutput<String?>('msiApiVersion');
    this.msiEndpoint = registerOutput<String?>('msiEndpoint');
    this.oidcRequestToken = registerOutput<String?>('oidcRequestToken');
    this.oidcRequestUrl = registerOutput<String?>('oidcRequestUrl');
    this.oidcToken = registerOutput<String?>('oidcToken');
    this.oidcTokenFilePath = registerOutput<String?>('oidcTokenFilePath');
    this.partnerId = registerOutput<String?>('partnerId');
    this.resourceProviderRegistrations = registerOutput<String?>('resourceProviderRegistrations');
    this.subscriptionId = registerOutput<String?>('subscriptionId');
    this.tenantId = registerOutput<String?>('tenantId');
  }

  /// This function returns a Terraform config object with terraform-namecased keys,to be used with the Terraform Module Provider.
  Future<ProviderTerraformConfigResult> terraformConfig() async {
    final deployment = pulumi.DeploymentImpl.instance as pulumi.DeploymentImpl;
    final result = await deployment.callWithResult<Map<String, dynamic>>(
      'pulumi:providers:azure/terraformConfig',
      const <String, dynamic>{},
      self: this,
    );
    return ProviderTerraformConfigResult.fromMap(result);
  }
}
