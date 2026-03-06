// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_standard_connection_string.dart';
import 'get_standard_identity.dart';
import 'get_standard_site_config.dart';
import 'get_standard_site_credential.dart';

/// Result data returned by getStandard.
class GetStandardResult {
  /// The ID of the App Service Plan.
  final String appServicePlanId;
  /// A map of key-value pairs for [App Settings](https://docs.microsoft.com/azure/azure-functions/functions-app-settings) and custom values.
  final Map<String, String> appSettings;
  /// Controls the allowed range for bundle versions.
  final String bundleVersion;
  /// Should the Logic App send session affinity cookies, which route client requests in the same session to the same instance.
  final bool clientAffinityEnabled;
  /// The mode of the Logic App's client certificates requirement for incoming requests.
  final String clientCertificateMode;
  /// A `connection_string` block as defined below.
  final List<GetStandardConnectionString> connectionStrings;
  /// The custom domain verification of the Logic App.
  final String customDomainVerificationId;
  /// The default hostname of the Logic App.
  final String defaultHostname;
  /// Whether the Logic App is enabled.
  final bool enabled;
  /// Whether the default FTP basic authentication publishing profile is enabled.
  final bool ftpPublishBasicAuthenticationEnabled;
  /// Whether the Logic App can only be accessed via HTTPS.
  final bool httpsOnly;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// An `identity` block as defined below.
  final List<GetStandardIdentity> identities;
  /// The kind of the Logic App.
  final String kind;
  /// The Azure location where the Logic App Standard exists.
  final String location;
  /// The name for this IP Restriction.
  final String name;
  /// The outbound IP addresses of the Logic App.
  final String outboundIpAddresses;
  /// The possible outbound IP addresses of the Logic App.
  final String possibleOutboundIpAddresses;
  /// Whether Public Network Access should be enabled or not.
  final String publicNetworkAccess;
  final String resourceGroupName;
  /// Whether the default SCM basic authentication publishing profile is enabled.
  final bool scmPublishBasicAuthenticationEnabled;
  /// A `site_config` object as defined below.
  final GetStandardSiteConfig siteConfig;
  /// A `site_credential` block as defined below, which contains the site-level credentials used to publish to this Logic App.
  final List<GetStandardSiteCredential> siteCredentials;
  /// The access key which will be used to access the backend storage account for the Logic App.
  final String storageAccountAccessKey;
  /// The backend storage account name which will be used by this Logic App (e.g. for Stateful workflows data).
  final String storageAccountName;
  /// The name of the share used by the logic app.
  final String storageAccountShareName;
  /// A mapping of tags assigned to the resource.
  final Map<String, String> tags;
  /// Whether the logic app should use the bundled extension package.
  final bool useExtensionBundle;
  /// The runtime version associated with the Logic App.
  final String version;
  /// The Virtual Network Subnet ID used for this IP Restriction.
  final String virtualNetworkSubnetId;

