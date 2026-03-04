// ignore_for_file: unused_element, unnecessary_cast

import 'dart:convert';
import 'package:pulumi/pulumi.dart' as pulumi;
import 'features.dart';

/// Configuration values for the azure package.
class AzureConfig {
  const AzureConfig();

  String? _raw(String key) {
    final deployment = pulumi.Deployment.instance;
    return deployment.getConfig(key);
  }

  bool _isSecret(String key) {
    final deployment = pulumi.Deployment.instance;
    return deployment.isConfigSecret(key);
  }

  /// The Azure DevOps Pipeline Service Connection ID.
  String? get adoPipelineServiceConnectionId {
    final raw = _raw('adoPipelineServiceConnectionId');
    return raw;
  }

  bool get adoPipelineServiceConnectionIdIsSecret =>
      _isSecret('adoPipelineServiceConnectionId');

  List<String>? get auxiliaryTenantIds {
    final raw = _raw('auxiliaryTenantIds');
    return (() {
      final guardedValue = raw;
      if (guardedValue == null) return null;
      return (jsonDecode(guardedValue) as List).cast<String>();
    })();
  }

  bool get auxiliaryTenantIdsIsSecret => _isSecret('auxiliaryTenantIds');

  /// Base64 encoded PKCS#12 certificate bundle to use when authenticating as a Service Principal using a Client Certificate
  String? get clientCertificate {
    final raw = _raw('clientCertificate');
    return raw;
  }

  bool get clientCertificateIsSecret => _isSecret('clientCertificate');

  /// The password associated with the Client Certificate. For use when authenticating as a Service Principal using a Client Certificate
  String? get clientCertificatePassword {
    final raw = _raw('clientCertificatePassword');
    return raw;
  }

  bool get clientCertificatePasswordIsSecret =>
      _isSecret('clientCertificatePassword');

  /// The path to the Client Certificate associated with the Service Principal for use when authenticating as a Service Principal using a Client Certificate.
  String? get clientCertificatePath {
    final raw = _raw('clientCertificatePath');
    return raw;
  }

  bool get clientCertificatePathIsSecret => _isSecret('clientCertificatePath');

  /// The Client ID which should be used.
  String? get clientId {
    final raw = _raw('clientId');
    return raw;
  }

  bool get clientIdIsSecret => _isSecret('clientId');

  /// The path to a file containing the Client ID which should be used.
  String? get clientIdFilePath {
    final raw = _raw('clientIdFilePath');
    return raw;
  }

  bool get clientIdFilePathIsSecret => _isSecret('clientIdFilePath');

  /// The Client Secret which should be used. For use When authenticating as a Service Principal using a Client Secret.
  String? get clientSecret {
    final raw = _raw('clientSecret');
    return raw;
  }

  bool get clientSecretIsSecret => _isSecret('clientSecret');

  /// The path to a file containing the Client Secret which should be used. For use When authenticating as a Service Principal using a Client Secret.
  String? get clientSecretFilePath {
    final raw = _raw('clientSecretFilePath');
    return raw;
  }

  bool get clientSecretFilePathIsSecret => _isSecret('clientSecretFilePath');

  /// This will disable the x-ms-correlation-request-id header.
  bool? get disableCorrelationRequestId {
    final raw = _raw('disableCorrelationRequestId');
    return (raw).toBool();
  }

  bool get disableCorrelationRequestIdIsSecret =>
      _isSecret('disableCorrelationRequestId');

  /// This will disable the Terraform Partner ID which is used if a custom `partner_id` isn't specified.
  bool? get disableTerraformPartnerId {
    final raw = _raw('disableTerraformPartnerId');
    return (raw).toBool();
  }

  bool get disableTerraformPartnerIdIsSecret =>
      _isSecret('disableTerraformPartnerId');

  /// The Cloud Environment which should be used. Possible values are public, usgovernment, and china. Defaults to public. Not used and should not be specified when `metadata_host` is specified.
  String? get environment {
    final raw = _raw('environment');
    return raw;
  }

  bool get environmentIsSecret => _isSecret('environment');

  Features? get features {
    final raw = _raw('features');
    return (() {
      final guardedValue = raw;
      if (guardedValue == null) return null;
      return Features.fromMap(
        (jsonDecode(guardedValue) as Map).cast<String, dynamic>(),
      );
    })();
  }

  bool get featuresIsSecret => _isSecret('features');

  String? get location {
    final raw = _raw('location');
    return raw;
  }

  bool get locationIsSecret => _isSecret('location');

  /// The Hostname which should be used for the Azure Metadata Service.
  String? get metadataHost {
    final raw = _raw('metadataHost');
    return raw;
  }

  bool get metadataHostIsSecret => _isSecret('metadataHost');

