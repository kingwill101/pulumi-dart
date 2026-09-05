// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_standard_connection_string.dart';
import 'get_standard_identity.dart';
import 'get_standard_site_config.dart';
import 'get_standard_site_credential.dart';

/// Result data returned by getStandard.
class GetStandardResult {
  /// The ID of the App Service Plan.
  final String? appServicePlanId;
  /// A map of key-value pairs for [App Settings](https://docs.microsoft.com/azure/azure-functions/functions-app-settings) and custom values.
  final Map<String, String>? appSettings;
  /// Controls the allowed range for bundle versions.
  final String? bundleVersion;
  /// Should the Logic App send session affinity cookies, which route client requests in the same session to the same instance.
  final bool? clientAffinityEnabled;
  /// The mode of the Logic App's client certificates requirement for incoming requests.
  final String? clientCertificateMode;
  /// A `connectionString` block as defined below.
  final List<GetStandardConnectionString>? connectionStrings;
  /// The custom domain verification of the Logic App.
  final String? customDomainVerificationId;
  /// The default hostname of the Logic App.
  final String? defaultHostname;
  /// Whether the Logic App is enabled.
  final bool? enabled;
  /// Whether the default FTP basic authentication publishing profile is enabled.
  final bool? ftpPublishBasicAuthenticationEnabled;
  /// Whether the Logic App can only be accessed via HTTPS.
  final bool? httpsOnly;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// An `identity` block as defined below.
  final List<GetStandardIdentity>? identities;
  /// The kind of the Logic App.
  final String? kind;
  /// The Azure location where the Logic App Standard exists.
  final String? location;
  /// The name for this IP Restriction.
  final String? name;
  /// The outbound IP addresses of the Logic App.
  final String? outboundIpAddresses;
  /// The possible outbound IP addresses of the Logic App.
  final String? possibleOutboundIpAddresses;
  /// Whether Public Network Access should be enabled or not.
  final String? publicNetworkAccess;
  final String? resourceGroupName;
  /// Whether the default SCM basic authentication publishing profile is enabled.
  final bool? scmPublishBasicAuthenticationEnabled;
  /// A `siteConfig` object as defined below.
  final GetStandardSiteConfig? siteConfig;
  /// A `siteCredential` block as defined below, which contains the site-level credentials used to publish to this Logic App.
  final List<GetStandardSiteCredential>? siteCredentials;
  /// The access key which will be used to access the backend storage account for the Logic App.
  final String? storageAccountAccessKey;
  /// The backend storage account name which will be used by this Logic App (e.g. for Stateful workflows data).
  final String? storageAccountName;
  /// The name of the share used by the logic app.
  final String? storageAccountShareName;
  /// The Key Vault Secret ID, optionally including version, that contains the connection string to the backend storage account for the Logic App.
  final String? storageKeyVaultSecretId;
  /// A mapping of tags assigned to the resource.
  final Map<String, String>? tags;
  /// Whether the logic app should use the bundled extension package.
  final bool? useExtensionBundle;
  /// The runtime version associated with the Logic App.
  final String? version;
  /// The Virtual Network Subnet ID used for this IP Restriction.
  final String? virtualNetworkSubnetId;

