// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_function_app_slot_auth_settings.dart';
import 'windows_function_app_slot_auth_settings_v2.dart';
import 'windows_function_app_slot_backup.dart';
import 'windows_function_app_slot_connection_string.dart';
import 'windows_function_app_slot_identity.dart';
import 'windows_function_app_slot_site_config.dart';
import 'windows_function_app_slot_storage_account.dart';

/// {@template pulumi_appservice_windows_function_app_slot_windows_function_app_slot_args_doc}
/// The set of arguments for WindowsFunctionAppSlot.
/// {@endtemplate}
/// {@macro pulumi_appservice_windows_function_app_slot_windows_function_app_slot_args_doc}
class WindowsFunctionAppSlotArgs {
  /// A map of key-value pairs for [App Settings](https://docs.microsoft.com/azure/azure-functions/functions-app-settings) and custom values.
  final pulumi.Input<Map<String, String>>? appSettings;
  /// an `auth_settings` block as detailed below.
  final pulumi.Input<WindowsFunctionAppSlotAuthSettings>? authSettings;
  /// an `auth_settings_v2` block as detailed below.
  final pulumi.Input<WindowsFunctionAppSlotAuthSettingsV2>? authSettingsV2;
  /// a `backup` block as detailed below.
  final pulumi.Input<WindowsFunctionAppSlotBackup>? backup;
  /// Should built-in logging be enabled. Configures `AzureWebJobsDashboard` app setting based on the configured storage setting. Defaults to `true`.
  final pulumi.Input<bool>? builtinLoggingEnabled;
  /// Should the Function App Slot use Client Certificates.
  final pulumi.Input<bool>? clientCertificateEnabled;
  /// Paths to exclude when using client certificates, separated by ;
  final pulumi.Input<String>? clientCertificateExclusionPaths;
  /// The mode of the Function App Slot's client certificates requirement for incoming requests. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`. Defaults to `Optional`.
  final pulumi.Input<String>? clientCertificateMode;
  /// a `connection_string` block as detailed below.
  final pulumi.Input<List<WindowsFunctionAppSlotConnectionString>>? connectionStrings;
  /// Force disable the content share settings.
  final pulumi.Input<bool>? contentShareForceDisabled;
  /// The amount of memory in gigabyte-seconds that your application is allowed to consume per day. Setting this value only affects function apps in Consumption Plans. Defaults to `0`.
  final pulumi.Input<int>? dailyMemoryTimeQuota;
  /// Is the Windows Function App Slot enabled. Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// Should the default FTP Basic Authentication publishing profile be enabled. Defaults to `true`.
  final pulumi.Input<bool>? ftpPublishBasicAuthenticationEnabled;
  /// The name of the Windows Function App this Slot is a member of. Changing this forces a new resource to be created.
  final pulumi.Input<String> functionAppId;
  /// The runtime version associated with the Function App Slot. Defaults to `~4`.
  final pulumi.Input<String>? functionsExtensionVersion;
  /// Can the Function App Slot only be accessed via HTTPS?. Defaults to `false`.
  final pulumi.Input<bool>? httpsOnly;
  /// an `identity` block as detailed below.
  final pulumi.Input<WindowsFunctionAppSlotIdentity>? identity;
  /// The User Assigned Identity ID used for accessing KeyVault secrets. The identity must be assigned to the application in the `identity` block. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity)
  final pulumi.Input<String>? keyVaultReferenceIdentityId;
  /// Specifies the name of the Windows Function App Slot. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Should public network access be enabled for the Function App. Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The ID of the Service Plan in which to run this slot. If not specified the same Service Plan as the Windows Function App will be used.
  final pulumi.Input<String>? servicePlanId;
  /// a `site_config` block as detailed below.
  final pulumi.Input<WindowsFunctionAppSlotSiteConfig> siteConfig;
  /// The access key which will be used to access the storage account for the Function App Slot.
  final pulumi.Input<String>? storageAccountAccessKey;
  /// The backend storage account name which will be used by this Function App Slot.
  final pulumi.Input<String>? storageAccountName;
  /// One or more `storage_account` blocks as defined below.
  final pulumi.Input<List<WindowsFunctionAppSlotStorageAccount>>? storageAccounts;
  /// The Key Vault Secret ID, optionally including version, that contains the Connection String to connect to the storage account for this Function App Slot.
  ///
  /// > **Note:** `storage_key_vault_secret_id` cannot be used with `storage_account_name`.
  ///
  /// > **Note:** `storage_key_vault_secret_id` used without a version will use the latest version of the secret, however, the service can take up to 24h to pick up a rotation of the latest version. See the [official docs](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#rotation) for more information.
  final pulumi.Input<String>? storageKeyVaultSecretId;
  /// Should the Function App Slot use its Managed Identity to access storage.
  ///
  /// > **Note:** One of `storage_account_access_key` or `storage_uses_managed_identity` must be specified when using `storage_account_name`.
  final pulumi.Input<bool>? storageUsesManagedIdentity;
  /// A mapping of tags which should be assigned to the Windows Function App Slot.
  final pulumi.Input<Map<String, String>>? tags;
  /// Whether backup and restore operations over the linked virtual network are enabled. Defaults to `false`.
  final pulumi.Input<bool>? virtualNetworkBackupRestoreEnabled;
  /// The subnet id which will be used by this Function App Slot for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration).
  ///
  /// > **Note:** The AzureRM Terraform provider provides regional virtual network integration via the standalone resource app_service_virtual_network_swift_connection and in-line within this resource using the `virtual_network_subnet_id` property. You cannot use both methods simultaneously. If the virtual network is set via the resource `app_service_virtual_network_swift_connection` then `ignore_changes` should be used in the function app slot configuration.
  ///
  /// > **Note:** Assigning the `virtual_network_subnet_id` property requires [RBAC permissions on the subnet](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#permissions)
  final pulumi.Input<String>? virtualNetworkSubnetId;
  /// Specifies whether traffic for the image pull should be routed over virtual network. Defaults to `false`.
  ///
  /// > **Note:** The feature can also be enabled via the app setting `WEBSITE_PULL_IMAGE_OVER_VNET`. The Setting is enabled by default for app running in the App Service Environment.
  final pulumi.Input<bool>? vnetImagePullEnabled;
  /// Should the default WebDeploy Basic Authentication publishing credentials enabled. Defaults to `true`.
  final pulumi.Input<bool>? webdeployPublishBasicAuthenticationEnabled;

