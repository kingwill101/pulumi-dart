// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_function_app_auth_settings.dart';
import 'windows_function_app_auth_settings_v2.dart';
import 'windows_function_app_backup.dart';
import 'windows_function_app_connection_string.dart';
import 'windows_function_app_identity.dart';
import 'windows_function_app_site_config.dart';
import 'windows_function_app_sticky_settings.dart';
import 'windows_function_app_storage_account.dart';

/// {@template pulumi_appservice_windows_function_app_windows_function_app_args_doc}
/// The set of arguments for WindowsFunctionApp.
/// {@endtemplate}
/// {@macro pulumi_appservice_windows_function_app_windows_function_app_args_doc}
class WindowsFunctionAppArgs {
  /// A map of key-value pairs for [App Settings](https://docs.microsoft.com/azure/azure-functions/functions-app-settings) and custom values.
  ///
  /// > **Note:** For runtime related settings, please use `node_version` in `site_config` to set the node version and use `functions_extension_version` to set the function runtime version, terraform will assign the values to the key `WEBSITE_NODE_DEFAULT_VERSION` and `FUNCTIONS_EXTENSION_VERSION` in app setting.
  ///
  /// > **Note:** For storage related settings, please use related properties that are available such as `storage_account_access_key`, terraform will assign the value to keys such as `WEBSITE_CONTENTAZUREFILECONNECTIONSTRING`, `AzureWebJobsStorage` in app_setting.
  ///
  /// > **Note:** For application insight related settings, please use `application_insights_connection_string` and `application_insights_key`, terraform will assign the value to the key `APPINSIGHTS_INSTRUMENTATIONKEY` and `APPLICATIONINSIGHTS_CONNECTION_STRING` in app setting.
  ///
  /// > **Note:** For health check related settings, please use `health_check_eviction_time_in_min`, terraform will assign the value to the key `WEBSITE_HEALTHCHECK_MAXPINGFAILURES` in app setting.
  ///
  /// > **Note:** Please create a predefined share if you are restricting your storage account to a virtual network by setting `WEBSITE_CONTENTOVERVNET` to 1 in app_setting.
  final pulumi.Input<Map<String, String>>? appSettings;
  /// A `auth_settings` block as defined below.
  final pulumi.Input<WindowsFunctionAppAuthSettings>? authSettings;
  /// A `auth_settings_v2` block as defined below.
  final pulumi.Input<WindowsFunctionAppAuthSettingsV2>? authSettingsV2;
  /// A `backup` block as defined below.
  final pulumi.Input<WindowsFunctionAppBackup>? backup;
  /// Should built in logging be enabled. Configures `AzureWebJobsDashboard` app setting based on the configured storage setting. Defaults to `true`.
  final pulumi.Input<bool>? builtinLoggingEnabled;
  /// Should the function app use Client Certificates.
  final pulumi.Input<bool>? clientCertificateEnabled;
  /// Paths to exclude when using client certificates, separated by ;
  final pulumi.Input<String>? clientCertificateExclusionPaths;
  /// The mode of the Function App's client certificates requirement for incoming requests. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`. Defaults to `Optional`.
  final pulumi.Input<String>? clientCertificateMode;
  /// One or more `connection_string` blocks as defined below.
  final pulumi.Input<List<WindowsFunctionAppConnectionString>>? connectionStrings;
  /// Should Content Share Settings be disabled. Defaults to `false`.
  final pulumi.Input<bool>? contentShareForceDisabled;
  /// The amount of memory in gigabyte-seconds that your application is allowed to consume per day. Setting this value only affects function apps under the consumption plan. Defaults to `0`.
  final pulumi.Input<int>? dailyMemoryTimeQuota;
  /// Is the Function App enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// Should the default FTP Basic Authentication publishing profile be enabled. Defaults to `true`.
  final pulumi.Input<bool>? ftpPublishBasicAuthenticationEnabled;
  /// The runtime version associated with the Function App. Defaults to `~4`.
  final pulumi.Input<String>? functionsExtensionVersion;
  /// Can the Function App only be accessed via HTTPS?. Defaults to `false`.
  final pulumi.Input<bool>? httpsOnly;
  /// A `identity` block as defined below.
  final pulumi.Input<WindowsFunctionAppIdentity>? identity;
  /// The User Assigned Identity ID used for accessing KeyVault secrets. The identity must be assigned to the application in the `identity` block. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity)
  final pulumi.Input<String>? keyVaultReferenceIdentityId;
  /// The Azure Region where the Windows Function App should exist. Changing this forces a new Windows Function App to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Windows Function App. Changing this forces a new Windows Function App to be created. Limit the function name to 32 characters to avoid naming collisions. For more information about [Function App naming rule](https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/resource-name-rules#microsoftweb) and [Host ID Collisions](https://github.com/Azure/azure-functions-host/wiki/Host-IDs#host-id-collisions)
  final pulumi.Input<String>? name;
  /// Should public network access be enabled for the Function App. Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The name of the Resource Group where the Windows Function App should exist. Changing this forces a new Windows Function App to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The ID of the App Service Plan within which to create this Function App.
  final pulumi.Input<String> servicePlanId;
  /// A `site_config` block as defined below.
  final pulumi.Input<WindowsFunctionAppSiteConfig> siteConfig;
  /// A `sticky_settings` block as defined below.
  final pulumi.Input<WindowsFunctionAppStickySettings>? stickySettings;
  /// The access key which will be used to access the backend storage account for the Function App. Conflicts with `storage_uses_managed_identity`.
  final pulumi.Input<String>? storageAccountAccessKey;
  /// The backend storage account name which will be used by this Function App.
  final pulumi.Input<String>? storageAccountName;
  /// One or more `storage_account` blocks as defined below.
  final pulumi.Input<List<WindowsFunctionAppStorageAccount>>? storageAccounts;
  /// The Key Vault Secret ID, optionally including version, that contains the Connection String to connect to the storage account for this Function App.
  ///
  /// > **Note:** `storage_key_vault_secret_id` cannot be used with `storage_account_name`.
  ///
  /// > **Note:** `storage_key_vault_secret_id` used without a version will use the latest version of the secret, however, the service can take up to 24h to pick up a rotation of the latest version. See the [official docs](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#rotation) for more information.
  final pulumi.Input<String>? storageKeyVaultSecretId;
  /// Should the Function App use Managed Identity to access the storage account. Conflicts with `storage_account_access_key`.
  ///
  /// > **Note:** One of `storage_account_access_key` or `storage_uses_managed_identity` must be specified when using `storage_account_name`.
  final pulumi.Input<bool>? storageUsesManagedIdentity;
  /// A mapping of tags which should be assigned to the Windows Function App.
  final pulumi.Input<Map<String, String>>? tags;
  /// Whether backup and restore operations over the linked virtual network are enabled. Defaults to `false`.
  final pulumi.Input<bool>? virtualNetworkBackupRestoreEnabled;
  /// The subnet id which will be used by this Function App for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration).
  ///
  /// > **Note:** The AzureRM Terraform provider provides regional virtual network integration via the standalone resource app_service_virtual_network_swift_connection and in-line within this resource using the `virtual_network_subnet_id` property. You cannot use both methods simultaneously. If the virtual network is set via the resource `app_service_virtual_network_swift_connection` then `ignore_changes` should be used in the function app configuration.
  ///
  /// > **Note:** Assigning the `virtual_network_subnet_id` property requires [RBAC permissions on the subnet](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#permissions)
  final pulumi.Input<String>? virtualNetworkSubnetId;
  /// Specifies whether traffic for the image pull should be routed over virtual network. Defaults to `false`.
  ///
  /// > **Note:** The feature can also be enabled via the app setting `WEBSITE_PULL_IMAGE_OVER_VNET`. The Setting is enabled by default for app running in the App Service Environment.
  final pulumi.Input<bool>? vnetImagePullEnabled;
  /// Should the default WebDeploy Basic Authentication publishing credentials enabled. Defaults to `true`.
  ///
  /// > **Note:** Setting this value to true will disable the ability to use `zip_deploy_file` which currently relies on the default publishing profile.
  final pulumi.Input<bool>? webdeployPublishBasicAuthenticationEnabled;
  /// The local path and filename of the Zip packaged application to deploy to this Windows Function App.
  ///
  /// > **Note:** Using this value requires `WEBSITE_RUN_FROM_PACKAGE=1` to be set on the App in `app_settings`. Refer to the [Azure docs](https://learn.microsoft.com/en-us/azure/azure-functions/functions-deployment-technologies) for further details.
  final pulumi.Input<String>? zipDeployFile;

