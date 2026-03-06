// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_providers_provider_args_doc}
/// The set of arguments for Provider.
/// {@endtemplate}
/// {@macro pulumi_providers_provider_args_doc}
class ProviderArgs {
  /// Any additional Tenant IDs which should be used for authentication.
  final pulumi.Input<List<String>>? auxiliaryTenantIds;
  /// The password associated with the Client Certificate. For use when authenticating as a Service Principal using a Client Certificate
  final pulumi.Input<String>? clientCertificatePassword;
  /// The path to the Client Certificate associated with the Service Principal for use when authenticating as a Service Principal using a Client Certificate.
  final pulumi.Input<String>? clientCertificatePath;
  /// The Client ID which should be used.
  final pulumi.Input<String>? clientId;
  /// The Client Secret which should be used. For use When authenticating as a Service Principal using a Client Secret.
  final pulumi.Input<String>? clientSecret;
  /// Determines whether or not instance discovery is performed when attempting to authenticate. Setting this to true will completely disable both instance discovery and authority validation. This functionality is intended for use in scenarios where the metadata endpoint cannot be reached, such as in private clouds or Azure Stack.
  final pulumi.Input<bool>? disableInstanceDiscovery;
  /// This will disable the Pulumi Partner ID which is used if a custom `partnerId` isn't specified.
  final pulumi.Input<bool>? disablePulumiPartnerId;
  /// The Cloud Environment which should be used. Possible values are public, usgovernment, and china. Defaults to public. Not used when metadataHost is specified or when ARM_METADATA_HOSTNAME is set.
  final pulumi.Input<String>? environment;
  /// The location to use. ResourceGroups will consult this property for a default location, if one was not supplied explicitly when defining the resource.
  final pulumi.Input<String>? location;
  /// The Hostname of the Azure Metadata Service.
  final pulumi.Input<String>? metadataHost;
  /// The path to a custom endpoint for Managed Service Identity - in most circumstances this should be detected automatically.
  final pulumi.Input<String>? msiEndpoint;
  /// Your cloud service or provider’s bearer token to exchange for an OIDC ID token.
  final pulumi.Input<String>? oidcRequestToken;
  /// The URL to initiate the `oidcRequestToken` OIDC token exchange.
  final pulumi.Input<String>? oidcRequestUrl;
  /// The OIDC token to exchange for an Azure token.
  final pulumi.Input<String>? oidcToken;
  /// A GUID/UUID that is registered with Microsoft to facilitate partner resource usage attribution.
  final pulumi.Input<String>? partnerId;
  /// The Subscription ID which should be used.
  final pulumi.Input<String>? subscriptionId;
  /// The Tenant ID which should be used.
  final pulumi.Input<String>? tenantId;
  /// Use the default credential chain of the Azure SDK (see https://learn.microsoft.com/en-us/azure/developer/go/sdk/authentication/credential-chains#defaultazurecredential-overview).
  final pulumi.Input<bool>? useDefaultAzureCredential;
  /// Allow Managed Service Identity to be used for Authentication.
  final pulumi.Input<bool>? useMsi;
  /// Allow OpenID Connect (OIDC) to be used for Authentication.
  final pulumi.Input<bool>? useOidc;

