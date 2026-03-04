// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_web_app_slot_auth_settings.dart';
import 'windows_web_app_slot_auth_settings_v2.dart';
import 'windows_web_app_slot_backup.dart';
import 'windows_web_app_slot_connection_string.dart';
import 'windows_web_app_slot_identity.dart';
import 'windows_web_app_slot_logs.dart';
import 'windows_web_app_slot_site_config.dart';
import 'windows_web_app_slot_storage_account.dart';

/// {@template pulumi_appservice_windows_web_app_slot_windows_web_app_slot_args_doc}
/// The set of arguments for WindowsWebAppSlot.
/// {@endtemplate}
/// {@macro pulumi_appservice_windows_web_app_slot_windows_web_app_slot_args_doc}
class WindowsWebAppSlotArgs {
  /// The ID of the Windows Web App this Deployment Slot will be part of. Changing this forces a new Windows Web App to be created.
  final pulumi.Input<String> appServiceId;

  /// A map of key-value pairs of App Settings.
  final pulumi.Input<Map<String, String>>? appSettings;

  /// An `auth_settings` block as defined below.
  final pulumi.Input<WindowsWebAppSlotAuthSettings>? authSettings;

  /// An `auth_settings_v2` block as defined below.
  final pulumi.Input<WindowsWebAppSlotAuthSettingsV2>? authSettingsV2;

  /// A `backup` block as defined below.
  final pulumi.Input<WindowsWebAppSlotBackup>? backup;

  /// Should Client Affinity be enabled?
  final pulumi.Input<bool>? clientAffinityEnabled;

  /// Should Client Certificates be enabled?
  final pulumi.Input<bool>? clientCertificateEnabled;

  /// Paths to exclude when using client certificates, separated by ;
  final pulumi.Input<String>? clientCertificateExclusionPaths;

  /// The Client Certificate mode. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`. This property has no effect when `client_certificate_enabled` is `false`. Defaults to `Required`.
  final pulumi.Input<String>? clientCertificateMode;

  /// One or more `connection_string` blocks as defined below.
  final pulumi.Input<List<WindowsWebAppSlotConnectionString>>?
  connectionStrings;

  /// Should the Windows Web App Slot be enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;

  /// Should the default FTP Basic Authentication publishing profile be enabled. Defaults to `true`.
  final pulumi.Input<bool>? ftpPublishBasicAuthenticationEnabled;

  /// Should the Windows Web App Slot require HTTPS connections. Defaults to `false`.
  final pulumi.Input<bool>? httpsOnly;

  /// An `identity` block as defined below.
  final pulumi.Input<WindowsWebAppSlotIdentity>? identity;

  /// The User Assigned Identity ID used for accessing KeyVault secrets. The identity must be assigned to the application in the `identity` block. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity)
  final pulumi.Input<String>? keyVaultReferenceIdentityId;

  /// A `logs` block as defined below.
  final pulumi.Input<WindowsWebAppSlotLogs>? logs;

  /// The name which should be used for this Windows Web App Slot. Changing this forces a new Windows Web App Slot to be created.
  ///
  /// &gt; **Note:** Terraform will perform a name availability check as part of the creation progress, if this Web App is part of an App Service Environment terraform will require Read permission on the App Service Environment for this to complete reliably.
  final pulumi.Input<String>? name;

  /// Should public network access be enabled for the Web App. Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;

  /// The ID of the Service Plan in which to run this slot. If not specified the same Service Plan as the Windows Web App will be used.
  ///
  /// &gt; **Note:** `service_plan_id` should only be specified if it differs from the Service Plan of the associated Windows Web App.
  final pulumi.Input<String>? servicePlanId;

  /// A `site_config` block as defined below.
  final pulumi.Input<WindowsWebAppSlotSiteConfig> siteConfig;

  /// One or more `storage_account` blocks as defined below.
  ///
  /// &gt; **Note:** Using this value requires `WEBSITE_RUN_FROM_PACKAGE=1` to be set on the App in `app_settings`. Refer to the [Azure docs](https://docs.microsoft.com/en-us/azure/app-service/deploy-run-package) for further details.
  final pulumi.Input<List<WindowsWebAppSlotStorageAccount>>? storageAccounts;

  /// A mapping of tags which should be assigned to the Windows Web App Slot.
  final pulumi.Input<Map<String, String>>? tags;

  /// Whether backup and restore operations over the linked virtual network are enabled. Defaults to `false`.
  final pulumi.Input<bool>? virtualNetworkBackupRestoreEnabled;

  /// Whether traffic for the image pull should be routed over the virtual network.
  ///
  /// &gt; **Note:** `virtual_network_image_pull_enabled` must be set to `true` when running in an App Service Environment.
  final pulumi.Input<bool>? virtualNetworkImagePullEnabled;

