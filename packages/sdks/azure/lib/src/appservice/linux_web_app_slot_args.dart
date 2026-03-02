// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_web_app_slot_auth_settings.dart';
import 'linux_web_app_slot_auth_settings_v2.dart';
import 'linux_web_app_slot_backup.dart';
import 'linux_web_app_slot_connection_string.dart';
import 'linux_web_app_slot_identity.dart';
import 'linux_web_app_slot_logs.dart';
import 'linux_web_app_slot_site_config.dart';
import 'linux_web_app_slot_storage_account.dart';

/// {@template pulumi_appservice_linux_web_app_slot_linux_web_app_slot_args_doc}
/// The set of arguments for LinuxWebAppSlot.
/// {@endtemplate}
/// {@macro pulumi_appservice_linux_web_app_slot_linux_web_app_slot_args_doc}
class LinuxWebAppSlotArgs {
  /// The ID of the Linux Web App this Deployment Slot will be part of.
  final pulumi.Input<String> appServiceId;
  /// A map of key-value pairs of App Settings.
  final pulumi.Input<Map<String, String>>? appSettings;
  /// An `auth_settings` block as defined below.
  final pulumi.Input<LinuxWebAppSlotAuthSettings>? authSettings;
  /// An `auth_settings_v2` block as defined below.
  final pulumi.Input<LinuxWebAppSlotAuthSettingsV2>? authSettingsV2;
  /// A `backup` block as defined below.
  final pulumi.Input<LinuxWebAppSlotBackup>? backup;
  /// Should Client Affinity be enabled?
  final pulumi.Input<bool>? clientAffinityEnabled;
  /// Should Client Certificates be enabled?
  final pulumi.Input<bool>? clientCertificateEnabled;
  /// Paths to exclude when using client certificates, separated by ;
  final pulumi.Input<String>? clientCertificateExclusionPaths;
  /// The Client Certificate mode. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`. This property has no effect when `client_cert_enabled` is `false`. Defaults to `Required`.
  final pulumi.Input<String>? clientCertificateMode;
  /// One or more `connection_string` blocks as defined below.
  final pulumi.Input<List<LinuxWebAppSlotConnectionString>>? connectionStrings;
  /// Should the Linux Web App be enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// Should the default FTP Basic Authentication publishing profile be enabled. Defaults to `true`.
  final pulumi.Input<bool>? ftpPublishBasicAuthenticationEnabled;
  /// Should the Linux Web App require HTTPS connections. Defaults to `false`.
  final pulumi.Input<bool>? httpsOnly;
  /// An `identity` block as defined below.
  final pulumi.Input<LinuxWebAppSlotIdentity>? identity;
  /// The User Assigned Identity ID used for accessing KeyVault secrets. The identity must be assigned to the application in the `identity` block. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity).
  final pulumi.Input<String>? keyVaultReferenceIdentityId;
  /// A `logs` block as defined below.
  final pulumi.Input<LinuxWebAppSlotLogs>? logs;
  /// The name which should be used for this Linux Web App Slot. Changing this forces a new Linux Web App Slot to be created.
  ///
  /// > **Note:** Terraform will perform a name availability check as part of the creation progress, if this Web App is part of an App Service Environment terraform will require Read permission on the ASE for this to complete reliably.
  final pulumi.Input<String>? name;
  /// Should public network access be enabled for the Web App. Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The ID of the Service Plan in which to run this slot. If not specified the same Service Plan as the Linux Web App will be used.
  ///
  /// > **Note:** `service_plan_id` should only be specified if it differs from the Service Plan of the associated Linux Web App.
  final pulumi.Input<String>? servicePlanId;
  /// A `site_config` block as defined below.
  final pulumi.Input<LinuxWebAppSlotSiteConfig> siteConfig;
  /// One or more `storage_account` blocks as defined below.
  final pulumi.Input<List<LinuxWebAppSlotStorageAccount>>? storageAccounts;
  /// A mapping of tags that should be assigned to the Linux Web App.
  final pulumi.Input<Map<String, String>>? tags;
  /// Whether backup and restore operations over the linked virtual network are enabled. Defaults to `false`.
  final pulumi.Input<bool>? virtualNetworkBackupRestoreEnabled;
  /// The subnet id which will be used by this Web App Slot for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration).
  ///
  /// > **Note:** The AzureRM Terraform provider provides regional virtual network integration via the standalone resource app_service_virtual_network_swift_connection and in-line within this resource using the `virtual_network_subnet_id` property. You cannot use both methods simultaneously. If the virtual network is set via the resource `app_service_virtual_network_swift_connection` then `ignore_changes` should be used in the web app slot configuration.
  ///
  /// > **Note:** Assigning the `virtual_network_subnet_id` property requires [RBAC permissions on the subnet](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#permissions)
  final pulumi.Input<String>? virtualNetworkSubnetId;
  /// Should the traffic for the image pull be routed over virtual network enabled. Defaults to `false`.
  ///
  /// > **Note:** The feature can also be enabled via the app setting `WEBSITE_PULL_IMAGE_OVER_VNET`. Must be set to `true` when running in an App Service Environment.
  final pulumi.Input<bool>? vnetImagePullEnabled;
  /// Should the default WebDeploy Basic Authentication publishing credentials enabled. Defaults to `true`.
  ///
  /// > **Note:** Setting this value to true will disable the ability to use `zip_deploy_file` which currently relies on the default publishing profile.
  final pulumi.Input<bool>? webdeployPublishBasicAuthenticationEnabled;
  /// The local path and filename of the Zip packaged application to deploy to this Linux Web App.
  ///
  /// > **Note:** Using this value requires `WEBSITE_RUN_FROM_PACKAGE=1` to be set on the App in `app_settings`. Refer to the [Azure docs](https://docs.microsoft.com/en-us/azure/app-service/deploy-run-package) for further details.
  final pulumi.Input<String>? zipDeployFile;

