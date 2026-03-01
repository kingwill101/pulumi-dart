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
  final pulumi.Input<List<WindowsWebAppSlotConnectionString>>? connectionStrings;
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
  /// > **Note:** Terraform will perform a name availability check as part of the creation progress, if this Web App is part of an App Service Environment terraform will require Read permission on the App Service Environment for this to complete reliably.
  final pulumi.Input<String>? name;
  /// Should public network access be enabled for the Web App. Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The ID of the Service Plan in which to run this slot. If not specified the same Service Plan as the Windows Web App will be used.
  ///
  /// > **Note:** `service_plan_id` should only be specified if it differs from the Service Plan of the associated Windows Web App.
  final pulumi.Input<String>? servicePlanId;
  /// A `site_config` block as defined below.
  final pulumi.Input<WindowsWebAppSlotSiteConfig> siteConfig;
  /// One or more `storage_account` blocks as defined below.
  ///
  /// > **Note:** Using this value requires `WEBSITE_RUN_FROM_PACKAGE=1` to be set on the App in `app_settings`. Refer to the [Azure docs](https://docs.microsoft.com/en-us/azure/app-service/deploy-run-package) for further details.
  final pulumi.Input<List<WindowsWebAppSlotStorageAccount>>? storageAccounts;
  /// A mapping of tags which should be assigned to the Windows Web App Slot.
  final pulumi.Input<Map<String, String>>? tags;
  /// Whether backup and restore operations over the linked virtual network are enabled. Defaults to `false`.
  final pulumi.Input<bool>? virtualNetworkBackupRestoreEnabled;
  /// Whether traffic for the image pull should be routed over the virtual network.
  ///
  /// > **Note:** `virtual_network_image_pull_enabled` must be set to `true` when running in an App Service Environment.
  final pulumi.Input<bool>? virtualNetworkImagePullEnabled;
  /// The subnet id which will be used by this Web App Slot for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration).
  ///
  /// > **Note:** The AzureRM Terraform provider provides regional virtual network integration via the standalone resource app_service_virtual_network_swift_connection and in-line within this resource using the `virtual_network_subnet_id` property. You cannot use both methods simultaneously. If the virtual network is set via the resource `app_service_virtual_network_swift_connection` then `ignore_changes` should be used in the web app slot configuration.
  ///
  /// > **Note:** Assigning the `virtual_network_subnet_id` property requires [RBAC permissions on the subnet](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#permissions)
  final pulumi.Input<String>? virtualNetworkSubnetId;
  /// Should the default WebDeploy Basic Authentication publishing credentials enabled. Defaults to `true`.
  ///
  /// > **Note:** Setting this value to true will disable the ability to use `zip_deploy_file` which currently relies on the default publishing profile.
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
    required pulumi.Output<String> appServiceId,
    pulumi.Output<Map<String, String>>? appSettings,
    pulumi.Output<WindowsWebAppSlotAuthSettings>? authSettings,
    pulumi.Output<WindowsWebAppSlotAuthSettingsV2>? authSettingsV2,
    pulumi.Output<WindowsWebAppSlotBackup>? backup,
    pulumi.Output<bool>? clientAffinityEnabled,
    pulumi.Output<bool>? clientCertificateEnabled,
    pulumi.Output<String>? clientCertificateExclusionPaths,
    pulumi.Output<String>? clientCertificateMode,
    pulumi.Output<List<WindowsWebAppSlotConnectionString>>? connectionStrings,
    pulumi.Output<bool>? enabled,
    pulumi.Output<bool>? ftpPublishBasicAuthenticationEnabled,
    pulumi.Output<bool>? httpsOnly,
    pulumi.Output<WindowsWebAppSlotIdentity>? identity,
    pulumi.Output<String>? keyVaultReferenceIdentityId,
    pulumi.Output<WindowsWebAppSlotLogs>? logs,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? publicNetworkAccessEnabled,
    pulumi.Output<String>? servicePlanId,
    required pulumi.Output<WindowsWebAppSlotSiteConfig> siteConfig,
    pulumi.Output<List<WindowsWebAppSlotStorageAccount>>? storageAccounts,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<bool>? virtualNetworkBackupRestoreEnabled,
    pulumi.Output<bool>? virtualNetworkImagePullEnabled,
    pulumi.Output<String>? virtualNetworkSubnetId,
    pulumi.Output<bool>? webdeployPublishBasicAuthenticationEnabled,
    pulumi.Output<String>? zipDeployFile,
  }) :
      appServiceId = pulumi.Input.asInput<String>(appServiceId),
      appSettings = pulumi.Input.asOptionalInput<Map<String, String>>(appSettings),
      authSettings = pulumi.Input.asOptionalInput<WindowsWebAppSlotAuthSettings>(authSettings),
      authSettingsV2 = pulumi.Input.asOptionalInput<WindowsWebAppSlotAuthSettingsV2>(authSettingsV2),
      backup = pulumi.Input.asOptionalInput<WindowsWebAppSlotBackup>(backup),
      clientAffinityEnabled = pulumi.Input.asOptionalInput<bool>(clientAffinityEnabled),
      clientCertificateEnabled = pulumi.Input.asOptionalInput<bool>(clientCertificateEnabled),
      clientCertificateExclusionPaths = pulumi.Input.asOptionalInput<String>(clientCertificateExclusionPaths),
      clientCertificateMode = pulumi.Input.asOptionalInput<String>(clientCertificateMode),
      connectionStrings = pulumi.Input.asOptionalInput<List<WindowsWebAppSlotConnectionString>>(connectionStrings),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      ftpPublishBasicAuthenticationEnabled = pulumi.Input.asOptionalInput<bool>(ftpPublishBasicAuthenticationEnabled),
      httpsOnly = pulumi.Input.asOptionalInput<bool>(httpsOnly),
      identity = pulumi.Input.asOptionalInput<WindowsWebAppSlotIdentity>(identity),
      keyVaultReferenceIdentityId = pulumi.Input.asOptionalInput<String>(keyVaultReferenceIdentityId),
      logs = pulumi.Input.asOptionalInput<WindowsWebAppSlotLogs>(logs),
      name = pulumi.Input.asOptionalInput<String>(name),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      servicePlanId = pulumi.Input.asOptionalInput<String>(servicePlanId),
      siteConfig = pulumi.Input.asInput<WindowsWebAppSlotSiteConfig>(siteConfig),
      storageAccounts = pulumi.Input.asOptionalInput<List<WindowsWebAppSlotStorageAccount>>(storageAccounts),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      virtualNetworkBackupRestoreEnabled = pulumi.Input.asOptionalInput<bool>(virtualNetworkBackupRestoreEnabled),
      virtualNetworkImagePullEnabled = pulumi.Input.asOptionalInput<bool>(virtualNetworkImagePullEnabled),
      virtualNetworkSubnetId = pulumi.Input.asOptionalInput<String>(virtualNetworkSubnetId),
      webdeployPublishBasicAuthenticationEnabled = pulumi.Input.asOptionalInput<bool>(webdeployPublishBasicAuthenticationEnabled),
      zipDeployFile = pulumi.Input.asOptionalInput<String>(zipDeployFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appServiceId': appServiceId,
      'appSettings': ?appSettings,
      'authSettings': ?pulumi.Input.mapOptionalInputValue<WindowsWebAppSlotAuthSettings, Map<String, dynamic>>(authSettings, (value) => value.toMap()),
      'authSettingsV2': ?pulumi.Input.mapOptionalInputValue<WindowsWebAppSlotAuthSettingsV2, Map<String, dynamic>>(authSettingsV2, (value) => value.toMap()),
      'backup': ?pulumi.Input.mapOptionalInputValue<WindowsWebAppSlotBackup, Map<String, dynamic>>(backup, (value) => value.toMap()),
      'clientAffinityEnabled': ?clientAffinityEnabled,
      'clientCertificateEnabled': ?clientCertificateEnabled,
      'clientCertificateExclusionPaths': ?clientCertificateExclusionPaths,
      'clientCertificateMode': ?clientCertificateMode,
      'connectionStrings': ?pulumi.Input.mapOptionalInputValue<List<WindowsWebAppSlotConnectionString>, List<Map<String, dynamic>>>(connectionStrings, (value) => pulumi.Input.encodeList<WindowsWebAppSlotConnectionString, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': ?enabled,
      'ftpPublishBasicAuthenticationEnabled': ?ftpPublishBasicAuthenticationEnabled,
      'httpsOnly': ?httpsOnly,
      'identity': ?pulumi.Input.mapOptionalInputValue<WindowsWebAppSlotIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'keyVaultReferenceIdentityId': ?keyVaultReferenceIdentityId,
      'logs': ?pulumi.Input.mapOptionalInputValue<WindowsWebAppSlotLogs, Map<String, dynamic>>(logs, (value) => value.toMap()),
      'name': ?name,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'servicePlanId': ?servicePlanId,
      'siteConfig': pulumi.Input.mapInputValue<WindowsWebAppSlotSiteConfig, Map<String, dynamic>>(siteConfig, (value) => value.toMap()),
      'storageAccounts': ?pulumi.Input.mapOptionalInputValue<List<WindowsWebAppSlotStorageAccount>, List<Map<String, dynamic>>>(storageAccounts, (value) => pulumi.Input.encodeList<WindowsWebAppSlotStorageAccount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'virtualNetworkBackupRestoreEnabled': ?virtualNetworkBackupRestoreEnabled,
      'virtualNetworkImagePullEnabled': ?virtualNetworkImagePullEnabled,
      'virtualNetworkSubnetId': ?virtualNetworkSubnetId,
      'webdeployPublishBasicAuthenticationEnabled': ?webdeployPublishBasicAuthenticationEnabled,
      'zipDeployFile': ?zipDeployFile,
    };
  }

  factory WindowsWebAppSlotArgs.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppSlotArgs(
      appServiceId: pulumi.Output.create<String>(map['appServiceId'] as String),
      appSettings: map['appSettings'] == null ? null : pulumi.Output.create<Map<String, String>>((map['appSettings'] as Map).cast<String, String>()),
      authSettings: map['authSettings'] == null ? null : pulumi.Output.create<WindowsWebAppSlotAuthSettings>(WindowsWebAppSlotAuthSettings.fromMap((map['authSettings'] as Map).cast<String, dynamic>())),
      authSettingsV2: map['authSettingsV2'] == null ? null : pulumi.Output.create<WindowsWebAppSlotAuthSettingsV2>(WindowsWebAppSlotAuthSettingsV2.fromMap((map['authSettingsV2'] as Map).cast<String, dynamic>())),
      backup: map['backup'] == null ? null : pulumi.Output.create<WindowsWebAppSlotBackup>(WindowsWebAppSlotBackup.fromMap((map['backup'] as Map).cast<String, dynamic>())),
      clientAffinityEnabled: map['clientAffinityEnabled'] == null ? null : pulumi.Output.create<bool>(map['clientAffinityEnabled'] as bool),
      clientCertificateEnabled: map['clientCertificateEnabled'] == null ? null : pulumi.Output.create<bool>(map['clientCertificateEnabled'] as bool),
      clientCertificateExclusionPaths: map['clientCertificateExclusionPaths'] == null ? null : pulumi.Output.create<String>(map['clientCertificateExclusionPaths'] as String),
      clientCertificateMode: map['clientCertificateMode'] == null ? null : pulumi.Output.create<String>(map['clientCertificateMode'] as String),
      connectionStrings: map['connectionStrings'] == null ? null : pulumi.Output.create<List<WindowsWebAppSlotConnectionString>>(pulumi.Input.decodeList<WindowsWebAppSlotConnectionString>(map['connectionStrings'], (value) => WindowsWebAppSlotConnectionString.fromMap((value as Map).cast<String, dynamic>()))),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      ftpPublishBasicAuthenticationEnabled: map['ftpPublishBasicAuthenticationEnabled'] == null ? null : pulumi.Output.create<bool>(map['ftpPublishBasicAuthenticationEnabled'] as bool),
      httpsOnly: map['httpsOnly'] == null ? null : pulumi.Output.create<bool>(map['httpsOnly'] as bool),
      identity: map['identity'] == null ? null : pulumi.Output.create<WindowsWebAppSlotIdentity>(WindowsWebAppSlotIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      keyVaultReferenceIdentityId: map['keyVaultReferenceIdentityId'] == null ? null : pulumi.Output.create<String>(map['keyVaultReferenceIdentityId'] as String),
      logs: map['logs'] == null ? null : pulumi.Output.create<WindowsWebAppSlotLogs>(WindowsWebAppSlotLogs.fromMap((map['logs'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicNetworkAccessEnabled'] as bool),
      servicePlanId: map['servicePlanId'] == null ? null : pulumi.Output.create<String>(map['servicePlanId'] as String),
      siteConfig: pulumi.Output.create<WindowsWebAppSlotSiteConfig>(WindowsWebAppSlotSiteConfig.fromMap((map['siteConfig'] as Map).cast<String, dynamic>())),
      storageAccounts: map['storageAccounts'] == null ? null : pulumi.Output.create<List<WindowsWebAppSlotStorageAccount>>(pulumi.Input.decodeList<WindowsWebAppSlotStorageAccount>(map['storageAccounts'], (value) => WindowsWebAppSlotStorageAccount.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      virtualNetworkBackupRestoreEnabled: map['virtualNetworkBackupRestoreEnabled'] == null ? null : pulumi.Output.create<bool>(map['virtualNetworkBackupRestoreEnabled'] as bool),
      virtualNetworkImagePullEnabled: map['virtualNetworkImagePullEnabled'] == null ? null : pulumi.Output.create<bool>(map['virtualNetworkImagePullEnabled'] as bool),
      virtualNetworkSubnetId: map['virtualNetworkSubnetId'] == null ? null : pulumi.Output.create<String>(map['virtualNetworkSubnetId'] as String),
      webdeployPublishBasicAuthenticationEnabled: map['webdeployPublishBasicAuthenticationEnabled'] == null ? null : pulumi.Output.create<bool>(map['webdeployPublishBasicAuthenticationEnabled'] as bool),
      zipDeployFile: map['zipDeployFile'] == null ? null : pulumi.Output.create<String>(map['zipDeployFile'] as String),
    );
  }
}

