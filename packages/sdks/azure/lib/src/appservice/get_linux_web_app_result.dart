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
  /// An `app_metadata` block as defined below.
  final Map<String, String> appMetadata;

  /// An `app_settings` block as defined below.
  final Map<String, String> appSettings;

  /// An `auth_settings` block as defined below.
  final List<GetLinuxWebAppAuthSetting> authSettings;

  /// An `auth_settings_v2` block as defined below.
  final List<GetLinuxWebAppAuthSettingsV2> authSettingsV2s;

  /// The current availability state. Possible values are `Normal`, `Limited`, and `DisasterRecoveryMode`.
  final String availability;

  /// A `backup` block as defined below.
  final List<GetLinuxWebAppBackup> backups;

  /// Is Client Affinity enabled?
  final bool clientAffinityEnabled;

  /// Are Client Certificates enabled?
  final bool clientCertificateEnabled;

  /// Paths to exclude when using client certificates, separated by ;
  final String clientCertificateExclusionPaths;

  /// The Client Certificate mode.
  final String clientCertificateMode;

  /// A `connection_string` block as defined below.
  final List<GetLinuxWebAppConnectionString> connectionStrings;

  /// The identifier used by App Service to perform domain ownership verification via DNS TXT record.
  final String customDomainVerificationId;

  /// The default hostname of the Linux Web App.
  final String defaultHostname;

  /// Is the Backup enabled?
  final bool enabled;

  /// Are the default FTP Basic Authentication publishing credentials enabled.
  final bool ftpPublishBasicAuthenticationEnabled;

  /// The ID of the App Service Environment used by App Service.
  final String hostingEnvironmentId;

  /// Should the Linux Web App require HTTPS connections.
  final bool httpsOnly;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A `identity` block as defined below.
  final List<GetLinuxWebAppIdentity> identities;
  final String keyVaultReferenceIdentityId;

  /// The Kind value for this Linux Web App.
  final String kind;

  /// The Azure Region where the Linux Web App exists.
  final String location;

  /// A `logs` block as defined below.
  final List<GetLinuxWebAppLog> logs;

  /// The name of this Storage Account.
  final String name;

  /// A `outbound_ip_address_list` block as defined below.
  final List<String> outboundIpAddressLists;

  /// A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12`.
  final String outboundIpAddresses;

  /// A `possible_outbound_ip_address_list` block as defined below.
  final List<String> possibleOutboundIpAddressLists;

  /// A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12,52.143.43.17` - not all of which are necessarily in use. Superset of `outbound_ip_addresses`.
  final String possibleOutboundIpAddresses;

  /// Is Public Network Access enabled for this Linux Web App.
  final bool publicNetworkAccessEnabled;
  final String resourceGroupName;

  /// The ID of the Service Plan that this Linux Web App exists in.
  final String servicePlanId;

  /// A `site_config` block as defined below.
  final List<GetLinuxWebAppSiteConfig> siteConfigs;

  /// A `site_credential` block as defined below.
  final List<GetLinuxWebAppSiteCredential> siteCredentials;

  /// A `sticky_settings` block as defined below.
  final List<GetLinuxWebAppStickySetting> stickySettings;

  /// A `storage_account` block as defined below.
  final List<GetLinuxWebAppStorageAccount> storageAccounts;

  /// A mapping of tags assigned to the Linux Web App.
  final Map<String, String> tags;

  /// The current usage state. Possible values are `Normal` and `Exceeded`.
  final String usage;

  /// Whether backup and restore operations over the linked virtual network are enabled.
  final bool virtualNetworkBackupRestoreEnabled;

  /// The subnet id which the Linux Web App is vNet Integrated with.
  final String virtualNetworkSubnetId;

  /// Are the default WebDeploy Basic Authentication publishing credentials enabled.
  final bool webdeployPublishBasicAuthenticationEnabled;

  /// Creates a new [GetLinuxWebAppResult].
  /// [appMetadata] An `app_metadata` block as defined below.
  /// [appSettings] An `app_settings` block as defined below.
  /// [authSettings] An `auth_settings` block as defined below.
  /// [authSettingsV2s] An `auth_settings_v2` block as defined below.
  /// [availability] The current availability state. Possible values are `Normal`, `Limited`, and `DisasterRecoveryMode`.
  /// [backups] A `backup` block as defined below.
  /// [clientAffinityEnabled] Is Client Affinity enabled?
  /// [clientCertificateEnabled] Are Client Certificates enabled?
  /// [clientCertificateExclusionPaths] Paths to exclude when using client certificates, separated by ;
  /// [clientCertificateMode] The Client Certificate mode.
  /// [connectionStrings] A `connection_string` block as defined below.
  /// [customDomainVerificationId] The identifier used by App Service to perform domain ownership verification via DNS TXT record.
  /// [defaultHostname] The default hostname of the Linux Web App.
  /// [enabled] Is the Backup enabled?
  /// [ftpPublishBasicAuthenticationEnabled] Are the default FTP Basic Authentication publishing credentials enabled.
  /// [hostingEnvironmentId] The ID of the App Service Environment used by App Service.
  /// [httpsOnly] Should the Linux Web App require HTTPS connections.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] A `identity` block as defined below.
  /// [keyVaultReferenceIdentityId] Required.
  /// [kind] The Kind value for this Linux Web App.
  /// [location] The Azure Region where the Linux Web App exists.
  /// [logs] A `logs` block as defined below.
  /// [name] The name of this Storage Account.
  /// [outboundIpAddressLists] A `outbound_ip_address_list` block as defined below.
  /// [outboundIpAddresses] A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12`.
  /// [possibleOutboundIpAddressLists] A `possible_outbound_ip_address_list` block as defined below.
  /// [possibleOutboundIpAddresses] A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12,52.143.43.17` - not all of which are necessarily in use. Superset of `outbound_ip_addresses`.
  /// [publicNetworkAccessEnabled] Is Public Network Access enabled for this Linux Web App.
  /// [resourceGroupName] Required.
  /// [servicePlanId] The ID of the Service Plan that this Linux Web App exists in.
  /// [siteConfigs] A `site_config` block as defined below.
  /// [siteCredentials] A `site_credential` block as defined below.
  /// [stickySettings] A `sticky_settings` block as defined below.
  /// [storageAccounts] A `storage_account` block as defined below.
  /// [tags] A mapping of tags assigned to the Linux Web App.
  /// [usage] The current usage state. Possible values are `Normal` and `Exceeded`.
  /// [virtualNetworkBackupRestoreEnabled] Whether backup and restore operations over the linked virtual network are enabled.
  /// [virtualNetworkSubnetId] The subnet id which the Linux Web App is vNet Integrated with.
  /// [webdeployPublishBasicAuthenticationEnabled] Are the default WebDeploy Basic Authentication publishing credentials enabled.
  GetLinuxWebAppResult({
    required this.appMetadata,
    required this.appSettings,
    required this.authSettings,
    required this.authSettingsV2s,
    required this.availability,
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
    required this.keyVaultReferenceIdentityId,
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
    required this.usage,
    required this.virtualNetworkBackupRestoreEnabled,
    required this.virtualNetworkSubnetId,
    required this.webdeployPublishBasicAuthenticationEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appMetadata': appMetadata,
      'appSettings': appSettings,
      'authSettings':
          pulumi.Input.encodeList<
            GetLinuxWebAppAuthSetting,
            Map<String, dynamic>
          >(authSettings, (value) => value.toMap()),
      'authSettingsV2s':
          pulumi.Input.encodeList<
            GetLinuxWebAppAuthSettingsV2,
            Map<String, dynamic>
          >(authSettingsV2s, (value) => value.toMap()),
      'availability': availability,
      'backups':
          pulumi.Input.encodeList<GetLinuxWebAppBackup, Map<String, dynamic>>(
            backups,
            (value) => value.toMap(),
          ),
      'clientAffinityEnabled': clientAffinityEnabled,
      'clientCertificateEnabled': clientCertificateEnabled,
      'clientCertificateExclusionPaths': clientCertificateExclusionPaths,
      'clientCertificateMode': clientCertificateMode,
      'connectionStrings':
          pulumi.Input.encodeList<
            GetLinuxWebAppConnectionString,
            Map<String, dynamic>
          >(connectionStrings, (value) => value.toMap()),
      'customDomainVerificationId': customDomainVerificationId,
      'defaultHostname': defaultHostname,
      'enabled': enabled,
      'ftpPublishBasicAuthenticationEnabled':
          ftpPublishBasicAuthenticationEnabled,
      'hostingEnvironmentId': hostingEnvironmentId,
      'httpsOnly': httpsOnly,
      'id': id,
      'identities':
          pulumi.Input.encodeList<GetLinuxWebAppIdentity, Map<String, dynamic>>(
            identities,
            (value) => value.toMap(),
          ),
      'keyVaultReferenceIdentityId': keyVaultReferenceIdentityId,
      'kind': kind,
      'location': location,
      'logs': pulumi.Input.encodeList<GetLinuxWebAppLog, Map<String, dynamic>>(
        logs,
        (value) => value.toMap(),
      ),
      'name': name,
      'outboundIpAddressLists': outboundIpAddressLists,
      'outboundIpAddresses': outboundIpAddresses,
      'possibleOutboundIpAddressLists': possibleOutboundIpAddressLists,
      'possibleOutboundIpAddresses': possibleOutboundIpAddresses,
      'publicNetworkAccessEnabled': publicNetworkAccessEnabled,
      'resourceGroupName': resourceGroupName,
      'servicePlanId': servicePlanId,
      'siteConfigs':
          pulumi.Input.encodeList<
            GetLinuxWebAppSiteConfig,
            Map<String, dynamic>
          >(siteConfigs, (value) => value.toMap()),
      'siteCredentials':
          pulumi.Input.encodeList<
            GetLinuxWebAppSiteCredential,
            Map<String, dynamic>
          >(siteCredentials, (value) => value.toMap()),
      'stickySettings':
          pulumi.Input.encodeList<
            GetLinuxWebAppStickySetting,
            Map<String, dynamic>
          >(stickySettings, (value) => value.toMap()),
      'storageAccounts':
          pulumi.Input.encodeList<
            GetLinuxWebAppStorageAccount,
            Map<String, dynamic>
          >(storageAccounts, (value) => value.toMap()),
      'tags': tags,
      'usage': usage,
      'virtualNetworkBackupRestoreEnabled': virtualNetworkBackupRestoreEnabled,
      'virtualNetworkSubnetId': virtualNetworkSubnetId,
      'webdeployPublishBasicAuthenticationEnabled':
          webdeployPublishBasicAuthenticationEnabled,
    };
  }

  factory GetLinuxWebAppResult.fromMap(Map<String, dynamic> map) {
    return GetLinuxWebAppResult(
      appMetadata: (map['appMetadata'] as Map).cast<String, String>(),
      appSettings: (map['appSettings'] as Map).cast<String, String>(),
      authSettings: pulumi.Input.decodeList<GetLinuxWebAppAuthSetting>(
        map['authSettings']!,
        (value) => GetLinuxWebAppAuthSetting.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      authSettingsV2s: pulumi.Input.decodeList<GetLinuxWebAppAuthSettingsV2>(
        map['authSettingsV2s']!,
        (value) => GetLinuxWebAppAuthSettingsV2.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      availability: map['availability'] as String,
      backups: pulumi.Input.decodeList<GetLinuxWebAppBackup>(
        map['backups']!,
        (value) => GetLinuxWebAppBackup.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      clientAffinityEnabled: map['clientAffinityEnabled'] as bool,
      clientCertificateEnabled: map['clientCertificateEnabled'] as bool,
      clientCertificateExclusionPaths:
          map['clientCertificateExclusionPaths'] as String,
      clientCertificateMode: map['clientCertificateMode'] as String,
      connectionStrings:
          pulumi.Input.decodeList<GetLinuxWebAppConnectionString>(
            map['connectionStrings']!,
            (value) => GetLinuxWebAppConnectionString.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      customDomainVerificationId: map['customDomainVerificationId'] as String,
      defaultHostname: map['defaultHostname'] as String,
      enabled: map['enabled'] as bool,
      ftpPublishBasicAuthenticationEnabled:
          map['ftpPublishBasicAuthenticationEnabled'] as bool,
      hostingEnvironmentId: map['hostingEnvironmentId'] as String,
      httpsOnly: map['httpsOnly'] as bool,
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetLinuxWebAppIdentity>(
        map['identities']!,
        (value) => GetLinuxWebAppIdentity.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      keyVaultReferenceIdentityId: map['keyVaultReferenceIdentityId'] as String,
      kind: map['kind'] as String,
      location: map['location'] as String,
      logs: pulumi.Input.decodeList<GetLinuxWebAppLog>(
        map['logs']!,
        (value) =>
            GetLinuxWebAppLog.fromMap((value as Map).cast<String, dynamic>()),
      ),
      name: map['name'] as String,
      outboundIpAddressLists: (map['outboundIpAddressLists'] as List)
          .cast<String>(),
      outboundIpAddresses: map['outboundIpAddresses'] as String,
      possibleOutboundIpAddressLists:
          (map['possibleOutboundIpAddressLists'] as List).cast<String>(),
      possibleOutboundIpAddresses: map['possibleOutboundIpAddresses'] as String,
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] as bool,
      resourceGroupName: map['resourceGroupName'] as String,
      servicePlanId: map['servicePlanId'] as String,
      siteConfigs: pulumi.Input.decodeList<GetLinuxWebAppSiteConfig>(
        map['siteConfigs']!,
        (value) => GetLinuxWebAppSiteConfig.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      siteCredentials: pulumi.Input.decodeList<GetLinuxWebAppSiteCredential>(
        map['siteCredentials']!,
        (value) => GetLinuxWebAppSiteCredential.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      stickySettings: pulumi.Input.decodeList<GetLinuxWebAppStickySetting>(
        map['stickySettings']!,
        (value) => GetLinuxWebAppStickySetting.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      storageAccounts: pulumi.Input.decodeList<GetLinuxWebAppStorageAccount>(
        map['storageAccounts']!,
        (value) => GetLinuxWebAppStorageAccount.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      tags: (map['tags'] as Map).cast<String, String>(),
      usage: map['usage'] as String,
      virtualNetworkBackupRestoreEnabled:
          map['virtualNetworkBackupRestoreEnabled'] as bool,
      virtualNetworkSubnetId: map['virtualNetworkSubnetId'] as String,
      webdeployPublishBasicAuthenticationEnabled:
          map['webdeployPublishBasicAuthenticationEnabled'] as bool,
    );
  }
}
