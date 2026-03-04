// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_web_app_auth_settings.dart';
import 'linux_web_app_auth_settings_v2.dart';
import 'linux_web_app_backup.dart';
import 'linux_web_app_connection_string.dart';
import 'linux_web_app_identity.dart';
import 'linux_web_app_logs.dart';
import 'linux_web_app_site_config.dart';
import 'linux_web_app_sticky_settings.dart';
import 'linux_web_app_storage_account.dart';

/// {@template pulumi_appservice_linux_web_app_linux_web_app_args_doc}
/// The set of arguments for LinuxWebApp.
/// {@endtemplate}
/// {@macro pulumi_appservice_linux_web_app_linux_web_app_args_doc}
class LinuxWebAppArgs {
  /// A map of key-value pairs of App Settings.
  final pulumi.Input<Map<String, String>>? appSettings;

  /// A `auth_settings` block as defined below.
  final pulumi.Input<LinuxWebAppAuthSettings>? authSettings;

  /// An `auth_settings_v2` block as defined below.
  final pulumi.Input<LinuxWebAppAuthSettingsV2>? authSettingsV2;

  /// A `backup` block as defined below.
  final pulumi.Input<LinuxWebAppBackup>? backup;

  /// Should Client Affinity be enabled?
  final pulumi.Input<bool>? clientAffinityEnabled;

  /// Should Client Certificates be enabled?
  final pulumi.Input<bool>? clientCertificateEnabled;

  /// Paths to exclude when using client certificates, separated by ;
  final pulumi.Input<String>? clientCertificateExclusionPaths;

  /// The Client Certificate mode. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`. This property has no effect when `client_certificate_enabled` is `false`. Defaults to `Required`.
  final pulumi.Input<String>? clientCertificateMode;

  /// One or more `connection_string` blocks as defined below.
  final pulumi.Input<List<LinuxWebAppConnectionString>>? connectionStrings;

  /// Should the Linux Web App be enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;

  /// Should the default FTP Basic Authentication publishing profile be enabled. Defaults to `true`.
  final pulumi.Input<bool>? ftpPublishBasicAuthenticationEnabled;

  /// Should the Linux Web App require HTTPS connections. Defaults to `false`.
  final pulumi.Input<bool>? httpsOnly;

  /// An `identity` block as defined below.
  final pulumi.Input<LinuxWebAppIdentity>? identity;

  /// The User Assigned Identity ID used for accessing KeyVault secrets. The identity must be assigned to the application in the `identity` block. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity).
  final pulumi.Input<String>? keyVaultReferenceIdentityId;

  /// The Azure Region where the Linux Web App should exist. Changing this forces a new Linux Web App to be created.
  final pulumi.Input<String>? location;

  /// A `logs` block as defined below.
  final pulumi.Input<LinuxWebAppLogs>? logs;

  /// The name which should be used for this Linux Web App. Changing this forces a new Linux Web App to be created.
  ///
  /// &gt; **Note:** Terraform will perform a name availability check as part of the creation progress, if this Web App is part of an App Service Environment terraform will require Read permission on the ASE for this to complete reliably.
  final pulumi.Input<String>? name;

  /// Should public network access be enabled for the Web App. Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;

  /// The name of the Resource Group where the Linux Web App should exist. Changing this forces a new Linux Web App to be created.
  final pulumi.Input<String> resourceGroupName;

  /// The ID of the Service Plan that this Linux App Service will be created in.
  final pulumi.Input<String> servicePlanId;

  /// A `site_config` block as defined below.
  final pulumi.Input<LinuxWebAppSiteConfig> siteConfig;

  /// A `sticky_settings` block as defined below.
  final pulumi.Input<LinuxWebAppStickySettings>? stickySettings;

  /// One or more `storage_account` blocks as defined below.
  final pulumi.Input<List<LinuxWebAppStorageAccount>>? storageAccounts;

  /// A mapping of tags which should be assigned to the Linux Web App.
  final pulumi.Input<Map<String, String>>? tags;

  /// Whether backup and restore operations over the linked virtual network are enabled. Defaults to `false`.
  final pulumi.Input<bool>? virtualNetworkBackupRestoreEnabled;

  /// The subnet id which will be used by this Web App for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration).
  ///
  /// &gt; **Note:** The AzureRM Terraform provider provides regional virtual network integration via the standalone resource app_service_virtual_network_swift_connection and in-line within this resource using the `virtual_network_subnet_id` property. You cannot use both methods simultaneously. If the virtual network is set via the resource `app_service_virtual_network_swift_connection` then `ignore_changes` should be used in the web app configuration.
  ///
  /// &gt; **Note:** Assigning the `virtual_network_subnet_id` property requires [RBAC permissions on the subnet](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#permissions)
  final pulumi.Input<String>? virtualNetworkSubnetId;

