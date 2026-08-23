// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_windows_web_app_auth_setting.dart';
import 'get_windows_web_app_auth_settings_v2.dart';
import 'get_windows_web_app_backup.dart';
import 'get_windows_web_app_connection_string.dart';
import 'get_windows_web_app_identity.dart';
import 'get_windows_web_app_log.dart';
import 'get_windows_web_app_site_config.dart';
import 'get_windows_web_app_site_credential.dart';
import 'get_windows_web_app_sticky_setting.dart';
import 'get_windows_web_app_storage_account.dart';

/// Result data returned by getWindowsWebApp.
class GetWindowsWebAppResult {
  /// A map of key-value pairs of App Settings.
  final Map<String, String> appSettings;
  /// A `authSettings` block as defined below.
  final List<GetWindowsWebAppAuthSetting> authSettings;
  /// An `authSettingsV2` block as defined below.
  final List<GetWindowsWebAppAuthSettingsV2> authSettingsV2s;
  /// A `backup` block as defined below.
  final List<GetWindowsWebAppBackup> backups;
  /// Is Client Affinity enabled?
  final bool clientAffinityEnabled;
  /// Are Client Certificates enabled?
  final bool clientCertificateEnabled;
  /// Paths to exclude when using client certificates, separated by ;
  final String clientCertificateExclusionPaths;
  /// The Client Certificate mode.
  final String clientCertificateMode;
  /// A `connectionString` block as defined below.
  final List<GetWindowsWebAppConnectionString> connectionStrings;
  /// The identifier used by App Service to perform domain ownership verification via DNS TXT record.
  final String customDomainVerificationId;
  /// The Default Hostname of the Windows Web App.
  final String defaultHostname;
  /// Is the Backup enabled?
  final bool enabled;
  /// Are the default FTP Basic Authentication publishing credentials enabled.
  final bool ftpPublishBasicAuthenticationEnabled;
  /// The ID of the App Service Environment used by App Service.
  final String hostingEnvironmentId;
  /// Does the Windows Web App require HTTPS connections.
  final bool httpsOnly;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A `identity` block as defined below.
  final List<GetWindowsWebAppIdentity> identities;
  /// The string representation of the Windows Web App Kind.
  final String kind;
  /// The Azure Region where the Windows Web App exists.
  final String location;
  /// A `logs` block as defined below.
  final List<GetWindowsWebAppLog> logs;
  /// The name of this Storage Account.
  final String name;
  /// The list of Outbound IP Addresses for this Windows Web App.
  final List<String> outboundIpAddressLists;
  /// A string representation of the list of Outbound IP Addresses for this Windows Web App.
  final String outboundIpAddresses;
  /// The list of Possible Outbound IP Addresses that could be used by this Windows Web App.
  final List<String> possibleOutboundIpAddressLists;
  /// The string representation of the list of Possible Outbound IP Addresses that could be used by this Windows Web App.
  final String possibleOutboundIpAddresses;
  /// Is Public Network Access enabled for the Windows Web App.
  final bool publicNetworkAccessEnabled;
  final String resourceGroupName;
  /// The ID of the Service Plan in which this Windows Web App resides.
  final String servicePlanId;
  /// A `siteConfig` block as defined below.
  final List<GetWindowsWebAppSiteConfig> siteConfigs;
  /// A `siteCredential` block as defined below.
  final List<GetWindowsWebAppSiteCredential> siteCredentials;
  /// A `stickySettings` block as defined below.
  final List<GetWindowsWebAppStickySetting> stickySettings;
  /// A `storageAccount` block as defined below.
  final List<GetWindowsWebAppStorageAccount> storageAccounts;
  /// A mapping of tags assigned to the Windows Web App.
  final Map<String, String> tags;
  final bool virtualNetworkBackupRestoreEnabled;
  /// The subnet id which the Windows Web App is vNet Integrated with.
  final String virtualNetworkSubnetId;
  /// Are the default WebDeploy Basic Authentication publishing credentials enabled.
  final bool webdeployPublishBasicAuthenticationEnabled;