  /// Creates a new [WindowsFunctionAppSlotArgs].
  /// [appSettings] A map of key-value pairs for [App Settings](https://docs.microsoft.com/azure/azure-functions/functions-app-settings) and custom values.
  /// [authSettings] an `auth_settings` block as detailed below.
  /// [authSettingsV2] an `auth_settings_v2` block as detailed below.
  /// [backup] a `backup` block as detailed below.
  /// [builtinLoggingEnabled] Should built-in logging be enabled. Configures `AzureWebJobsDashboard` app setting based on the configured storage setting. Defaults to `true`.
  /// [clientCertificateEnabled] Should the Function App Slot use Client Certificates.
  /// [clientCertificateExclusionPaths] Paths to exclude when using client certificates, separated by ;
  /// [clientCertificateMode] The mode of the Function App Slot's client certificates requirement for incoming requests. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`. Defaults to `Optional`.
  /// [connectionStrings] a `connection_string` block as detailed below.
  /// [contentShareForceDisabled] Force disable the content share settings.
  /// [dailyMemoryTimeQuota] The amount of memory in gigabyte-seconds that your application is allowed to consume per day. Setting this value only affects function apps in Consumption Plans. Defaults to `0`.
  /// [enabled] Is the Windows Function App Slot enabled. Defaults to `true`.
  /// [ftpPublishBasicAuthenticationEnabled] Should the default FTP Basic Authentication publishing profile be enabled. Defaults to `true`.
  /// [functionAppId] The name of the Windows Function App this Slot is a member of. Changing this forces a new resource to be created.
  /// [functionsExtensionVersion] The runtime version associated with the Function App Slot. Defaults to `~4`.
  /// [httpsOnly] Can the Function App Slot only be accessed via HTTPS?. Defaults to `false`.
  /// [identity] an `identity` block as detailed below.
  /// [keyVaultReferenceIdentityId] The User Assigned Identity ID used for accessing KeyVault secrets. The identity must be assigned to the application in the `identity` block. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity)
  /// [name] Specifies the name of the Windows Function App Slot. Changing this forces a new resource to be created.
  /// [publicNetworkAccessEnabled] Should public network access be enabled for the Function App. Defaults to `true`.
  /// [servicePlanId] The ID of the Service Plan in which to run this slot. If not specified the same Service Plan as the Windows Function App will be used.
  /// [siteConfig] a `site_config` block as detailed below.
  /// [storageAccountAccessKey] The access key which will be used to access the storage account for the Function App Slot.
  /// [storageAccountName] The backend storage account name which will be used by this Function App Slot.
  /// [storageAccounts] One or more `storage_account` blocks as defined below.
  /// [storageKeyVaultSecretId] The Key Vault Secret ID, optionally including version, that contains the Connection String to connect to the storage account for this Function App Slot.
  /// [storageUsesManagedIdentity] Should the Function App Slot use its Managed Identity to access storage.
  /// [tags] A mapping of tags which should be assigned to the Windows Function App Slot.
  /// [virtualNetworkBackupRestoreEnabled] Whether backup and restore operations over the linked virtual network are enabled. Defaults to `false`.
  /// [virtualNetworkSubnetId] The subnet id which will be used by this Function App Slot for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration).
  /// [vnetImagePullEnabled] Specifies whether traffic for the image pull should be routed over virtual network. Defaults to `false`.
  /// [webdeployPublishBasicAuthenticationEnabled] Should the default WebDeploy Basic Authentication publishing credentials enabled. Defaults to `true`.
  WindowsFunctionAppSlotArgs({
    pulumi.Output<Map<String, String>>? appSettings,
    pulumi.Output<WindowsFunctionAppSlotAuthSettings>? authSettings,
    pulumi.Output<WindowsFunctionAppSlotAuthSettingsV2>? authSettingsV2,
    pulumi.Output<WindowsFunctionAppSlotBackup>? backup,
    pulumi.Output<bool>? builtinLoggingEnabled,
    pulumi.Output<bool>? clientCertificateEnabled,
    pulumi.Output<String>? clientCertificateExclusionPaths,
    pulumi.Output<String>? clientCertificateMode,
    pulumi.Output<List<WindowsFunctionAppSlotConnectionString>>? connectionStrings,
    pulumi.Output<bool>? contentShareForceDisabled,
    pulumi.Output<int>? dailyMemoryTimeQuota,
    pulumi.Output<bool>? enabled,
    pulumi.Output<bool>? ftpPublishBasicAuthenticationEnabled,
    required pulumi.Output<String> functionAppId,
    pulumi.Output<String>? functionsExtensionVersion,
    pulumi.Output<bool>? httpsOnly,
    pulumi.Output<WindowsFunctionAppSlotIdentity>? identity,
    pulumi.Output<String>? keyVaultReferenceIdentityId,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? publicNetworkAccessEnabled,
    pulumi.Output<String>? servicePlanId,
    required pulumi.Output<WindowsFunctionAppSlotSiteConfig> siteConfig,
    pulumi.Output<String>? storageAccountAccessKey,
    pulumi.Output<String>? storageAccountName,
    pulumi.Output<List<WindowsFunctionAppSlotStorageAccount>>? storageAccounts,
    pulumi.Output<String>? storageKeyVaultSecretId,
    pulumi.Output<bool>? storageUsesManagedIdentity,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<bool>? virtualNetworkBackupRestoreEnabled,
    pulumi.Output<String>? virtualNetworkSubnetId,
    pulumi.Output<bool>? vnetImagePullEnabled,
    pulumi.Output<bool>? webdeployPublishBasicAuthenticationEnabled,
  }) :
      appSettings = pulumi.Input.asOptionalInput<Map<String, String>>(appSettings),
      authSettings = pulumi.Input.asOptionalInput<WindowsFunctionAppSlotAuthSettings>(authSettings),
      authSettingsV2 = pulumi.Input.asOptionalInput<WindowsFunctionAppSlotAuthSettingsV2>(authSettingsV2),
      backup = pulumi.Input.asOptionalInput<WindowsFunctionAppSlotBackup>(backup),
      builtinLoggingEnabled = pulumi.Input.asOptionalInput<bool>(builtinLoggingEnabled),
      clientCertificateEnabled = pulumi.Input.asOptionalInput<bool>(clientCertificateEnabled),
      clientCertificateExclusionPaths = pulumi.Input.asOptionalInput<String>(clientCertificateExclusionPaths),
      clientCertificateMode = pulumi.Input.asOptionalInput<String>(clientCertificateMode),
      connectionStrings = pulumi.Input.asOptionalInput<List<WindowsFunctionAppSlotConnectionString>>(connectionStrings),
      contentShareForceDisabled = pulumi.Input.asOptionalInput<bool>(contentShareForceDisabled),
      dailyMemoryTimeQuota = pulumi.Input.asOptionalInput<int>(dailyMemoryTimeQuota),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      ftpPublishBasicAuthenticationEnabled = pulumi.Input.asOptionalInput<bool>(ftpPublishBasicAuthenticationEnabled),
      functionAppId = pulumi.Input.asInput<String>(functionAppId),
      functionsExtensionVersion = pulumi.Input.asOptionalInput<String>(functionsExtensionVersion),
      httpsOnly = pulumi.Input.asOptionalInput<bool>(httpsOnly),
      identity = pulumi.Input.asOptionalInput<WindowsFunctionAppSlotIdentity>(identity),
      keyVaultReferenceIdentityId = pulumi.Input.asOptionalInput<String>(keyVaultReferenceIdentityId),
      name = pulumi.Input.asOptionalInput<String>(name),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      servicePlanId = pulumi.Input.asOptionalInput<String>(servicePlanId),
      siteConfig = pulumi.Input.asInput<WindowsFunctionAppSlotSiteConfig>(siteConfig),
      storageAccountAccessKey = pulumi.Input.asOptionalInput<String>(storageAccountAccessKey),
      storageAccountName = pulumi.Input.asOptionalInput<String>(storageAccountName),
      storageAccounts = pulumi.Input.asOptionalInput<List<WindowsFunctionAppSlotStorageAccount>>(storageAccounts),
      storageKeyVaultSecretId = pulumi.Input.asOptionalInput<String>(storageKeyVaultSecretId),
      storageUsesManagedIdentity = pulumi.Input.asOptionalInput<bool>(storageUsesManagedIdentity),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      virtualNetworkBackupRestoreEnabled = pulumi.Input.asOptionalInput<bool>(virtualNetworkBackupRestoreEnabled),
      virtualNetworkSubnetId = pulumi.Input.asOptionalInput<String>(virtualNetworkSubnetId),
      vnetImagePullEnabled = pulumi.Input.asOptionalInput<bool>(vnetImagePullEnabled),
      webdeployPublishBasicAuthenticationEnabled = pulumi.Input.asOptionalInput<bool>(webdeployPublishBasicAuthenticationEnabled);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appSettings': ?appSettings,
      'authSettings': ?pulumi.Input.mapOptionalInputValue<WindowsFunctionAppSlotAuthSettings, Map<String, dynamic>>(authSettings, (value) => value.toMap()),
      'authSettingsV2': ?pulumi.Input.mapOptionalInputValue<WindowsFunctionAppSlotAuthSettingsV2, Map<String, dynamic>>(authSettingsV2, (value) => value.toMap()),
      'backup': ?pulumi.Input.mapOptionalInputValue<WindowsFunctionAppSlotBackup, Map<String, dynamic>>(backup, (value) => value.toMap()),
      'builtinLoggingEnabled': ?builtinLoggingEnabled,
      'clientCertificateEnabled': ?clientCertificateEnabled,
      'clientCertificateExclusionPaths': ?clientCertificateExclusionPaths,
      'clientCertificateMode': ?clientCertificateMode,
      'connectionStrings': ?pulumi.Input.mapOptionalInputValue<List<WindowsFunctionAppSlotConnectionString>, List<Map<String, dynamic>>>(connectionStrings, (value) => pulumi.Input.encodeList<WindowsFunctionAppSlotConnectionString, Map<String, dynamic>>(value, (value) => value.toMap())),
      'contentShareForceDisabled': ?contentShareForceDisabled,
      'dailyMemoryTimeQuota': ?dailyMemoryTimeQuota,
      'enabled': ?enabled,
      'ftpPublishBasicAuthenticationEnabled': ?ftpPublishBasicAuthenticationEnabled,
      'functionAppId': functionAppId,
      'functionsExtensionVersion': ?functionsExtensionVersion,
      'httpsOnly': ?httpsOnly,
      'identity': ?pulumi.Input.mapOptionalInputValue<WindowsFunctionAppSlotIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'keyVaultReferenceIdentityId': ?keyVaultReferenceIdentityId,
      'name': ?name,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'servicePlanId': ?servicePlanId,
      'siteConfig': pulumi.Input.mapInputValue<WindowsFunctionAppSlotSiteConfig, Map<String, dynamic>>(siteConfig, (value) => value.toMap()),
      'storageAccountAccessKey': ?storageAccountAccessKey,
      'storageAccountName': ?storageAccountName,
      'storageAccounts': ?pulumi.Input.mapOptionalInputValue<List<WindowsFunctionAppSlotStorageAccount>, List<Map<String, dynamic>>>(storageAccounts, (value) => pulumi.Input.encodeList<WindowsFunctionAppSlotStorageAccount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageKeyVaultSecretId': ?storageKeyVaultSecretId,
      'storageUsesManagedIdentity': ?storageUsesManagedIdentity,
      'tags': ?tags,
      'virtualNetworkBackupRestoreEnabled': ?virtualNetworkBackupRestoreEnabled,
      'virtualNetworkSubnetId': ?virtualNetworkSubnetId,
      'vnetImagePullEnabled': ?vnetImagePullEnabled,
      'webdeployPublishBasicAuthenticationEnabled': ?webdeployPublishBasicAuthenticationEnabled,
    };
  }

  factory WindowsFunctionAppSlotArgs.fromMap(Map<String, dynamic> map) {
    return WindowsFunctionAppSlotArgs(
      appSettings: map['appSettings'] == null ? null : pulumi.Output.create<Map<String, String>>((map['appSettings'] as Map).cast<String, String>()),
      authSettings: map['authSettings'] == null ? null : pulumi.Output.create<WindowsFunctionAppSlotAuthSettings>(WindowsFunctionAppSlotAuthSettings.fromMap((map['authSettings'] as Map).cast<String, dynamic>())),
      authSettingsV2: map['authSettingsV2'] == null ? null : pulumi.Output.create<WindowsFunctionAppSlotAuthSettingsV2>(WindowsFunctionAppSlotAuthSettingsV2.fromMap((map['authSettingsV2'] as Map).cast<String, dynamic>())),
      backup: map['backup'] == null ? null : pulumi.Output.create<WindowsFunctionAppSlotBackup>(WindowsFunctionAppSlotBackup.fromMap((map['backup'] as Map).cast<String, dynamic>())),
      builtinLoggingEnabled: map['builtinLoggingEnabled'] == null ? null : pulumi.Output.create<bool>(map['builtinLoggingEnabled'] as bool),
      clientCertificateEnabled: map['clientCertificateEnabled'] == null ? null : pulumi.Output.create<bool>(map['clientCertificateEnabled'] as bool),
      clientCertificateExclusionPaths: map['clientCertificateExclusionPaths'] == null ? null : pulumi.Output.create<String>(map['clientCertificateExclusionPaths'] as String),
      clientCertificateMode: map['clientCertificateMode'] == null ? null : pulumi.Output.create<String>(map['clientCertificateMode'] as String),
      connectionStrings: map['connectionStrings'] == null ? null : pulumi.Output.create<List<WindowsFunctionAppSlotConnectionString>>(pulumi.Input.decodeList<WindowsFunctionAppSlotConnectionString>(map['connectionStrings'], (value) => WindowsFunctionAppSlotConnectionString.fromMap((value as Map).cast<String, dynamic>()))),
      contentShareForceDisabled: map['contentShareForceDisabled'] == null ? null : pulumi.Output.create<bool>(map['contentShareForceDisabled'] as bool),
      dailyMemoryTimeQuota: map['dailyMemoryTimeQuota'] == null ? null : pulumi.Output.create<int>(map['dailyMemoryTimeQuota'] as int),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      ftpPublishBasicAuthenticationEnabled: map['ftpPublishBasicAuthenticationEnabled'] == null ? null : pulumi.Output.create<bool>(map['ftpPublishBasicAuthenticationEnabled'] as bool),
      functionAppId: pulumi.Output.create<String>(map['functionAppId'] as String),
      functionsExtensionVersion: map['functionsExtensionVersion'] == null ? null : pulumi.Output.create<String>(map['functionsExtensionVersion'] as String),
      httpsOnly: map['httpsOnly'] == null ? null : pulumi.Output.create<bool>(map['httpsOnly'] as bool),
      identity: map['identity'] == null ? null : pulumi.Output.create<WindowsFunctionAppSlotIdentity>(WindowsFunctionAppSlotIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      keyVaultReferenceIdentityId: map['keyVaultReferenceIdentityId'] == null ? null : pulumi.Output.create<String>(map['keyVaultReferenceIdentityId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicNetworkAccessEnabled'] as bool),
      servicePlanId: map['servicePlanId'] == null ? null : pulumi.Output.create<String>(map['servicePlanId'] as String),
      siteConfig: pulumi.Output.create<WindowsFunctionAppSlotSiteConfig>(WindowsFunctionAppSlotSiteConfig.fromMap((map['siteConfig'] as Map).cast<String, dynamic>())),
      storageAccountAccessKey: map['storageAccountAccessKey'] == null ? null : pulumi.Output.create<String>(map['storageAccountAccessKey'] as String),
      storageAccountName: map['storageAccountName'] == null ? null : pulumi.Output.create<String>(map['storageAccountName'] as String),
      storageAccounts: map['storageAccounts'] == null ? null : pulumi.Output.create<List<WindowsFunctionAppSlotStorageAccount>>(pulumi.Input.decodeList<WindowsFunctionAppSlotStorageAccount>(map['storageAccounts'], (value) => WindowsFunctionAppSlotStorageAccount.fromMap((value as Map).cast<String, dynamic>()))),
      storageKeyVaultSecretId: map['storageKeyVaultSecretId'] == null ? null : pulumi.Output.create<String>(map['storageKeyVaultSecretId'] as String),
      storageUsesManagedIdentity: map['storageUsesManagedIdentity'] == null ? null : pulumi.Output.create<bool>(map['storageUsesManagedIdentity'] as bool),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      virtualNetworkBackupRestoreEnabled: map['virtualNetworkBackupRestoreEnabled'] == null ? null : pulumi.Output.create<bool>(map['virtualNetworkBackupRestoreEnabled'] as bool),
      virtualNetworkSubnetId: map['virtualNetworkSubnetId'] == null ? null : pulumi.Output.create<String>(map['virtualNetworkSubnetId'] as String),
      vnetImagePullEnabled: map['vnetImagePullEnabled'] == null ? null : pulumi.Output.create<bool>(map['vnetImagePullEnabled'] as bool),
      webdeployPublishBasicAuthenticationEnabled: map['webdeployPublishBasicAuthenticationEnabled'] == null ? null : pulumi.Output.create<bool>(map['webdeployPublishBasicAuthenticationEnabled'] as bool),
    );
  }
}

