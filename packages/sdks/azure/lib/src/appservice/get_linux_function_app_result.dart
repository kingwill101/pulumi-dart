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
  final Map<String, String>? appSettings;
  /// A `authSettings` block as defined below.
  final List<GetLinuxFunctionAppAuthSetting>? authSettings;
  /// A `authSettingsV2` block as defined below.
  final List<GetLinuxFunctionAppAuthSettingsV2>? authSettingsV2s;
  /// The current availability state. Possible values are `Normal`, `Limited`, and `DisasterRecoveryMode`.
  final String? availability;
  /// A `backup` block as defined below.
  final List<GetLinuxFunctionAppBackup>? backups;
  /// Is built in logging enabled?
  final bool? builtinLoggingEnabled;
  /// Are Client Certificates enabled?
  final bool? clientCertificateEnabled;
  /// Paths to exclude when using client certificates, separated by ;
  final String? clientCertificateExclusionPaths;
  /// The mode of the Function App's client certificates requirement for incoming requests.
  final String? clientCertificateMode;
  /// A `connectionString` blocks as defined below.
  final List<GetLinuxFunctionAppConnectionString>? connectionStrings;
  /// Are the settings for linking the Function App to storage suppressed?
  final bool? contentShareForceDisabled;
  /// The identifier used by App Service to perform domain ownership verification via DNS TXT record.
  final String? customDomainVerificationId;
  /// The amount of memory in gigabyte-seconds that your application is allowed to consume per day.
  final int? dailyMemoryTimeQuota;
  /// The default hostname of the Linux Function App.
  final String? defaultHostname;
  /// Is this backup job enabled?
  final bool? enabled;
  /// Are the default FTP Basic Authentication publishing credentials enabled.
  final bool? ftpPublishBasicAuthenticationEnabled;
  /// The runtime version associated with the Function App.
  final String? functionsExtensionVersion;
  /// The ID of the App Service Environment used by Function App.
  final String? hostingEnvironmentId;
  /// Can the Function App only be accessed via HTTPS?
  final bool? httpsOnly;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A `identity` block as defined below.
  final List<GetLinuxFunctionAppIdentity>? identities;
  /// The Kind value for this Linux Function App.
  final String? kind;
  /// The Azure Region where the Linux Function App exists.
  final String? location;
  /// The Site Credentials Username used for publishing.
  final String? name;
  /// A list of outbound IP addresses. For example `["52.23.25.3", "52.143.43.12"]`
  final List<String>? outboundIpAddressLists;
  /// A comma separated list of outbound IP addresses as a string. For example `52.23.25.3,52.143.43.12`.
  final String? outboundIpAddresses;
  /// A list of possible outbound IP addresses, not all of which are necessarily in use. This is a superset of `outboundIpAddressList`. For example `["52.23.25.3", "52.143.43.12"]`.
  final List<String>? possibleOutboundIpAddressLists;
  /// A comma separated list of possible outbound IP addresses as a string. For example `52.23.25.3,52.143.43.12,52.143.43.17`. This is a superset of `outboundIpAddresses`.
  final String? possibleOutboundIpAddresses;
  /// Is Public Network Access enabled for this Linux Function App.
  final bool? publicNetworkAccessEnabled;
  final String? resourceGroupName;
  /// The ID of the App Service Plan within which this Function App has been created.
  final String? servicePlanId;
  /// A `siteConfig` block as defined below.
  final List<GetLinuxFunctionAppSiteConfig>? siteConfigs;
  /// A `siteCredential` block as defined below.
  final List<GetLinuxFunctionAppSiteCredential>? siteCredentials;
  /// A `stickySettings` block as defined below.
  final List<GetLinuxFunctionAppStickySetting>? stickySettings;
  /// The access key used to access the backend storage account for the Function App.
  final String? storageAccountAccessKey;
  /// The backend storage account name used by this Function App.
  final String? storageAccountName;
  /// The Key Vault Secret ID, including version, that contains the Connection String to connect to the storage account for this Function App.
  final String? storageKeyVaultSecretId;
  /// Does the Function App use Managed Identity to access the storage account?
  final bool? storageUsesManagedIdentity;
  /// A mapping of tags which are assigned to the Linux Function App.
  final Map<String, String>? tags;
  /// The current usage state. Possible values are `Normal` and `Exceeded`.
  final String? usage;
  /// Whether backup and restore operations over the linked virtual network are enabled.
  final bool? virtualNetworkBackupRestoreEnabled;
  /// The Virtual Network Subnet ID used for this IP Restriction.
  final String? virtualNetworkSubnetId;
  /// Are the default WebDeploy Basic Authentication publishing credentials enabled.
  final bool? webdeployPublishBasicAuthenticationEnabled;

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
  /// [resourceGroupName] Optional.
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
    this.appSettings,
    this.authSettings,
    this.authSettingsV2s,
    this.availability,
    this.backups,
    this.builtinLoggingEnabled,
    this.clientCertificateEnabled,
    this.clientCertificateExclusionPaths,
    this.clientCertificateMode,
    this.connectionStrings,
    this.contentShareForceDisabled,
    this.customDomainVerificationId,
    this.dailyMemoryTimeQuota,
    this.defaultHostname,
    this.enabled,
    this.ftpPublishBasicAuthenticationEnabled,
    this.functionsExtensionVersion,
    this.hostingEnvironmentId,
    this.httpsOnly,
    this.id,
    this.identities,
    this.kind,
    this.location,
    this.name,
    this.outboundIpAddressLists,
    this.outboundIpAddresses,
    this.possibleOutboundIpAddressLists,
    this.possibleOutboundIpAddresses,
    this.publicNetworkAccessEnabled,
    this.resourceGroupName,
    this.servicePlanId,
    this.siteConfigs,
    this.siteCredentials,
    this.stickySettings,
    this.storageAccountAccessKey,
    this.storageAccountName,
    this.storageKeyVaultSecretId,
    this.storageUsesManagedIdentity,
    this.tags,
    this.usage,
    this.virtualNetworkBackupRestoreEnabled,
    this.virtualNetworkSubnetId,
    this.webdeployPublishBasicAuthenticationEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appSettings': ?appSettings,
      'authSettings': ?(() { final guardedValue = authSettings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLinuxFunctionAppAuthSetting, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'authSettingsV2s': ?(() { final guardedValue = authSettingsV2s; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLinuxFunctionAppAuthSettingsV2, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'availability': ?availability,
      'backups': ?(() { final guardedValue = backups; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLinuxFunctionAppBackup, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'builtinLoggingEnabled': ?builtinLoggingEnabled,
      'clientCertificateEnabled': ?clientCertificateEnabled,
      'clientCertificateExclusionPaths': ?clientCertificateExclusionPaths,
      'clientCertificateMode': ?clientCertificateMode,
      'connectionStrings': ?(() { final guardedValue = connectionStrings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLinuxFunctionAppConnectionString, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'contentShareForceDisabled': ?contentShareForceDisabled,
      'customDomainVerificationId': ?customDomainVerificationId,
      'dailyMemoryTimeQuota': ?dailyMemoryTimeQuota,
      'defaultHostname': ?defaultHostname,
      'enabled': ?enabled,
      'ftpPublishBasicAuthenticationEnabled': ?ftpPublishBasicAuthenticationEnabled,
      'functionsExtensionVersion': ?functionsExtensionVersion,
      'hostingEnvironmentId': ?hostingEnvironmentId,
      'httpsOnly': ?httpsOnly,
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLinuxFunctionAppIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'kind': ?kind,
      'location': ?location,
      'name': ?name,
      'outboundIpAddressLists': ?outboundIpAddressLists,
      'outboundIpAddresses': ?outboundIpAddresses,
      'possibleOutboundIpAddressLists': ?possibleOutboundIpAddressLists,
      'possibleOutboundIpAddresses': ?possibleOutboundIpAddresses,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': ?resourceGroupName,
      'servicePlanId': ?servicePlanId,
      'siteConfigs': ?(() { final guardedValue = siteConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLinuxFunctionAppSiteConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'siteCredentials': ?(() { final guardedValue = siteCredentials; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLinuxFunctionAppSiteCredential, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'stickySettings': ?(() { final guardedValue = stickySettings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLinuxFunctionAppStickySetting, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'storageAccountAccessKey': ?storageAccountAccessKey,
      'storageAccountName': ?storageAccountName,
      'storageKeyVaultSecretId': ?storageKeyVaultSecretId,
      'storageUsesManagedIdentity': ?storageUsesManagedIdentity,
      'tags': ?tags,
      'usage': ?usage,
      'virtualNetworkBackupRestoreEnabled': ?virtualNetworkBackupRestoreEnabled,
      'virtualNetworkSubnetId': ?virtualNetworkSubnetId,
      'webdeployPublishBasicAuthenticationEnabled': ?webdeployPublishBasicAuthenticationEnabled,
    };
  }

  factory GetLinuxFunctionAppResult.fromMap(Map<String, dynamic> map) {
    return GetLinuxFunctionAppResult(
      appSettings: (() { final guardedValue = map['appSettings']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      authSettings: (() { final guardedValue = map['authSettings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLinuxFunctionAppAuthSetting>(guardedValue, (value) => GetLinuxFunctionAppAuthSetting.fromMap((value as Map).cast<String, dynamic>())); })(),
      authSettingsV2s: (() { final guardedValue = map['authSettingsV2s']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLinuxFunctionAppAuthSettingsV2>(guardedValue, (value) => GetLinuxFunctionAppAuthSettingsV2.fromMap((value as Map).cast<String, dynamic>())); })(),
      availability: (() { final guardedValue = map['availability']; if (guardedValue == null) return null; return guardedValue as String; })(),
      backups: (() { final guardedValue = map['backups']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLinuxFunctionAppBackup>(guardedValue, (value) => GetLinuxFunctionAppBackup.fromMap((value as Map).cast<String, dynamic>())); })(),
      builtinLoggingEnabled: (() { final guardedValue = map['builtinLoggingEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      clientCertificateEnabled: (() { final guardedValue = map['clientCertificateEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      clientCertificateExclusionPaths: (() { final guardedValue = map['clientCertificateExclusionPaths']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clientCertificateMode: (() { final guardedValue = map['clientCertificateMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectionStrings: (() { final guardedValue = map['connectionStrings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLinuxFunctionAppConnectionString>(guardedValue, (value) => GetLinuxFunctionAppConnectionString.fromMap((value as Map).cast<String, dynamic>())); })(),
      contentShareForceDisabled: (() { final guardedValue = map['contentShareForceDisabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      customDomainVerificationId: (() { final guardedValue = map['customDomainVerificationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dailyMemoryTimeQuota: (() { final guardedValue = map['dailyMemoryTimeQuota']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      defaultHostname: (() { final guardedValue = map['defaultHostname']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      ftpPublishBasicAuthenticationEnabled: (() { final guardedValue = map['ftpPublishBasicAuthenticationEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      functionsExtensionVersion: (() { final guardedValue = map['functionsExtensionVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostingEnvironmentId: (() { final guardedValue = map['hostingEnvironmentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      httpsOnly: (() { final guardedValue = map['httpsOnly']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLinuxFunctionAppIdentity>(guardedValue, (value) => GetLinuxFunctionAppIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outboundIpAddressLists: (() { final guardedValue = map['outboundIpAddressLists']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      outboundIpAddresses: (() { final guardedValue = map['outboundIpAddresses']; if (guardedValue == null) return null; return guardedValue as String; })(),
      possibleOutboundIpAddressLists: (() { final guardedValue = map['possibleOutboundIpAddressLists']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      possibleOutboundIpAddresses: (() { final guardedValue = map['possibleOutboundIpAddresses']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicNetworkAccessEnabled: (() { final guardedValue = map['publicNetworkAccessEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      servicePlanId: (() { final guardedValue = map['servicePlanId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      siteConfigs: (() { final guardedValue = map['siteConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLinuxFunctionAppSiteConfig>(guardedValue, (value) => GetLinuxFunctionAppSiteConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      siteCredentials: (() { final guardedValue = map['siteCredentials']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLinuxFunctionAppSiteCredential>(guardedValue, (value) => GetLinuxFunctionAppSiteCredential.fromMap((value as Map).cast<String, dynamic>())); })(),
      stickySettings: (() { final guardedValue = map['stickySettings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLinuxFunctionAppStickySetting>(guardedValue, (value) => GetLinuxFunctionAppStickySetting.fromMap((value as Map).cast<String, dynamic>())); })(),
      storageAccountAccessKey: (() { final guardedValue = map['storageAccountAccessKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageAccountName: (() { final guardedValue = map['storageAccountName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageKeyVaultSecretId: (() { final guardedValue = map['storageKeyVaultSecretId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageUsesManagedIdentity: (() { final guardedValue = map['storageUsesManagedIdentity']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      usage: (() { final guardedValue = map['usage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualNetworkBackupRestoreEnabled: (() { final guardedValue = map['virtualNetworkBackupRestoreEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      virtualNetworkSubnetId: (() { final guardedValue = map['virtualNetworkSubnetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      webdeployPublishBasicAuthenticationEnabled: (() { final guardedValue = map['webdeployPublishBasicAuthenticationEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
