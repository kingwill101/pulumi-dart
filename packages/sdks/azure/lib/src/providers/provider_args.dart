// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../index/provider_features.dart';

/// {@template pulumi_providers_provider_args_doc}
/// The set of arguments for Provider.
/// {@endtemplate}
/// {@macro pulumi_providers_provider_args_doc}
class ProviderArgs {
  /// The Azure DevOps Pipeline Service Connection ID.
  final pulumi.Input<String>? adoPipelineServiceConnectionId;
  final pulumi.Input<List<String>>? auxiliaryTenantIds;
  /// Base64 encoded PKCS#12 certificate bundle to use when authenticating as a Service Principal using a Client Certificate
  final pulumi.Input<String>? clientCertificate;
  /// The password associated with the Client Certificate. For use when authenticating as a Service Principal using a Client Certificate
  final pulumi.Input<String>? clientCertificatePassword;
  /// The path to the Client Certificate associated with the Service Principal for use when authenticating as a Service Principal using a Client Certificate.
  final pulumi.Input<String>? clientCertificatePath;
  /// The Client ID which should be used.
  final pulumi.Input<String>? clientId;
  /// The path to a file containing the Client ID which should be used.
  final pulumi.Input<String>? clientIdFilePath;
  /// The Client Secret which should be used. For use When authenticating as a Service Principal using a Client Secret.
  final pulumi.Input<String>? clientSecret;
  /// The path to a file containing the Client Secret which should be used. For use When authenticating as a Service Principal using a Client Secret.
  final pulumi.Input<String>? clientSecretFilePath;
  /// This will disable the x-ms-correlation-request-id header.
  final pulumi.Input<bool>? disableCorrelationRequestId;
  /// This will disable the Terraform Partner ID which is used if a custom `partner_id` isn't specified.
  final pulumi.Input<bool>? disableTerraformPartnerId;
  /// The Cloud Environment which should be used. Possible values are public, usgovernment, and china. Defaults to public. Not used and should not be specified when `metadata_host` is specified.
  final pulumi.Input<String>? environment;
  final pulumi.Input<ProviderFeatures>? features;
  /// The Hostname which should be used for the Azure Metadata Service.
  final pulumi.Input<String>? metadataHost;
  /// The API version to use for Managed Service Identity (IMDS) - for cases where the default API version is not supported by the endpoint. e.g. for Azure Container Apps.
  final pulumi.Input<String>? msiApiVersion;
  /// The path to a custom endpoint for Managed Service Identity - in most circumstances this should be detected automatically.
  final pulumi.Input<String>? msiEndpoint;
  /// The bearer token for the request to the OIDC provider. For use when authenticating as a Service Principal using OpenID Connect.
  final pulumi.Input<String>? oidcRequestToken;
  /// The URL for the OIDC provider from which to request an ID token. For use when authenticating as a Service Principal using OpenID Connect.
  final pulumi.Input<String>? oidcRequestUrl;
  /// The OIDC ID token for use when authenticating as a Service Principal using OpenID Connect.
  final pulumi.Input<String>? oidcToken;
  /// The path to a file containing an OIDC ID token for use when authenticating as a Service Principal using OpenID Connect.
  final pulumi.Input<String>? oidcTokenFilePath;
  /// A GUID/UUID that is registered with Microsoft to facilitate partner resource usage attribution.
  final pulumi.Input<String>? partnerId;
  /// The set of Resource Providers which should be automatically registered for the subscription.
  final pulumi.Input<String>? resourceProviderRegistrations;
  /// A list of Resource Providers to explicitly register for the subscription, in addition to those specified by the `resource_provider_registrations` property.
  final pulumi.Input<List<String>>? resourceProvidersToRegisters;
  /// Should the AzureRM Provider skip registering all of the Resource Providers that it supports, if they're not already registered?
  final pulumi.Input<bool>? skipProviderRegistration;
  /// Should the AzureRM Provider use Azure AD Authentication when accessing the Storage Data Plane APIs?
  final pulumi.Input<bool>? storageUseAzuread;
  /// The Subscription ID which should be used.
  final pulumi.Input<String>? subscriptionId;
  /// The Tenant ID which should be used.
  final pulumi.Input<String>? tenantId;
  /// Allow Azure AKS Workload Identity to be used for Authentication.
  final pulumi.Input<bool>? useAksWorkloadIdentity;
  /// Allow Azure CLI to be used for Authentication.
  final pulumi.Input<bool>? useCli;
  /// Allow Managed Service Identity to be used for Authentication.
  final pulumi.Input<bool>? useMsi;
  /// Allow OpenID Connect to be used for authentication
  final pulumi.Input<bool>? useOidc;

