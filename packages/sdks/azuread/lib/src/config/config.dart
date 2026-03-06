// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration values for the azuread package.
class AzureadConfig {
  const AzureadConfig();

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

  bool get adoPipelineServiceConnectionIdIsSecret => _isSecret('adoPipelineServiceConnectionId');

  /// Base64 encoded PKCS#12 certificate bundle to use when authenticating as a Service Principal using a Client Certificate
  String? get clientCertificate {
    final raw = _raw('clientCertificate');
    return raw;
  }

  bool get clientCertificateIsSecret => _isSecret('clientCertificate');

  /// The password to decrypt the Client Certificate. For use when authenticating as a Service Principal using a Client Certificate
  String? get clientCertificatePassword {
    final raw = _raw('clientCertificatePassword');
    return raw;
  }

  bool get clientCertificatePasswordIsSecret => _isSecret('clientCertificatePassword');

  /// The path to the Client Certificate associated with the Service Principal for use when authenticating as a Service Principal using a Client Certificate
  String? get clientCertificatePath {
    final raw = _raw('clientCertificatePath');
    return raw;
  }

  bool get clientCertificatePathIsSecret => _isSecret('clientCertificatePath');

  /// The Client ID which should be used for service principal authentication
  String? get clientId {
    final raw = _raw('clientId');
    return raw;
  }

  bool get clientIdIsSecret => _isSecret('clientId');

  /// The path to a file containing the Client ID which should be used for service principal authentication
  String? get clientIdFilePath {
    final raw = _raw('clientIdFilePath');
    return raw;
  }

  bool get clientIdFilePathIsSecret => _isSecret('clientIdFilePath');

  /// The application password to use when authenticating as a Service Principal using a Client Secret
  String? get clientSecret {
    final raw = _raw('clientSecret');
    return raw;
  }

  bool get clientSecretIsSecret => _isSecret('clientSecret');

  /// The path to a file containing the application password to use when authenticating as a Service Principal using a Client Secret
  String? get clientSecretFilePath {
    final raw = _raw('clientSecretFilePath');
    return raw;
  }

  bool get clientSecretFilePathIsSecret => _isSecret('clientSecretFilePath');

  /// Disable the Terraform Partner ID, which is used if a custom `partner_id` isn't specified
  bool? get disableTerraformPartnerId {
    final raw = _raw('disableTerraformPartnerId');
    return (raw).toBool();
  }

  bool get disableTerraformPartnerIdIsSecret => _isSecret('disableTerraformPartnerId');

  /// The cloud environment which should be used. Possible values are: `global` (also `public`), `usgovernmentl4` (also `usgovernment`), `usgovernmentl5` (also `dod`), and `china`. Defaults to `global`. Not used and should not be specified when `metadata_host` is specified.
  String? get environment {
    final raw = _raw('environment');
    return raw;
  }

  String requireEnvironment() {
    final value = environment;
    if (value == null) {
      throw ArgumentError("Missing required config value 'environment'.");
    }
    return value;
  }

  bool get environmentIsSecret => _isSecret('environment');

  /// The Hostname which should be used for the Azure Metadata Service.
  String? get metadataHost {
    final raw = _raw('metadataHost');
    return raw;
  }

  bool get metadataHostIsSecret => _isSecret('metadataHost');

  /// The path to a custom endpoint for Managed Identity - in most circumstances this should be detected automatically
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

  /// The ID token for use when authenticating as a Service Principal using OpenID Connect.
  String? get oidcToken {
    final raw = _raw('oidcToken');
    return raw;
  }

  bool get oidcTokenIsSecret => _isSecret('oidcToken');

  /// The path to a file containing an ID token for use when authenticating as a Service Principal using OpenID Connect.
  String? get oidcTokenFilePath {
    final raw = _raw('oidcTokenFilePath');
    return raw;
  }

  bool get oidcTokenFilePathIsSecret => _isSecret('oidcTokenFilePath');

  /// A GUID/UUID that is registered with Microsoft to facilitate partner resource usage attribution
  String? get partnerId {
    final raw = _raw('partnerId');
    return raw;
  }

  bool get partnerIdIsSecret => _isSecret('partnerId');

  /// The Tenant ID which should be used. Works with all authentication methods except Managed Identity
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

  bool get useAksWorkloadIdentityIsSecret => _isSecret('useAksWorkloadIdentity');

  /// Allow Azure CLI to be used for Authentication
  bool? get useCli {
    final raw = _raw('useCli');
    return (raw).toBool();
  }

  bool get useCliIsSecret => _isSecret('useCli');

  /// Allow Managed Identity to be used for Authentication
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

const config = AzureadConfig();

