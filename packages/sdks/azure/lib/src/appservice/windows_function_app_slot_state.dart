// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_function_app_slot_auth_settings.dart';
import 'windows_function_app_slot_auth_settings_v2.dart';
import 'windows_function_app_slot_backup.dart';
import 'windows_function_app_slot_connection_string.dart';
import 'windows_function_app_slot_identity.dart';
import 'windows_function_app_slot_site_config.dart';
import 'windows_function_app_slot_site_credential.dart';
import 'windows_function_app_slot_storage_account.dart';

/// Input properties used for looking up and filtering WindowsFunctionAppSlot resources.
class WindowsFunctionAppSlotState {
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
  /// The identifier used by App Service to perform domain ownership verification via DNS TXT record.
  final pulumi.Input<String>? customDomainVerificationId;
  /// The amount of memory in gigabyte-seconds that your application is allowed to consume per day. Setting this value only affects function apps in Consumption Plans. Defaults to `0`.
  final pulumi.Input<int>? dailyMemoryTimeQuota;
  /// The default hostname of the Windows Function App Slot.
  final pulumi.Input<String>? defaultHostname;
  /// Is the Windows Function App Slot enabled. Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// Should the default FTP Basic Authentication publishing profile be enabled. Defaults to `true`.
  final pulumi.Input<bool>? ftpPublishBasicAuthenticationEnabled;
  /// The name of the Windows Function App this Slot is a member of. Changing this forces a new resource to be created.
  final pulumi.Input<String>? functionAppId;
  /// The runtime version associated with the Function App Slot. Defaults to `~4`.
  final pulumi.Input<String>? functionsExtensionVersion;
  /// The ID of the App Service Environment used by Function App Slot.
  final pulumi.Input<String>? hostingEnvironmentId;
  /// Can the Function App Slot only be accessed via HTTPS?. Defaults to `false`.
  final pulumi.Input<bool>? httpsOnly;
  /// an `identity` block as detailed below.
  final pulumi.Input<WindowsFunctionAppSlotIdentity>? identity;
  /// The User Assigned Identity ID used for accessing KeyVault secrets. The identity must be assigned to the application in the `identity` block. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity)
  final pulumi.Input<String>? keyVaultReferenceIdentityId;
  /// The Kind value for this Windows Function App Slot.
  final pulumi.Input<String>? kind;
  /// Specifies the name of the Windows Function App Slot. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A list of outbound IP addresses. For example `["52.23.25.3", "52.143.43.12"]`.
  final pulumi.Input<List<String>>? outboundIpAddressLists;
  /// A comma separated list of outbound IP addresses as a string. For example `52.23.25.3,52.143.43.12`.
  final pulumi.Input<String>? outboundIpAddresses;
  /// A list of possible outbound IP addresses, not all of which are necessarily in use. This is a superset of `outbound_ip_address_list`. For example `["52.23.25.3", "52.143.43.12"]`.
  final pulumi.Input<List<String>>? possibleOutboundIpAddressLists;
  /// A comma separated list of possible outbound IP addresses as a string. For example `52.23.25.3,52.143.43.12,52.143.43.17`. This is a superset of `outbound_ip_addresses`. For example `["52.23.25.3", "52.143.43.12","52.143.43.17"]`.
  final pulumi.Input<String>? possibleOutboundIpAddresses;
  /// Should public network access be enabled for the Function App. Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The ID of the Service Plan in which to run this slot. If not specified the same Service Plan as the Windows Function App will be used.
  final pulumi.Input<String>? servicePlanId;
  /// a `site_config` block as detailed below.
  final pulumi.Input<WindowsFunctionAppSlotSiteConfig>? siteConfig;
  /// A `site_credential` block as defined below.
  final pulumi.Input<List<WindowsFunctionAppSlotSiteCredential>>? siteCredentials;
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