  /// Creates a new [GetWindowsWebAppResult].
  /// [appSettings] A map of key-value pairs of App Settings.
  /// [authSettings] A `authSettings` block as defined below.
  /// [authSettingsV2s] An `authSettingsV2` block as defined below.
  /// [backups] A `backup` block as defined below.
  /// [clientAffinityEnabled] Is Client Affinity enabled?
  /// [clientCertificateEnabled] Are Client Certificates enabled?
  /// [clientCertificateExclusionPaths] Paths to exclude when using client certificates, separated by ;
  /// [clientCertificateMode] The Client Certificate mode.
  /// [connectionStrings] A `connectionString` block as defined below.
  /// [customDomainVerificationId] The identifier used by App Service to perform domain ownership verification via DNS TXT record.
  /// [defaultHostname] The Default Hostname of the Windows Web App.
  /// [enabled] Is the Backup enabled?
  /// [ftpPublishBasicAuthenticationEnabled] Are the default FTP Basic Authentication publishing credentials enabled.
  /// [hostingEnvironmentId] The ID of the App Service Environment used by App Service.
  /// [httpsOnly] Does the Windows Web App require HTTPS connections.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] A `identity` block as defined below.
  /// [kind] The string representation of the Windows Web App Kind.
  /// [location] The Azure Region where the Windows Web App exists.
  /// [logs] A `logs` block as defined below.
  /// [name] The name of this Storage Account.
  /// [outboundIpAddressLists] The list of Outbound IP Addresses for this Windows Web App.
  /// [outboundIpAddresses] A string representation of the list of Outbound IP Addresses for this Windows Web App.
  /// [possibleOutboundIpAddressLists] The list of Possible Outbound IP Addresses that could be used by this Windows Web App.
  /// [possibleOutboundIpAddresses] The string representation of the list of Possible Outbound IP Addresses that could be used by this Windows Web App.
  /// [publicNetworkAccessEnabled] Is Public Network Access enabled for the Windows Web App.
  /// [resourceGroupName] Required.
  /// [servicePlanId] The ID of the Service Plan in which this Windows Web App resides.
  /// [siteConfigs] A `siteConfig` block as defined below.
  /// [siteCredentials] A `siteCredential` block as defined below.
  /// [stickySettings] A `stickySettings` block as defined below.
  /// [storageAccounts] A `storageAccount` block as defined below.
  /// [tags] A mapping of tags assigned to the Windows Web App.
  /// [virtualNetworkBackupRestoreEnabled] Required.
  /// [virtualNetworkSubnetId] The subnet id which the Windows Web App is vNet Integrated with.
  /// [webdeployPublishBasicAuthenticationEnabled] Are the default WebDeploy Basic Authentication publishing credentials enabled.
  const GetWindowsWebAppResult({
    required this.appSettings,
    required this.authSettings,
    required this.authSettingsV2s,
    required this.backups,
    required this.clientAffinityEnabled,
    required this.clientCertificateEnabled,
    required this.clientCertificateExclusionPaths,
    required this.clientCertificateMode,
    required this.connectionStrings,
    required this.customDomainVerificationId,
    required this.defaultHostname,
    required this.enabled,
    required this.ftpPublishBasicAuthenticationEnabled,
    required this.hostingEnvironmentId,
    required this.httpsOnly,
    required this.id,
    required this.identities,
    required this.kind,
    required this.location,
    required this.logs,
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
    required this.storageAccounts,
    required this.tags,
    required this.virtualNetworkBackupRestoreEnabled,
    required this.virtualNetworkSubnetId,
    required this.webdeployPublishBasicAuthenticationEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appSettings': appSettings,
      'authSettings': pulumi.Input.encodeList<GetWindowsWebAppAuthSetting, Map<String, dynamic>>(authSettings, (value) => value.toMap()),
      'authSettingsV2s': pulumi.Input.encodeList<GetWindowsWebAppAuthSettingsV2, Map<String, dynamic>>(authSettingsV2s, (value) => value.toMap()),
      'backups': pulumi.Input.encodeList<GetWindowsWebAppBackup, Map<String, dynamic>>(backups, (value) => value.toMap()),
      'clientAffinityEnabled': clientAffinityEnabled,
      'clientCertificateEnabled': clientCertificateEnabled,
      'clientCertificateExclusionPaths': clientCertificateExclusionPaths,
      'clientCertificateMode': clientCertificateMode,
      'connectionStrings': pulumi.Input.encodeList<GetWindowsWebAppConnectionString, Map<String, dynamic>>(connectionStrings, (value) => value.toMap()),
      'customDomainVerificationId': customDomainVerificationId,
      'defaultHostname': defaultHostname,
      'enabled': enabled,
      'ftpPublishBasicAuthenticationEnabled': ftpPublishBasicAuthenticationEnabled,
      'hostingEnvironmentId': hostingEnvironmentId,
      'httpsOnly': httpsOnly,
      'id': id,
      'identities': pulumi.Input.encodeList<GetWindowsWebAppIdentity, Map<String, dynamic>>(identities, (value) => value.toMap()),
      'kind': kind,
      'location': location,
      'logs': pulumi.Input.encodeList<GetWindowsWebAppLog, Map<String, dynamic>>(logs, (value) => value.toMap()),
      'name': name,
      'outboundIpAddressLists': outboundIpAddressLists,
      'outboundIpAddresses': outboundIpAddresses,
      'possibleOutboundIpAddressLists': possibleOutboundIpAddressLists,
      'possibleOutboundIpAddresses': possibleOutboundIpAddresses,
      'publicNetworkAccessEnabled': publicNetworkAccessEnabled,
      'resourceGroupName': resourceGroupName,
      'servicePlanId': servicePlanId,
      'siteConfigs': pulumi.Input.encodeList<GetWindowsWebAppSiteConfig, Map<String, dynamic>>(siteConfigs, (value) => value.toMap()),
      'siteCredentials': pulumi.Input.encodeList<GetWindowsWebAppSiteCredential, Map<String, dynamic>>(siteCredentials, (value) => value.toMap()),
      'stickySettings': pulumi.Input.encodeList<GetWindowsWebAppStickySetting, Map<String, dynamic>>(stickySettings, (value) => value.toMap()),
      'storageAccounts': pulumi.Input.encodeList<GetWindowsWebAppStorageAccount, Map<String, dynamic>>(storageAccounts, (value) => value.toMap()),
      'tags': tags,
      'virtualNetworkBackupRestoreEnabled': virtualNetworkBackupRestoreEnabled,
      'virtualNetworkSubnetId': virtualNetworkSubnetId,
      'webdeployPublishBasicAuthenticationEnabled': webdeployPublishBasicAuthenticationEnabled,
    };
  }

