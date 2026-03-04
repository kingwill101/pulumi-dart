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
    this.adoPipelineServiceConnectionId,
    this.auxiliaryTenantIds,
    this.clientCertificate,
    this.clientCertificatePassword,
    this.clientCertificatePath,
    this.clientId,
    this.clientIdFilePath,
    this.clientSecret,
    this.clientSecretFilePath,
    this.disableCorrelationRequestId,
    this.disableTerraformPartnerId,
    this.environment,
    this.features,
    this.metadataHost,
    this.msiApiVersion,
    this.msiEndpoint,
    this.oidcRequestToken,
    this.oidcRequestUrl,
    this.oidcToken,
    this.oidcTokenFilePath,
    this.partnerId,
    this.resourceProviderRegistrations,
    this.resourceProvidersToRegisters,
    this.skipProviderRegistration,
    this.storageUseAzuread,
    this.subscriptionId,
    this.tenantId,
    this.useAksWorkloadIdentity,
    this.useCli,
    this.useMsi,
    this.useOidc,
  });

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
      'features':
          ?pulumi.Input.mapOptionalInputValue<
            ProviderFeatures,
            Map<String, dynamic>
          >(features, (value) => value.toMap()),
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
      adoPipelineServiceConnectionId: (() {
        final guardedValue = map['adoPipelineServiceConnectionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      auxiliaryTenantIds: (() {
        final guardedValue = map['auxiliaryTenantIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      clientCertificate: (() {
        final guardedValue = map['clientCertificate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clientCertificatePassword: (() {
        final guardedValue = map['clientCertificatePassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clientCertificatePath: (() {
        final guardedValue = map['clientCertificatePath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clientId: (() {
        final guardedValue = map['clientId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clientIdFilePath: (() {
        final guardedValue = map['clientIdFilePath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clientSecret: (() {
        final guardedValue = map['clientSecret'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clientSecretFilePath: (() {
        final guardedValue = map['clientSecretFilePath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      disableCorrelationRequestId: (() {
        final guardedValue = map['disableCorrelationRequestId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      disableTerraformPartnerId: (() {
        final guardedValue = map['disableTerraformPartnerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      environment: (() {
        final guardedValue = map['environment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      features: (() {
        final guardedValue = map['features'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ProviderFeatures.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      metadataHost: (() {
        final guardedValue = map['metadataHost'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      msiApiVersion: (() {
        final guardedValue = map['msiApiVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      msiEndpoint: (() {
        final guardedValue = map['msiEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      oidcRequestToken: (() {
        final guardedValue = map['oidcRequestToken'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      oidcRequestUrl: (() {
        final guardedValue = map['oidcRequestUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      oidcToken: (() {
        final guardedValue = map['oidcToken'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      oidcTokenFilePath: (() {
        final guardedValue = map['oidcTokenFilePath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      partnerId: (() {
        final guardedValue = map['partnerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceProviderRegistrations: (() {
        final guardedValue = map['resourceProviderRegistrations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceProvidersToRegisters: (() {
        final guardedValue = map['resourceProvidersToRegisters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      skipProviderRegistration: (() {
        final guardedValue = map['skipProviderRegistration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      storageUseAzuread: (() {
        final guardedValue = map['storageUseAzuread'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      subscriptionId: (() {
        final guardedValue = map['subscriptionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tenantId: (() {
        final guardedValue = map['tenantId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      useAksWorkloadIdentity: (() {
        final guardedValue = map['useAksWorkloadIdentity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      useCli: (() {
        final guardedValue = map['useCli'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      useMsi: (() {
        final guardedValue = map['useMsi'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      useOidc: (() {
        final guardedValue = map['useOidc'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