  /// Creates a new [LinuxWebAppSlotArgs].
  /// [appServiceId] The ID of the Linux Web App this Deployment Slot will be part of.
  /// [appSettings] A map of key-value pairs of App Settings.
  /// [authSettings] An `auth_settings` block as defined below.
  /// [authSettingsV2] An `auth_settings_v2` block as defined below.
  /// [backup] A `backup` block as defined below.
  /// [clientAffinityEnabled] Should Client Affinity be enabled?
  /// [clientCertificateEnabled] Should Client Certificates be enabled?
  /// [clientCertificateExclusionPaths] Paths to exclude when using client certificates, separated by ;
  /// [clientCertificateMode] The Client Certificate mode. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`. This property has no effect when `client_cert_enabled` is `false`. Defaults to `Required`.
  /// [connectionStrings] One or more `connection_string` blocks as defined below.
  /// [enabled] Should the Linux Web App be enabled? Defaults to `true`.
  /// [ftpPublishBasicAuthenticationEnabled] Should the default FTP Basic Authentication publishing profile be enabled. Defaults to `true`.
  /// [httpsOnly] Should the Linux Web App require HTTPS connections. Defaults to `false`.
  /// [identity] An `identity` block as defined below.
  /// [keyVaultReferenceIdentityId] The User Assigned Identity ID used for accessing KeyVault secrets. The identity must be assigned to the application in the `identity` block. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity).
  /// [logs] A `logs` block as defined below.
  /// [name] The name which should be used for this Linux Web App Slot. Changing this forces a new Linux Web App Slot to be created.
  /// [publicNetworkAccessEnabled] Should public network access be enabled for the Web App. Defaults to `true`.
  /// [servicePlanId] The ID of the Service Plan in which to run this slot. If not specified the same Service Plan as the Linux Web App will be used.
  /// [siteConfig] A `site_config` block as defined below.
  /// [storageAccounts] One or more `storage_account` blocks as defined below.
  /// [tags] A mapping of tags that should be assigned to the Linux Web App.
  /// [virtualNetworkBackupRestoreEnabled] Whether backup and restore operations over the linked virtual network are enabled. Defaults to `false`.
  /// [virtualNetworkSubnetId] The subnet id which will be used by this Web App Slot for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration).
  /// [vnetImagePullEnabled] Should the traffic for the image pull be routed over virtual network enabled. Defaults to `false`.
  /// [webdeployPublishBasicAuthenticationEnabled] Should the default WebDeploy Basic Authentication publishing credentials enabled. Defaults to `true`.
  /// [zipDeployFile] The local path and filename of the Zip packaged application to deploy to this Linux Web App.
  LinuxWebAppSlotArgs({
    required this.appServiceId,
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
    this.logs,
    this.name,
    this.publicNetworkAccessEnabled,
    this.servicePlanId,
    required this.siteConfig,
    this.storageAccounts,
    this.tags,
    this.virtualNetworkBackupRestoreEnabled,
    this.virtualNetworkSubnetId,
    this.vnetImagePullEnabled,
    this.webdeployPublishBasicAuthenticationEnabled,
    this.zipDeployFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appServiceId': appServiceId,
      'appSettings': ?appSettings,
      'authSettings': ?pulumi.Input.mapOptionalInputValue<LinuxWebAppSlotAuthSettings, Map<String, dynamic>>(authSettings, (value) => value.toMap()),
      'authSettingsV2': ?pulumi.Input.mapOptionalInputValue<LinuxWebAppSlotAuthSettingsV2, Map<String, dynamic>>(authSettingsV2, (value) => value.toMap()),
      'backup': ?pulumi.Input.mapOptionalInputValue<LinuxWebAppSlotBackup, Map<String, dynamic>>(backup, (value) => value.toMap()),
      'clientAffinityEnabled': ?clientAffinityEnabled,
      'clientCertificateEnabled': ?clientCertificateEnabled,
      'clientCertificateExclusionPaths': ?clientCertificateExclusionPaths,
      'clientCertificateMode': ?clientCertificateMode,
      'connectionStrings': ?pulumi.Input.mapOptionalInputValue<List<LinuxWebAppSlotConnectionString>, List<Map<String, dynamic>>>(connectionStrings, (value) => pulumi.Input.encodeList<LinuxWebAppSlotConnectionString, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': ?enabled,
      'ftpPublishBasicAuthenticationEnabled': ?ftpPublishBasicAuthenticationEnabled,
      'httpsOnly': ?httpsOnly,
      'identity': ?pulumi.Input.mapOptionalInputValue<LinuxWebAppSlotIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'keyVaultReferenceIdentityId': ?keyVaultReferenceIdentityId,
      'logs': ?pulumi.Input.mapOptionalInputValue<LinuxWebAppSlotLogs, Map<String, dynamic>>(logs, (value) => value.toMap()),
      'name': ?name,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'servicePlanId': ?servicePlanId,
      'siteConfig': pulumi.Input.mapInputValue<LinuxWebAppSlotSiteConfig, Map<String, dynamic>>(siteConfig, (value) => value.toMap()),
      'storageAccounts': ?pulumi.Input.mapOptionalInputValue<List<LinuxWebAppSlotStorageAccount>, List<Map<String, dynamic>>>(storageAccounts, (value) => pulumi.Input.encodeList<LinuxWebAppSlotStorageAccount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'virtualNetworkBackupRestoreEnabled': ?virtualNetworkBackupRestoreEnabled,
      'virtualNetworkSubnetId': ?virtualNetworkSubnetId,
      'vnetImagePullEnabled': ?vnetImagePullEnabled,
      'webdeployPublishBasicAuthenticationEnabled': ?webdeployPublishBasicAuthenticationEnabled,
      'zipDeployFile': ?zipDeployFile,
    };
  }

  factory LinuxWebAppSlotArgs.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppSlotArgs(
      appServiceId: (map['appServiceId'] as String).input(),
      appSettings: map['appSettings'] == null ? null : ((map['appSettings']! as Map).cast<String, String>()).input(),
      authSettings: map['authSettings'] == null ? null : (LinuxWebAppSlotAuthSettings.fromMap((map['authSettings']! as Map).cast<String, dynamic>())).input(),
      authSettingsV2: map['authSettingsV2'] == null ? null : (LinuxWebAppSlotAuthSettingsV2.fromMap((map['authSettingsV2']! as Map).cast<String, dynamic>())).input(),
      backup: map['backup'] == null ? null : (LinuxWebAppSlotBackup.fromMap((map['backup']! as Map).cast<String, dynamic>())).input(),
      clientAffinityEnabled: map['clientAffinityEnabled'] == null ? null : (map['clientAffinityEnabled']! as bool).input(),
      clientCertificateEnabled: map['clientCertificateEnabled'] == null ? null : (map['clientCertificateEnabled']! as bool).input(),
      clientCertificateExclusionPaths: map['clientCertificateExclusionPaths'] == null ? null : (map['clientCertificateExclusionPaths']! as String).input(),
      clientCertificateMode: map['clientCertificateMode'] == null ? null : (map['clientCertificateMode']! as String).input(),
      connectionStrings: map['connectionStrings'] == null ? null : (pulumi.Input.decodeList<LinuxWebAppSlotConnectionString>(map['connectionStrings']!, (value) => LinuxWebAppSlotConnectionString.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      ftpPublishBasicAuthenticationEnabled: map['ftpPublishBasicAuthenticationEnabled'] == null ? null : (map['ftpPublishBasicAuthenticationEnabled']! as bool).input(),
      httpsOnly: map['httpsOnly'] == null ? null : (map['httpsOnly']! as bool).input(),
      identity: map['identity'] == null ? null : (LinuxWebAppSlotIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      keyVaultReferenceIdentityId: map['keyVaultReferenceIdentityId'] == null ? null : (map['keyVaultReferenceIdentityId']! as String).input(),
      logs: map['logs'] == null ? null : (LinuxWebAppSlotLogs.fromMap((map['logs']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : (map['publicNetworkAccessEnabled']! as bool).input(),
      servicePlanId: map['servicePlanId'] == null ? null : (map['servicePlanId']! as String).input(),
      siteConfig: (LinuxWebAppSlotSiteConfig.fromMap((map['siteConfig'] as Map).cast<String, dynamic>())).input(),
      storageAccounts: map['storageAccounts'] == null ? null : (pulumi.Input.decodeList<LinuxWebAppSlotStorageAccount>(map['storageAccounts']!, (value) => LinuxWebAppSlotStorageAccount.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      virtualNetworkBackupRestoreEnabled: map['virtualNetworkBackupRestoreEnabled'] == null ? null : (map['virtualNetworkBackupRestoreEnabled']! as bool).input(),
      virtualNetworkSubnetId: map['virtualNetworkSubnetId'] == null ? null : (map['virtualNetworkSubnetId']! as String).input(),
      vnetImagePullEnabled: map['vnetImagePullEnabled'] == null ? null : (map['vnetImagePullEnabled']! as bool).input(),
      webdeployPublishBasicAuthenticationEnabled: map['webdeployPublishBasicAuthenticationEnabled'] == null ? null : (map['webdeployPublishBasicAuthenticationEnabled']! as bool).input(),
      zipDeployFile: map['zipDeployFile'] == null ? null : (map['zipDeployFile']! as String).input(),
    );
  }
}

