// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_web_app_auth_settings.dart';
import 'windows_web_app_auth_settings_v2.dart';
import 'windows_web_app_backup.dart';
import 'windows_web_app_connection_string.dart';
import 'windows_web_app_identity.dart';
import 'windows_web_app_logs.dart';
import 'windows_web_app_site_config.dart';
import 'windows_web_app_sticky_settings.dart';
import 'windows_web_app_storage_account.dart';

/// {@template pulumi_appservice_windows_web_app_windows_web_app_args_doc}
/// The set of arguments for WindowsWebApp.
/// {@endtemplate}
/// {@macro pulumi_appservice_windows_web_app_windows_web_app_args_doc}
class WindowsWebAppArgs {
  /// A map of key-value pairs of App Settings.
  final pulumi.Input<Map<String, String>>? appSettings;
  /// An `auth_settings` block as defined below.
  final pulumi.Input<WindowsWebAppAuthSettings>? authSettings;
  /// An `auth_settings_v2` block as defined below.
  final pulumi.Input<WindowsWebAppAuthSettingsV2>? authSettingsV2;
  /// A `backup` block as defined below.
  final pulumi.Input<WindowsWebAppBackup>? backup;
  /// Should Client Affinity be enabled?
  final pulumi.Input<bool>? clientAffinityEnabled;
  /// Should Client Certificates be enabled?
  final pulumi.Input<bool>? clientCertificateEnabled;
  /// Paths to exclude when using client certificates, separated by ;
  final pulumi.Input<String>? clientCertificateExclusionPaths;
  /// The Client Certificate mode. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`. This property has no effect when `client_certificate_enabled` is `false`. Defaults to `Required`.
  final pulumi.Input<String>? clientCertificateMode;
  /// One or more `connection_string` blocks as defined below.
  final pulumi.Input<List<WindowsWebAppConnectionString>>? connectionStrings;
  /// Should the Windows Web App be enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// Should the default FTP Basic Authentication publishing profile be enabled. Defaults to `true`.
  final pulumi.Input<bool>? ftpPublishBasicAuthenticationEnabled;
  /// Should the Windows Web App require HTTPS connections. Defaults to `false`.
  final pulumi.Input<bool>? httpsOnly;
  /// An `identity` block as defined below.
  final pulumi.Input<WindowsWebAppIdentity>? identity;
  /// The User Assigned Identity ID used for accessing KeyVault secrets. The identity must be assigned to the application in the `identity` block. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity)
  final pulumi.Input<String>? keyVaultReferenceIdentityId;
  /// The Azure Region where the Windows Web App should exist. Changing this forces a new Windows Web App to be created.
  final pulumi.Input<String>? location;
  /// A `logs` block as defined below.
  final pulumi.Input<WindowsWebAppLogs>? logs;
  /// The name which should be used for this Windows Web App. Changing this forces a new Windows Web App to be created.
  final pulumi.Input<String>? name;
  /// Should public network access be enabled for the Web App. Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The name of the Resource Group where the Windows Web App should exist. Changing this forces a new Windows Web App to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The ID of the Service Plan that this Windows App Service will be created in.
  final pulumi.Input<String> servicePlanId;
  /// A `site_config` block as defined below.
  final pulumi.Input<WindowsWebAppSiteConfig> siteConfig;
  /// A `sticky_settings` block as defined below.
  final pulumi.Input<WindowsWebAppStickySettings>? stickySettings;
  /// One or more `storage_account` blocks as defined below.
  ///
  /// > **Note:** Using this value requires `WEBSITE_RUN_FROM_PACKAGE=1` to be set on the App in `app_settings`. Refer to the [Azure docs](https://docs.microsoft.com/en-us/azure/app-service/deploy-run-package) for further details.
  final pulumi.Input<List<WindowsWebAppStorageAccount>>? storageAccounts;
  /// A mapping of tags which should be assigned to the Windows Web App.
  final pulumi.Input<Map<String, String>>? tags;
  /// Whether backup and restore operations over the linked virtual network are enabled. Defaults to `false`.
  final pulumi.Input<bool>? virtualNetworkBackupRestoreEnabled;
  /// Whether traffic for the image pull should be routed over the virtual network.
  ///
  /// > **Note:** `virtual_network_image_pull_enabled` must be set to `true` when running in an App Service Environment.
  final pulumi.Input<bool>? virtualNetworkImagePullEnabled;
  /// The subnet id which will be used by this Web App for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration).
  ///
  /// > **Note:** The AzureRM Terraform provider provides regional virtual network integration via the standalone resource app_service_virtual_network_swift_connection and in-line within this resource using the `virtual_network_subnet_id` property. You cannot use both methods simultaneously. If the virtual network is set via the resource `app_service_virtual_network_swift_connection` then `ignore_changes` should be used in the web app configuration.
  ///
  /// > **Note:** Assigning the `virtual_network_subnet_id` property requires [RBAC permissions on the subnet](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#permissions)
  final pulumi.Input<String>? virtualNetworkSubnetId;
  /// Should the default WebDeploy Basic Authentication publishing credentials enabled. Defaults to `true`.
  ///
  /// > **Note:** Setting this value to true will disable the ability to use `zip_deploy_file` which currently relies on the default publishing profile.
  final pulumi.Input<bool>? webdeployPublishBasicAuthenticationEnabled;
  /// The local path and filename of the Zip packaged application to deploy to this Windows Web App.
  ///
  /// > **Note:** Using this value requires either `WEBSITE_RUN_FROM_PACKAGE=1` or `SCM_DO_BUILD_DURING_DEPLOYMENT=true` to be set on the App in `app_settings`. Refer to the Azure docs on [running the Web App directly from the Zip package](https://learn.microsoft.com/en-us/azure/app-service/deploy-run-package), or [automating the build for Zip deploy](https://learn.microsoft.com/en-us/azure/app-service/deploy-zip#enable-build-automation-for-zip-deploy) for further details.
  final pulumi.Input<String>? zipDeployFile;