  /// Creates a new [GetStandardResult].
  /// [appServicePlanId] The ID of the App Service Plan.
  /// [appSettings] A map of key-value pairs for [App Settings](https://docs.microsoft.com/azure/azure-functions/functions-app-settings) and custom values.
  /// [bundleVersion] Controls the allowed range for bundle versions.
  /// [clientAffinityEnabled] Should the Logic App send session affinity cookies, which route client requests in the same session to the same instance.
  /// [clientCertificateMode] The mode of the Logic App's client certificates requirement for incoming requests.
  /// [connectionStrings] A `connectionString` block as defined below.
  /// [customDomainVerificationId] The custom domain verification of the Logic App.
  /// [defaultHostname] The default hostname of the Logic App.
  /// [enabled] Whether the Logic App is enabled.
  /// [ftpPublishBasicAuthenticationEnabled] Whether the default FTP basic authentication publishing profile is enabled.
  /// [httpsOnly] Whether the Logic App can only be accessed via HTTPS.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] An `identity` block as defined below.
  /// [kind] The kind of the Logic App.
  /// [location] The Azure location where the Logic App Standard exists.
  /// [name] The name for this IP Restriction.
  /// [outboundIpAddresses] The outbound IP addresses of the Logic App.
  /// [possibleOutboundIpAddresses] The possible outbound IP addresses of the Logic App.
  /// [publicNetworkAccess] Whether Public Network Access should be enabled or not.
  /// [resourceGroupName] Optional.
  /// [scmPublishBasicAuthenticationEnabled] Whether the default SCM basic authentication publishing profile is enabled.
  /// [siteConfig] A `siteConfig` object as defined below.
  /// [siteCredentials] A `siteCredential` block as defined below, which contains the site-level credentials used to publish to this Logic App.
  /// [storageAccountAccessKey] The access key which will be used to access the backend storage account for the Logic App.
  /// [storageAccountName] The backend storage account name which will be used by this Logic App (e.g. for Stateful workflows data).
  /// [storageAccountShareName] The name of the share used by the logic app.
  /// [storageKeyVaultSecretId] The Key Vault Secret ID, optionally including version, that contains the connection string to the backend storage account for the Logic App.
  /// [tags] A mapping of tags assigned to the resource.
  /// [useExtensionBundle] Whether the logic app should use the bundled extension package.
  /// [version] The runtime version associated with the Logic App.
  /// [virtualNetworkSubnetId] The Virtual Network Subnet ID used for this IP Restriction.
  const GetStandardResult({
    this.appServicePlanId,
    this.appSettings,
    this.bundleVersion,
    this.clientAffinityEnabled,
    this.clientCertificateMode,
    this.connectionStrings,
    this.customDomainVerificationId,
    this.defaultHostname,
    this.enabled,
    this.ftpPublishBasicAuthenticationEnabled,
    this.httpsOnly,
    this.id,
    this.identities,
    this.kind,
    this.location,
    this.name,
    this.outboundIpAddresses,
    this.possibleOutboundIpAddresses,
    this.publicNetworkAccess,
    this.resourceGroupName,
    this.scmPublishBasicAuthenticationEnabled,
    this.siteConfig,
    this.siteCredentials,
    this.storageAccountAccessKey,
    this.storageAccountName,
    this.storageAccountShareName,
    this.storageKeyVaultSecretId,
    this.tags,
    this.useExtensionBundle,
    this.version,
    this.virtualNetworkSubnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appServicePlanId': ?appServicePlanId,
      'appSettings': ?appSettings,
      'bundleVersion': ?bundleVersion,
      'clientAffinityEnabled': ?clientAffinityEnabled,
      'clientCertificateMode': ?clientCertificateMode,
      'connectionStrings': ?(() { final guardedValue = connectionStrings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetStandardConnectionString, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'customDomainVerificationId': ?customDomainVerificationId,
      'defaultHostname': ?defaultHostname,
      'enabled': ?enabled,
      'ftpPublishBasicAuthenticationEnabled': ?ftpPublishBasicAuthenticationEnabled,
      'httpsOnly': ?httpsOnly,
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetStandardIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'kind': ?kind,
      'location': ?location,
      'name': ?name,
      'outboundIpAddresses': ?outboundIpAddresses,
      'possibleOutboundIpAddresses': ?possibleOutboundIpAddresses,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': ?resourceGroupName,
      'scmPublishBasicAuthenticationEnabled': ?scmPublishBasicAuthenticationEnabled,
      'siteConfig': ?siteConfig?.toMap(),
      'siteCredentials': ?(() { final guardedValue = siteCredentials; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetStandardSiteCredential, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'storageAccountAccessKey': ?storageAccountAccessKey,
      'storageAccountName': ?storageAccountName,
      'storageAccountShareName': ?storageAccountShareName,
      'storageKeyVaultSecretId': ?storageKeyVaultSecretId,
      'tags': ?tags,
      'useExtensionBundle': ?useExtensionBundle,
      'version': ?version,
      'virtualNetworkSubnetId': ?virtualNetworkSubnetId,
    };
  }

  factory GetStandardResult.fromMap(Map<String, dynamic> map) {
    return GetStandardResult(
      appServicePlanId: (() { final guardedValue = map['appServicePlanId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      appSettings: (() { final guardedValue = map['appSettings']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      bundleVersion: (() { final guardedValue = map['bundleVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clientAffinityEnabled: (() { final guardedValue = map['clientAffinityEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      clientCertificateMode: (() { final guardedValue = map['clientCertificateMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectionStrings: (() { final guardedValue = map['connectionStrings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetStandardConnectionString>(guardedValue, (value) => GetStandardConnectionString.fromMap((value as Map).cast<String, dynamic>())); })(),
      customDomainVerificationId: (() { final guardedValue = map['customDomainVerificationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultHostname: (() { final guardedValue = map['defaultHostname']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      ftpPublishBasicAuthenticationEnabled: (() { final guardedValue = map['ftpPublishBasicAuthenticationEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      httpsOnly: (() { final guardedValue = map['httpsOnly']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetStandardIdentity>(guardedValue, (value) => GetStandardIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outboundIpAddresses: (() { final guardedValue = map['outboundIpAddresses']; if (guardedValue == null) return null; return guardedValue as String; })(),
      possibleOutboundIpAddresses: (() { final guardedValue = map['possibleOutboundIpAddresses']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scmPublishBasicAuthenticationEnabled: (() { final guardedValue = map['scmPublishBasicAuthenticationEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      siteConfig: (() { final guardedValue = map['siteConfig']; if (guardedValue == null) return null; return GetStandardSiteConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      siteCredentials: (() { final guardedValue = map['siteCredentials']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetStandardSiteCredential>(guardedValue, (value) => GetStandardSiteCredential.fromMap((value as Map).cast<String, dynamic>())); })(),
      storageAccountAccessKey: (() { final guardedValue = map['storageAccountAccessKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageAccountName: (() { final guardedValue = map['storageAccountName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageAccountShareName: (() { final guardedValue = map['storageAccountShareName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageKeyVaultSecretId: (() { final guardedValue = map['storageKeyVaultSecretId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      useExtensionBundle: (() { final guardedValue = map['useExtensionBundle']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualNetworkSubnetId: (() { final guardedValue = map['virtualNetworkSubnetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
