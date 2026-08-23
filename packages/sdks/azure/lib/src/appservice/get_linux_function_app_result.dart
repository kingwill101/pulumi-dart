// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_linux_function_app_auth_setting.dart';
import 'get_linux_function_app_auth_settings_v2.dart';
import 'get_linux_function_app_backup.dart';
import 'get_linux_function_app_connection_string.dart';
import 'get_linux_function_app_identity.dart';
import 'get_linux_function_app_site_config.dart';
import 'get_linux_function_app_site_credential.dart';
import 'get_linux_function_app_sticky_setting.dart';

/// Result data returned by getLinuxFunctionApp.
class GetLinuxFunctionAppResult {
  /// A map of key-value pairs for [App Settings](https://docs.microsoft.com/azure/azure-functions/functions-app-settings) and custom values.
  final Map<String, String> appSettings;
  /// A `authSettings` block as defined below.
  final List<GetLinuxFunctionAppAuthSetting> authSettings;
  /// A `authSettingsV2` block as defined below.
  final List<GetLinuxFunctionAppAuthSettingsV2> authSettingsV2s;
  /// The current availability state. Possible values are `Normal`, `Limited`, and `DisasterRecoveryMode`.
  final String availability;
  /// A `backup` block as defined below.
  final List<GetLinuxFunctionAppBackup> backups;
  /// Is built in logging enabled?
  final bool builtinLoggingEnabled;
  /// Are Client Certificates enabled?
  final bool clientCertificateEnabled;
  /// Paths to exclude when using client certificates, separated by ;
  final String clientCertificateExclusionPaths;
  /// The mode of the Function App's client certificates requirement for incoming requests.
  final String clientCertificateMode;
  /// A `connectionString` blocks as defined below.
  final List<GetLinuxFunctionAppConnectionString> connectionStrings;
  /// Are the settings for linking the Function App to storage suppressed?
  final bool contentShareForceDisabled;
  /// The identifier used by App Service to perform domain ownership verification via DNS TXT record.
  final String customDomainVerificationId;
  /// The amount of memory in gigabyte-seconds that your application is allowed to consume per day.
  final int dailyMemoryTimeQuota;
  /// The default hostname of the Linux Function App.
  final String defaultHostname;
  /// Is this backup job enabled?
  final bool enabled;
  /// Are the default FTP Basic Authentication publishing credentials enabled.
  final bool ftpPublishBasicAuthenticationEnabled;
  /// The runtime version associated with the Function App.
  final String functionsExtensionVersion;
  /// The ID of the App Service Environment used by Function App.
  final String hostingEnvironmentId;
  /// Can the Function App only be accessed via HTTPS?
  final bool httpsOnly;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A `identity` block as defined below.
  final List<GetLinuxFunctionAppIdentity> identities;
  /// The Kind value for this Linux Function App.
  final String kind;
  /// The Azure Region where the Linux Function App exists.
  final String location;
  /// The Site Credentials Username used for publishing.
  final String name;
  /// A list of outbound IP addresses. For example `["52.23.25.3", "52.143.43.12"]`
  final List<String> outboundIpAddressLists;
  /// A comma separated list of outbound IP addresses as a string. For example `52.23.25.3,52.143.43.12`.
  final String outboundIpAddresses;
  /// A list of possible outbound IP addresses, not all of which are necessarily in use. This is a superset of `outboundIpAddressList`. For example `["52.23.25.3", "52.143.43.12"]`.
  final List<String> possibleOutboundIpAddressLists;
  /// A comma separated list of possible outbound IP addresses as a string. For example `52.23.25.3,52.143.43.12,52.143.43.17`. This is a superset of `outboundIpAddresses`.
  final String possibleOutboundIpAddresses;
  /// Is Public Network Access enabled for this Linux Function App.
  final bool publicNetworkAccessEnabled;
  final String resourceGroupName;
  /// The ID of the App Service Plan within which this Function App has been created.
  final String servicePlanId;
  /// A `siteConfig` block as defined below.
  final List<GetLinuxFunctionAppSiteConfig> siteConfigs;
  /// A `siteCredential` block as defined below.
  final List<GetLinuxFunctionAppSiteCredential> siteCredentials;
  /// A `stickySettings` block as defined below.
  final List<GetLinuxFunctionAppStickySetting> stickySettings;
  /// The access key used to access the backend storage account for the Function App.
  final String storageAccountAccessKey;
  /// The backend storage account name used by this Function App.
  final String storageAccountName;
  /// The Key Vault Secret ID, including version, that contains the Connection String to connect to the storage account for this Function App.
  final String storageKeyVaultSecretId;
  /// Does the Function App use Managed Identity to access the storage account?
  final bool storageUsesManagedIdentity;
  /// A mapping of tags which are assigned to the Linux Function App.
  final Map<String, String> tags;
  /// The current usage state. Possible values are `Normal` and `Exceeded`.
  final String usage;
  /// Whether backup and restore operations over the linked virtual network are enabled.
  final bool virtualNetworkBackupRestoreEnabled;
  /// The Virtual Network Subnet ID used for this IP Restriction.
  final String virtualNetworkSubnetId;
  /// Are the default WebDeploy Basic Authentication publishing credentials enabled.
  final bool webdeployPublishBasicAuthenticationEnabled;