  factory GetWindowsWebAppResult.fromMap(Map<String, dynamic> map) {
    return GetWindowsWebAppResult(
      appSettings: (map['appSettings'] as Map).cast<String, String>(),
      authSettings: pulumi.Input.decodeList<GetWindowsWebAppAuthSetting>(map['authSettings']!, (value) => GetWindowsWebAppAuthSetting.fromMap((value as Map).cast<String, dynamic>())),
      authSettingsV2s: pulumi.Input.decodeList<GetWindowsWebAppAuthSettingsV2>(map['authSettingsV2s']!, (value) => GetWindowsWebAppAuthSettingsV2.fromMap((value as Map).cast<String, dynamic>())),
      backups: pulumi.Input.decodeList<GetWindowsWebAppBackup>(map['backups']!, (value) => GetWindowsWebAppBackup.fromMap((value as Map).cast<String, dynamic>())),
      clientAffinityEnabled: map['clientAffinityEnabled'] as bool,
      clientCertificateEnabled: map['clientCertificateEnabled'] as bool,
      clientCertificateExclusionPaths: map['clientCertificateExclusionPaths'] as String,
      clientCertificateMode: map['clientCertificateMode'] as String,
      connectionStrings: pulumi.Input.decodeList<GetWindowsWebAppConnectionString>(map['connectionStrings']!, (value) => GetWindowsWebAppConnectionString.fromMap((value as Map).cast<String, dynamic>())),
      customDomainVerificationId: map['customDomainVerificationId'] as String,
      defaultHostname: map['defaultHostname'] as String,
      enabled: map['enabled'] as bool,
      ftpPublishBasicAuthenticationEnabled: map['ftpPublishBasicAuthenticationEnabled'] as bool,
      hostingEnvironmentId: map['hostingEnvironmentId'] as String,
      httpsOnly: map['httpsOnly'] as bool,
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetWindowsWebAppIdentity>(map['identities']!, (value) => GetWindowsWebAppIdentity.fromMap((value as Map).cast<String, dynamic>())),
      kind: map['kind'] as String,
      location: map['location'] as String,
      logs: pulumi.Input.decodeList<GetWindowsWebAppLog>(map['logs']!, (value) => GetWindowsWebAppLog.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      outboundIpAddressLists: (map['outboundIpAddressLists'] as List).cast<String>(),
      outboundIpAddresses: map['outboundIpAddresses'] as String,
      possibleOutboundIpAddressLists: (map['possibleOutboundIpAddressLists'] as List).cast<String>(),
      possibleOutboundIpAddresses: map['possibleOutboundIpAddresses'] as String,
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] as bool,
      resourceGroupName: map['resourceGroupName'] as String,
      servicePlanId: map['servicePlanId'] as String,
      siteConfigs: pulumi.Input.decodeList<GetWindowsWebAppSiteConfig>(map['siteConfigs']!, (value) => GetWindowsWebAppSiteConfig.fromMap((value as Map).cast<String, dynamic>())),
      siteCredentials: pulumi.Input.decodeList<GetWindowsWebAppSiteCredential>(map['siteCredentials']!, (value) => GetWindowsWebAppSiteCredential.fromMap((value as Map).cast<String, dynamic>())),
      stickySettings: pulumi.Input.decodeList<GetWindowsWebAppStickySetting>(map['stickySettings']!, (value) => GetWindowsWebAppStickySetting.fromMap((value as Map).cast<String, dynamic>())),
      storageAccounts: pulumi.Input.decodeList<GetWindowsWebAppStorageAccount>(map['storageAccounts']!, (value) => GetWindowsWebAppStorageAccount.fromMap((value as Map).cast<String, dynamic>())),
      tags: (map['tags'] as Map).cast<String, String>(),
      virtualNetworkBackupRestoreEnabled: map['virtualNetworkBackupRestoreEnabled'] as bool,
      virtualNetworkSubnetId: map['virtualNetworkSubnetId'] as String,
      webdeployPublishBasicAuthenticationEnabled: map['webdeployPublishBasicAuthenticationEnabled'] as bool,
    );
  }
}