  /// Creates a new [GetStandardResult].
  /// [appServicePlanId] The ID of the App Service Plan.
  /// [appSettings] A map of key-value pairs for [App Settings](https://docs.microsoft.com/azure/azure-functions/functions-app-settings) and custom values.
  /// [bundleVersion] Controls the allowed range for bundle versions.
  /// [clientAffinityEnabled] Should the Logic App send session affinity cookies, which route client requests in the same session to the same instance.
  /// [clientCertificateMode] The mode of the Logic App's client certificates requirement for incoming requests.
  /// [connectionStrings] A `connection_string` block as defined below.
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
  /// [resourceGroupName] Required.
  /// [scmPublishBasicAuthenticationEnabled] Whether the default SCM basic authentication publishing profile is enabled.
  /// [siteConfig] A `site_config` object as defined below.
  /// [siteCredentials] A `site_credential` block as defined below, which contains the site-level credentials used to publish to this Logic App.
  /// [storageAccountAccessKey] The access key which will be used to access the backend storage account for the Logic App.
  /// [storageAccountName] The backend storage account name which will be used by this Logic App (e.g. for Stateful workflows data).
  /// [storageAccountShareName] The name of the share used by the logic app.
  /// [tags] A mapping of tags assigned to the resource.
  /// [useExtensionBundle] Whether the logic app should use the bundled extension package.
  /// [version] The runtime version associated with the Logic App.
  /// [virtualNetworkSubnetId] The Virtual Network Subnet ID used for this IP Restriction.
  const GetStandardResult({
    required this.appServicePlanId,
    required this.appSettings,
    required this.bundleVersion,
    required this.clientAffinityEnabled,
    required this.clientCertificateMode,
    required this.connectionStrings,
    required this.customDomainVerificationId,
    required this.defaultHostname,
    required this.enabled,
    required this.ftpPublishBasicAuthenticationEnabled,
    required this.httpsOnly,
    required this.id,
    required this.identities,
    required this.kind,
    required this.location,
    required this.name,
    required this.outboundIpAddresses,
    required this.possibleOutboundIpAddresses,
    required this.publicNetworkAccess,
    required this.resourceGroupName,
    required this.scmPublishBasicAuthenticationEnabled,
    required this.siteConfig,
    required this.siteCredentials,
    required this.storageAccountAccessKey,
    required this.storageAccountName,
    required this.storageAccountShareName,
    required this.tags,
    required this.useExtensionBundle,
    required this.version,
    required this.virtualNetworkSubnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appServicePlanId': appServicePlanId,
      'appSettings': appSettings,
      'bundleVersion': bundleVersion,
      'clientAffinityEnabled': clientAffinityEnabled,
      'clientCertificateMode': clientCertificateMode,
      'connectionStrings': pulumi.Input.encodeList<GetStandardConnectionString, Map<String, dynamic>>(connectionStrings, (value) => value.toMap()),
      'customDomainVerificationId': customDomainVerificationId,
      'defaultHostname': defaultHostname,
      'enabled': enabled,
      'ftpPublishBasicAuthenticationEnabled': ftpPublishBasicAuthenticationEnabled,
      'httpsOnly': httpsOnly,
      'id': id,
      'identities': pulumi.Input.encodeList<GetStandardIdentity, Map<String, dynamic>>(identities, (value) => value.toMap()),
      'kind': kind,
      'location': location,
      'name': name,
      'outboundIpAddresses': outboundIpAddresses,
      'possibleOutboundIpAddresses': possibleOutboundIpAddresses,
      'publicNetworkAccess': publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'scmPublishBasicAuthenticationEnabled': scmPublishBasicAuthenticationEnabled,
      'siteConfig': siteConfig.toMap(),
      'siteCredentials': pulumi.Input.encodeList<GetStandardSiteCredential, Map<String, dynamic>>(siteCredentials, (value) => value.toMap()),
      'storageAccountAccessKey': storageAccountAccessKey,
      'storageAccountName': storageAccountName,
      'storageAccountShareName': storageAccountShareName,
      'tags': tags,
      'useExtensionBundle': useExtensionBundle,
      'version': version,
      'virtualNetworkSubnetId': virtualNetworkSubnetId,
    };
  }

  factory GetStandardResult.fromMap(Map<String, dynamic> map) {
    return GetStandardResult(
      appServicePlanId: map['appServicePlanId'] as String,
      appSettings: (map['appSettings'] as Map).cast<String, String>(),
      bundleVersion: map['bundleVersion'] as String,
      clientAffinityEnabled: map['clientAffinityEnabled'] as bool,
      clientCertificateMode: map['clientCertificateMode'] as String,
      connectionStrings: pulumi.Input.decodeList<GetStandardConnectionString>(map['connectionStrings']!, (value) => GetStandardConnectionString.fromMap((value as Map).cast<String, dynamic>())),
      customDomainVerificationId: map['customDomainVerificationId'] as String,
      defaultHostname: map['defaultHostname'] as String,
      enabled: map['enabled'] as bool,
      ftpPublishBasicAuthenticationEnabled: map['ftpPublishBasicAuthenticationEnabled'] as bool,
      httpsOnly: map['httpsOnly'] as bool,
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetStandardIdentity>(map['identities']!, (value) => GetStandardIdentity.fromMap((value as Map).cast<String, dynamic>())),
      kind: map['kind'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      outboundIpAddresses: map['outboundIpAddresses'] as String,
      possibleOutboundIpAddresses: map['possibleOutboundIpAddresses'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      scmPublishBasicAuthenticationEnabled: map['scmPublishBasicAuthenticationEnabled'] as bool,
      siteConfig: GetStandardSiteConfig.fromMap((map['siteConfig']! as Map).cast<String, dynamic>()),
      siteCredentials: pulumi.Input.decodeList<GetStandardSiteCredential>(map['siteCredentials']!, (value) => GetStandardSiteCredential.fromMap((value as Map).cast<String, dynamic>())),
      storageAccountAccessKey: map['storageAccountAccessKey'] as String,
      storageAccountName: map['storageAccountName'] as String,
      storageAccountShareName: map['storageAccountShareName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      useExtensionBundle: map['useExtensionBundle'] as bool,
      version: map['version'] as String,
      virtualNetworkSubnetId: map['virtualNetworkSubnetId'] as String,
    );
  }
}