  /// Creates a new [GetLinuxFunctionAppResult].
  /// [appSettings] A map of key-value pairs for [App Settings](https://docs.microsoft.com/azure/azure-functions/functions-app-settings) and custom values.
  /// [authSettings] A `authSettings` block as defined below.
  /// [authSettingsV2s] A `authSettingsV2` block as defined below.
  /// [availability] The current availability state. Possible values are `Normal`, `Limited`, and `DisasterRecoveryMode`.
  /// [backups] A `backup` block as defined below.
  /// [builtinLoggingEnabled] Is built in logging enabled?
  /// [clientCertificateEnabled] Are Client Certificates enabled?
  /// [clientCertificateExclusionPaths] Paths to exclude when using client certificates, separated by ;
  /// [clientCertificateMode] The mode of the Function App's client certificates requirement for incoming requests.
  /// [connectionStrings] A `connectionString` blocks as defined below.
  /// [contentShareForceDisabled] Are the settings for linking the Function App to storage suppressed?
  /// [customDomainVerificationId] The identifier used by App Service to perform domain ownership verification via DNS TXT record.
  /// [dailyMemoryTimeQuota] The amount of memory in gigabyte-seconds that your application is allowed to consume per day.
  /// [defaultHostname] The default hostname of the Linux Function App.
  /// [enabled] Is this backup job enabled?
  /// [ftpPublishBasicAuthenticationEnabled] Are the default FTP Basic Authentication publishing credentials enabled.
  /// [functionsExtensionVersion] The runtime version associated with the Function App.
  /// [hostingEnvironmentId] The ID of the App Service Environment used by Function App.
  /// [httpsOnly] Can the Function App only be accessed via HTTPS?
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] A `identity` block as defined below.
  /// [kind] The Kind value for this Linux Function App.
  /// [location] The Azure Region where the Linux Function App exists.
  /// [name] The Site Credentials Username used for publishing.
  /// [outboundIpAddressLists] A list of outbound IP addresses. For example `["52.23.25.3", "52.143.43.12"]`
  /// [outboundIpAddresses] A comma separated list of outbound IP addresses as a string. For example `52.23.25.3,52.143.43.12`.
  /// [possibleOutboundIpAddressLists] A list of possible outbound IP addresses, not all of which are necessarily in use. This is a superset of `outboundIpAddressList`. For example `["52.23.25.3", "52.143.43.12"]`.
  /// [possibleOutboundIpAddresses] A comma separated list of possible outbound IP addresses as a string. For example `52.23.25.3,52.143.43.12,52.143.43.17`. This is a superset of `outboundIpAddresses`.
  /// [publicNetworkAccessEnabled] Is Public Network Access enabled for this Linux Function App.
  /// [resourceGroupName] Required.
  /// [servicePlanId] The ID of the App Service Plan within which this Function App has been created.
  /// [siteConfigs] A `siteConfig` block as defined below.
  /// [siteCredentials] A `siteCredential` block as defined below.
  /// [stickySettings] A `stickySettings` block as defined below.
  /// [storageAccountAccessKey] The access key used to access the backend storage account for the Function App.
  /// [storageAccountName] The backend storage account name used by this Function App.
  /// [storageKeyVaultSecretId] The Key Vault Secret ID, including version, that contains the Connection String to connect to the storage account for this Function App.
  /// [storageUsesManagedIdentity] Does the Function App use Managed Identity to access the storage account?
  /// [tags] A mapping of tags which are assigned to the Linux Function App.
  /// [usage] The current usage state. Possible values are `Normal` and `Exceeded`.
  /// [virtualNetworkBackupRestoreEnabled] Whether backup and restore operations over the linked virtual network are enabled.
  /// [virtualNetworkSubnetId] The Virtual Network Subnet ID used for this IP Restriction.
  /// [webdeployPublishBasicAuthenticationEnabled] Are the default WebDeploy Basic Authentication publishing credentials enabled.
  const GetLinuxFunctionAppResult({
    required this.appSettings,
    required this.authSettings,
    required this.authSettingsV2s,
    required this.availability,
    required this.backups,
    required this.builtinLoggingEnabled,
    required this.clientCertificateEnabled,
    required this.clientCertificateExclusionPaths,
    required this.clientCertificateMode,
    required this.connectionStrings,
    required this.contentShareForceDisabled,
    required this.customDomainVerificationId,
    required this.dailyMemoryTimeQuota,
    required this.defaultHostname,
    required this.enabled,
    required this.ftpPublishBasicAuthenticationEnabled,
    required this.functionsExtensionVersion,
    required this.hostingEnvironmentId,
    required this.httpsOnly,
    required this.id,
    required this.identities,
    required this.kind,
    required this.location,
    required this.name,
    required this.outboundIpAddressLists,
    required this.outboundIpAddresses,
    required this.possibleOutboundIpAddressLists,
    required this.possibleOutboundIpAddresses,
    required this.publicNetworkAccessEnabled,
    required this.resourceGroupName,
    required this.servicePlanId,
    required this.siteConfigs,
    required this.siteCredentials,
    required this.stickySettings,
    required this.storageAccountAccessKey,
    required this.storageAccountName,
    required this.storageKeyVaultSecretId,
    required this.storageUsesManagedIdentity,
    required this.tags,
    required this.usage,
    required this.virtualNetworkBackupRestoreEnabled,
    required this.virtualNetworkSubnetId,
    required this.webdeployPublishBasicAuthenticationEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appSettings': appSettings,
      'authSettings': pulumi.Input.encodeList<GetLinuxFunctionAppAuthSetting, Map<String, dynamic>>(authSettings, (value) => value.toMap()),
      'authSettingsV2s': pulumi.Input.encodeList<GetLinuxFunctionAppAuthSettingsV2, Map<String, dynamic>>(authSettingsV2s, (value) => value.toMap()),
      'availability': availability,
      'backups': pulumi.Input.encodeList<GetLinuxFunctionAppBackup, Map<String, dynamic>>(backups, (value) => value.toMap()),
      'builtinLoggingEnabled': builtinLoggingEnabled,
      'clientCertificateEnabled': clientCertificateEnabled,
      'clientCertificateExclusionPaths': clientCertificateExclusionPaths,
      'clientCertificateMode': clientCertificateMode,
      'connectionStrings': pulumi.Input.encodeList<GetLinuxFunctionAppConnectionString, Map<String, dynamic>>(connectionStrings, (value) => value.toMap()),
      'contentShareForceDisabled': contentShareForceDisabled,
      'customDomainVerificationId': customDomainVerificationId,
      'dailyMemoryTimeQuota': dailyMemoryTimeQuota,
      'defaultHostname': defaultHostname,
      'enabled': enabled,
      'ftpPublishBasicAuthenticationEnabled': ftpPublishBasicAuthenticationEnabled,
      'functionsExtensionVersion': functionsExtensionVersion,
      'hostingEnvironmentId': hostingEnvironmentId,
      'httpsOnly': httpsOnly,
      'id': id,
      'identities': pulumi.Input.encodeList<GetLinuxFunctionAppIdentity, Map<String, dynamic>>(identities, (value) => value.toMap()),
      'kind': kind,
      'location': location,
      'name': name,
      'outboundIpAddressLists': outboundIpAddressLists,
      'outboundIpAddresses': outboundIpAddresses,
      'possibleOutboundIpAddressLists': possibleOutboundIpAddressLists,
      'possibleOutboundIpAddresses': possibleOutboundIpAddresses,
      'publicNetworkAccessEnabled': publicNetworkAccessEnabled,
      'resourceGroupName': resourceGroupName,
      'servicePlanId': servicePlanId,
      'siteConfigs': pulumi.Input.encodeList<GetLinuxFunctionAppSiteConfig, Map<String, dynamic>>(siteConfigs, (value) => value.toMap()),
      'siteCredentials': pulumi.Input.encodeList<GetLinuxFunctionAppSiteCredential, Map<String, dynamic>>(siteCredentials, (value) => value.toMap()),
      'stickySettings': pulumi.Input.encodeList<GetLinuxFunctionAppStickySetting, Map<String, dynamic>>(stickySettings, (value) => value.toMap()),
      'storageAccountAccessKey': storageAccountAccessKey,
      'storageAccountName': storageAccountName,
      'storageKeyVaultSecretId': storageKeyVaultSecretId,
      'storageUsesManagedIdentity': storageUsesManagedIdentity,
      'tags': tags,
      'usage': usage,
      'virtualNetworkBackupRestoreEnabled': virtualNetworkBackupRestoreEnabled,
      'virtualNetworkSubnetId': virtualNetworkSubnetId,
      'webdeployPublishBasicAuthenticationEnabled': webdeployPublishBasicAuthenticationEnabled,
    };
  }

  factory GetLinuxFunctionAppResult.fromMap(Map<String, dynamic> map) {
    return GetLinuxFunctionAppResult(
      appSettings: (map['appSettings'] as Map).cast<String, String>(),
      authSettings: pulumi.Input.decodeList<GetLinuxFunctionAppAuthSetting>(map['authSettings']!, (value) => GetLinuxFunctionAppAuthSetting.fromMap((value as Map).cast<String, dynamic>())),
      authSettingsV2s: pulumi.Input.decodeList<GetLinuxFunctionAppAuthSettingsV2>(map['authSettingsV2s']!, (value) => GetLinuxFunctionAppAuthSettingsV2.fromMap((value as Map).cast<String, dynamic>())),
      availability: map['availability'] as String,
      backups: pulumi.Input.decodeList<GetLinuxFunctionAppBackup>(map['backups']!, (value) => GetLinuxFunctionAppBackup.fromMap((value as Map).cast<String, dynamic>())),
      builtinLoggingEnabled: map['builtinLoggingEnabled'] as bool,
      clientCertificateEnabled: map['clientCertificateEnabled'] as bool,
      clientCertificateExclusionPaths: map['clientCertificateExclusionPaths'] as String,
      clientCertificateMode: map['clientCertificateMode'] as String,
      connectionStrings: pulumi.Input.decodeList<GetLinuxFunctionAppConnectionString>(map['connectionStrings']!, (value) => GetLinuxFunctionAppConnectionString.fromMap((value as Map).cast<String, dynamic>())),
      contentShareForceDisabled: map['contentShareForceDisabled'] as bool,
      customDomainVerificationId: map['customDomainVerificationId'] as String,
      dailyMemoryTimeQuota: map['dailyMemoryTimeQuota'] as int,
      defaultHostname: map['defaultHostname'] as String,
      enabled: map['enabled'] as bool,
      ftpPublishBasicAuthenticationEnabled: map['ftpPublishBasicAuthenticationEnabled'] as bool,
      functionsExtensionVersion: map['functionsExtensionVersion'] as String,
      hostingEnvironmentId: map['hostingEnvironmentId'] as String,
      httpsOnly: map['httpsOnly'] as bool,
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetLinuxFunctionAppIdentity>(map['identities']!, (value) => GetLinuxFunctionAppIdentity.fromMap((value as Map).cast<String, dynamic>())),
      kind: map['kind'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      outboundIpAddressLists: (map['outboundIpAddressLists'] as List).cast<String>(),
      outboundIpAddresses: map['outboundIpAddresses'] as String,
      possibleOutboundIpAddressLists: (map['possibleOutboundIpAddressLists'] as List).cast<String>(),
      possibleOutboundIpAddresses: map['possibleOutboundIpAddresses'] as String,
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] as bool,
      resourceGroupName: map['resourceGroupName'] as String,
      servicePlanId: map['servicePlanId'] as String,
      siteConfigs: pulumi.Input.decodeList<GetLinuxFunctionAppSiteConfig>(map['siteConfigs']!, (value) => GetLinuxFunctionAppSiteConfig.fromMap((value as Map).cast<String, dynamic>())),
      siteCredentials: pulumi.Input.decodeList<GetLinuxFunctionAppSiteCredential>(map['siteCredentials']!, (value) => GetLinuxFunctionAppSiteCredential.fromMap((value as Map).cast<String, dynamic>())),
      stickySettings: pulumi.Input.decodeList<GetLinuxFunctionAppStickySetting>(map['stickySettings']!, (value) => GetLinuxFunctionAppStickySetting.fromMap((value as Map).cast<String, dynamic>())),
      storageAccountAccessKey: map['storageAccountAccessKey'] as String,
      storageAccountName: map['storageAccountName'] as String,
      storageKeyVaultSecretId: map['storageKeyVaultSecretId'] as String,
      storageUsesManagedIdentity: map['storageUsesManagedIdentity'] as bool,
      tags: (map['tags'] as Map).cast<String, String>(),
      usage: map['usage'] as String,
      virtualNetworkBackupRestoreEnabled: map['virtualNetworkBackupRestoreEnabled'] as bool,
      virtualNetworkSubnetId: map['virtualNetworkSubnetId'] as String,
      webdeployPublishBasicAuthenticationEnabled: map['webdeployPublishBasicAuthenticationEnabled'] as bool,
    );
  }
}
