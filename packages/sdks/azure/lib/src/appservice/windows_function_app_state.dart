// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_function_app_auth_settings.dart';
import 'windows_function_app_auth_settings_v2.dart';
import 'windows_function_app_backup.dart';
import 'windows_function_app_connection_string.dart';
import 'windows_function_app_identity.dart';
import 'windows_function_app_site_config.dart';
import 'windows_function_app_site_credential.dart';
import 'windows_function_app_sticky_settings.dart';
import 'windows_function_app_storage_account.dart';

/// Input properties used for looking up and filtering WindowsFunctionApp resources.
class WindowsFunctionAppState {
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
  /// The identifier used by App Service to perform domain ownership verification via DNS TXT record.
  final pulumi.Input<String>? customDomainVerificationId;
  /// The amount of memory in gigabyte-seconds that your application is allowed to consume per day. Setting this value only affects function apps under the consumption plan. Defaults to `0`.
  final pulumi.Input<int>? dailyMemoryTimeQuota;
  /// The default hostname of the Windows Function App.
  final pulumi.Input<String>? defaultHostname;
  /// Is the Function App enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// Should the default FTP Basic Authentication publishing profile be enabled. Defaults to `true`.
  final pulumi.Input<bool>? ftpPublishBasicAuthenticationEnabled;
  /// The runtime version associated with the Function App. Defaults to `~4`.
  final pulumi.Input<String>? functionsExtensionVersion;
  /// The ID of the App Service Environment used by Function App.
  final pulumi.Input<String>? hostingEnvironmentId;
  /// Can the Function App only be accessed via HTTPS?. Defaults to `false`.
  final pulumi.Input<bool>? httpsOnly;
  /// A `identity` block as defined below.
  final pulumi.Input<WindowsFunctionAppIdentity>? identity;
  /// The User Assigned Identity ID used for accessing KeyVault secrets. The identity must be assigned to the application in the `identity` block. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity)
  final pulumi.Input<String>? keyVaultReferenceIdentityId;
  /// The Kind value for this Windows Function App.
  final pulumi.Input<String>? kind;
  /// The Azure Region where the Windows Function App should exist. Changing this forces a new Windows Function App to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Windows Function App. Changing this forces a new Windows Function App to be created. Limit the function name to 32 characters to avoid naming collisions. For more information about [Function App naming rule](https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/resource-name-rules#microsoftweb) and [Host ID Collisions](https://github.com/Azure/azure-functions-host/wiki/Host-IDs#host-id-collisions)
  final pulumi.Input<String>? name;
  /// A list of outbound IP addresses. For example `["52.23.25.3", "52.143.43.12"]`
  final pulumi.Input<List<String>>? outboundIpAddressLists;
  /// A comma separated list of outbound IP addresses as a string. For example `52.23.25.3,52.143.43.12`.
  final pulumi.Input<String>? outboundIpAddresses;
  /// A list of possible outbound IP addresses, not all of which are necessarily in use. This is a superset of `outbound_ip_address_list`. For example `["52.23.25.3", "52.143.43.12"]`.
  final pulumi.Input<List<String>>? possibleOutboundIpAddressLists;
  /// A comma separated list of possible outbound IP addresses as a string. For example `52.23.25.3,52.143.43.12,52.143.43.17`. This is a superset of `outbound_ip_addresses`.
  final pulumi.Input<String>? possibleOutboundIpAddresses;
  /// Should public network access be enabled for the Function App. Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The name of the Resource Group where the Windows Function App should exist. Changing this forces a new Windows Function App to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The ID of the App Service Plan within which to create this Function App.
  final pulumi.Input<String>? servicePlanId;
  /// A `site_config` block as defined below.
  final pulumi.Input<WindowsFunctionAppSiteConfig>? siteConfig;
  /// A `site_credential` block as defined below.
  final pulumi.Input<List<WindowsFunctionAppSiteCredential>>? siteCredentials;
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