  /// The API version to use for Managed Service Identity (IMDS) - for cases where the default API version is not supported by the endpoint. e.g. for Azure Container Apps.
  String? get msiApiVersion {
    final raw = _raw('msiApiVersion');
    return raw;
  }

  bool get msiApiVersionIsSecret => _isSecret('msiApiVersion');

  /// The path to a custom endpoint for Managed Service Identity - in most circumstances this should be detected automatically.
  String? get msiEndpoint {
    final raw = _raw('msiEndpoint');
    return raw;
  }

  bool get msiEndpointIsSecret => _isSecret('msiEndpoint');

  /// The bearer token for the request to the OIDC provider. For use when authenticating as a Service Principal using OpenID Connect.
  String? get oidcRequestToken {
    final raw = _raw('oidcRequestToken');
    return raw;
  }

  bool get oidcRequestTokenIsSecret => _isSecret('oidcRequestToken');

  /// The URL for the OIDC provider from which to request an ID token. For use when authenticating as a Service Principal using OpenID Connect.
  String? get oidcRequestUrl {
    final raw = _raw('oidcRequestUrl');
    return raw;
  }

  bool get oidcRequestUrlIsSecret => _isSecret('oidcRequestUrl');

  /// The OIDC ID token for use when authenticating as a Service Principal using OpenID Connect.
  String? get oidcToken {
    final raw = _raw('oidcToken');
    return raw;
  }

  bool get oidcTokenIsSecret => _isSecret('oidcToken');

  /// The path to a file containing an OIDC ID token for use when authenticating as a Service Principal using OpenID Connect.
  String? get oidcTokenFilePath {
    final raw = _raw('oidcTokenFilePath');
    return raw;
  }

  bool get oidcTokenFilePathIsSecret => _isSecret('oidcTokenFilePath');

  /// A GUID/UUID that is registered with Microsoft to facilitate partner resource usage attribution.
  String? get partnerId {
    final raw = _raw('partnerId');
    return raw;
  }

  bool get partnerIdIsSecret => _isSecret('partnerId');

  /// The set of Resource Providers which should be automatically registered for the subscription.
  String? get resourceProviderRegistrations {
    final raw = _raw('resourceProviderRegistrations');
    return raw;
  }

  bool get resourceProviderRegistrationsIsSecret =>
      _isSecret('resourceProviderRegistrations');

  /// A list of Resource Providers to explicitly register for the subscription, in addition to those specified by the `resource_provider_registrations` property.
  List<String>? get resourceProvidersToRegisters {
    final raw = _raw('resourceProvidersToRegisters');
    return (() {
      final guardedValue = raw;
      if (guardedValue == null) return null;
      return (jsonDecode(guardedValue) as List).cast<String>();
    })();
  }

  bool get resourceProvidersToRegistersIsSecret =>
      _isSecret('resourceProvidersToRegisters');

  /// Should the AzureRM Provider skip registering all of the Resource Providers that it supports, if they're not already registered?
  bool? get skipProviderRegistration {
    final raw = _raw('skipProviderRegistration');
    return (raw).toBool();
  }

  bool get skipProviderRegistrationIsSecret =>
      _isSecret('skipProviderRegistration');

  /// Should the AzureRM Provider use Azure AD Authentication when accessing the Storage Data Plane APIs?
  bool? get storageUseAzuread {
    final raw = _raw('storageUseAzuread');
    return (raw).toBool();
  }

  bool get storageUseAzureadIsSecret => _isSecret('storageUseAzuread');

  /// The Subscription ID which should be used.
  String? get subscriptionId {
    final raw = _raw('subscriptionId');
    return raw;
  }

  bool get subscriptionIdIsSecret => _isSecret('subscriptionId');

  /// The Tenant ID which should be used.
  String? get tenantId {
    final raw = _raw('tenantId');
    return raw;
  }

  bool get tenantIdIsSecret => _isSecret('tenantId');

  /// Allow Azure AKS Workload Identity to be used for Authentication.
  bool? get useAksWorkloadIdentity {
    final raw = _raw('useAksWorkloadIdentity');
    return (raw).toBool();
  }

  bool get useAksWorkloadIdentityIsSecret =>
      _isSecret('useAksWorkloadIdentity');

  /// Allow Azure CLI to be used for Authentication.
  bool? get useCli {
    final raw = _raw('useCli');
    return (raw).toBool();
  }

  bool get useCliIsSecret => _isSecret('useCli');

  /// Allow Managed Service Identity to be used for Authentication.
  bool? get useMsi {
    final raw = _raw('useMsi');
    return (raw).toBool();
  }

  bool get useMsiIsSecret => _isSecret('useMsi');

  /// Allow OpenID Connect to be used for authentication
  bool? get useOidc {
    final raw = _raw('useOidc');
    return (raw).toBool();
  }

  bool get useOidcIsSecret => _isSecret('useOidc');
}

final config = AzureConfig();
