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
  /// The Cloud Environment which should be used. Possible values are public, usgovernment, and china. Defaults to public. Not used and should not be specified when `metadataHost` is specified.
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
          pulumi.Input.mapToInputs((args ?? ProviderArgs()).toMap()),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
          additionalSecretOutputs: const ['clientCertificate', 'clientCertificatePassword', 'clientCertificatePath', 'clientId', 'clientIdFilePath', 'clientSecret', 'clientSecretFilePath', 'oidcRequestToken', 'oidcToken', 'oidcTokenFilePath', 'subscriptionId', 'tenantId'],
        ) {
    adoPipelineServiceConnectionId = registerOutput<String?>('adoPipelineServiceConnectionId');
    clientCertificate = registerOutput<String?>('clientCertificate', isSecret: true);
    clientCertificatePassword = registerOutput<String?>('clientCertificatePassword', isSecret: true);
    clientCertificatePath = registerOutput<String?>('clientCertificatePath', isSecret: true);
    clientId = registerOutput<String?>('clientId', isSecret: true);
    clientIdFilePath = registerOutput<String?>('clientIdFilePath', isSecret: true);
    clientSecret = registerOutput<String?>('clientSecret', isSecret: true);
    clientSecretFilePath = registerOutput<String?>('clientSecretFilePath', isSecret: true);
    environment = registerOutput<String?>('environment');
    metadataHost = registerOutput<String?>('metadataHost');
    msiApiVersion = registerOutput<String?>('msiApiVersion');
    msiEndpoint = registerOutput<String?>('msiEndpoint');
    oidcRequestToken = registerOutput<String?>('oidcRequestToken', isSecret: true);
    oidcRequestUrl = registerOutput<String?>('oidcRequestUrl');
    oidcToken = registerOutput<String?>('oidcToken', isSecret: true);
    oidcTokenFilePath = registerOutput<String?>('oidcTokenFilePath', isSecret: true);
    partnerId = registerOutput<String?>('partnerId');
    resourceProviderRegistrations = registerOutput<String?>('resourceProviderRegistrations');
    subscriptionId = registerOutput<String?>('subscriptionId', isSecret: true);
    tenantId = registerOutput<String?>('tenantId', isSecret: true);
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