  /// Creates a new [WindowsFunctionAppState].
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
  /// [customDomainVerificationId] The identifier used by App Service to perform domain ownership verification via DNS TXT record.
  /// [dailyMemoryTimeQuota] The amount of memory in gigabyte-seconds that your application is allowed to consume per day. Setting this value only affects function apps under the consumption plan. Defaults to `0`.
  /// [defaultHostname] The default hostname of the Windows Function App.
  /// [enabled] Is the Function App enabled? Defaults to `true`.
  /// [ftpPublishBasicAuthenticationEnabled] Should the default FTP Basic Authentication publishing profile be enabled. Defaults to `true`.
  /// [functionsExtensionVersion] The runtime version associated with the Function App. Defaults to `~4`.
  /// [hostingEnvironmentId] The ID of the App Service Environment used by Function App.
  /// [httpsOnly] Can the Function App only be accessed via HTTPS?. Defaults to `false`.
  /// [identity] A `identity` block as defined below.
  /// [keyVaultReferenceIdentityId] The User Assigned Identity ID used for accessing KeyVault secrets. The identity must be assigned to the application in the `identity` block. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity)
  /// [kind] The Kind value for this Windows Function App.
  /// [location] The Azure Region where the Windows Function App should exist. Changing this forces a new Windows Function App to be created.
  /// [name] The name which should be used for this Windows Function App. Changing this forces a new Windows Function App to be created. Limit the function name to 32 characters to avoid naming collisions. For more information about [Function App naming rule](https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/resource-name-rules#microsoftweb) and [Host ID Collisions](https://github.com/Azure/azure-functions-host/wiki/Host-IDs#host-id-collisions)
  /// [outboundIpAddressLists] A list of outbound IP addresses. For example `["52.23.25.3", "52.143.43.12"]`
  /// [outboundIpAddresses] A comma separated list of outbound IP addresses as a string. For example `52.23.25.3,52.143.43.12`.
  /// [possibleOutboundIpAddressLists] A list of possible outbound IP addresses, not all of which are necessarily in use. This is a superset of `outbound_ip_address_list`. For example `["52.23.25.3", "52.143.43.12"]`.
  /// [possibleOutboundIpAddresses] A comma separated list of possible outbound IP addresses as a string. For example `52.23.25.3,52.143.43.12,52.143.43.17`. This is a superset of `outbound_ip_addresses`.
  /// [publicNetworkAccessEnabled] Should public network access be enabled for the Function App. Defaults to `true`.
  /// [resourceGroupName] The name of the Resource Group where the Windows Function App should exist. Changing this forces a new Windows Function App to be created.
  /// [servicePlanId] The ID of the App Service Plan within which to create this Function App.
  /// [siteConfig] A `site_config` block as defined below.
  /// [siteCredentials] A `site_credential` block as defined below.
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
  WindowsFunctionAppState({
    pulumi.Output<Map<String, String>>? appSettings,
    pulumi.Output<WindowsFunctionAppAuthSettings>? authSettings,
    pulumi.Output<WindowsFunctionAppAuthSettingsV2>? authSettingsV2,
    pulumi.Output<WindowsFunctionAppBackup>? backup,
    pulumi.Output<bool>? builtinLoggingEnabled,
    pulumi.Output<bool>? clientCertificateEnabled,
    pulumi.Output<String>? clientCertificateExclusionPaths,
    pulumi.Output<String>? clientCertificateMode,
    pulumi.Output<List<WindowsFunctionAppConnectionString>>? connectionStrings,
    pulumi.Output<bool>? contentShareForceDisabled,
    pulumi.Output<String>? customDomainVerificationId,
    pulumi.Output<int>? dailyMemoryTimeQuota,
    pulumi.Output<String>? defaultHostname,
    pulumi.Output<bool>? enabled,
    pulumi.Output<bool>? ftpPublishBasicAuthenticationEnabled,
    pulumi.Output<String>? functionsExtensionVersion,
    pulumi.Output<String>? hostingEnvironmentId,
    pulumi.Output<bool>? httpsOnly,
    pulumi.Output<WindowsFunctionAppIdentity>? identity,
    pulumi.Output<String>? keyVaultReferenceIdentityId,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? outboundIpAddressLists,
    pulumi.Output<String>? outboundIpAddresses,
    pulumi.Output<List<String>>? possibleOutboundIpAddressLists,
    pulumi.Output<String>? possibleOutboundIpAddresses,
    pulumi.Output<bool>? publicNetworkAccessEnabled,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? servicePlanId,
    pulumi.Output<WindowsFunctionAppSiteConfig>? siteConfig,
    pulumi.Output<List<WindowsFunctionAppSiteCredential>>? siteCredentials,
    pulumi.Output<WindowsFunctionAppStickySettings>? stickySettings,
    pulumi.Output<String>? storageAccountAccessKey,
    pulumi.Output<String>? storageAccountName,
    pulumi.Output<List<WindowsFunctionAppStorageAccount>>? storageAccounts,
    pulumi.Output<String>? storageKeyVaultSecretId,
    pulumi.Output<bool>? storageUsesManagedIdentity,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<bool>? virtualNetworkBackupRestoreEnabled,
    pulumi.Output<String>? virtualNetworkSubnetId,
    pulumi.Output<bool>? vnetImagePullEnabled,
    pulumi.Output<bool>? webdeployPublishBasicAuthenticationEnabled,
    pulumi.Output<String>? zipDeployFile,
  }) :
      appSettings = pulumi.Input.asOptionalInput<Map<String, String>>(appSettings),
      authSettings = pulumi.Input.asOptionalInput<WindowsFunctionAppAuthSettings>(authSettings),
      authSettingsV2 = pulumi.Input.asOptionalInput<WindowsFunctionAppAuthSettingsV2>(authSettingsV2),
      backup = pulumi.Input.asOptionalInput<WindowsFunctionAppBackup>(backup),
      builtinLoggingEnabled = pulumi.Input.asOptionalInput<bool>(builtinLoggingEnabled),
      clientCertificateEnabled = pulumi.Input.asOptionalInput<bool>(clientCertificateEnabled),
      clientCertificateExclusionPaths = pulumi.Input.asOptionalInput<String>(clientCertificateExclusionPaths),
      clientCertificateMode = pulumi.Input.asOptionalInput<String>(clientCertificateMode),
      connectionStrings = pulumi.Input.asOptionalInput<List<WindowsFunctionAppConnectionString>>(connectionStrings),
      contentShareForceDisabled = pulumi.Input.asOptionalInput<bool>(contentShareForceDisabled),
      customDomainVerificationId = pulumi.Input.asOptionalInput<String>(customDomainVerificationId),
      dailyMemoryTimeQuota = pulumi.Input.asOptionalInput<int>(dailyMemoryTimeQuota),
      defaultHostname = pulumi.Input.asOptionalInput<String>(defaultHostname),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      ftpPublishBasicAuthenticationEnabled = pulumi.Input.asOptionalInput<bool>(ftpPublishBasicAuthenticationEnabled),
      functionsExtensionVersion = pulumi.Input.asOptionalInput<String>(functionsExtensionVersion),
      hostingEnvironmentId = pulumi.Input.asOptionalInput<String>(hostingEnvironmentId),
      httpsOnly = pulumi.Input.asOptionalInput<bool>(httpsOnly),
      identity = pulumi.Input.asOptionalInput<WindowsFunctionAppIdentity>(identity),
      keyVaultReferenceIdentityId = pulumi.Input.asOptionalInput<String>(keyVaultReferenceIdentityId),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      outboundIpAddressLists = pulumi.Input.asOptionalInput<List<String>>(outboundIpAddressLists),
      outboundIpAddresses = pulumi.Input.asOptionalInput<String>(outboundIpAddresses),
      possibleOutboundIpAddressLists = pulumi.Input.asOptionalInput<List<String>>(possibleOutboundIpAddressLists),
      possibleOutboundIpAddresses = pulumi.Input.asOptionalInput<String>(possibleOutboundIpAddresses),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      servicePlanId = pulumi.Input.asOptionalInput<String>(servicePlanId),
      siteConfig = pulumi.Input.asOptionalInput<WindowsFunctionAppSiteConfig>(siteConfig),
      siteCredentials = pulumi.Input.asOptionalInput<List<WindowsFunctionAppSiteCredential>>(siteCredentials),
      stickySettings = pulumi.Input.asOptionalInput<WindowsFunctionAppStickySettings>(stickySettings),
      storageAccountAccessKey = pulumi.Input.asOptionalInput<String>(storageAccountAccessKey),
      storageAccountName = pulumi.Input.asOptionalInput<String>(storageAccountName),
      storageAccounts = pulumi.Input.asOptionalInput<List<WindowsFunctionAppStorageAccount>>(storageAccounts),
      storageKeyVaultSecretId = pulumi.Input.asOptionalInput<String>(storageKeyVaultSecretId),
      storageUsesManagedIdentity = pulumi.Input.asOptionalInput<bool>(storageUsesManagedIdentity),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      virtualNetworkBackupRestoreEnabled = pulumi.Input.asOptionalInput<bool>(virtualNetworkBackupRestoreEnabled),
      virtualNetworkSubnetId = pulumi.Input.asOptionalInput<String>(virtualNetworkSubnetId),
      vnetImagePullEnabled = pulumi.Input.asOptionalInput<bool>(vnetImagePullEnabled),
      webdeployPublishBasicAuthenticationEnabled = pulumi.Input.asOptionalInput<bool>(webdeployPublishBasicAuthenticationEnabled),
      zipDeployFile = pulumi.Input.asOptionalInput<String>(zipDeployFile);

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
      'customDomainVerificationId': ?customDomainVerificationId,
      'dailyMemoryTimeQuota': ?dailyMemoryTimeQuota,
      'defaultHostname': ?defaultHostname,
      'enabled': ?enabled,
      'ftpPublishBasicAuthenticationEnabled': ?ftpPublishBasicAuthenticationEnabled,
      'functionsExtensionVersion': ?functionsExtensionVersion,
      'hostingEnvironmentId': ?hostingEnvironmentId,
      'httpsOnly': ?httpsOnly,
      'identity': ?pulumi.Input.mapOptionalInputValue<WindowsFunctionAppIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'keyVaultReferenceIdentityId': ?keyVaultReferenceIdentityId,
      'kind': ?kind,
      'location': ?location,
      'name': ?name,
      'outboundIpAddressLists': ?outboundIpAddressLists,
      'outboundIpAddresses': ?outboundIpAddresses,
      'possibleOutboundIpAddressLists': ?possibleOutboundIpAddressLists,
      'possibleOutboundIpAddresses': ?possibleOutboundIpAddresses,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': ?resourceGroupName,
      'servicePlanId': ?servicePlanId,
      'siteConfig': ?pulumi.Input.mapOptionalInputValue<WindowsFunctionAppSiteConfig, Map<String, dynamic>>(siteConfig, (value) => value.toMap()),
      'siteCredentials': ?pulumi.Input.mapOptionalInputValue<List<WindowsFunctionAppSiteCredential>, List<Map<String, dynamic>>>(siteCredentials, (value) => pulumi.Input.encodeList<WindowsFunctionAppSiteCredential, Map<String, dynamic>>(value, (value) => value.toMap())),
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

