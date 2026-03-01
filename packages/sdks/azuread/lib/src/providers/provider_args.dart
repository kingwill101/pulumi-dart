// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_providers_provider_args_doc}
/// The set of arguments for Provider.
/// {@endtemplate}
/// {@macro pulumi_providers_provider_args_doc}
class ProviderArgs {
  /// The Azure DevOps Pipeline Service Connection ID.
  final pulumi.Input<String>? adoPipelineServiceConnectionId;
  /// Base64 encoded PKCS#12 certificate bundle to use when authenticating as a Service Principal using a Client Certificate
  final pulumi.Input<String>? clientCertificate;
  /// The password to decrypt the Client Certificate. For use when authenticating as a Service Principal using a Client Certificate
  final pulumi.Input<String>? clientCertificatePassword;
  /// The path to the Client Certificate associated with the Service Principal for use when authenticating as a Service Principal using a Client Certificate
  final pulumi.Input<String>? clientCertificatePath;
  /// The Client ID which should be used for service principal authentication
  final pulumi.Input<String>? clientId;
  /// The path to a file containing the Client ID which should be used for service principal authentication
  final pulumi.Input<String>? clientIdFilePath;
  /// The application password to use when authenticating as a Service Principal using a Client Secret
  final pulumi.Input<String>? clientSecret;
  /// The path to a file containing the application password to use when authenticating as a Service Principal using a Client Secret
  final pulumi.Input<String>? clientSecretFilePath;
  /// Disable the Terraform Partner ID, which is used if a custom `partner_id` isn't specified
  final pulumi.Input<bool>? disableTerraformPartnerId;
  /// The cloud environment which should be used. Possible values are: `global` (also `public`), `usgovernmentl4` (also `usgovernment`), `usgovernmentl5` (also `dod`), and `china`. Defaults to `global`. Not used and should not be specified when `metadata_host` is specified.
  final pulumi.Input<String>? environment;
  /// The Hostname which should be used for the Azure Metadata Service.
  final pulumi.Input<String>? metadataHost;
  /// The path to a custom endpoint for Managed Identity - in most circumstances this should be detected automatically
  final pulumi.Input<String>? msiEndpoint;
  /// The bearer token for the request to the OIDC provider. For use when authenticating as a Service Principal using OpenID Connect.
  final pulumi.Input<String>? oidcRequestToken;
  /// The URL for the OIDC provider from which to request an ID token. For use when authenticating as a Service Principal using OpenID Connect.
  final pulumi.Input<String>? oidcRequestUrl;
  /// The ID token for use when authenticating as a Service Principal using OpenID Connect.
  final pulumi.Input<String>? oidcToken;
  /// The path to a file containing an ID token for use when authenticating as a Service Principal using OpenID Connect.
  final pulumi.Input<String>? oidcTokenFilePath;
  /// A GUID/UUID that is registered with Microsoft to facilitate partner resource usage attribution
  final pulumi.Input<String>? partnerId;
  /// The Tenant ID which should be used. Works with all authentication methods except Managed Identity
  final pulumi.Input<String>? tenantId;
  /// Allow Azure AKS Workload Identity to be used for Authentication.
  final pulumi.Input<bool>? useAksWorkloadIdentity;
  /// Allow Azure CLI to be used for Authentication
  final pulumi.Input<bool>? useCli;
  /// Allow Managed Identity to be used for Authentication
  final pulumi.Input<bool>? useMsi;
  /// Allow OpenID Connect to be used for authentication
  final pulumi.Input<bool>? useOidc;

