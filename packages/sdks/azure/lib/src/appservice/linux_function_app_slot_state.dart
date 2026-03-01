// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_function_app_slot_auth_settings.dart';
import 'linux_function_app_slot_auth_settings_v2.dart';
import 'linux_function_app_slot_backup.dart';
import 'linux_function_app_slot_connection_string.dart';
import 'linux_function_app_slot_identity.dart';
import 'linux_function_app_slot_site_config.dart';
import 'linux_function_app_slot_site_credential.dart';
import 'linux_function_app_slot_storage_account.dart';

/// Input properties used for looking up and filtering LinuxFunctionAppSlot resources.
class LinuxFunctionAppSlotState {
  /// A map of key-value pairs for [App Settings](https://docs.microsoft.com/azure/azure-functions/functions-app-settings) and custom values.
  final pulumi.Input<Map<String, String>>? appSettings;
  /// an `auth_settings` block as detailed below.
  final pulumi.Input<LinuxFunctionAppSlotAuthSettings>? authSettings;
  /// an `auth_settings_v2` block as detailed below.
  final pulumi.Input<LinuxFunctionAppSlotAuthSettingsV2>? authSettingsV2;
  /// a `backup` block as detailed below.
  final pulumi.Input<LinuxFunctionAppSlotBackup>? backup;
  /// Should built in logging be enabled. Configures `AzureWebJobsDashboard` app setting based on the configured storage setting. Defaults to `true`.
  final pulumi.Input<bool>? builtinLoggingEnabled;
  /// Should the Function App Slot use Client Certificates.
  final pulumi.Input<bool>? clientCertificateEnabled;
  /// Paths to exclude when using client certificates, separated by ;
  final pulumi.Input<String>? clientCertificateExclusionPaths;
  /// The mode of the Function App Slot's client certificates requirement for incoming requests. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`. Defaults to `Optional`.
  final pulumi.Input<String>? clientCertificateMode;
  /// a `connection_string` block as detailed below.
  final pulumi.Input<List<LinuxFunctionAppSlotConnectionString>>? connectionStrings;
  /// Force disable the content share settings.
  final pulumi.Input<bool>? contentShareForceDisabled;
  /// The identifier used by App Service to perform domain ownership verification via DNS TXT record.
  final pulumi.Input<String>? customDomainVerificationId;
  /// The amount of memory in gigabyte-seconds that your application is allowed to consume per day. Setting this value only affects function apps in Consumption Plans. Defaults to `0`.
  final pulumi.Input<int>? dailyMemoryTimeQuota;
  /// The default hostname of the Linux Function App Slot.
  final pulumi.Input<String>? defaultHostname;
  /// Is the Linux Function App Slot enabled. Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// Are the default FTP Basic Authentication publishing credentials enabled. Defaults to `true`.
  final pulumi.Input<bool>? ftpPublishBasicAuthenticationEnabled;
  /// The ID of the Linux Function App this Slot is a member of. Changing this forces a new resource to be created.
  final pulumi.Input<String>? functionAppId;
  /// The runtime version associated with the Function App Slot. Defaults to `~4`.
  final pulumi.Input<String>? functionsExtensionVersion;
  /// The ID of the App Service Environment used by Function App Slot.
  final pulumi.Input<String>? hostingEnvironmentId;
  /// Can the Function App Slot only be accessed via HTTPS?. Defaults to `false`.
  final pulumi.Input<bool>? httpsOnly;
  /// An `identity` block as detailed below.
  final pulumi.Input<LinuxFunctionAppSlotIdentity>? identity;
  /// The User Assigned Identity ID used for accessing KeyVault secrets. The identity must be assigned to the application in the `identity` block. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity)
  final pulumi.Input<String>? keyVaultReferenceIdentityId;
  /// The Kind value for this Linux Function App Slot.
  final pulumi.Input<String>? kind;
  /// Specifies the name of the Function App Slot. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A list of outbound IP addresses. For example `["52.23.25.3", "52.143.43.12"]`
  final pulumi.Input<List<String>>? outboundIpAddressLists;
  /// A comma separated list of outbound IP addresses as a string. For example `52.23.25.3,52.143.43.12`.
  final pulumi.Input<String>? outboundIpAddresses;
  /// A list of possible outbound IP addresses, not all of which are necessarily in use. This is a superset of `outbound_ip_address_list`. For example `["52.23.25.3", "52.143.43.12"]`.
  final pulumi.Input<List<String>>? possibleOutboundIpAddressLists;
  /// A comma separated list of possible outbound IP addresses as a string. For example `52.23.25.3,52.143.43.12,52.143.43.17`. This is a superset of `outbound_ip_addresses`. For example `["52.23.25.3", "52.143.43.12","52.143.43.17"]`.
  final pulumi.Input<String>? possibleOutboundIpAddresses;
  /// Should public network access be enabled for the Function App. Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The ID of the Service Plan in which to run this slot. If not specified the same Service Plan as the Linux Function App will be used.
  final pulumi.Input<String>? servicePlanId;
  /// a `site_config` block as detailed below.
  final pulumi.Input<LinuxFunctionAppSlotSiteConfig>? siteConfig;
  /// A `site_credential` block as defined below.
  final pulumi.Input<List<LinuxFunctionAppSlotSiteCredential>>? siteCredentials;
  /// The access key which will be used to access the storage account for the Function App Slot.
  final pulumi.Input<String>? storageAccountAccessKey;
  /// The backend storage account name which will be used by this Function App Slot.
  final pulumi.Input<String>? storageAccountName;
  /// One or more `storage_account` blocks as defined below.
  final pulumi.Input<List<LinuxFunctionAppSlotStorageAccount>>? storageAccounts;
  /// The Key Vault Secret ID, optionally including version, that contains the Connection String to connect to the storage account for this Function App.
  ///
  /// > **Note:** `storage_key_vault_secret_id` cannot be used with `storage_account_name`.
  ///
  /// > **Note:** `storage_key_vault_secret_id` used without a version will use the latest version of the secret, however, the service can take up to 24h to pick up a rotation of the latest version. See the [official docs](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#rotation) for more information.
  final pulumi.Input<String>? storageKeyVaultSecretId;
  /// Should the Function App Slot use its Managed Identity to access storage.
  ///
  /// > **Note:** One of `storage_account_access_key` or `storage_uses_managed_identity` must be specified when using `storage_account_name`.
  final pulumi.Input<bool>? storageUsesManagedIdentity;
  /// A mapping of tags which should be assigned to the Linux Function App.
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
  /// > **Note:** The feature can also be enabled via the app setting `WEBSITE_PULL_IMAGE_OVER_VNET`. The Setting is enabled by default for an app running in the App Service Environment.
  final pulumi.Input<bool>? vnetImagePullEnabled;
  /// Should the default WebDeploy Basic Authentication publishing credentials enabled. Defaults to `true`.
  final pulumi.Input<bool>? webdeployPublishBasicAuthenticationEnabled;