  /// Creates a new [WindowsFunctionAppArgs].
  /// [appSettings] A map of key-value pairs for [App Settings](https://docs.microsoft.com/azure/azure-functions/functions-app-settings) and custom values.
  /// [authSettings] A `auth_settings` block as defined below.
  /// [authSettingsV2] A `auth_settings_v2` block as defined below.
  /// [backup] A `backup` block as defined below.
  /// [builtinLoggingEnabled] Should built in logging be enabled. Configures `AzureWebJobsDashboard` app setting based on the configured storage setting. Defaults to `true`.
  /// [clientCertificateEnabled] Should the function app use Client Certificates.
  /// [clientCertificateExclusionPaths] Paths to exclude when using client certificates, separated by ;
  /// [clientCertificateMode] The mode of the Function App's client certificates requirement for incoming requests. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`. Defaults to `Optional`.
  /// [connectionStrings] One or more `connection_string` blocks as defined below.
  /// [contentShareForceDisabled] Should Content Share Settings be disabled. Defaults to `false`.
  /// [dailyMemoryTimeQuota] The amount of memory in gigabyte-seconds that your application is allowed to consume per day. Setting this value only affects function apps under the consumption plan. Defaults to `0`.
  /// [enabled] Is the Function App enabled? Defaults to `true`.
  /// [ftpPublishBasicAuthenticationEnabled] Should the default FTP Basic Authentication publishing profile be enabled. Defaults to `true`.
  /// [functionsExtensionVersion] The runtime version associated with the Function App. Defaults to `~4`.
  /// [httpsOnly] Can the Function App only be accessed via HTTPS?. Defaults to `false`.
  /// [identity] A `identity` block as defined below.
  /// [keyVaultReferenceIdentityId] The User Assigned Identity ID used for accessing KeyVault secrets. The identity must be assigned to the application in the `identity` block. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity)
  /// [location] The Azure Region where the Windows Function App should exist. Changing this forces a new Windows Function App to be created.
  /// [name] The name which should be used for this Windows Function App. Changing this forces a new Windows Function App to be created. Limit the function name to 32 characters to avoid naming collisions. For more information about [Function App naming rule](https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/resource-name-rules#microsoftweb) and [Host ID Collisions](https://github.com/Azure/azure-functions-host/wiki/Host-IDs#host-id-collisions)
  /// [publicNetworkAccessEnabled] Should public network access be enabled for the Function App. Defaults to `true`.
  /// [resourceGroupName] The name of the Resource Group where the Windows Function App should exist. Changing this forces a new Windows Function App to be created.
  /// [servicePlanId] The ID of the App Service Plan within which to create this Function App.
  /// [siteConfig] A `site_config` block as defined below.
  /// [stickySettings] A `sticky_settings` block as defined below.
  /// [storageAccountAccessKey] The access key which will be used to access the backend storage account for the Function App. Conflicts with `storage_uses_managed_identity`.
  /// [storageAccountName] The backend storage account name which will be used by this Function App.
  /// [storageAccounts] One or more `storage_account` blocks as defined below.
  /// [storageKeyVaultSecretId] The Key Vault Secret ID, optionally including version, that contains the Connection String to connect to the storage account for this Function App.
  /// [storageUsesManagedIdentity] Should the Function App use Managed Identity to access the storage account. Conflicts with `storage_account_access_key`.
  /// [tags] A mapping of tags which should be assigned to the Windows Function App.
  /// [virtualNetworkBackupRestoreEnabled] Whether backup and restore operations over the linked virtual network are enabled. Defaults to `false`.
  /// [virtualNetworkSubnetId] The subnet id which will be used by this Function App for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration).
  /// [vnetImagePullEnabled] Specifies whether traffic for the image pull should be routed over virtual network. Defaults to `false`.
  /// [webdeployPublishBasicAuthenticationEnabled] Should the default WebDeploy Basic Authentication publishing credentials enabled. Defaults to `true`.
  /// [zipDeployFile] The local path and filename of the Zip packaged application to deploy to this Windows Function App.
  WindowsFunctionAppArgs({
    this.appSettings,
    this.authSettings,
    this.authSettingsV2,
    this.backup,
    this.builtinLoggingEnabled,
    this.clientCertificateEnabled,
    this.clientCertificateExclusionPaths,
    this.clientCertificateMode,
    this.connectionStrings,
    this.contentShareForceDisabled,
    this.dailyMemoryTimeQuota,
    this.enabled,
    this.ftpPublishBasicAuthenticationEnabled,
    this.functionsExtensionVersion,
    this.httpsOnly,
    this.identity,
    this.keyVaultReferenceIdentityId,
    this.location,
    this.name,
    this.publicNetworkAccessEnabled,
    required this.resourceGroupName,
    required this.servicePlanId,
    required this.siteConfig,
    this.stickySettings,
    this.storageAccountAccessKey,
    this.storageAccountName,
    this.storageAccounts,
    this.storageKeyVaultSecretId,
    this.storageUsesManagedIdentity,
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
      'authSettings': ?pulumi.Input.mapOptionalInputValue<WindowsFunctionAppAuthSettings, Map<String, dynamic>>(authSettings, (value) => value.toMap()),
      'authSettingsV2': ?pulumi.Input.mapOptionalInputValue<WindowsFunctionAppAuthSettingsV2, Map<String, dynamic>>(authSettingsV2, (value) => value.toMap()),
      'backup': ?pulumi.Input.mapOptionalInputValue<WindowsFunctionAppBackup, Map<String, dynamic>>(backup, (value) => value.toMap()),
      'builtinLoggingEnabled': ?builtinLoggingEnabled,
      'clientCertificateEnabled': ?clientCertificateEnabled,
      'clientCertificateExclusionPaths': ?clientCertificateExclusionPaths,
      'clientCertificateMode': ?clientCertificateMode,
      'connectionStrings': ?pulumi.Input.mapOptionalInputValue<List<WindowsFunctionAppConnectionString>, List<Map<String, dynamic>>>(connectionStrings, (value) => pulumi.Input.encodeList<WindowsFunctionAppConnectionString, Map<String, dynamic>>(value, (value) => value.toMap())),
      'contentShareForceDisabled': ?contentShareForceDisabled,
      'dailyMemoryTimeQuota': ?dailyMemoryTimeQuota,
      'enabled': ?enabled,
      'ftpPublishBasicAuthenticationEnabled': ?ftpPublishBasicAuthenticationEnabled,
      'functionsExtensionVersion': ?functionsExtensionVersion,
      'httpsOnly': ?httpsOnly,
      'identity': ?pulumi.Input.mapOptionalInputValue<WindowsFunctionAppIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'keyVaultReferenceIdentityId': ?keyVaultReferenceIdentityId,
      'location': ?location,
      'name': ?name,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': resourceGroupName,
      'servicePlanId': servicePlanId,
      'siteConfig': pulumi.Input.mapInputValue<WindowsFunctionAppSiteConfig, Map<String, dynamic>>(siteConfig, (value) => value.toMap()),
      'stickySettings': ?pulumi.Input.mapOptionalInputValue<WindowsFunctionAppStickySettings, Map<String, dynamic>>(stickySettings, (value) => value.toMap()),
      'storageAccountAccessKey': ?storageAccountAccessKey,
      'storageAccountName': ?storageAccountName,
      'storageAccounts': ?pulumi.Input.mapOptionalInputValue<List<WindowsFunctionAppStorageAccount>, List<Map<String, dynamic>>>(storageAccounts, (value) => pulumi.Input.encodeList<WindowsFunctionAppStorageAccount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageKeyVaultSecretId': ?storageKeyVaultSecretId,
      'storageUsesManagedIdentity': ?storageUsesManagedIdentity,
      'tags': ?tags,
      'virtualNetworkBackupRestoreEnabled': ?virtualNetworkBackupRestoreEnabled,
      'virtualNetworkSubnetId': ?virtualNetworkSubnetId,
      'vnetImagePullEnabled': ?vnetImagePullEnabled,
      'webdeployPublishBasicAuthenticationEnabled': ?webdeployPublishBasicAuthenticationEnabled,
      'zipDeployFile': ?zipDeployFile,
    };
  }

  factory WindowsFunctionAppArgs.fromMap(Map<String, dynamic> map) {
    return WindowsFunctionAppArgs(
      appSettings: map['appSettings'] == null ? null : ((map['appSettings']! as Map).cast<String, String>()).input(),
      authSettings: map['authSettings'] == null ? null : (WindowsFunctionAppAuthSettings.fromMap((map['authSettings']! as Map).cast<String, dynamic>())).input(),
      authSettingsV2: map['authSettingsV2'] == null ? null : (WindowsFunctionAppAuthSettingsV2.fromMap((map['authSettingsV2']! as Map).cast<String, dynamic>())).input(),
      backup: map['backup'] == null ? null : (WindowsFunctionAppBackup.fromMap((map['backup']! as Map).cast<String, dynamic>())).input(),
      builtinLoggingEnabled: map['builtinLoggingEnabled'] == null ? null : (map['builtinLoggingEnabled']! as bool).input(),
      clientCertificateEnabled: map['clientCertificateEnabled'] == null ? null : (map['clientCertificateEnabled']! as bool).input(),
      clientCertificateExclusionPaths: map['clientCertificateExclusionPaths'] == null ? null : (map['clientCertificateExclusionPaths']! as String).input(),
      clientCertificateMode: map['clientCertificateMode'] == null ? null : (map['clientCertificateMode']! as String).input(),
      connectionStrings: map['connectionStrings'] == null ? null : (pulumi.Input.decodeList<WindowsFunctionAppConnectionString>(map['connectionStrings']!, (value) => WindowsFunctionAppConnectionString.fromMap((value as Map).cast<String, dynamic>()))).input(),
      contentShareForceDisabled: map['contentShareForceDisabled'] == null ? null : (map['contentShareForceDisabled']! as bool).input(),
      dailyMemoryTimeQuota: map['dailyMemoryTimeQuota'] == null ? null : (map['dailyMemoryTimeQuota']! as int).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      ftpPublishBasicAuthenticationEnabled: map['ftpPublishBasicAuthenticationEnabled'] == null ? null : (map['ftpPublishBasicAuthenticationEnabled']! as bool).input(),
      functionsExtensionVersion: map['functionsExtensionVersion'] == null ? null : (map['functionsExtensionVersion']! as String).input(),
      httpsOnly: map['httpsOnly'] == null ? null : (map['httpsOnly']! as bool).input(),
      identity: map['identity'] == null ? null : (WindowsFunctionAppIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      keyVaultReferenceIdentityId: map['keyVaultReferenceIdentityId'] == null ? null : (map['keyVaultReferenceIdentityId']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : (map['publicNetworkAccessEnabled']! as bool).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      servicePlanId: (map['servicePlanId'] as String).input(),
      siteConfig: (WindowsFunctionAppSiteConfig.fromMap((map['siteConfig'] as Map).cast<String, dynamic>())).input(),
      stickySettings: map['stickySettings'] == null ? null : (WindowsFunctionAppStickySettings.fromMap((map['stickySettings']! as Map).cast<String, dynamic>())).input(),
      storageAccountAccessKey: map['storageAccountAccessKey'] == null ? null : (map['storageAccountAccessKey']! as String).input(),
      storageAccountName: map['storageAccountName'] == null ? null : (map['storageAccountName']! as String).input(),
      storageAccounts: map['storageAccounts'] == null ? null : (pulumi.Input.decodeList<WindowsFunctionAppStorageAccount>(map['storageAccounts']!, (value) => WindowsFunctionAppStorageAccount.fromMap((value as Map).cast<String, dynamic>()))).input(),
      storageKeyVaultSecretId: map['storageKeyVaultSecretId'] == null ? null : (map['storageKeyVaultSecretId']! as String).input(),
      storageUsesManagedIdentity: map['storageUsesManagedIdentity'] == null ? null : (map['storageUsesManagedIdentity']! as bool).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      virtualNetworkBackupRestoreEnabled: map['virtualNetworkBackupRestoreEnabled'] == null ? null : (map['virtualNetworkBackupRestoreEnabled']! as bool).input(),
      virtualNetworkSubnetId: map['virtualNetworkSubnetId'] == null ? null : (map['virtualNetworkSubnetId']! as String).input(),
      vnetImagePullEnabled: map['vnetImagePullEnabled'] == null ? null : (map['vnetImagePullEnabled']! as bool).input(),
      webdeployPublishBasicAuthenticationEnabled: map['webdeployPublishBasicAuthenticationEnabled'] == null ? null : (map['webdeployPublishBasicAuthenticationEnabled']! as bool).input(),
      zipDeployFile: map['zipDeployFile'] == null ? null : (map['zipDeployFile']! as String).input(),
    );
  }
}

