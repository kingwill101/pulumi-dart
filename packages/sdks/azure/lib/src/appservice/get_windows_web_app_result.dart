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
  final Map<String, String>? appSettings;
  /// A `authSettings` block as defined below.
  final List<GetWindowsWebAppAuthSetting>? authSettings;
  /// An `authSettingsV2` block as defined below.
  final List<GetWindowsWebAppAuthSettingsV2>? authSettingsV2s;
  /// A `backup` block as defined below.
  final List<GetWindowsWebAppBackup>? backups;
  /// Is Client Affinity enabled?
  final bool? clientAffinityEnabled;
  /// Are Client Certificates enabled?
  final bool? clientCertificateEnabled;
  /// Paths to exclude when using client certificates, separated by ;
  final String? clientCertificateExclusionPaths;
  /// The Client Certificate mode.
  final String? clientCertificateMode;
  /// A `connectionString` block as defined below.
  final List<GetWindowsWebAppConnectionString>? connectionStrings;
  /// The identifier used by App Service to perform domain ownership verification via DNS TXT record.
  final String? customDomainVerificationId;
  /// The Default Hostname of the Windows Web App.
  final String? defaultHostname;
  /// Is the Backup enabled?
  final bool? enabled;
  /// Are the default FTP Basic Authentication publishing credentials enabled.
  final bool? ftpPublishBasicAuthenticationEnabled;
  /// The ID of the App Service Environment used by App Service.
  final String? hostingEnvironmentId;
  /// Does the Windows Web App require HTTPS connections.
  final bool? httpsOnly;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A `identity` block as defined below.
  final List<GetWindowsWebAppIdentity>? identities;
  /// The string representation of the Windows Web App Kind.
  final String? kind;
  /// The Azure Region where the Windows Web App exists.
  final String? location;
  /// A `logs` block as defined below.
  final List<GetWindowsWebAppLog>? logs;
  /// The name of this Storage Account.
  final String? name;
  /// The list of Outbound IP Addresses for this Windows Web App.
  final List<String>? outboundIpAddressLists;
  /// A string representation of the list of Outbound IP Addresses for this Windows Web App.
  final String? outboundIpAddresses;
  /// The list of Possible Outbound IP Addresses that could be used by this Windows Web App.
  final List<String>? possibleOutboundIpAddressLists;
  /// The string representation of the list of Possible Outbound IP Addresses that could be used by this Windows Web App.
  final String? possibleOutboundIpAddresses;
  /// Is Public Network Access enabled for the Windows Web App.
  final bool? publicNetworkAccessEnabled;
  final String? resourceGroupName;
  /// The ID of the Service Plan in which this Windows Web App resides.
  final String? servicePlanId;
  /// A `siteConfig` block as defined below.
  final List<GetWindowsWebAppSiteConfig>? siteConfigs;
  /// A `siteCredential` block as defined below.
  final List<GetWindowsWebAppSiteCredential>? siteCredentials;
  /// A `stickySettings` block as defined below.
  final List<GetWindowsWebAppStickySetting>? stickySettings;
  /// A `storageAccount` block as defined below.
  final List<GetWindowsWebAppStorageAccount>? storageAccounts;
  /// A mapping of tags assigned to the Windows Web App.
  final Map<String, String>? tags;
  final bool? virtualNetworkBackupRestoreEnabled;
  /// The subnet id which the Windows Web App is vNet Integrated with.
  final String? virtualNetworkSubnetId;
  /// Are the default WebDeploy Basic Authentication publishing credentials enabled.
  final bool? webdeployPublishBasicAuthenticationEnabled;

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
  /// [resourceGroupName] Optional.
  /// [servicePlanId] The ID of the Service Plan in which this Windows Web App resides.
  /// [siteConfigs] A `siteConfig` block as defined below.
  /// [siteCredentials] A `siteCredential` block as defined below.
  /// [stickySettings] A `stickySettings` block as defined below.
  /// [storageAccounts] A `storageAccount` block as defined below.
  /// [tags] A mapping of tags assigned to the Windows Web App.
  /// [virtualNetworkBackupRestoreEnabled] Optional.
  /// [virtualNetworkSubnetId] The subnet id which the Windows Web App is vNet Integrated with.
  /// [webdeployPublishBasicAuthenticationEnabled] Are the default WebDeploy Basic Authentication publishing credentials enabled.
  const GetWindowsWebAppResult({
    this.appSettings,
    this.authSettings,
    this.authSettingsV2s,
    this.backups,
    this.clientAffinityEnabled,
    this.clientCertificateEnabled,
    this.clientCertificateExclusionPaths,
    this.clientCertificateMode,
    this.connectionStrings,
    this.customDomainVerificationId,
    this.defaultHostname,
    this.enabled,
    this.ftpPublishBasicAuthenticationEnabled,
    this.hostingEnvironmentId,
    this.httpsOnly,
    this.id,
    this.identities,
    this.kind,
    this.location,
    this.logs,
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
    this.storageAccounts,
    this.tags,
    this.virtualNetworkBackupRestoreEnabled,
    this.virtualNetworkSubnetId,
    this.webdeployPublishBasicAuthenticationEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appSettings': ?appSettings,
      'authSettings': ?(() { final guardedValue = authSettings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWindowsWebAppAuthSetting, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'authSettingsV2s': ?(() { final guardedValue = authSettingsV2s; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWindowsWebAppAuthSettingsV2, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'backups': ?(() { final guardedValue = backups; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWindowsWebAppBackup, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'clientAffinityEnabled': ?clientAffinityEnabled,
      'clientCertificateEnabled': ?clientCertificateEnabled,
      'clientCertificateExclusionPaths': ?clientCertificateExclusionPaths,
      'clientCertificateMode': ?clientCertificateMode,
      'connectionStrings': ?(() { final guardedValue = connectionStrings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWindowsWebAppConnectionString, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'customDomainVerificationId': ?customDomainVerificationId,
      'defaultHostname': ?defaultHostname,
      'enabled': ?enabled,
      'ftpPublishBasicAuthenticationEnabled': ?ftpPublishBasicAuthenticationEnabled,
      'hostingEnvironmentId': ?hostingEnvironmentId,
      'httpsOnly': ?httpsOnly,
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWindowsWebAppIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'kind': ?kind,
      'location': ?location,
      'logs': ?(() { final guardedValue = logs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWindowsWebAppLog, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'outboundIpAddressLists': ?outboundIpAddressLists,
      'outboundIpAddresses': ?outboundIpAddresses,
      'possibleOutboundIpAddressLists': ?possibleOutboundIpAddressLists,
      'possibleOutboundIpAddresses': ?possibleOutboundIpAddresses,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': ?resourceGroupName,
      'servicePlanId': ?servicePlanId,
      'siteConfigs': ?(() { final guardedValue = siteConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWindowsWebAppSiteConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'siteCredentials': ?(() { final guardedValue = siteCredentials; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWindowsWebAppSiteCredential, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'stickySettings': ?(() { final guardedValue = stickySettings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWindowsWebAppStickySetting, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'storageAccounts': ?(() { final guardedValue = storageAccounts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWindowsWebAppStorageAccount, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
      'virtualNetworkBackupRestoreEnabled': ?virtualNetworkBackupRestoreEnabled,
      'virtualNetworkSubnetId': ?virtualNetworkSubnetId,
      'webdeployPublishBasicAuthenticationEnabled': ?webdeployPublishBasicAuthenticationEnabled,
    };
  }

  factory GetWindowsWebAppResult.fromMap(Map<String, dynamic> map) {
    return GetWindowsWebAppResult(
      appSettings: (() { final guardedValue = map['appSettings']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      authSettings: (() { final guardedValue = map['authSettings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWindowsWebAppAuthSetting>(guardedValue, (value) => GetWindowsWebAppAuthSetting.fromMap((value as Map).cast<String, dynamic>())); })(),
      authSettingsV2s: (() { final guardedValue = map['authSettingsV2s']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWindowsWebAppAuthSettingsV2>(guardedValue, (value) => GetWindowsWebAppAuthSettingsV2.fromMap((value as Map).cast<String, dynamic>())); })(),
      backups: (() { final guardedValue = map['backups']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWindowsWebAppBackup>(guardedValue, (value) => GetWindowsWebAppBackup.fromMap((value as Map).cast<String, dynamic>())); })(),
      clientAffinityEnabled: (() { final guardedValue = map['clientAffinityEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      clientCertificateEnabled: (() { final guardedValue = map['clientCertificateEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      clientCertificateExclusionPaths: (() { final guardedValue = map['clientCertificateExclusionPaths']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clientCertificateMode: (() { final guardedValue = map['clientCertificateMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectionStrings: (() { final guardedValue = map['connectionStrings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWindowsWebAppConnectionString>(guardedValue, (value) => GetWindowsWebAppConnectionString.fromMap((value as Map).cast<String, dynamic>())); })(),
      customDomainVerificationId: (() { final guardedValue = map['customDomainVerificationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultHostname: (() { final guardedValue = map['defaultHostname']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      ftpPublishBasicAuthenticationEnabled: (() { final guardedValue = map['ftpPublishBasicAuthenticationEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      hostingEnvironmentId: (() { final guardedValue = map['hostingEnvironmentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      httpsOnly: (() { final guardedValue = map['httpsOnly']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWindowsWebAppIdentity>(guardedValue, (value) => GetWindowsWebAppIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logs: (() { final guardedValue = map['logs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWindowsWebAppLog>(guardedValue, (value) => GetWindowsWebAppLog.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outboundIpAddressLists: (() { final guardedValue = map['outboundIpAddressLists']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      outboundIpAddresses: (() { final guardedValue = map['outboundIpAddresses']; if (guardedValue == null) return null; return guardedValue as String; })(),
      possibleOutboundIpAddressLists: (() { final guardedValue = map['possibleOutboundIpAddressLists']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      possibleOutboundIpAddresses: (() { final guardedValue = map['possibleOutboundIpAddresses']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicNetworkAccessEnabled: (() { final guardedValue = map['publicNetworkAccessEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      servicePlanId: (() { final guardedValue = map['servicePlanId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      siteConfigs: (() { final guardedValue = map['siteConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWindowsWebAppSiteConfig>(guardedValue, (value) => GetWindowsWebAppSiteConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      siteCredentials: (() { final guardedValue = map['siteCredentials']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWindowsWebAppSiteCredential>(guardedValue, (value) => GetWindowsWebAppSiteCredential.fromMap((value as Map).cast<String, dynamic>())); })(),
      stickySettings: (() { final guardedValue = map['stickySettings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWindowsWebAppStickySetting>(guardedValue, (value) => GetWindowsWebAppStickySetting.fromMap((value as Map).cast<String, dynamic>())); })(),
      storageAccounts: (() { final guardedValue = map['storageAccounts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWindowsWebAppStorageAccount>(guardedValue, (value) => GetWindowsWebAppStorageAccount.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      virtualNetworkBackupRestoreEnabled: (() { final guardedValue = map['virtualNetworkBackupRestoreEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      virtualNetworkSubnetId: (() { final guardedValue = map['virtualNetworkSubnetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      webdeployPublishBasicAuthenticationEnabled: (() { final guardedValue = map['webdeployPublishBasicAuthenticationEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