  factory WindowsFunctionAppState.fromMap(Map<String, dynamic> map) {
    return WindowsFunctionAppState(
      appSettings: map['appSettings'] == null ? null : pulumi.Output.create<Map<String, String>>((map['appSettings'] as Map).cast<String, String>()),
      authSettings: map['authSettings'] == null ? null : pulumi.Output.create<WindowsFunctionAppAuthSettings>(WindowsFunctionAppAuthSettings.fromMap((map['authSettings'] as Map).cast<String, dynamic>())),
      authSettingsV2: map['authSettingsV2'] == null ? null : pulumi.Output.create<WindowsFunctionAppAuthSettingsV2>(WindowsFunctionAppAuthSettingsV2.fromMap((map['authSettingsV2'] as Map).cast<String, dynamic>())),
      backup: map['backup'] == null ? null : pulumi.Output.create<WindowsFunctionAppBackup>(WindowsFunctionAppBackup.fromMap((map['backup'] as Map).cast<String, dynamic>())),
      builtinLoggingEnabled: map['builtinLoggingEnabled'] == null ? null : pulumi.Output.create<bool>(map['builtinLoggingEnabled'] as bool),
      clientCertificateEnabled: map['clientCertificateEnabled'] == null ? null : pulumi.Output.create<bool>(map['clientCertificateEnabled'] as bool),
      clientCertificateExclusionPaths: map['clientCertificateExclusionPaths'] == null ? null : pulumi.Output.create<String>(map['clientCertificateExclusionPaths'] as String),
      clientCertificateMode: map['clientCertificateMode'] == null ? null : pulumi.Output.create<String>(map['clientCertificateMode'] as String),
      connectionStrings: map['connectionStrings'] == null ? null : pulumi.Output.create<List<WindowsFunctionAppConnectionString>>(pulumi.Input.decodeList<WindowsFunctionAppConnectionString>(map['connectionStrings'], (value) => WindowsFunctionAppConnectionString.fromMap((value as Map).cast<String, dynamic>()))),
      contentShareForceDisabled: map['contentShareForceDisabled'] == null ? null : pulumi.Output.create<bool>(map['contentShareForceDisabled'] as bool),
      customDomainVerificationId: map['customDomainVerificationId'] == null ? null : pulumi.Output.create<String>(map['customDomainVerificationId'] as String),
      dailyMemoryTimeQuota: map['dailyMemoryTimeQuota'] == null ? null : pulumi.Output.create<int>(map['dailyMemoryTimeQuota'] as int),
      defaultHostname: map['defaultHostname'] == null ? null : pulumi.Output.create<String>(map['defaultHostname'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      ftpPublishBasicAuthenticationEnabled: map['ftpPublishBasicAuthenticationEnabled'] == null ? null : pulumi.Output.create<bool>(map['ftpPublishBasicAuthenticationEnabled'] as bool),
      functionsExtensionVersion: map['functionsExtensionVersion'] == null ? null : pulumi.Output.create<String>(map['functionsExtensionVersion'] as String),
      hostingEnvironmentId: map['hostingEnvironmentId'] == null ? null : pulumi.Output.create<String>(map['hostingEnvironmentId'] as String),
      httpsOnly: map['httpsOnly'] == null ? null : pulumi.Output.create<bool>(map['httpsOnly'] as bool),
      identity: map['identity'] == null ? null : pulumi.Output.create<WindowsFunctionAppIdentity>(WindowsFunctionAppIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      keyVaultReferenceIdentityId: map['keyVaultReferenceIdentityId'] == null ? null : pulumi.Output.create<String>(map['keyVaultReferenceIdentityId'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      outboundIpAddressLists: map['outboundIpAddressLists'] == null ? null : pulumi.Output.create<List<String>>((map['outboundIpAddressLists'] as List).cast<String>()),
      outboundIpAddresses: map['outboundIpAddresses'] == null ? null : pulumi.Output.create<String>(map['outboundIpAddresses'] as String),
      possibleOutboundIpAddressLists: map['possibleOutboundIpAddressLists'] == null ? null : pulumi.Output.create<List<String>>((map['possibleOutboundIpAddressLists'] as List).cast<String>()),
      possibleOutboundIpAddresses: map['possibleOutboundIpAddresses'] == null ? null : pulumi.Output.create<String>(map['possibleOutboundIpAddresses'] as String),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicNetworkAccessEnabled'] as bool),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      servicePlanId: map['servicePlanId'] == null ? null : pulumi.Output.create<String>(map['servicePlanId'] as String),
      siteConfig: map['siteConfig'] == null ? null : pulumi.Output.create<WindowsFunctionAppSiteConfig>(WindowsFunctionAppSiteConfig.fromMap((map['siteConfig'] as Map).cast<String, dynamic>())),
      siteCredentials: map['siteCredentials'] == null ? null : pulumi.Output.create<List<WindowsFunctionAppSiteCredential>>(pulumi.Input.decodeList<WindowsFunctionAppSiteCredential>(map['siteCredentials'], (value) => WindowsFunctionAppSiteCredential.fromMap((value as Map).cast<String, dynamic>()))),
      stickySettings: map['stickySettings'] == null ? null : pulumi.Output.create<WindowsFunctionAppStickySettings>(WindowsFunctionAppStickySettings.fromMap((map['stickySettings'] as Map).cast<String, dynamic>())),
      storageAccountAccessKey: map['storageAccountAccessKey'] == null ? null : pulumi.Output.create<String>(map['storageAccountAccessKey'] as String),
      storageAccountName: map['storageAccountName'] == null ? null : pulumi.Output.create<String>(map['storageAccountName'] as String),
      storageAccounts: map['storageAccounts'] == null ? null : pulumi.Output.create<List<WindowsFunctionAppStorageAccount>>(pulumi.Input.decodeList<WindowsFunctionAppStorageAccount>(map['storageAccounts'], (value) => WindowsFunctionAppStorageAccount.fromMap((value as Map).cast<String, dynamic>()))),
      storageKeyVaultSecretId: map['storageKeyVaultSecretId'] == null ? null : pulumi.Output.create<String>(map['storageKeyVaultSecretId'] as String),
      storageUsesManagedIdentity: map['storageUsesManagedIdentity'] == null ? null : pulumi.Output.create<bool>(map['storageUsesManagedIdentity'] as bool),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      virtualNetworkBackupRestoreEnabled: map['virtualNetworkBackupRestoreEnabled'] == null ? null : pulumi.Output.create<bool>(map['virtualNetworkBackupRestoreEnabled'] as bool),
      virtualNetworkSubnetId: map['virtualNetworkSubnetId'] == null ? null : pulumi.Output.create<String>(map['virtualNetworkSubnetId'] as String),
      vnetImagePullEnabled: map['vnetImagePullEnabled'] == null ? null : pulumi.Output.create<bool>(map['vnetImagePullEnabled'] as bool),
      webdeployPublishBasicAuthenticationEnabled: map['webdeployPublishBasicAuthenticationEnabled'] == null ? null : pulumi.Output.create<bool>(map['webdeployPublishBasicAuthenticationEnabled'] as bool),
      zipDeployFile: map['zipDeployFile'] == null ? null : pulumi.Output.create<String>(map['zipDeployFile'] as String),
    );
  }
}