  /// Creates a new [WindowsFunctionAppSlotState].
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
  /// [customDomainVerificationId] The identifier used by App Service to perform domain ownership verification via DNS TXT record.
  /// [dailyMemoryTimeQuota] The amount of memory in gigabyte-seconds that your application is allowed to consume per day. Setting this value only affects function apps in Consumption Plans. Defaults to `0`.
  /// [defaultHostname] The default hostname of the Windows Function App Slot.
  /// [enabled] Is the Windows Function App Slot enabled. Defaults to `true`.
  /// [ftpPublishBasicAuthenticationEnabled] Should the default FTP Basic Authentication publishing profile be enabled. Defaults to `true`.
  /// [functionAppId] The name of the Windows Function App this Slot is a member of. Changing this forces a new resource to be created.
  /// [functionsExtensionVersion] The runtime version associated with the Function App Slot. Defaults to `~4`.
  /// [hostingEnvironmentId] The ID of the App Service Environment used by Function App Slot.
  /// [httpsOnly] Can the Function App Slot only be accessed via HTTPS?. Defaults to `false`.
  /// [identity] an `identity` block as detailed below.
  /// [keyVaultReferenceIdentityId] The User Assigned Identity ID used for accessing KeyVault secrets. The identity must be assigned to the application in the `identity` block. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity)
  /// [kind] The Kind value for this Windows Function App Slot.
  /// [name] Specifies the name of the Windows Function App Slot. Changing this forces a new resource to be created.
  /// [outboundIpAddressLists] A list of outbound IP addresses. For example `["52.23.25.3", "52.143.43.12"]`.
  /// [outboundIpAddresses] A comma separated list of outbound IP addresses as a string. For example `52.23.25.3,52.143.43.12`.
  /// [possibleOutboundIpAddressLists] A list of possible outbound IP addresses, not all of which are necessarily in use. This is a superset of `outbound_ip_address_list`. For example `["52.23.25.3", "52.143.43.12"]`.
  /// [possibleOutboundIpAddresses] A comma separated list of possible outbound IP addresses as a string. For example `52.23.25.3,52.143.43.12,52.143.43.17`. This is a superset of `outbound_ip_addresses`. For example `["52.23.25.3", "52.143.43.12","52.143.43.17"]`.
  /// [publicNetworkAccessEnabled] Should public network access be enabled for the Function App. Defaults to `true`.
  /// [servicePlanId] The ID of the Service Plan in which to run this slot. If not specified the same Service Plan as the Windows Function App will be used.
  /// [siteConfig] a `site_config` block as detailed below.
  /// [siteCredentials] A `site_credential` block as defined below.
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
  WindowsFunctionAppSlotState({
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
    this.customDomainVerificationId,
    this.dailyMemoryTimeQuota,
    this.defaultHostname,
    this.enabled,
    this.ftpPublishBasicAuthenticationEnabled,
    this.functionAppId,
    this.functionsExtensionVersion,
    this.hostingEnvironmentId,
    this.httpsOnly,
    this.identity,
    this.keyVaultReferenceIdentityId,
    this.kind,
    this.name,
    this.outboundIpAddressLists,
    this.outboundIpAddresses,
    this.possibleOutboundIpAddressLists,
    this.possibleOutboundIpAddresses,
    this.publicNetworkAccessEnabled,
    this.servicePlanId,
    this.siteConfig,
    this.siteCredentials,
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
  });

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
      'customDomainVerificationId': ?customDomainVerificationId,
      'dailyMemoryTimeQuota': ?dailyMemoryTimeQuota,
      'defaultHostname': ?defaultHostname,
      'enabled': ?enabled,
      'ftpPublishBasicAuthenticationEnabled': ?ftpPublishBasicAuthenticationEnabled,
      'functionAppId': ?functionAppId,
      'functionsExtensionVersion': ?functionsExtensionVersion,
      'hostingEnvironmentId': ?hostingEnvironmentId,
      'httpsOnly': ?httpsOnly,
      'identity': ?pulumi.Input.mapOptionalInputValue<WindowsFunctionAppSlotIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'keyVaultReferenceIdentityId': ?keyVaultReferenceIdentityId,
      'kind': ?kind,
      'name': ?name,
      'outboundIpAddressLists': ?outboundIpAddressLists,
      'outboundIpAddresses': ?outboundIpAddresses,
      'possibleOutboundIpAddressLists': ?possibleOutboundIpAddressLists,
      'possibleOutboundIpAddresses': ?possibleOutboundIpAddresses,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'servicePlanId': ?servicePlanId,
      'siteConfig': ?pulumi.Input.mapOptionalInputValue<WindowsFunctionAppSlotSiteConfig, Map<String, dynamic>>(siteConfig, (value) => value.toMap()),
      'siteCredentials': ?pulumi.Input.mapOptionalInputValue<List<WindowsFunctionAppSlotSiteCredential>, List<Map<String, dynamic>>>(siteCredentials, (value) => pulumi.Input.encodeList<WindowsFunctionAppSlotSiteCredential, Map<String, dynamic>>(value, (value) => value.toMap())),
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