  /// Creates a new [ProviderArgs].
  /// [adoPipelineServiceConnectionId] The Azure DevOps Pipeline Service Connection ID.
  /// [clientCertificate] Base64 encoded PKCS#12 certificate bundle to use when authenticating as a Service Principal using a Client Certificate
  /// [clientCertificatePassword] The password to decrypt the Client Certificate. For use when authenticating as a Service Principal using a Client Certificate
  /// [clientCertificatePath] The path to the Client Certificate associated with the Service Principal for use when authenticating as a Service Principal using a Client Certificate
  /// [clientId] The Client ID which should be used for service principal authentication
  /// [clientIdFilePath] The path to a file containing the Client ID which should be used for service principal authentication
  /// [clientSecret] The application password to use when authenticating as a Service Principal using a Client Secret
  /// [clientSecretFilePath] The path to a file containing the application password to use when authenticating as a Service Principal using a Client Secret
  /// [disableTerraformPartnerId] Disable the Terraform Partner ID, which is used if a custom `partner_id` isn't specified
  /// [environment] The cloud environment which should be used. Possible values are: `global` (also `public`), `usgovernmentl4` (also `usgovernment`), `usgovernmentl5` (also `dod`), and `china`. Defaults to `global`. Not used and should not be specified when `metadata_host` is specified.
  /// [metadataHost] The Hostname which should be used for the Azure Metadata Service.
  /// [msiEndpoint] The path to a custom endpoint for Managed Identity - in most circumstances this should be detected automatically
  /// [oidcRequestToken] The bearer token for the request to the OIDC provider. For use when authenticating as a Service Principal using OpenID Connect.
  /// [oidcRequestUrl] The URL for the OIDC provider from which to request an ID token. For use when authenticating as a Service Principal using OpenID Connect.
  /// [oidcToken] The ID token for use when authenticating as a Service Principal using OpenID Connect.
  /// [oidcTokenFilePath] The path to a file containing an ID token for use when authenticating as a Service Principal using OpenID Connect.
  /// [partnerId] A GUID/UUID that is registered with Microsoft to facilitate partner resource usage attribution
  /// [tenantId] The Tenant ID which should be used. Works with all authentication methods except Managed Identity
  /// [useAksWorkloadIdentity] Allow Azure AKS Workload Identity to be used for Authentication.
  /// [useCli] Allow Azure CLI to be used for Authentication
  /// [useMsi] Allow Managed Identity to be used for Authentication
  /// [useOidc] Allow OpenID Connect to be used for authentication
  ProviderArgs({
    pulumi.Output<String>? adoPipelineServiceConnectionId,
    pulumi.Output<String>? clientCertificate,
    pulumi.Output<String>? clientCertificatePassword,
    pulumi.Output<String>? clientCertificatePath,
    pulumi.Output<String>? clientId,
    pulumi.Output<String>? clientIdFilePath,
    pulumi.Output<String>? clientSecret,
    pulumi.Output<String>? clientSecretFilePath,
    pulumi.Output<bool>? disableTerraformPartnerId,
    pulumi.Output<String>? environment,
    pulumi.Output<String>? metadataHost,
    pulumi.Output<String>? msiEndpoint,
    pulumi.Output<String>? oidcRequestToken,
    pulumi.Output<String>? oidcRequestUrl,
    pulumi.Output<String>? oidcToken,
    pulumi.Output<String>? oidcTokenFilePath,
    pulumi.Output<String>? partnerId,
    pulumi.Output<String>? tenantId,
    pulumi.Output<bool>? useAksWorkloadIdentity,
    pulumi.Output<bool>? useCli,
    pulumi.Output<bool>? useMsi,
    pulumi.Output<bool>? useOidc,
  }) :
      adoPipelineServiceConnectionId = pulumi.Input.asOptionalInput<String>(adoPipelineServiceConnectionId),
      clientCertificate = pulumi.Input.asOptionalInput<String>(clientCertificate),
      clientCertificatePassword = pulumi.Input.asOptionalInput<String>(clientCertificatePassword),
      clientCertificatePath = pulumi.Input.asOptionalInput<String>(clientCertificatePath),
      clientId = pulumi.Input.asOptionalInput<String>(clientId),
      clientIdFilePath = pulumi.Input.asOptionalInput<String>(clientIdFilePath),
      clientSecret = pulumi.Input.asOptionalInput<String>(clientSecret),
      clientSecretFilePath = pulumi.Input.asOptionalInput<String>(clientSecretFilePath),
      disableTerraformPartnerId = pulumi.Input.asOptionalInput<bool>(disableTerraformPartnerId),
      environment = pulumi.Input.asOptionalInput<String>(environment),
      metadataHost = pulumi.Input.asOptionalInput<String>(metadataHost),
      msiEndpoint = pulumi.Input.asOptionalInput<String>(msiEndpoint),
      oidcRequestToken = pulumi.Input.asOptionalInput<String>(oidcRequestToken),
      oidcRequestUrl = pulumi.Input.asOptionalInput<String>(oidcRequestUrl),
      oidcToken = pulumi.Input.asOptionalInput<String>(oidcToken),
      oidcTokenFilePath = pulumi.Input.asOptionalInput<String>(oidcTokenFilePath),
      partnerId = pulumi.Input.asOptionalInput<String>(partnerId),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId),
      useAksWorkloadIdentity = pulumi.Input.asOptionalInput<bool>(useAksWorkloadIdentity),
      useCli = pulumi.Input.asOptionalInput<bool>(useCli),
      useMsi = pulumi.Input.asOptionalInput<bool>(useMsi),
      useOidc = pulumi.Input.asOptionalInput<bool>(useOidc);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adoPipelineServiceConnectionId': ?adoPipelineServiceConnectionId,
      'clientCertificate': ?clientCertificate,
      'clientCertificatePassword': ?clientCertificatePassword,
      'clientCertificatePath': ?clientCertificatePath,
      'clientId': ?clientId,
      'clientIdFilePath': ?clientIdFilePath,
      'clientSecret': ?clientSecret,
      'clientSecretFilePath': ?clientSecretFilePath,
      'disableTerraformPartnerId': ?disableTerraformPartnerId,
      'environment': ?environment,
      'metadataHost': ?metadataHost,
      'msiEndpoint': ?msiEndpoint,
      'oidcRequestToken': ?oidcRequestToken,
      'oidcRequestUrl': ?oidcRequestUrl,
      'oidcToken': ?oidcToken,
      'oidcTokenFilePath': ?oidcTokenFilePath,
      'partnerId': ?partnerId,
      'tenantId': ?tenantId,
      'useAksWorkloadIdentity': ?useAksWorkloadIdentity,
      'useCli': ?useCli,
      'useMsi': ?useMsi,
      'useOidc': ?useOidc,
    };
  }

  factory ProviderArgs.fromMap(Map<String, dynamic> map) {
    return ProviderArgs(
      adoPipelineServiceConnectionId: map['adoPipelineServiceConnectionId'] == null ? null : pulumi.Output.create<String>(map['adoPipelineServiceConnectionId'] as String),
      clientCertificate: map['clientCertificate'] == null ? null : pulumi.Output.create<String>(map['clientCertificate'] as String),
      clientCertificatePassword: map['clientCertificatePassword'] == null ? null : pulumi.Output.create<String>(map['clientCertificatePassword'] as String),
      clientCertificatePath: map['clientCertificatePath'] == null ? null : pulumi.Output.create<String>(map['clientCertificatePath'] as String),
      clientId: map['clientId'] == null ? null : pulumi.Output.create<String>(map['clientId'] as String),
      clientIdFilePath: map['clientIdFilePath'] == null ? null : pulumi.Output.create<String>(map['clientIdFilePath'] as String),
      clientSecret: map['clientSecret'] == null ? null : pulumi.Output.create<String>(map['clientSecret'] as String),
      clientSecretFilePath: map['clientSecretFilePath'] == null ? null : pulumi.Output.create<String>(map['clientSecretFilePath'] as String),
      disableTerraformPartnerId: map['disableTerraformPartnerId'] == null ? null : pulumi.Output.create<bool>(map['disableTerraformPartnerId'] as bool),
      environment: map['environment'] == null ? null : pulumi.Output.create<String>(map['environment'] as String),
      metadataHost: map['metadataHost'] == null ? null : pulumi.Output.create<String>(map['metadataHost'] as String),
      msiEndpoint: map['msiEndpoint'] == null ? null : pulumi.Output.create<String>(map['msiEndpoint'] as String),
      oidcRequestToken: map['oidcRequestToken'] == null ? null : pulumi.Output.create<String>(map['oidcRequestToken'] as String),
      oidcRequestUrl: map['oidcRequestUrl'] == null ? null : pulumi.Output.create<String>(map['oidcRequestUrl'] as String),
      oidcToken: map['oidcToken'] == null ? null : pulumi.Output.create<String>(map['oidcToken'] as String),
      oidcTokenFilePath: map['oidcTokenFilePath'] == null ? null : pulumi.Output.create<String>(map['oidcTokenFilePath'] as String),
      partnerId: map['partnerId'] == null ? null : pulumi.Output.create<String>(map['partnerId'] as String),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
      useAksWorkloadIdentity: map['useAksWorkloadIdentity'] == null ? null : pulumi.Output.create<bool>(map['useAksWorkloadIdentity'] as bool),
      useCli: map['useCli'] == null ? null : pulumi.Output.create<bool>(map['useCli'] as bool),
      useMsi: map['useMsi'] == null ? null : pulumi.Output.create<bool>(map['useMsi'] as bool),
      useOidc: map['useOidc'] == null ? null : pulumi.Output.create<bool>(map['useOidc'] as bool),
    );
  }
}

