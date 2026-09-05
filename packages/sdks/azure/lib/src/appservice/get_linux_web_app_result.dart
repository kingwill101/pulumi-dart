// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_linux_web_app_auth_setting.dart';
import 'get_linux_web_app_auth_settings_v2.dart';
import 'get_linux_web_app_backup.dart';
import 'get_linux_web_app_connection_string.dart';
import 'get_linux_web_app_identity.dart';
import 'get_linux_web_app_log.dart';
import 'get_linux_web_app_site_config.dart';
import 'get_linux_web_app_site_credential.dart';
import 'get_linux_web_app_sticky_setting.dart';
import 'get_linux_web_app_storage_account.dart';

/// Result data returned by getLinuxWebApp.
class GetLinuxWebAppResult {
  /// An `appMetadata` block as defined below.
  final Map<String, String>? appMetadata;
  /// An `appSettings` block as defined below.
  final Map<String, String>? appSettings;
  /// An `authSettings` block as defined below.
  final List<GetLinuxWebAppAuthSetting>? authSettings;
  /// An `authSettingsV2` block as defined below.
  final List<GetLinuxWebAppAuthSettingsV2>? authSettingsV2s;
  /// The current availability state. Possible values are `Normal`, `Limited`, and `DisasterRecoveryMode`.
  final String? availability;
  /// A `backup` block as defined below.
  final List<GetLinuxWebAppBackup>? backups;
  /// Is Client Affinity enabled?
  final bool? clientAffinityEnabled;
  /// Are Client Certificates enabled?
  final bool? clientCertificateEnabled;
  /// Paths to exclude when using client certificates, separated by ;
  final String? clientCertificateExclusionPaths;
  /// The Client Certificate mode.
  final String? clientCertificateMode;
  /// A `connectionString` block as defined below.
  final List<GetLinuxWebAppConnectionString>? connectionStrings;
  /// The identifier used by App Service to perform domain ownership verification via DNS TXT record.
  final String? customDomainVerificationId;
  /// The default hostname of the Linux Web App.
  final String? defaultHostname;
  /// Is the Backup enabled?
  final bool? enabled;
  /// Are the default FTP Basic Authentication publishing credentials enabled.
  final bool? ftpPublishBasicAuthenticationEnabled;
  /// The ID of the App Service Environment used by App Service.
  final String? hostingEnvironmentId;
  /// Should the Linux Web App require HTTPS connections.
  final bool? httpsOnly;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A `identity` block as defined below.
  final List<GetLinuxWebAppIdentity>? identities;
  final String? keyVaultReferenceIdentityId;
  /// The Kind value for this Linux Web App.
  final String? kind;
  /// The Azure Region where the Linux Web App exists.
  final String? location;
  /// A `logs` block as defined below.
  final List<GetLinuxWebAppLog>? logs;
  /// The name of this Storage Account.
  final String? name;
  /// A `outboundIpAddressList` block as defined below.
  final List<String>? outboundIpAddressLists;
  /// A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12`.
  final String? outboundIpAddresses;
  /// A `possibleOutboundIpAddressList` block as defined below.
  final List<String>? possibleOutboundIpAddressLists;
  /// A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12,52.143.43.17` - not all of which are necessarily in use. Superset of `outboundIpAddresses`.
  final String? possibleOutboundIpAddresses;
  /// Is Public Network Access enabled for this Linux Web App.
  final bool? publicNetworkAccessEnabled;
  final String? resourceGroupName;
  /// The ID of the Service Plan that this Linux Web App exists in.
  final String? servicePlanId;
  /// A `siteConfig` block as defined below.
  final List<GetLinuxWebAppSiteConfig>? siteConfigs;
  /// A `siteCredential` block as defined below.
  final List<GetLinuxWebAppSiteCredential>? siteCredentials;
  /// A `stickySettings` block as defined below.
  final List<GetLinuxWebAppStickySetting>? stickySettings;
  /// A `storageAccount` block as defined below.
  final List<GetLinuxWebAppStorageAccount>? storageAccounts;
  /// A mapping of tags assigned to the Linux Web App.
  final Map<String, String>? tags;
  /// The current usage state. Possible values are `Normal` and `Exceeded`.
  final String? usage;
  /// Whether backup and restore operations over the linked virtual network are enabled.
  final bool? virtualNetworkBackupRestoreEnabled;
  /// The subnet id which the Linux Web App is vNet Integrated with.
  final String? virtualNetworkSubnetId;
  /// Are the default WebDeploy Basic Authentication publishing credentials enabled.
  final bool? webdeployPublishBasicAuthenticationEnabled;