  /// Creates a new [WindowsWebAppArgs].
  /// [appSettings] A map of key-value pairs of App Settings.
  /// [authSettings] An `auth_settings` block as defined below.
  /// [authSettingsV2] An `auth_settings_v2` block as defined below.
  /// [backup] A `backup` block as defined below.
  /// [clientAffinityEnabled] Should Client Affinity be enabled?
  /// [clientCertificateEnabled] Should Client Certificates be enabled?
  /// [clientCertificateExclusionPaths] Paths to exclude when using client certificates, separated by ;
  /// [clientCertificateMode] The Client Certificate mode. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`. This property has no effect when `client_certificate_enabled` is `false`. Defaults to `Required`.
  /// [connectionStrings] One or more `connection_string` blocks as defined below.
  /// [enabled] Should the Windows Web App be enabled? Defaults to `true`.
  /// [ftpPublishBasicAuthenticationEnabled] Should the default FTP Basic Authentication publishing profile be enabled. Defaults to `true`.
  /// [httpsOnly] Should the Windows Web App require HTTPS connections. Defaults to `false`.
  /// [identity] An `identity` block as defined below.
  /// [keyVaultReferenceIdentityId] The User Assigned Identity ID used for accessing KeyVault secrets. The identity must be assigned to the application in the `identity` block. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity)
  /// [location] The Azure Region where the Windows Web App should exist. Changing this forces a new Windows Web App to be created.
  /// [logs] A `logs` block as defined below.
  /// [name] The name which should be used for this Windows Web App. Changing this forces a new Windows Web App to be created.
  /// [publicNetworkAccessEnabled] Should public network access be enabled for the Web App. Defaults to `true`.
  /// [resourceGroupName] The name of the Resource Group where the Windows Web App should exist. Changing this forces a new Windows Web App to be created.
  /// [servicePlanId] The ID of the Service Plan that this Windows App Service will be created in.
  /// [siteConfig] A `site_config` block as defined below.
  /// [stickySettings] A `sticky_settings` block as defined below.
  /// [storageAccounts] One or more `storage_account` blocks as defined below.
  /// [tags] A mapping of tags which should be assigned to the Windows Web App.
  /// [virtualNetworkBackupRestoreEnabled] Whether backup and restore operations over the linked virtual network are enabled. Defaults to `false`.
  /// [virtualNetworkImagePullEnabled] Whether traffic for the image pull should be routed over the virtual network.
  /// [virtualNetworkSubnetId] The subnet id which will be used by this Web App for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration).
  /// [webdeployPublishBasicAuthenticationEnabled] Should the default WebDeploy Basic Authentication publishing credentials enabled. Defaults to `true`.
  /// [zipDeployFile] The local path and filename of the Zip packaged application to deploy to this Windows Web App.
  WindowsWebAppArgs({
    this.appSettings,
    this.authSettings,
    this.authSettingsV2,
    this.backup,
    this.clientAffinityEnabled,
    this.clientCertificateEnabled,
    this.clientCertificateExclusionPaths,
    this.clientCertificateMode,
    this.connectionStrings,
    this.enabled,
    this.ftpPublishBasicAuthenticationEnabled,
    this.httpsOnly,
    this.identity,
    this.keyVaultReferenceIdentityId,
    this.location,
    this.logs,
    this.name,
    this.publicNetworkAccessEnabled,
    required this.resourceGroupName,
    required this.servicePlanId,
    required this.siteConfig,
    this.stickySettings,
    this.storageAccounts,
    this.tags,
    this.virtualNetworkBackupRestoreEnabled,
    this.virtualNetworkImagePullEnabled,
    this.virtualNetworkSubnetId,
    this.webdeployPublishBasicAuthenticationEnabled,
    this.zipDeployFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appSettings': ?appSettings,
      'authSettings': ?pulumi.Input.mapOptionalInputValue<WindowsWebAppAuthSettings, Map<String, dynamic>>(authSettings, (value) => value.toMap()),
      'authSettingsV2': ?pulumi.Input.mapOptionalInputValue<WindowsWebAppAuthSettingsV2, Map<String, dynamic>>(authSettingsV2, (value) => value.toMap()),
      'backup': ?pulumi.Input.mapOptionalInputValue<WindowsWebAppBackup, Map<String, dynamic>>(backup, (value) => value.toMap()),
      'clientAffinityEnabled': ?clientAffinityEnabled,
      'clientCertificateEnabled': ?clientCertificateEnabled,
      'clientCertificateExclusionPaths': ?clientCertificateExclusionPaths,
      'clientCertificateMode': ?clientCertificateMode,
      'connectionStrings': ?pulumi.Input.mapOptionalInputValue<List<WindowsWebAppConnectionString>, List<Map<String, dynamic>>>(connectionStrings, (value) => pulumi.Input.encodeList<WindowsWebAppConnectionString, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': ?enabled,
      'ftpPublishBasicAuthenticationEnabled': ?ftpPublishBasicAuthenticationEnabled,
      'httpsOnly': ?httpsOnly,
      'identity': ?pulumi.Input.mapOptionalInputValue<WindowsWebAppIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'keyVaultReferenceIdentityId': ?keyVaultReferenceIdentityId,
      'location': ?location,
      'logs': ?pulumi.Input.mapOptionalInputValue<WindowsWebAppLogs, Map<String, dynamic>>(logs, (value) => value.toMap()),
      'name': ?name,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': resourceGroupName,
      'servicePlanId': servicePlanId,
      'siteConfig': pulumi.Input.mapInputValue<WindowsWebAppSiteConfig, Map<String, dynamic>>(siteConfig, (value) => value.toMap()),
      'stickySettings': ?pulumi.Input.mapOptionalInputValue<WindowsWebAppStickySettings, Map<String, dynamic>>(stickySettings, (value) => value.toMap()),
      'storageAccounts': ?pulumi.Input.mapOptionalInputValue<List<WindowsWebAppStorageAccount>, List<Map<String, dynamic>>>(storageAccounts, (value) => pulumi.Input.encodeList<WindowsWebAppStorageAccount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'virtualNetworkBackupRestoreEnabled': ?virtualNetworkBackupRestoreEnabled,
      'virtualNetworkImagePullEnabled': ?virtualNetworkImagePullEnabled,
      'virtualNetworkSubnetId': ?virtualNetworkSubnetId,
      'webdeployPublishBasicAuthenticationEnabled': ?webdeployPublishBasicAuthenticationEnabled,
      'zipDeployFile': ?zipDeployFile,
    };
  }

  factory WindowsWebAppArgs.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppArgs(
      appSettings: map['appSettings'] == null ? null : ((map['appSettings']! as Map).cast<String, String>()).input(),
      authSettings: map['authSettings'] == null ? null : (WindowsWebAppAuthSettings.fromMap((map['authSettings']! as Map).cast<String, dynamic>())).input(),
      authSettingsV2: map['authSettingsV2'] == null ? null : (WindowsWebAppAuthSettingsV2.fromMap((map['authSettingsV2']! as Map).cast<String, dynamic>())).input(),
      backup: map['backup'] == null ? null : (WindowsWebAppBackup.fromMap((map['backup']! as Map).cast<String, dynamic>())).input(),
      clientAffinityEnabled: map['clientAffinityEnabled'] == null ? null : (map['clientAffinityEnabled']! as bool).input(),
      clientCertificateEnabled: map['clientCertificateEnabled'] == null ? null : (map['clientCertificateEnabled']! as bool).input(),
      clientCertificateExclusionPaths: map['clientCertificateExclusionPaths'] == null ? null : (map['clientCertificateExclusionPaths']! as String).input(),
      clientCertificateMode: map['clientCertificateMode'] == null ? null : (map['clientCertificateMode']! as String).input(),
      connectionStrings: map['connectionStrings'] == null ? null : (pulumi.Input.decodeList<WindowsWebAppConnectionString>(map['connectionStrings']!, (value) => WindowsWebAppConnectionString.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      ftpPublishBasicAuthenticationEnabled: map['ftpPublishBasicAuthenticationEnabled'] == null ? null : (map['ftpPublishBasicAuthenticationEnabled']! as bool).input(),
      httpsOnly: map['httpsOnly'] == null ? null : (map['httpsOnly']! as bool).input(),
      identity: map['identity'] == null ? null : (WindowsWebAppIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      keyVaultReferenceIdentityId: map['keyVaultReferenceIdentityId'] == null ? null : (map['keyVaultReferenceIdentityId']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      logs: map['logs'] == null ? null : (WindowsWebAppLogs.fromMap((map['logs']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : (map['publicNetworkAccessEnabled']! as bool).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      servicePlanId: (map['servicePlanId'] as String).input(),
      siteConfig: (WindowsWebAppSiteConfig.fromMap((map['siteConfig'] as Map).cast<String, dynamic>())).input(),
      stickySettings: map['stickySettings'] == null ? null : (WindowsWebAppStickySettings.fromMap((map['stickySettings']! as Map).cast<String, dynamic>())).input(),
      storageAccounts: map['storageAccounts'] == null ? null : (pulumi.Input.decodeList<WindowsWebAppStorageAccount>(map['storageAccounts']!, (value) => WindowsWebAppStorageAccount.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      virtualNetworkBackupRestoreEnabled: map['virtualNetworkBackupRestoreEnabled'] == null ? null : (map['virtualNetworkBackupRestoreEnabled']! as bool).input(),
      virtualNetworkImagePullEnabled: map['virtualNetworkImagePullEnabled'] == null ? null : (map['virtualNetworkImagePullEnabled']! as bool).input(),
      virtualNetworkSubnetId: map['virtualNetworkSubnetId'] == null ? null : (map['virtualNetworkSubnetId']! as String).input(),
      webdeployPublishBasicAuthenticationEnabled: map['webdeployPublishBasicAuthenticationEnabled'] == null ? null : (map['webdeployPublishBasicAuthenticationEnabled']! as bool).input(),
      zipDeployFile: map['zipDeployFile'] == null ? null : (map['zipDeployFile']! as String).input(),
    );
  }
}