  /// Creates a new [ProviderArgs].
  /// [adoPipelineServiceConnectionId] The Azure DevOps Pipeline Service Connection ID.
  /// [auxiliaryTenantIds] Optional.
  /// [clientCertificate] Base64 encoded PKCS#12 certificate bundle to use when authenticating as a Service Principal using a Client Certificate
  /// [clientCertificatePassword] The password associated with the Client Certificate. For use when authenticating as a Service Principal using a Client Certificate
  /// [clientCertificatePath] The path to the Client Certificate associated with the Service Principal for use when authenticating as a Service Principal using a Client Certificate.
  /// [clientId] The Client ID which should be used.
  /// [clientIdFilePath] The path to a file containing the Client ID which should be used.
  /// [clientSecret] The Client Secret which should be used. For use When authenticating as a Service Principal using a Client Secret.
  /// [clientSecretFilePath] The path to a file containing the Client Secret which should be used. For use When authenticating as a Service Principal using a Client Secret.
  /// [disableCorrelationRequestId] This will disable the x-ms-correlation-request-id header.
  /// [disableTerraformPartnerId] This will disable the Terraform Partner ID which is used if a custom `partner_id` isn't specified.
  /// [environment] The Cloud Environment which should be used. Possible values are public, usgovernment, and china. Defaults to public. Not used and should not be specified when `metadata_host` is specified.
  /// [features] Optional.
  /// [metadataHost] The Hostname which should be used for the Azure Metadata Service.
  /// [msiApiVersion] The API version to use for Managed Service Identity (IMDS) - for cases where the default API version is not supported by the endpoint. e.g. for Azure Container Apps.
  /// [msiEndpoint] The path to a custom endpoint for Managed Service Identity - in most circumstances this should be detected automatically.
  /// [oidcRequestToken] The bearer token for the request to the OIDC provider. For use when authenticating as a Service Principal using OpenID Connect.
  /// [oidcRequestUrl] The URL for the OIDC provider from which to request an ID token. For use when authenticating as a Service Principal using OpenID Connect.
  /// [oidcToken] The OIDC ID token for use when authenticating as a Service Principal using OpenID Connect.
  /// [oidcTokenFilePath] The path to a file containing an OIDC ID token for use when authenticating as a Service Principal using OpenID Connect.
  /// [partnerId] A GUID/UUID that is registered with Microsoft to facilitate partner resource usage attribution.
  /// [resourceProviderRegistrations] The set of Resource Providers which should be automatically registered for the subscription.
  /// [resourceProvidersToRegisters] A list of Resource Providers to explicitly register for the subscription, in addition to those specified by the `resource_provider_registrations` property.
  /// [skipProviderRegistration] Should the AzureRM Provider skip registering all of the Resource Providers that it supports, if they're not already registered?
  /// [storageUseAzuread] Should the AzureRM Provider use Azure AD Authentication when accessing the Storage Data Plane APIs?
  /// [subscriptionId] The Subscription ID which should be used.
  /// [tenantId] The Tenant ID which should be used.
  /// [useAksWorkloadIdentity] Allow Azure AKS Workload Identity to be used for Authentication.
  /// [useCli] Allow Azure CLI to be used for Authentication.
  /// [useMsi] Allow Managed Service Identity to be used for Authentication.
  /// [useOidc] Allow OpenID Connect to be used for authentication
  ProviderArgs({
    pulumi.Output<String>? adoPipelineServiceConnectionId,
    pulumi.Output<List<String>>? auxiliaryTenantIds,
    pulumi.Output<String>? clientCertificate,
    pulumi.Output<String>? clientCertificatePassword,
    pulumi.Output<String>? clientCertificatePath,
    pulumi.Output<String>? clientId,
    pulumi.Output<String>? clientIdFilePath,
    pulumi.Output<String>? clientSecret,
    pulumi.Output<String>? clientSecretFilePath,
    pulumi.Output<bool>? disableCorrelationRequestId,
    pulumi.Output<bool>? disableTerraformPartnerId,
    pulumi.Output<String>? environment,
    pulumi.Output<ProviderFeatures>? features,
    pulumi.Output<String>? metadataHost,
    pulumi.Output<String>? msiApiVersion,
    pulumi.Output<String>? msiEndpoint,
    pulumi.Output<String>? oidcRequestToken,
    pulumi.Output<String>? oidcRequestUrl,
    pulumi.Output<String>? oidcToken,
    pulumi.Output<String>? oidcTokenFilePath,
    pulumi.Output<String>? partnerId,
    pulumi.Output<String>? resourceProviderRegistrations,
    pulumi.Output<List<String>>? resourceProvidersToRegisters,
    pulumi.Output<bool>? skipProviderRegistration,
    pulumi.Output<bool>? storageUseAzuread,
    pulumi.Output<String>? subscriptionId,
    pulumi.Output<String>? tenantId,
    pulumi.Output<bool>? useAksWorkloadIdentity,
    pulumi.Output<bool>? useCli,
    pulumi.Output<bool>? useMsi,
    pulumi.Output<bool>? useOidc,
  }) :
      adoPipelineServiceConnectionId = pulumi.Input.asOptionalInput<String>(adoPipelineServiceConnectionId),
      auxiliaryTenantIds = pulumi.Input.asOptionalInput<List<String>>(auxiliaryTenantIds),
      clientCertificate = pulumi.Input.asOptionalInput<String>(clientCertificate),
      clientCertificatePassword = pulumi.Input.asOptionalInput<String>(clientCertificatePassword),
      clientCertificatePath = pulumi.Input.asOptionalInput<String>(clientCertificatePath),
      clientId = pulumi.Input.asOptionalInput<String>(clientId),
      clientIdFilePath = pulumi.Input.asOptionalInput<String>(clientIdFilePath),
      clientSecret = pulumi.Input.asOptionalInput<String>(clientSecret),
      clientSecretFilePath = pulumi.Input.asOptionalInput<String>(clientSecretFilePath),
      disableCorrelationRequestId = pulumi.Input.asOptionalInput<bool>(disableCorrelationRequestId),
      disableTerraformPartnerId = pulumi.Input.asOptionalInput<bool>(disableTerraformPartnerId),
      environment = pulumi.Input.asOptionalInput<String>(environment),
      features = pulumi.Input.asOptionalInput<ProviderFeatures>(features),
      metadataHost = pulumi.Input.asOptionalInput<String>(metadataHost),
      msiApiVersion = pulumi.Input.asOptionalInput<String>(msiApiVersion),
      msiEndpoint = pulumi.Input.asOptionalInput<String>(msiEndpoint),
      oidcRequestToken = pulumi.Input.asOptionalInput<String>(oidcRequestToken),
      oidcRequestUrl = pulumi.Input.asOptionalInput<String>(oidcRequestUrl),
      oidcToken = pulumi.Input.asOptionalInput<String>(oidcToken),
      oidcTokenFilePath = pulumi.Input.asOptionalInput<String>(oidcTokenFilePath),
      partnerId = pulumi.Input.asOptionalInput<String>(partnerId),
      resourceProviderRegistrations = pulumi.Input.asOptionalInput<String>(resourceProviderRegistrations),
      resourceProvidersToRegisters = pulumi.Input.asOptionalInput<List<String>>(resourceProvidersToRegisters),
      skipProviderRegistration = pulumi.Input.asOptionalInput<bool>(skipProviderRegistration),
      storageUseAzuread = pulumi.Input.asOptionalInput<bool>(storageUseAzuread),
      subscriptionId = pulumi.Input.asOptionalInput<String>(subscriptionId),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId),
      useAksWorkloadIdentity = pulumi.Input.asOptionalInput<bool>(useAksWorkloadIdentity),
      useCli = pulumi.Input.asOptionalInput<bool>(useCli),
      useMsi = pulumi.Input.asOptionalInput<bool>(useMsi),
      useOidc = pulumi.Input.asOptionalInput<bool>(useOidc);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adoPipelineServiceConnectionId': ?adoPipelineServiceConnectionId,
      'auxiliaryTenantIds': ?auxiliaryTenantIds,
      'clientCertificate': ?clientCertificate,
      'clientCertificatePassword': ?clientCertificatePassword,
      'clientCertificatePath': ?clientCertificatePath,
      'clientId': ?clientId,
      'clientIdFilePath': ?clientIdFilePath,
      'clientSecret': ?clientSecret,
      'clientSecretFilePath': ?clientSecretFilePath,
      'disableCorrelationRequestId': ?disableCorrelationRequestId,
      'disableTerraformPartnerId': ?disableTerraformPartnerId,
      'environment': ?environment,
      'features': ?pulumi.Input.mapOptionalInputValue<ProviderFeatures, Map<String, dynamic>>(features, (value) => value.toMap()),
      'metadataHost': ?metadataHost,
      'msiApiVersion': ?msiApiVersion,
      'msiEndpoint': ?msiEndpoint,
      'oidcRequestToken': ?oidcRequestToken,
      'oidcRequestUrl': ?oidcRequestUrl,
      'oidcToken': ?oidcToken,
      'oidcTokenFilePath': ?oidcTokenFilePath,
      'partnerId': ?partnerId,
      'resourceProviderRegistrations': ?resourceProviderRegistrations,
      'resourceProvidersToRegisters': ?resourceProvidersToRegisters,
      'skipProviderRegistration': ?skipProviderRegistration,
      'storageUseAzuread': ?storageUseAzuread,
      'subscriptionId': ?subscriptionId,
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
      auxiliaryTenantIds: map['auxiliaryTenantIds'] == null ? null : pulumi.Output.create<List<String>>((map['auxiliaryTenantIds'] as List).cast<String>()),
      clientCertificate: map['clientCertificate'] == null ? null : pulumi.Output.create<String>(map['clientCertificate'] as String),
      clientCertificatePassword: map['clientCertificatePassword'] == null ? null : pulumi.Output.create<String>(map['clientCertificatePassword'] as String),
      clientCertificatePath: map['clientCertificatePath'] == null ? null : pulumi.Output.create<String>(map['clientCertificatePath'] as String),
      clientId: map['clientId'] == null ? null : pulumi.Output.create<String>(map['clientId'] as String),
      clientIdFilePath: map['clientIdFilePath'] == null ? null : pulumi.Output.create<String>(map['clientIdFilePath'] as String),
      clientSecret: map['clientSecret'] == null ? null : pulumi.Output.create<String>(map['clientSecret'] as String),
      clientSecretFilePath: map['clientSecretFilePath'] == null ? null : pulumi.Output.create<String>(map['clientSecretFilePath'] as String),
      disableCorrelationRequestId: map['disableCorrelationRequestId'] == null ? null : pulumi.Output.create<bool>(map['disableCorrelationRequestId'] as bool),
      disableTerraformPartnerId: map['disableTerraformPartnerId'] == null ? null : pulumi.Output.create<bool>(map['disableTerraformPartnerId'] as bool),
      environment: map['environment'] == null ? null : pulumi.Output.create<String>(map['environment'] as String),
      features: map['features'] == null ? null : pulumi.Output.create<ProviderFeatures>(ProviderFeatures.fromMap((map['features'] as Map).cast<String, dynamic>())),
      metadataHost: map['metadataHost'] == null ? null : pulumi.Output.create<String>(map['metadataHost'] as String),
      msiApiVersion: map['msiApiVersion'] == null ? null : pulumi.Output.create<String>(map['msiApiVersion'] as String),
      msiEndpoint: map['msiEndpoint'] == null ? null : pulumi.Output.create<String>(map['msiEndpoint'] as String),
      oidcRequestToken: map['oidcRequestToken'] == null ? null : pulumi.Output.create<String>(map['oidcRequestToken'] as String),
      oidcRequestUrl: map['oidcRequestUrl'] == null ? null : pulumi.Output.create<String>(map['oidcRequestUrl'] as String),
      oidcToken: map['oidcToken'] == null ? null : pulumi.Output.create<String>(map['oidcToken'] as String),
      oidcTokenFilePath: map['oidcTokenFilePath'] == null ? null : pulumi.Output.create<String>(map['oidcTokenFilePath'] as String),
      partnerId: map['partnerId'] == null ? null : pulumi.Output.create<String>(map['partnerId'] as String),
      resourceProviderRegistrations: map['resourceProviderRegistrations'] == null ? null : pulumi.Output.create<String>(map['resourceProviderRegistrations'] as String),
      resourceProvidersToRegisters: map['resourceProvidersToRegisters'] == null ? null : pulumi.Output.create<List<String>>((map['resourceProvidersToRegisters'] as List).cast<String>()),
      skipProviderRegistration: map['skipProviderRegistration'] == null ? null : pulumi.Output.create<bool>(map['skipProviderRegistration'] as bool),
      storageUseAzuread: map['storageUseAzuread'] == null ? null : pulumi.Output.create<bool>(map['storageUseAzuread'] as bool),
      subscriptionId: map['subscriptionId'] == null ? null : pulumi.Output.create<String>(map['subscriptionId'] as String),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
      useAksWorkloadIdentity: map['useAksWorkloadIdentity'] == null ? null : pulumi.Output.create<bool>(map['useAksWorkloadIdentity'] as bool),
      useCli: map['useCli'] == null ? null : pulumi.Output.create<bool>(map['useCli'] as bool),
      useMsi: map['useMsi'] == null ? null : pulumi.Output.create<bool>(map['useMsi'] as bool),
      useOidc: map['useOidc'] == null ? null : pulumi.Output.create<bool>(map['useOidc'] as bool),
    );
  }
}