  /// Creates a new [ProviderArgs].
  /// [auxiliaryTenantIds] Any additional Tenant IDs which should be used for authentication.
  /// [clientCertificatePassword] The password associated with the Client Certificate. For use when authenticating as a Service Principal using a Client Certificate
  /// [clientCertificatePath] The path to the Client Certificate associated with the Service Principal for use when authenticating as a Service Principal using a Client Certificate.
  /// [clientId] The Client ID which should be used.
  /// [clientSecret] The Client Secret which should be used. For use When authenticating as a Service Principal using a Client Secret.
  /// [disableInstanceDiscovery] Determines whether or not instance discovery is performed when attempting to authenticate. Setting this to true will completely disable both instance discovery and authority validation. This functionality is intended for use in scenarios where the metadata endpoint cannot be reached, such as in private clouds or Azure Stack.
  /// [disablePulumiPartnerId] This will disable the Pulumi Partner ID which is used if a custom `partnerId` isn't specified.
  /// [environment] The Cloud Environment which should be used. Possible values are public, usgovernment, and china. Defaults to public. Not used when metadataHost is specified or when ARM_METADATA_HOSTNAME is set.
  /// [location] The location to use. ResourceGroups will consult this property for a default location, if one was not supplied explicitly when defining the resource.
  /// [metadataHost] The Hostname of the Azure Metadata Service.
  /// [msiEndpoint] The path to a custom endpoint for Managed Service Identity - in most circumstances this should be detected automatically.
  /// [oidcRequestToken] Your cloud service or provider’s bearer token to exchange for an OIDC ID token.
  /// [oidcRequestUrl] The URL to initiate the `oidcRequestToken` OIDC token exchange.
  /// [oidcToken] The OIDC token to exchange for an Azure token.
  /// [partnerId] A GUID/UUID that is registered with Microsoft to facilitate partner resource usage attribution.
  /// [subscriptionId] The Subscription ID which should be used.
  /// [tenantId] The Tenant ID which should be used.
  /// [useDefaultAzureCredential] Use the default credential chain of the Azure SDK (see https://learn.microsoft.com/en-us/azure/developer/go/sdk/authentication/credential-chains#defaultazurecredential-overview).
  /// [useMsi] Allow Managed Service Identity to be used for Authentication.
  /// [useOidc] Allow OpenID Connect (OIDC) to be used for Authentication.
  const ProviderArgs({
    this.auxiliaryTenantIds,
    this.clientCertificatePassword,
    this.clientCertificatePath,
    this.clientId,
    this.clientSecret,
    this.disableInstanceDiscovery,
    this.disablePulumiPartnerId,
    this.environment,
    this.location,
    this.metadataHost,
    this.msiEndpoint,
    this.oidcRequestToken,
    this.oidcRequestUrl,
    this.oidcToken,
    this.partnerId,
    this.subscriptionId,
    this.tenantId,
    this.useDefaultAzureCredential,
    this.useMsi,
    this.useOidc,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auxiliaryTenantIds': ?auxiliaryTenantIds,
      'clientCertificatePassword': ?clientCertificatePassword,
      'clientCertificatePath': ?clientCertificatePath,
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'disableInstanceDiscovery': ?disableInstanceDiscovery,
      'disablePulumiPartnerId': ?disablePulumiPartnerId,
      'environment': ?environment,
      'location': ?location,
      'metadataHost': ?metadataHost,
      'msiEndpoint': ?msiEndpoint,
      'oidcRequestToken': ?oidcRequestToken,
      'oidcRequestUrl': ?oidcRequestUrl,
      'oidcToken': ?oidcToken,
      'partnerId': ?partnerId,
      'subscriptionId': ?subscriptionId,
      'tenantId': ?tenantId,
      'useDefaultAzureCredential': ?useDefaultAzureCredential,
      'useMsi': ?useMsi,
      'useOidc': ?useOidc,
    };
  }

  factory ProviderArgs.fromMap(Map<String, dynamic> map) {
    return ProviderArgs(
      auxiliaryTenantIds: (() { final guardedValue = map['auxiliaryTenantIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      clientCertificatePassword: (() { final guardedValue = map['clientCertificatePassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientCertificatePath: (() { final guardedValue = map['clientCertificatePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disableInstanceDiscovery: (() { final guardedValue = map['disableInstanceDiscovery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disablePulumiPartnerId: (() { final guardedValue = map['disablePulumiPartnerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadataHost: (() { final guardedValue = map['metadataHost']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      msiEndpoint: (() { final guardedValue = map['msiEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oidcRequestToken: (() { final guardedValue = map['oidcRequestToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oidcRequestUrl: (() { final guardedValue = map['oidcRequestUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oidcToken: (() { final guardedValue = map['oidcToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partnerId: (() { final guardedValue = map['partnerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useDefaultAzureCredential: (() { final guardedValue = map['useDefaultAzureCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      useMsi: (() { final guardedValue = map['useMsi']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      useOidc: (() { final guardedValue = map['useOidc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