  /// The subnet id which will be used by this Web App Slot for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration).
  ///
  /// &gt; **Note:** The AzureRM Terraform provider provides regional virtual network integration via the standalone resource app_service_virtual_network_swift_connection and in-line within this resource using the `virtual_network_subnet_id` property. You cannot use both methods simultaneously. If the virtual network is set via the resource `app_service_virtual_network_swift_connection` then `ignore_changes` should be used in the web app slot configuration.
  ///
  /// &gt; **Note:** Assigning the `virtual_network_subnet_id` property requires [RBAC permissions on the subnet](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#permissions)
  final pulumi.Input<String>? virtualNetworkSubnetId;

  /// Should the default WebDeploy Basic Authentication publishing credentials enabled. Defaults to `true`.
  ///
  /// &gt; **Note:** Setting this value to true will disable the ability to use `zip_deploy_file` which currently relies on the default publishing profile.
  final pulumi.Input<bool>? webdeployPublishBasicAuthenticationEnabled;

  /// The local path and filename of the Zip packaged application to deploy to this Windows Web App.
  final pulumi.Input<String>? zipDeployFile;

  /// Creates a new [WindowsWebAppSlotArgs].
  /// [appServiceId] The ID of the Windows Web App this Deployment Slot will be part of. Changing this forces a new Windows Web App to be created.
  /// [appSettings] A map of key-value pairs of App Settings.
  /// [authSettings] An `auth_settings` block as defined below.
  /// [authSettingsV2] An `auth_settings_v2` block as defined below.
  /// [backup] A `backup` block as defined below.
  /// [clientAffinityEnabled] Should Client Affinity be enabled?
  /// [clientCertificateEnabled] Should Client Certificates be enabled?
  /// [clientCertificateExclusionPaths] Paths to exclude when using client certificates, separated by ;
  /// [clientCertificateMode] The Client Certificate mode. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`. This property has no effect when `client_certificate_enabled` is `false`. Defaults to `Required`.
  /// [connectionStrings] One or more `connection_string` blocks as defined below.
  /// [enabled] Should the Windows Web App Slot be enabled? Defaults to `true`.
  /// [ftpPublishBasicAuthenticationEnabled] Should the default FTP Basic Authentication publishing profile be enabled. Defaults to `true`.
  /// [httpsOnly] Should the Windows Web App Slot require HTTPS connections. Defaults to `false`.
  /// [identity] An `identity` block as defined below.
  /// [keyVaultReferenceIdentityId] The User Assigned Identity ID used for accessing KeyVault secrets. The identity must be assigned to the application in the `identity` block. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity)
  /// [logs] A `logs` block as defined below.
  /// [name] The name which should be used for this Windows Web App Slot. Changing this forces a new Windows Web App Slot to be created.
  /// [publicNetworkAccessEnabled] Should public network access be enabled for the Web App. Defaults to `true`.
  /// [servicePlanId] The ID of the Service Plan in which to run this slot. If not specified the same Service Plan as the Windows Web App will be used.
  /// [siteConfig] A `site_config` block as defined below.
  /// [storageAccounts] One or more `storage_account` blocks as defined below.
  /// [tags] A mapping of tags which should be assigned to the Windows Web App Slot.
  /// [virtualNetworkBackupRestoreEnabled] Whether backup and restore operations over the linked virtual network are enabled. Defaults to `false`.
  /// [virtualNetworkImagePullEnabled] Whether traffic for the image pull should be routed over the virtual network.
  /// [virtualNetworkSubnetId] The subnet id which will be used by this Web App Slot for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration).
  /// [webdeployPublishBasicAuthenticationEnabled] Should the default WebDeploy Basic Authentication publishing credentials enabled. Defaults to `true`.
  /// [zipDeployFile] The local path and filename of the Zip packaged application to deploy to this Windows Web App.
  WindowsWebAppSlotArgs({
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
    this.virtualNetworkImagePullEnabled,
    this.virtualNetworkSubnetId,
    this.webdeployPublishBasicAuthenticationEnabled,
    this.zipDeployFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appServiceId': appServiceId,
      'appSettings': ?appSettings,
      'authSettings':
          ?pulumi.Input.mapOptionalInputValue<
            WindowsWebAppSlotAuthSettings,
            Map<String, dynamic>
          >(authSettings, (value) => value.toMap()),
      'authSettingsV2':
          ?pulumi.Input.mapOptionalInputValue<
            WindowsWebAppSlotAuthSettingsV2,
            Map<String, dynamic>
          >(authSettingsV2, (value) => value.toMap()),
      'backup':
          ?pulumi.Input.mapOptionalInputValue<
            WindowsWebAppSlotBackup,
            Map<String, dynamic>
          >(backup, (value) => value.toMap()),
      'clientAffinityEnabled': ?clientAffinityEnabled,
      'clientCertificateEnabled': ?clientCertificateEnabled,
      'clientCertificateExclusionPaths': ?clientCertificateExclusionPaths,
      'clientCertificateMode': ?clientCertificateMode,
      'connectionStrings':
          ?pulumi.Input.mapOptionalInputValue<
            List<WindowsWebAppSlotConnectionString>,
            List<Map<String, dynamic>>
          >(
            connectionStrings,
            (value) =>
                pulumi.Input.encodeList<
                  WindowsWebAppSlotConnectionString,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'enabled': ?enabled,
      'ftpPublishBasicAuthenticationEnabled':
          ?ftpPublishBasicAuthenticationEnabled,
      'httpsOnly': ?httpsOnly,
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            WindowsWebAppSlotIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'keyVaultReferenceIdentityId': ?keyVaultReferenceIdentityId,
      'logs':
          ?pulumi.Input.mapOptionalInputValue<
            WindowsWebAppSlotLogs,
            Map<String, dynamic>
          >(logs, (value) => value.toMap()),
      'name': ?name,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'servicePlanId': ?servicePlanId,
      'siteConfig':
          pulumi.Input.mapInputValue<
            WindowsWebAppSlotSiteConfig,
            Map<String, dynamic>
          >(siteConfig, (value) => value.toMap()),
      'storageAccounts':
          ?pulumi.Input.mapOptionalInputValue<
            List<WindowsWebAppSlotStorageAccount>,
            List<Map<String, dynamic>>
          >(
            storageAccounts,
            (value) =>
                pulumi.Input.encodeList<
                  WindowsWebAppSlotStorageAccount,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'tags': ?tags,
      'virtualNetworkBackupRestoreEnabled': ?virtualNetworkBackupRestoreEnabled,
      'virtualNetworkImagePullEnabled': ?virtualNetworkImagePullEnabled,
      'virtualNetworkSubnetId': ?virtualNetworkSubnetId,
      'webdeployPublishBasicAuthenticationEnabled':
          ?webdeployPublishBasicAuthenticationEnabled,
      'zipDeployFile': ?zipDeployFile,
    };
  }

  factory WindowsWebAppSlotArgs.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppSlotArgs(
      appServiceId: pulumi.Input.fromValue(map['appServiceId'] as String),
      appSettings: (() {
        final guardedValue = map['appSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      authSettings: (() {
        final guardedValue = map['authSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WindowsWebAppSlotAuthSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      authSettingsV2: (() {
        final guardedValue = map['authSettingsV2'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WindowsWebAppSlotAuthSettingsV2.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      backup: (() {
        final guardedValue = map['backup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WindowsWebAppSlotBackup.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      clientAffinityEnabled: (() {
        final guardedValue = map['clientAffinityEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      clientCertificateEnabled: (() {
        final guardedValue = map['clientCertificateEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      clientCertificateExclusionPaths: (() {
        final guardedValue = map['clientCertificateExclusionPaths'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clientCertificateMode: (() {
        final guardedValue = map['clientCertificateMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      connectionStrings: (() {
        final guardedValue = map['connectionStrings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<WindowsWebAppSlotConnectionString>(
            guardedValue,
            (value) => WindowsWebAppSlotConnectionString.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ftpPublishBasicAuthenticationEnabled: (() {
        final guardedValue = map['ftpPublishBasicAuthenticationEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      httpsOnly: (() {
        final guardedValue = map['httpsOnly'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WindowsWebAppSlotIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      keyVaultReferenceIdentityId: (() {
        final guardedValue = map['keyVaultReferenceIdentityId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      logs: (() {
        final guardedValue = map['logs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WindowsWebAppSlotLogs.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publicNetworkAccessEnabled: (() {
        final guardedValue = map['publicNetworkAccessEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      servicePlanId: (() {
        final guardedValue = map['servicePlanId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      siteConfig: pulumi.Input.fromValue(
        WindowsWebAppSlotSiteConfig.fromMap(
          (map['siteConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      storageAccounts: (() {
        final guardedValue = map['storageAccounts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<WindowsWebAppSlotStorageAccount>(
            guardedValue,
            (value) => WindowsWebAppSlotStorageAccount.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      virtualNetworkBackupRestoreEnabled: (() {
        final guardedValue = map['virtualNetworkBackupRestoreEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      virtualNetworkImagePullEnabled: (() {
        final guardedValue = map['virtualNetworkImagePullEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      virtualNetworkSubnetId: (() {
        final guardedValue = map['virtualNetworkSubnetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      webdeployPublishBasicAuthenticationEnabled: (() {
        final guardedValue = map['webdeployPublishBasicAuthenticationEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      zipDeployFile: (() {
        final guardedValue = map['zipDeployFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