  factory WindowsFunctionAppSlotState.fromMap(Map<String, dynamic> map) {
    return WindowsFunctionAppSlotState(
      appSettings: map['appSettings'] == null ? null : ((map['appSettings'] as Map).cast<String, String>()).input(),
      authSettings: map['authSettings'] == null ? null : (WindowsFunctionAppSlotAuthSettings.fromMap((map['authSettings'] as Map).cast<String, dynamic>())).input(),
      authSettingsV2: map['authSettingsV2'] == null ? null : (WindowsFunctionAppSlotAuthSettingsV2.fromMap((map['authSettingsV2'] as Map).cast<String, dynamic>())).input(),
      backup: map['backup'] == null ? null : (WindowsFunctionAppSlotBackup.fromMap((map['backup'] as Map).cast<String, dynamic>())).input(),
      builtinLoggingEnabled: map['builtinLoggingEnabled'] == null ? null : (map['builtinLoggingEnabled'] as bool).input(),
      clientCertificateEnabled: map['clientCertificateEnabled'] == null ? null : (map['clientCertificateEnabled'] as bool).input(),
      clientCertificateExclusionPaths: map['clientCertificateExclusionPaths'] == null ? null : (map['clientCertificateExclusionPaths'] as String).input(),
      clientCertificateMode: map['clientCertificateMode'] == null ? null : (map['clientCertificateMode'] as String).input(),
      connectionStrings: map['connectionStrings'] == null ? null : (pulumi.Input.decodeList<WindowsFunctionAppSlotConnectionString>(map['connectionStrings'], (value) => WindowsFunctionAppSlotConnectionString.fromMap((value as Map).cast<String, dynamic>()))).input(),
      contentShareForceDisabled: map['contentShareForceDisabled'] == null ? null : (map['contentShareForceDisabled'] as bool).input(),
      customDomainVerificationId: map['customDomainVerificationId'] == null ? null : (map['customDomainVerificationId'] as String).input(),
      dailyMemoryTimeQuota: map['dailyMemoryTimeQuota'] == null ? null : (map['dailyMemoryTimeQuota'] as int).input(),
      defaultHostname: map['defaultHostname'] == null ? null : (map['defaultHostname'] as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      ftpPublishBasicAuthenticationEnabled: map['ftpPublishBasicAuthenticationEnabled'] == null ? null : (map['ftpPublishBasicAuthenticationEnabled'] as bool).input(),
      functionAppId: map['functionAppId'] == null ? null : (map['functionAppId'] as String).input(),
      functionsExtensionVersion: map['functionsExtensionVersion'] == null ? null : (map['functionsExtensionVersion'] as String).input(),
      hostingEnvironmentId: map['hostingEnvironmentId'] == null ? null : (map['hostingEnvironmentId'] as String).input(),
      httpsOnly: map['httpsOnly'] == null ? null : (map['httpsOnly'] as bool).input(),
      identity: map['identity'] == null ? null : (WindowsFunctionAppSlotIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      keyVaultReferenceIdentityId: map['keyVaultReferenceIdentityId'] == null ? null : (map['keyVaultReferenceIdentityId'] as String).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      outboundIpAddressLists: map['outboundIpAddressLists'] == null ? null : ((map['outboundIpAddressLists'] as List).cast<String>()).input(),
      outboundIpAddresses: map['outboundIpAddresses'] == null ? null : (map['outboundIpAddresses'] as String).input(),
      possibleOutboundIpAddressLists: map['possibleOutboundIpAddressLists'] == null ? null : ((map['possibleOutboundIpAddressLists'] as List).cast<String>()).input(),
      possibleOutboundIpAddresses: map['possibleOutboundIpAddresses'] == null ? null : (map['possibleOutboundIpAddresses'] as String).input(),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : (map['publicNetworkAccessEnabled'] as bool).input(),
      servicePlanId: map['servicePlanId'] == null ? null : (map['servicePlanId'] as String).input(),
      siteConfig: map['siteConfig'] == null ? null : (WindowsFunctionAppSlotSiteConfig.fromMap((map['siteConfig'] as Map).cast<String, dynamic>())).input(),
      siteCredentials: map['siteCredentials'] == null ? null : (pulumi.Input.decodeList<WindowsFunctionAppSlotSiteCredential>(map['siteCredentials'], (value) => WindowsFunctionAppSlotSiteCredential.fromMap((value as Map).cast<String, dynamic>()))).input(),
      storageAccountAccessKey: map['storageAccountAccessKey'] == null ? null : (map['storageAccountAccessKey'] as String).input(),
      storageAccountName: map['storageAccountName'] == null ? null : (map['storageAccountName'] as String).input(),
      storageAccounts: map['storageAccounts'] == null ? null : (pulumi.Input.decodeList<WindowsFunctionAppSlotStorageAccount>(map['storageAccounts'], (value) => WindowsFunctionAppSlotStorageAccount.fromMap((value as Map).cast<String, dynamic>()))).input(),
      storageKeyVaultSecretId: map['storageKeyVaultSecretId'] == null ? null : (map['storageKeyVaultSecretId'] as String).input(),
      storageUsesManagedIdentity: map['storageUsesManagedIdentity'] == null ? null : (map['storageUsesManagedIdentity'] as bool).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      virtualNetworkBackupRestoreEnabled: map['virtualNetworkBackupRestoreEnabled'] == null ? null : (map['virtualNetworkBackupRestoreEnabled'] as bool).input(),
      virtualNetworkSubnetId: map['virtualNetworkSubnetId'] == null ? null : (map['virtualNetworkSubnetId'] as String).input(),
      vnetImagePullEnabled: map['vnetImagePullEnabled'] == null ? null : (map['vnetImagePullEnabled'] as bool).input(),
      webdeployPublishBasicAuthenticationEnabled: map['webdeployPublishBasicAuthenticationEnabled'] == null ? null : (map['webdeployPublishBasicAuthenticationEnabled'] as bool).input(),
    );
  }
}