  /// Should the traffic for the image pull be routed over virtual network enabled. Defaults to `false`.
  ///
  /// &gt; **Note:** The feature can also be enabled via the app setting `WEBSITE_PULL_IMAGE_OVER_VNET`. Must be set to `true` when running in an App Service Environment.
  final pulumi.Input<bool>? vnetImagePullEnabled;

  /// Should the default WebDeploy Basic Authentication publishing credentials enabled. Defaults to `true`.
  ///
  /// &gt; **Note:** Setting this value to true will disable the ability to use `zip_deploy_file` which currently relies on the default publishing profile.
  final pulumi.Input<bool>? webdeployPublishBasicAuthenticationEnabled;

  /// The local path and filename of the Zip packaged application to deploy to this Linux Web App.
  ///
  /// &gt; **Note:** Using this value requires either `WEBSITE_RUN_FROM_PACKAGE=1` or `SCM_DO_BUILD_DURING_DEPLOYMENT=true` to be set on the App in `app_settings`. Refer to the Azure docs on [running the Web App directly from the Zip package](https://learn.microsoft.com/en-us/azure/app-service/deploy-run-package), or [automating the build for Zip deploy](https://learn.microsoft.com/en-us/azure/app-service/deploy-zip#enable-build-automation-for-zip-deploy) for further details.
  final pulumi.Input<String>? zipDeployFile;

