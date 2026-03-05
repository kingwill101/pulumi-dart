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
    this.adoPipelineServiceConnectionId,
    this.clientCertificate,
    this.clientCertificatePassword,
    this.clientCertificatePath,
    this.clientId,
    this.clientIdFilePath,
    this.clientSecret,
    this.clientSecretFilePath,
    this.disableTerraformPartnerId,
    this.environment,
    this.metadataHost,
    this.msiEndpoint,
    this.oidcRequestToken,
    this.oidcRequestUrl,
    this.oidcToken,
    this.oidcTokenFilePath,
    this.partnerId,
    this.tenantId,
    this.useAksWorkloadIdentity,
    this.useCli,
    this.useMsi,
    this.useOidc,
  });

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
      adoPipelineServiceConnectionId: (() { final guardedValue = map['adoPipelineServiceConnectionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientCertificate: (() { final guardedValue = map['clientCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientCertificatePassword: (() { final guardedValue = map['clientCertificatePassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientCertificatePath: (() { final guardedValue = map['clientCertificatePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientIdFilePath: (() { final guardedValue = map['clientIdFilePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecretFilePath: (() { final guardedValue = map['clientSecretFilePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disableTerraformPartnerId: (() { final guardedValue = map['disableTerraformPartnerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadataHost: (() { final guardedValue = map['metadataHost']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      msiEndpoint: (() { final guardedValue = map['msiEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oidcRequestToken: (() { final guardedValue = map['oidcRequestToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oidcRequestUrl: (() { final guardedValue = map['oidcRequestUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oidcToken: (() { final guardedValue = map['oidcToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oidcTokenFilePath: (() { final guardedValue = map['oidcTokenFilePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partnerId: (() { final guardedValue = map['partnerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useAksWorkloadIdentity: (() { final guardedValue = map['useAksWorkloadIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      useCli: (() { final guardedValue = map['useCli']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      useMsi: (() { final guardedValue = map['useMsi']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      useOidc: (() { final guardedValue = map['useOidc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