  /// Creates a new [LinuxFunctionAppSlotState].
  /// [appSettings] A map of key-value pairs for [App Settings](https://docs.microsoft.com/azure/azure-functions/functions-app-settings) and custom values.
  /// [authSettings] an `auth_settings` block as detailed below.
  /// [authSettingsV2] an `auth_settings_v2` block as detailed below.
  /// [backup] a `backup` block as detailed below.
  /// [builtinLoggingEnabled] Should built in logging be enabled. Configures `AzureWebJobsDashboard` app setting based on the configured storage setting. Defaults to `true`.
  /// [clientCertificateEnabled] Should the Function App Slot use Client Certificates.
  /// [clientCertificateExclusionPaths] Paths to exclude when using client certificates, separated by ;
  /// [clientCertificateMode] The mode of the Function App Slot's client certificates requirement for incoming requests. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`. Defaults to `Optional`.
  /// [connectionStrings] a `connection_string` block as detailed below.
  /// [contentShareForceDisabled] Force disable the content share settings.
  /// [customDomainVerificationId] The identifier used by App Service to perform domain ownership verification via DNS TXT record.
  /// [dailyMemoryTimeQuota] The amount of memory in gigabyte-seconds that your application is allowed to consume per day. Setting this value only affects function apps in Consumption Plans. Defaults to `0`.
  /// [defaultHostname] The default hostname of the Linux Function App Slot.
  /// [enabled] Is the Linux Function App Slot enabled. Defaults to `true`.
  /// [ftpPublishBasicAuthenticationEnabled] Are the default FTP Basic Authentication publishing credentials enabled. Defaults to `true`.
  /// [functionAppId] The ID of the Linux Function App this Slot is a member of. Changing this forces a new resource to be created.
  /// [functionsExtensionVersion] The runtime version associated with the Function App Slot. Defaults to `~4`.
  /// [hostingEnvironmentId] The ID of the App Service Environment used by Function App Slot.
  /// [httpsOnly] Can the Function App Slot only be accessed via HTTPS?. Defaults to `false`.
  /// [identity] An `identity` block as detailed below.
  /// [keyVaultReferenceIdentityId] The User Assigned Identity ID used for accessing KeyVault secrets. The identity must be assigned to the application in the `identity` block. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity)
  /// [kind] The Kind value for this Linux Function App Slot.
  /// [name] Specifies the name of the Function App Slot. Changing this forces a new resource to be created.
  /// [outboundIpAddressLists] A list of outbound IP addresses. For example `["52.23.25.3", "52.143.43.12"]`
  /// [outboundIpAddresses] A comma separated list of outbound IP addresses as a string. For example `52.23.25.3,52.143.43.12`.
  /// [possibleOutboundIpAddressLists] A list of possible outbound IP addresses, not all of which are necessarily in use. This is a superset of `outbound_ip_address_list`. For example `["52.23.25.3", "52.143.43.12"]`.
  /// [possibleOutboundIpAddresses] A comma separated list of possible outbound IP addresses as a string. For example `52.23.25.3,52.143.43.12,52.143.43.17`. This is a superset of `outbound_ip_addresses`. For example `["52.23.25.3", "52.143.43.12","52.143.43.17"]`.
  /// [publicNetworkAccessEnabled] Should public network access be enabled for the Function App. Defaults to `true`.
  /// [servicePlanId] The ID of the Service Plan in which to run this slot. If not specified the same Service Plan as the Linux Function App will be used.
  /// [siteConfig] a `site_config` block as detailed below.
  /// [siteCredentials] A `site_credential` block as defined below.
  /// [storageAccountAccessKey] The access key which will be used to access the storage account for the Function App Slot.
  /// [storageAccountName] The backend storage account name which will be used by this Function App Slot.
  /// [storageAccounts] One or more `storage_account` blocks as defined below.
  /// [storageKeyVaultSecretId] The Key Vault Secret ID, optionally including version, that contains the Connection String to connect to the storage account for this Function App.
  /// [storageUsesManagedIdentity] Should the Function App Slot use its Managed Identity to access storage.
  /// [tags] A mapping of tags which should be assigned to the Linux Function App.
  /// [virtualNetworkBackupRestoreEnabled] Whether backup and restore operations over the linked virtual network are enabled. Defaults to `false`.
  /// [virtualNetworkSubnetId] The subnet id which will be used by this Function App Slot for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration).
  /// [vnetImagePullEnabled] Specifies whether traffic for the image pull should be routed over virtual network. Defaults to `false`.
  /// [webdeployPublishBasicAuthenticationEnabled] Should the default WebDeploy Basic Authentication publishing credentials enabled. Defaults to `true`.
  LinuxFunctionAppSlotState({
    pulumi.Output<Map<String, String>>? appSettings,
    pulumi.Output<LinuxFunctionAppSlotAuthSettings>? authSettings,
    pulumi.Output<LinuxFunctionAppSlotAuthSettingsV2>? authSettingsV2,
    pulumi.Output<LinuxFunctionAppSlotBackup>? backup,
    pulumi.Output<bool>? builtinLoggingEnabled,
    pulumi.Output<bool>? clientCertificateEnabled,
    pulumi.Output<String>? clientCertificateExclusionPaths,
    pulumi.Output<String>? clientCertificateMode,
    pulumi.Output<List<LinuxFunctionAppSlotConnectionString>>? connectionStrings,
    pulumi.Output<bool>? contentShareForceDisabled,
    pulumi.Output<String>? customDomainVerificationId,
    pulumi.Output<int>? dailyMemoryTimeQuota,
    pulumi.Output<String>? defaultHostname,
    pulumi.Output<bool>? enabled,
    pulumi.Output<bool>? ftpPublishBasicAuthenticationEnabled,
    pulumi.Output<String>? functionAppId,
    pulumi.Output<String>? functionsExtensionVersion,
    pulumi.Output<String>? hostingEnvironmentId,
    pulumi.Output<bool>? httpsOnly,
    pulumi.Output<LinuxFunctionAppSlotIdentity>? identity,
    pulumi.Output<String>? keyVaultReferenceIdentityId,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? outboundIpAddressLists,
    pulumi.Output<String>? outboundIpAddresses,
    pulumi.Output<List<String>>? possibleOutboundIpAddressLists,
    pulumi.Output<String>? possibleOutboundIpAddresses,
    pulumi.Output<bool>? publicNetworkAccessEnabled,
    pulumi.Output<String>? servicePlanId,
    pulumi.Output<LinuxFunctionAppSlotSiteConfig>? siteConfig,
    pulumi.Output<List<LinuxFunctionAppSlotSiteCredential>>? siteCredentials,
    pulumi.Output<String>? storageAccountAccessKey,
    pulumi.Output<String>? storageAccountName,
    pulumi.Output<List<LinuxFunctionAppSlotStorageAccount>>? storageAccounts,
    pulumi.Output<String>? storageKeyVaultSecretId,
    pulumi.Output<bool>? storageUsesManagedIdentity,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<bool>? virtualNetworkBackupRestoreEnabled,
    pulumi.Output<String>? virtualNetworkSubnetId,
    pulumi.Output<bool>? vnetImagePullEnabled,
    pulumi.Output<bool>? webdeployPublishBasicAuthenticationEnabled,
  }) :
      appSettings = pulumi.Input.asOptionalInput<Map<String, String>>(appSettings),
      authSettings = pulumi.Input.asOptionalInput<LinuxFunctionAppSlotAuthSettings>(authSettings),
      authSettingsV2 = pulumi.Input.asOptionalInput<LinuxFunctionAppSlotAuthSettingsV2>(authSettingsV2),
      backup = pulumi.Input.asOptionalInput<LinuxFunctionAppSlotBackup>(backup),
      builtinLoggingEnabled = pulumi.Input.asOptionalInput<bool>(builtinLoggingEnabled),
      clientCertificateEnabled = pulumi.Input.asOptionalInput<bool>(clientCertificateEnabled),
      clientCertificateExclusionPaths = pulumi.Input.asOptionalInput<String>(clientCertificateExclusionPaths),
      clientCertificateMode = pulumi.Input.asOptionalInput<String>(clientCertificateMode),
      connectionStrings = pulumi.Input.asOptionalInput<List<LinuxFunctionAppSlotConnectionString>>(connectionStrings),
      contentShareForceDisabled = pulumi.Input.asOptionalInput<bool>(contentShareForceDisabled),
      customDomainVerificationId = pulumi.Input.asOptionalInput<String>(customDomainVerificationId),
      dailyMemoryTimeQuota = pulumi.Input.asOptionalInput<int>(dailyMemoryTimeQuota),
      defaultHostname = pulumi.Input.asOptionalInput<String>(defaultHostname),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      ftpPublishBasicAuthenticationEnabled = pulumi.Input.asOptionalInput<bool>(ftpPublishBasicAuthenticationEnabled),
      functionAppId = pulumi.Input.asOptionalInput<String>(functionAppId),
      functionsExtensionVersion = pulumi.Input.asOptionalInput<String>(functionsExtensionVersion),
      hostingEnvironmentId = pulumi.Input.asOptionalInput<String>(hostingEnvironmentId),
      httpsOnly = pulumi.Input.asOptionalInput<bool>(httpsOnly),
      identity = pulumi.Input.asOptionalInput<LinuxFunctionAppSlotIdentity>(identity),
      keyVaultReferenceIdentityId = pulumi.Input.asOptionalInput<String>(keyVaultReferenceIdentityId),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      name = pulumi.Input.asOptionalInput<String>(name),
      outboundIpAddressLists = pulumi.Input.asOptionalInput<List<String>>(outboundIpAddressLists),
      outboundIpAddresses = pulumi.Input.asOptionalInput<String>(outboundIpAddresses),
      possibleOutboundIpAddressLists = pulumi.Input.asOptionalInput<List<String>>(possibleOutboundIpAddressLists),
      possibleOutboundIpAddresses = pulumi.Input.asOptionalInput<String>(possibleOutboundIpAddresses),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      servicePlanId = pulumi.Input.asOptionalInput<String>(servicePlanId),
      siteConfig = pulumi.Input.asOptionalInput<LinuxFunctionAppSlotSiteConfig>(siteConfig),
      siteCredentials = pulumi.Input.asOptionalInput<List<LinuxFunctionAppSlotSiteCredential>>(siteCredentials),
      storageAccountAccessKey = pulumi.Input.asOptionalInput<String>(storageAccountAccessKey),
      storageAccountName = pulumi.Input.asOptionalInput<String>(storageAccountName),
      storageAccounts = pulumi.Input.asOptionalInput<List<LinuxFunctionAppSlotStorageAccount>>(storageAccounts),
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
      'authSettings': ?pulumi.Input.mapOptionalInputValue<LinuxFunctionAppSlotAuthSettings, Map<String, dynamic>>(authSettings, (value) => value.toMap()),
      'authSettingsV2': ?pulumi.Input.mapOptionalInputValue<LinuxFunctionAppSlotAuthSettingsV2, Map<String, dynamic>>(authSettingsV2, (value) => value.toMap()),
      'backup': ?pulumi.Input.mapOptionalInputValue<LinuxFunctionAppSlotBackup, Map<String, dynamic>>(backup, (value) => value.toMap()),
      'builtinLoggingEnabled': ?builtinLoggingEnabled,
      'clientCertificateEnabled': ?clientCertificateEnabled,
      'clientCertificateExclusionPaths': ?clientCertificateExclusionPaths,
      'clientCertificateMode': ?clientCertificateMode,
      'connectionStrings': ?pulumi.Input.mapOptionalInputValue<List<LinuxFunctionAppSlotConnectionString>, List<Map<String, dynamic>>>(connectionStrings, (value) => pulumi.Input.encodeList<LinuxFunctionAppSlotConnectionString, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      'identity': ?pulumi.Input.mapOptionalInputValue<LinuxFunctionAppSlotIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'keyVaultReferenceIdentityId': ?keyVaultReferenceIdentityId,
      'kind': ?kind,
      'name': ?name,
      'outboundIpAddressLists': ?outboundIpAddressLists,
      'outboundIpAddresses': ?outboundIpAddresses,
      'possibleOutboundIpAddressLists': ?possibleOutboundIpAddressLists,
      'possibleOutboundIpAddresses': ?possibleOutboundIpAddresses,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'servicePlanId': ?servicePlanId,
      'siteConfig': ?pulumi.Input.mapOptionalInputValue<LinuxFunctionAppSlotSiteConfig, Map<String, dynamic>>(siteConfig, (value) => value.toMap()),
      'siteCredentials': ?pulumi.Input.mapOptionalInputValue<List<LinuxFunctionAppSlotSiteCredential>, List<Map<String, dynamic>>>(siteCredentials, (value) => pulumi.Input.encodeList<LinuxFunctionAppSlotSiteCredential, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageAccountAccessKey': ?storageAccountAccessKey,
      'storageAccountName': ?storageAccountName,
      'storageAccounts': ?pulumi.Input.mapOptionalInputValue<List<LinuxFunctionAppSlotStorageAccount>, List<Map<String, dynamic>>>(storageAccounts, (value) => pulumi.Input.encodeList<LinuxFunctionAppSlotStorageAccount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageKeyVaultSecretId': ?storageKeyVaultSecretId,
      'storageUsesManagedIdentity': ?storageUsesManagedIdentity,
      'tags': ?tags,
      'virtualNetworkBackupRestoreEnabled': ?virtualNetworkBackupRestoreEnabled,
      'virtualNetworkSubnetId': ?virtualNetworkSubnetId,
      'vnetImagePullEnabled': ?vnetImagePullEnabled,
      'webdeployPublishBasicAuthenticationEnabled': ?webdeployPublishBasicAuthenticationEnabled,
    };
  }

  factory LinuxFunctionAppSlotState.fromMap(Map<String, dynamic> map) {
    return LinuxFunctionAppSlotState(
      appSettings: map['appSettings'] == null ? null : pulumi.Output.create<Map<String, String>>((map['appSettings'] as Map).cast<String, String>()),
      authSettings: map['authSettings'] == null ? null : pulumi.Output.create<LinuxFunctionAppSlotAuthSettings>(LinuxFunctionAppSlotAuthSettings.fromMap((map['authSettings'] as Map).cast<String, dynamic>())),
      authSettingsV2: map['authSettingsV2'] == null ? null : pulumi.Output.create<LinuxFunctionAppSlotAuthSettingsV2>(LinuxFunctionAppSlotAuthSettingsV2.fromMap((map['authSettingsV2'] as Map).cast<String, dynamic>())),
      backup: map['backup'] == null ? null : pulumi.Output.create<LinuxFunctionAppSlotBackup>(LinuxFunctionAppSlotBackup.fromMap((map['backup'] as Map).cast<String, dynamic>())),
      builtinLoggingEnabled: map['builtinLoggingEnabled'] == null ? null : pulumi.Output.create<bool>(map['builtinLoggingEnabled'] as bool),
      clientCertificateEnabled: map['clientCertificateEnabled'] == null ? null : pulumi.Output.create<bool>(map['clientCertificateEnabled'] as bool),
      clientCertificateExclusionPaths: map['clientCertificateExclusionPaths'] == null ? null : pulumi.Output.create<String>(map['clientCertificateExclusionPaths'] as String),
      clientCertificateMode: map['clientCertificateMode'] == null ? null : pulumi.Output.create<String>(map['clientCertificateMode'] as String),
      connectionStrings: map['connectionStrings'] == null ? null : pulumi.Output.create<List<LinuxFunctionAppSlotConnectionString>>(pulumi.Input.decodeList<LinuxFunctionAppSlotConnectionString>(map['connectionStrings'], (value) => LinuxFunctionAppSlotConnectionString.fromMap((value as Map).cast<String, dynamic>()))),
      contentShareForceDisabled: map['contentShareForceDisabled'] == null ? null : pulumi.Output.create<bool>(map['contentShareForceDisabled'] as bool),
      customDomainVerificationId: map['customDomainVerificationId'] == null ? null : pulumi.Output.create<String>(map['customDomainVerificationId'] as String),
      dailyMemoryTimeQuota: map['dailyMemoryTimeQuota'] == null ? null : pulumi.Output.create<int>(map['dailyMemoryTimeQuota'] as int),
      defaultHostname: map['defaultHostname'] == null ? null : pulumi.Output.create<String>(map['defaultHostname'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      ftpPublishBasicAuthenticationEnabled: map['ftpPublishBasicAuthenticationEnabled'] == null ? null : pulumi.Output.create<bool>(map['ftpPublishBasicAuthenticationEnabled'] as bool),
      functionAppId: map['functionAppId'] == null ? null : pulumi.Output.create<String>(map['functionAppId'] as String),
      functionsExtensionVersion: map['functionsExtensionVersion'] == null ? null : pulumi.Output.create<String>(map['functionsExtensionVersion'] as String),
      hostingEnvironmentId: map['hostingEnvironmentId'] == null ? null : pulumi.Output.create<String>(map['hostingEnvironmentId'] as String),
      httpsOnly: map['httpsOnly'] == null ? null : pulumi.Output.create<bool>(map['httpsOnly'] as bool),
      identity: map['identity'] == null ? null : pulumi.Output.create<LinuxFunctionAppSlotIdentity>(LinuxFunctionAppSlotIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      keyVaultReferenceIdentityId: map['keyVaultReferenceIdentityId'] == null ? null : pulumi.Output.create<String>(map['keyVaultReferenceIdentityId'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      outboundIpAddressLists: map['outboundIpAddressLists'] == null ? null : pulumi.Output.create<List<String>>((map['outboundIpAddressLists'] as List).cast<String>()),
      outboundIpAddresses: map['outboundIpAddresses'] == null ? null : pulumi.Output.create<String>(map['outboundIpAddresses'] as String),
      possibleOutboundIpAddressLists: map['possibleOutboundIpAddressLists'] == null ? null : pulumi.Output.create<List<String>>((map['possibleOutboundIpAddressLists'] as List).cast<String>()),
      possibleOutboundIpAddresses: map['possibleOutboundIpAddresses'] == null ? null : pulumi.Output.create<String>(map['possibleOutboundIpAddresses'] as String),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicNetworkAccessEnabled'] as bool),
      servicePlanId: map['servicePlanId'] == null ? null : pulumi.Output.create<String>(map['servicePlanId'] as String),
      siteConfig: map['siteConfig'] == null ? null : pulumi.Output.create<LinuxFunctionAppSlotSiteConfig>(LinuxFunctionAppSlotSiteConfig.fromMap((map['siteConfig'] as Map).cast<String, dynamic>())),
      siteCredentials: map['siteCredentials'] == null ? null : pulumi.Output.create<List<LinuxFunctionAppSlotSiteCredential>>(pulumi.Input.decodeList<LinuxFunctionAppSlotSiteCredential>(map['siteCredentials'], (value) => LinuxFunctionAppSlotSiteCredential.fromMap((value as Map).cast<String, dynamic>()))),
      storageAccountAccessKey: map['storageAccountAccessKey'] == null ? null : pulumi.Output.create<String>(map['storageAccountAccessKey'] as String),
      storageAccountName: map['storageAccountName'] == null ? null : pulumi.Output.create<String>(map['storageAccountName'] as String),
      storageAccounts: map['storageAccounts'] == null ? null : pulumi.Output.create<List<LinuxFunctionAppSlotStorageAccount>>(pulumi.Input.decodeList<LinuxFunctionAppSlotStorageAccount>(map['storageAccounts'], (value) => LinuxFunctionAppSlotStorageAccount.fromMap((value as Map).cast<String, dynamic>()))),
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

