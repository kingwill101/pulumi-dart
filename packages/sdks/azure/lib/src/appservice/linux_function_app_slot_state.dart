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
  /// an `authSettings` block as detailed below.
  final pulumi.Input<LinuxFunctionAppSlotAuthSettings>? authSettings;
  /// an `authSettingsV2` block as detailed below.
  final pulumi.Input<LinuxFunctionAppSlotAuthSettingsV2>? authSettingsV2;
  /// a `backup` block as detailed below.
  final pulumi.Input<LinuxFunctionAppSlotBackup>? backup;
  /// Should built in logging be enabled. Configures `AzureWebJobsDashboard` app setting based on the configured storage setting. Defaults to `true`.
  final pulumi.Input<bool>? builtinLoggingEnabled;
  /// Should the Function App Slot use Client Certificates.
  final pulumi.Input<bool>? clientCertificateEnabled;
  /// Paths to exclude when using client certificates, separated by ;
  ///
  /// &gt; **Note:** TLS 1.3 and HTTP 2.0 don't support TLS renegotiation. These protocols will not work if your app is configured with client certificate settings that use TLS renegotiation. Either set `clientCertificateEnabled` to `false`, or set `clientCertificateMode` to `Optional` or `Required` and remove all `clientCertificateExclusionPaths`.
  final pulumi.Input<String>? clientCertificateExclusionPaths;
  /// The mode of the Function App Slot's client certificates requirement for incoming requests. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`. Defaults to `Optional`.
  final pulumi.Input<String>? clientCertificateMode;
  /// a `connectionString` block as detailed below.
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
  /// A list of possible outbound IP addresses, not all of which are necessarily in use. This is a superset of `outboundIpAddressList`. For example `["52.23.25.3", "52.143.43.12"]`.
  final pulumi.Input<List<String>>? possibleOutboundIpAddressLists;
  /// A comma separated list of possible outbound IP addresses as a string. For example `52.23.25.3,52.143.43.12,52.143.43.17`. This is a superset of `outboundIpAddresses`. For example `["52.23.25.3", "52.143.43.12","52.143.43.17"]`.
  final pulumi.Input<String>? possibleOutboundIpAddresses;
  /// Should public network access be enabled for the Function App. Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The ID of the Service Plan in which to run this slot. If not specified the same Service Plan as the Linux Function App will be used.
  final pulumi.Input<String>? servicePlanId;
  /// a `siteConfig` block as detailed below.
  final pulumi.Input<LinuxFunctionAppSlotSiteConfig>? siteConfig;
  /// A `siteCredential` block as defined below.
  final pulumi.Input<List<LinuxFunctionAppSlotSiteCredential>>? siteCredentials;
  /// The access key which will be used to access the storage account for the Function App Slot.
  final pulumi.Input<String>? storageAccountAccessKey;
  /// The backend storage account name which will be used by this Function App Slot.
  final pulumi.Input<String>? storageAccountName;
  /// One or more `storageAccount` blocks as defined below.
  final pulumi.Input<List<LinuxFunctionAppSlotStorageAccount>>? storageAccounts;
  /// The Key Vault Secret ID, optionally including version, that contains the Connection String to connect to the storage account for this Function App.
  ///
  /// &gt; **Note:** `storageKeyVaultSecretId` cannot be used with `storageAccountName`.
  ///
  /// &gt; **Note:** `storageKeyVaultSecretId` used without a version will use the latest version of the secret, however, the service can take up to 24h to pick up a rotation of the latest version. See the [official docs](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#rotation) for more information.
  final pulumi.Input<String>? storageKeyVaultSecretId;
  /// Should the Function App Slot use its Managed Identity to access storage.
  ///
  /// &gt; **Note:** One of `storageAccountAccessKey` or `storageUsesManagedIdentity` must be specified when using `storageAccountName`.
  final pulumi.Input<bool>? storageUsesManagedIdentity;
  /// A mapping of tags which should be assigned to the Linux Function App.
  final pulumi.Input<Map<String, String>>? tags;
  /// Whether backup and restore operations over the linked virtual network are enabled. Defaults to `false`.
  final pulumi.Input<bool>? virtualNetworkBackupRestoreEnabled;
  /// The subnet id which will be used by this Function App Slot for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration).
  ///
  /// &gt; **Note:** The AzureRM Terraform provider provides regional virtual network integration via the standalone resource appServiceVirtualNetworkSwiftConnection and in-line within this resource using the `virtualNetworkSubnetId` property. You cannot use both methods simultaneously. If the virtual network is set via the resource `appServiceVirtualNetworkSwiftConnection` then `ignoreChanges` should be used in the function app slot configuration.
  ///
  /// &gt; **Note:** Assigning the `virtualNetworkSubnetId` property requires [RBAC permissions on the subnet](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#permissions)
  final pulumi.Input<String>? virtualNetworkSubnetId;
  /// Specifies whether traffic for the image pull should be routed over virtual network. Defaults to `false`.
  ///
  /// &gt; **Note:** The feature can also be enabled via the app setting `WEBSITE_PULL_IMAGE_OVER_VNET`. The Setting is enabled by default for an app running in the App Service Environment.
  final pulumi.Input<bool>? vnetImagePullEnabled;
  /// Should the default WebDeploy Basic Authentication publishing credentials enabled. Defaults to `true`.
  final pulumi.Input<bool>? webdeployPublishBasicAuthenticationEnabled;

  /// Creates a new [LinuxFunctionAppSlotState].
  /// [appSettings] A map of key-value pairs for [App Settings](https://docs.microsoft.com/azure/azure-functions/functions-app-settings) and custom values.
  /// [authSettings] an `authSettings` block as detailed below.
  /// [authSettingsV2] an `authSettingsV2` block as detailed below.
  /// [backup] a `backup` block as detailed below.
  /// [builtinLoggingEnabled] Should built in logging be enabled. Configures `AzureWebJobsDashboard` app setting based on the configured storage setting. Defaults to `true`.
  /// [clientCertificateEnabled] Should the Function App Slot use Client Certificates.
  /// [clientCertificateExclusionPaths] Paths to exclude when using client certificates, separated by ;
  /// [clientCertificateMode] The mode of the Function App Slot's client certificates requirement for incoming requests. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`. Defaults to `Optional`.
  /// [connectionStrings] a `connectionString` block as detailed below.
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
  /// [possibleOutboundIpAddressLists] A list of possible outbound IP addresses, not all of which are necessarily in use. This is a superset of `outboundIpAddressList`. For example `["52.23.25.3", "52.143.43.12"]`.
  /// [possibleOutboundIpAddresses] A comma separated list of possible outbound IP addresses as a string. For example `52.23.25.3,52.143.43.12,52.143.43.17`. This is a superset of `outboundIpAddresses`. For example `["52.23.25.3", "52.143.43.12","52.143.43.17"]`.
  /// [publicNetworkAccessEnabled] Should public network access be enabled for the Function App. Defaults to `true`.
  /// [servicePlanId] The ID of the Service Plan in which to run this slot. If not specified the same Service Plan as the Linux Function App will be used.
  /// [siteConfig] a `siteConfig` block as detailed below.
  /// [siteCredentials] A `siteCredential` block as defined below.
  /// [storageAccountAccessKey] The access key which will be used to access the storage account for the Function App Slot.
  /// [storageAccountName] The backend storage account name which will be used by this Function App Slot.
  /// [storageAccounts] One or more `storageAccount` blocks as defined below.
  /// [storageKeyVaultSecretId] The Key Vault Secret ID, optionally including version, that contains the Connection String to connect to the storage account for this Function App.
  /// [storageUsesManagedIdentity] Should the Function App Slot use its Managed Identity to access storage.
  /// [tags] A mapping of tags which should be assigned to the Linux Function App.
  /// [virtualNetworkBackupRestoreEnabled] Whether backup and restore operations over the linked virtual network are enabled. Defaults to `false`.
  /// [virtualNetworkSubnetId] The subnet id which will be used by this Function App Slot for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration).
  /// [vnetImagePullEnabled] Specifies whether traffic for the image pull should be routed over virtual network. Defaults to `false`.
  /// [webdeployPublishBasicAuthenticationEnabled] Should the default WebDeploy Basic Authentication publishing credentials enabled. Defaults to `true`.
  const LinuxFunctionAppSlotState({
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
      appSettings: (() { final guardedValue = map['appSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      authSettings: (() { final guardedValue = map['authSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinuxFunctionAppSlotAuthSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      authSettingsV2: (() { final guardedValue = map['authSettingsV2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinuxFunctionAppSlotAuthSettingsV2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      backup: (() { final guardedValue = map['backup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinuxFunctionAppSlotBackup.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      builtinLoggingEnabled: (() { final guardedValue = map['builtinLoggingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      clientCertificateEnabled: (() { final guardedValue = map['clientCertificateEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      clientCertificateExclusionPaths: (() { final guardedValue = map['clientCertificateExclusionPaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientCertificateMode: (() { final guardedValue = map['clientCertificateMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionStrings: (() { final guardedValue = map['connectionStrings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LinuxFunctionAppSlotConnectionString>(guardedValue, (value) => LinuxFunctionAppSlotConnectionString.fromMap((value as Map).cast<String, dynamic>()))); })(),
      contentShareForceDisabled: (() { final guardedValue = map['contentShareForceDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      customDomainVerificationId: (() { final guardedValue = map['customDomainVerificationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dailyMemoryTimeQuota: (() { final guardedValue = map['dailyMemoryTimeQuota']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      defaultHostname: (() { final guardedValue = map['defaultHostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ftpPublishBasicAuthenticationEnabled: (() { final guardedValue = map['ftpPublishBasicAuthenticationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      functionAppId: (() { final guardedValue = map['functionAppId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      functionsExtensionVersion: (() { final guardedValue = map['functionsExtensionVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostingEnvironmentId: (() { final guardedValue = map['hostingEnvironmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpsOnly: (() { final guardedValue = map['httpsOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinuxFunctionAppSlotIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      keyVaultReferenceIdentityId: (() { final guardedValue = map['keyVaultReferenceIdentityId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outboundIpAddressLists: (() { final guardedValue = map['outboundIpAddressLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      outboundIpAddresses: (() { final guardedValue = map['outboundIpAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      possibleOutboundIpAddressLists: (() { final guardedValue = map['possibleOutboundIpAddressLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      possibleOutboundIpAddresses: (() { final guardedValue = map['possibleOutboundIpAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNetworkAccessEnabled: (() { final guardedValue = map['publicNetworkAccessEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      servicePlanId: (() { final guardedValue = map['servicePlanId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      siteConfig: (() { final guardedValue = map['siteConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinuxFunctionAppSlotSiteConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      siteCredentials: (() { final guardedValue = map['siteCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LinuxFunctionAppSlotSiteCredential>(guardedValue, (value) => LinuxFunctionAppSlotSiteCredential.fromMap((value as Map).cast<String, dynamic>()))); })(),
      storageAccountAccessKey: (() { final guardedValue = map['storageAccountAccessKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountName: (() { final guardedValue = map['storageAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccounts: (() { final guardedValue = map['storageAccounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LinuxFunctionAppSlotStorageAccount>(guardedValue, (value) => LinuxFunctionAppSlotStorageAccount.fromMap((value as Map).cast<String, dynamic>()))); })(),
      storageKeyVaultSecretId: (() { final guardedValue = map['storageKeyVaultSecretId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageUsesManagedIdentity: (() { final guardedValue = map['storageUsesManagedIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      virtualNetworkBackupRestoreEnabled: (() { final guardedValue = map['virtualNetworkBackupRestoreEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      virtualNetworkSubnetId: (() { final guardedValue = map['virtualNetworkSubnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vnetImagePullEnabled: (() { final guardedValue = map['vnetImagePullEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      webdeployPublishBasicAuthenticationEnabled: (() { final guardedValue = map['webdeployPublishBasicAuthenticationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