  /// Creates a new [LinuxWebAppArgs].
  /// [appSettings] A map of key-value pairs of App Settings.
  /// [authSettings] A `auth_settings` block as defined below.
  /// [authSettingsV2] An `auth_settings_v2` block as defined below.
  /// [backup] A `backup` block as defined below.
  /// [clientAffinityEnabled] Should Client Affinity be enabled?
  /// [clientCertificateEnabled] Should Client Certificates be enabled?
  /// [clientCertificateExclusionPaths] Paths to exclude when using client certificates, separated by ;
  /// [clientCertificateMode] The Client Certificate mode. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`. This property has no effect when `client_certificate_enabled` is `false`. Defaults to `Required`.
  /// [connectionStrings] One or more `connection_string` blocks as defined below.
  /// [enabled] Should the Linux Web App be enabled? Defaults to `true`.
  /// [ftpPublishBasicAuthenticationEnabled] Should the default FTP Basic Authentication publishing profile be enabled. Defaults to `true`.
  /// [httpsOnly] Should the Linux Web App require HTTPS connections. Defaults to `false`.
  /// [identity] An `identity` block as defined below.
  /// [keyVaultReferenceIdentityId] The User Assigned Identity ID used for accessing KeyVault secrets. The identity must be assigned to the application in the `identity` block. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity).
  /// [location] The Azure Region where the Linux Web App should exist. Changing this forces a new Linux Web App to be created.
  /// [logs] A `logs` block as defined below.
  /// [name] The name which should be used for this Linux Web App. Changing this forces a new Linux Web App to be created.
  /// [publicNetworkAccessEnabled] Should public network access be enabled for the Web App. Defaults to `true`.
  /// [resourceGroupName] The name of the Resource Group where the Linux Web App should exist. Changing this forces a new Linux Web App to be created.
  /// [servicePlanId] The ID of the Service Plan that this Linux App Service will be created in.
  /// [siteConfig] A `site_config` block as defined below.
  /// [stickySettings] A `sticky_settings` block as defined below.
  /// [storageAccounts] One or more `storage_account` blocks as defined below.
  /// [tags] A mapping of tags which should be assigned to the Linux Web App.
  /// [virtualNetworkBackupRestoreEnabled] Whether backup and restore operations over the linked virtual network are enabled. Defaults to `false`.
  /// [virtualNetworkSubnetId] The subnet id which will be used by this Web App for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration).
  /// [vnetImagePullEnabled] Should the traffic for the image pull be routed over virtual network enabled. Defaults to `false`.
  /// [webdeployPublishBasicAuthenticationEnabled] Should the default WebDeploy Basic Authentication publishing credentials enabled. Defaults to `true`.
  /// [zipDeployFile] The local path and filename of the Zip packaged application to deploy to this Linux Web App.
  LinuxWebAppArgs({
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
    this.virtualNetworkSubnetId,
    this.vnetImagePullEnabled,
    this.webdeployPublishBasicAuthenticationEnabled,
    this.zipDeployFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appSettings': ?appSettings,
      'authSettings':
          ?pulumi.Input.mapOptionalInputValue<
            LinuxWebAppAuthSettings,
            Map<String, dynamic>
          >(authSettings, (value) => value.toMap()),
      'authSettingsV2':
          ?pulumi.Input.mapOptionalInputValue<
            LinuxWebAppAuthSettingsV2,
            Map<String, dynamic>
          >(authSettingsV2, (value) => value.toMap()),
      'backup':
          ?pulumi.Input.mapOptionalInputValue<
            LinuxWebAppBackup,
            Map<String, dynamic>
          >(backup, (value) => value.toMap()),
      'clientAffinityEnabled': ?clientAffinityEnabled,
      'clientCertificateEnabled': ?clientCertificateEnabled,
      'clientCertificateExclusionPaths': ?clientCertificateExclusionPaths,
      'clientCertificateMode': ?clientCertificateMode,
      'connectionStrings':
          ?pulumi.Input.mapOptionalInputValue<
            List<LinuxWebAppConnectionString>,
            List<Map<String, dynamic>>
          >(
            connectionStrings,
            (value) =>
                pulumi.Input.encodeList<
                  LinuxWebAppConnectionString,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'enabled': ?enabled,
      'ftpPublishBasicAuthenticationEnabled':
          ?ftpPublishBasicAuthenticationEnabled,
      'httpsOnly': ?httpsOnly,
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            LinuxWebAppIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'keyVaultReferenceIdentityId': ?keyVaultReferenceIdentityId,
      'location': ?location,
      'logs':
          ?pulumi.Input.mapOptionalInputValue<
            LinuxWebAppLogs,
            Map<String, dynamic>
          >(logs, (value) => value.toMap()),
      'name': ?name,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': resourceGroupName,
      'servicePlanId': servicePlanId,
      'siteConfig':
          pulumi.Input.mapInputValue<
            LinuxWebAppSiteConfig,
            Map<String, dynamic>
          >(siteConfig, (value) => value.toMap()),
      'stickySettings':
          ?pulumi.Input.mapOptionalInputValue<
            LinuxWebAppStickySettings,
            Map<String, dynamic>
          >(stickySettings, (value) => value.toMap()),
      'storageAccounts':
          ?pulumi.Input.mapOptionalInputValue<
            List<LinuxWebAppStorageAccount>,
            List<Map<String, dynamic>>
          >(
            storageAccounts,
            (value) =>
                pulumi.Input.encodeList<
                  LinuxWebAppStorageAccount,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'tags': ?tags,
      'virtualNetworkBackupRestoreEnabled': ?virtualNetworkBackupRestoreEnabled,
      'virtualNetworkSubnetId': ?virtualNetworkSubnetId,
      'vnetImagePullEnabled': ?vnetImagePullEnabled,
      'webdeployPublishBasicAuthenticationEnabled':
          ?webdeployPublishBasicAuthenticationEnabled,
      'zipDeployFile': ?zipDeployFile,
    };
  }

  factory LinuxWebAppArgs.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppArgs(
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
          LinuxWebAppAuthSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      authSettingsV2: (() {
        final guardedValue = map['authSettingsV2'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LinuxWebAppAuthSettingsV2.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      backup: (() {
        final guardedValue = map['backup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LinuxWebAppBackup.fromMap(
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
          pulumi.Input.decodeList<LinuxWebAppConnectionString>(
            guardedValue,
            (value) => LinuxWebAppConnectionString.fromMap(
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
          LinuxWebAppIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      keyVaultReferenceIdentityId: (() {
        final guardedValue = map['keyVaultReferenceIdentityId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      logs: (() {
        final guardedValue = map['logs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LinuxWebAppLogs.fromMap(
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
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      servicePlanId: pulumi.Input.fromValue(map['servicePlanId'] as String),
      siteConfig: pulumi.Input.fromValue(
        LinuxWebAppSiteConfig.fromMap(
          (map['siteConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      stickySettings: (() {
        final guardedValue = map['stickySettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LinuxWebAppStickySettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      storageAccounts: (() {
        final guardedValue = map['storageAccounts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<LinuxWebAppStorageAccount>(
            guardedValue,
            (value) => LinuxWebAppStorageAccount.fromMap(
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
      virtualNetworkSubnetId: (() {
        final guardedValue = map['virtualNetworkSubnetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vnetImagePullEnabled: (() {
        final guardedValue = map['vnetImagePullEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
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