  /// Creates a new [GetLinuxWebAppResult].
  /// [appMetadata] An `appMetadata` block as defined below.
  /// [appSettings] An `appSettings` block as defined below.
  /// [authSettings] An `authSettings` block as defined below.
  /// [authSettingsV2s] An `authSettingsV2` block as defined below.
  /// [availability] The current availability state. Possible values are `Normal`, `Limited`, and `DisasterRecoveryMode`.
  /// [backups] A `backup` block as defined below.
  /// [clientAffinityEnabled] Is Client Affinity enabled?
  /// [clientCertificateEnabled] Are Client Certificates enabled?
  /// [clientCertificateExclusionPaths] Paths to exclude when using client certificates, separated by ;
  /// [clientCertificateMode] The Client Certificate mode.
  /// [connectionStrings] A `connectionString` block as defined below.
  /// [customDomainVerificationId] The identifier used by App Service to perform domain ownership verification via DNS TXT record.
  /// [defaultHostname] The default hostname of the Linux Web App.
  /// [enabled] Is the Backup enabled?
  /// [ftpPublishBasicAuthenticationEnabled] Are the default FTP Basic Authentication publishing credentials enabled.
  /// [hostingEnvironmentId] The ID of the App Service Environment used by App Service.
  /// [httpsOnly] Should the Linux Web App require HTTPS connections.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] A `identity` block as defined below.
  /// [keyVaultReferenceIdentityId] Optional.
  /// [kind] The Kind value for this Linux Web App.
  /// [location] The Azure Region where the Linux Web App exists.
  /// [logs] A `logs` block as defined below.
  /// [name] The name of this Storage Account.
  /// [outboundIpAddressLists] A `outboundIpAddressList` block as defined below.
  /// [outboundIpAddresses] A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12`.
  /// [possibleOutboundIpAddressLists] A `possibleOutboundIpAddressList` block as defined below.
  /// [possibleOutboundIpAddresses] A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12,52.143.43.17` - not all of which are necessarily in use. Superset of `outboundIpAddresses`.
  /// [publicNetworkAccessEnabled] Is Public Network Access enabled for this Linux Web App.
  /// [resourceGroupName] Optional.
  /// [servicePlanId] The ID of the Service Plan that this Linux Web App exists in.
  /// [siteConfigs] A `siteConfig` block as defined below.
  /// [siteCredentials] A `siteCredential` block as defined below.
  /// [stickySettings] A `stickySettings` block as defined below.
  /// [storageAccounts] A `storageAccount` block as defined below.
  /// [tags] A mapping of tags assigned to the Linux Web App.
  /// [usage] The current usage state. Possible values are `Normal` and `Exceeded`.
  /// [virtualNetworkBackupRestoreEnabled] Whether backup and restore operations over the linked virtual network are enabled.
  /// [virtualNetworkSubnetId] The subnet id which the Linux Web App is vNet Integrated with.
  /// [webdeployPublishBasicAuthenticationEnabled] Are the default WebDeploy Basic Authentication publishing credentials enabled.
  const GetLinuxWebAppResult({
    this.appMetadata,
    this.appSettings,
    this.authSettings,
    this.authSettingsV2s,
    this.availability,
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
    this.keyVaultReferenceIdentityId,
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
    this.usage,
    this.virtualNetworkBackupRestoreEnabled,
    this.virtualNetworkSubnetId,
    this.webdeployPublishBasicAuthenticationEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appMetadata': ?appMetadata,
      'appSettings': ?appSettings,
      'authSettings': ?(() { final guardedValue = authSettings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLinuxWebAppAuthSetting, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'authSettingsV2s': ?(() { final guardedValue = authSettingsV2s; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLinuxWebAppAuthSettingsV2, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'availability': ?availability,
      'backups': ?(() { final guardedValue = backups; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLinuxWebAppBackup, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'clientAffinityEnabled': ?clientAffinityEnabled,
      'clientCertificateEnabled': ?clientCertificateEnabled,
      'clientCertificateExclusionPaths': ?clientCertificateExclusionPaths,
      'clientCertificateMode': ?clientCertificateMode,
      'connectionStrings': ?(() { final guardedValue = connectionStrings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLinuxWebAppConnectionString, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'customDomainVerificationId': ?customDomainVerificationId,
      'defaultHostname': ?defaultHostname,
      'enabled': ?enabled,
      'ftpPublishBasicAuthenticationEnabled': ?ftpPublishBasicAuthenticationEnabled,
      'hostingEnvironmentId': ?hostingEnvironmentId,
      'httpsOnly': ?httpsOnly,
      'id': ?id,
      'identities': ?(() { final guardedValue = identities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLinuxWebAppIdentity, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'keyVaultReferenceIdentityId': ?keyVaultReferenceIdentityId,
      'kind': ?kind,
      'location': ?location,
      'logs': ?(() { final guardedValue = logs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLinuxWebAppLog, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'outboundIpAddressLists': ?outboundIpAddressLists,
      'outboundIpAddresses': ?outboundIpAddresses,
      'possibleOutboundIpAddressLists': ?possibleOutboundIpAddressLists,
      'possibleOutboundIpAddresses': ?possibleOutboundIpAddresses,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': ?resourceGroupName,
      'servicePlanId': ?servicePlanId,
      'siteConfigs': ?(() { final guardedValue = siteConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLinuxWebAppSiteConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'siteCredentials': ?(() { final guardedValue = siteCredentials; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLinuxWebAppSiteCredential, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'stickySettings': ?(() { final guardedValue = stickySettings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLinuxWebAppStickySetting, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'storageAccounts': ?(() { final guardedValue = storageAccounts; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLinuxWebAppStorageAccount, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
      'usage': ?usage,
      'virtualNetworkBackupRestoreEnabled': ?virtualNetworkBackupRestoreEnabled,
      'virtualNetworkSubnetId': ?virtualNetworkSubnetId,
      'webdeployPublishBasicAuthenticationEnabled': ?webdeployPublishBasicAuthenticationEnabled,
    };
  }

  factory GetLinuxWebAppResult.fromMap(Map<String, dynamic> map) {
    return GetLinuxWebAppResult(
      appMetadata: (() { final guardedValue = map['appMetadata']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      appSettings: (() { final guardedValue = map['appSettings']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      authSettings: (() { final guardedValue = map['authSettings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLinuxWebAppAuthSetting>(guardedValue, (value) => GetLinuxWebAppAuthSetting.fromMap((value as Map).cast<String, dynamic>())); })(),
      authSettingsV2s: (() { final guardedValue = map['authSettingsV2s']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLinuxWebAppAuthSettingsV2>(guardedValue, (value) => GetLinuxWebAppAuthSettingsV2.fromMap((value as Map).cast<String, dynamic>())); })(),
      availability: (() { final guardedValue = map['availability']; if (guardedValue == null) return null; return guardedValue as String; })(),
      backups: (() { final guardedValue = map['backups']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLinuxWebAppBackup>(guardedValue, (value) => GetLinuxWebAppBackup.fromMap((value as Map).cast<String, dynamic>())); })(),
      clientAffinityEnabled: (() { final guardedValue = map['clientAffinityEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      clientCertificateEnabled: (() { final guardedValue = map['clientCertificateEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      clientCertificateExclusionPaths: (() { final guardedValue = map['clientCertificateExclusionPaths']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clientCertificateMode: (() { final guardedValue = map['clientCertificateMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectionStrings: (() { final guardedValue = map['connectionStrings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLinuxWebAppConnectionString>(guardedValue, (value) => GetLinuxWebAppConnectionString.fromMap((value as Map).cast<String, dynamic>())); })(),
      customDomainVerificationId: (() { final guardedValue = map['customDomainVerificationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultHostname: (() { final guardedValue = map['defaultHostname']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      ftpPublishBasicAuthenticationEnabled: (() { final guardedValue = map['ftpPublishBasicAuthenticationEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      hostingEnvironmentId: (() { final guardedValue = map['hostingEnvironmentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      httpsOnly: (() { final guardedValue = map['httpsOnly']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLinuxWebAppIdentity>(guardedValue, (value) => GetLinuxWebAppIdentity.fromMap((value as Map).cast<String, dynamic>())); })(),
      keyVaultReferenceIdentityId: (() { final guardedValue = map['keyVaultReferenceIdentityId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logs: (() { final guardedValue = map['logs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLinuxWebAppLog>(guardedValue, (value) => GetLinuxWebAppLog.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outboundIpAddressLists: (() { final guardedValue = map['outboundIpAddressLists']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      outboundIpAddresses: (() { final guardedValue = map['outboundIpAddresses']; if (guardedValue == null) return null; return guardedValue as String; })(),
      possibleOutboundIpAddressLists: (() { final guardedValue = map['possibleOutboundIpAddressLists']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      possibleOutboundIpAddresses: (() { final guardedValue = map['possibleOutboundIpAddresses']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicNetworkAccessEnabled: (() { final guardedValue = map['publicNetworkAccessEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      servicePlanId: (() { final guardedValue = map['servicePlanId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      siteConfigs: (() { final guardedValue = map['siteConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLinuxWebAppSiteConfig>(guardedValue, (value) => GetLinuxWebAppSiteConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      siteCredentials: (() { final guardedValue = map['siteCredentials']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLinuxWebAppSiteCredential>(guardedValue, (value) => GetLinuxWebAppSiteCredential.fromMap((value as Map).cast<String, dynamic>())); })(),
      stickySettings: (() { final guardedValue = map['stickySettings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLinuxWebAppStickySetting>(guardedValue, (value) => GetLinuxWebAppStickySetting.fromMap((value as Map).cast<String, dynamic>())); })(),
      storageAccounts: (() { final guardedValue = map['storageAccounts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLinuxWebAppStorageAccount>(guardedValue, (value) => GetLinuxWebAppStorageAccount.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      usage: (() { final guardedValue = map['usage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualNetworkBackupRestoreEnabled: (() { final guardedValue = map['virtualNetworkBackupRestoreEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      virtualNetworkSubnetId: (() { final guardedValue = map['virtualNetworkSubnetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      webdeployPublishBasicAuthenticationEnabled: (() { final guardedValue = map['webdeployPublishBasicAuthenticationEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
