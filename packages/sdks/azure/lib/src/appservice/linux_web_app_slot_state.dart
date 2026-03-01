// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_web_app_slot_auth_settings.dart';
import 'linux_web_app_slot_auth_settings_v2.dart';
import 'linux_web_app_slot_backup.dart';
import 'linux_web_app_slot_connection_string.dart';
import 'linux_web_app_slot_identity.dart';
import 'linux_web_app_slot_logs.dart';
import 'linux_web_app_slot_site_config.dart';
import 'linux_web_app_slot_site_credential.dart';
import 'linux_web_app_slot_storage_account.dart';

/// Input properties used for looking up and filtering LinuxWebAppSlot resources.
class LinuxWebAppSlotState {
  /// A `app_metadata`.
  final pulumi.Input<Map<String, String>>? appMetadata;
  /// The ID of the Linux Web App this Deployment Slot will be part of.
  final pulumi.Input<String>? appServiceId;
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
  /// The identifier used by App Service to perform domain ownership verification via DNS TXT record.
  final pulumi.Input<String>? customDomainVerificationId;
  /// The default hostname of the Linux Web App.
  final pulumi.Input<String>? defaultHostname;
  /// Should the Linux Web App be enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// Should the default FTP Basic Authentication publishing profile be enabled. Defaults to `true`.
  final pulumi.Input<bool>? ftpPublishBasicAuthenticationEnabled;
  /// The ID of the App Service Environment used by App Service Slot.
  final pulumi.Input<String>? hostingEnvironmentId;
  /// Should the Linux Web App require HTTPS connections. Defaults to `false`.
  final pulumi.Input<bool>? httpsOnly;
  /// An `identity` block as defined below.
  final pulumi.Input<LinuxWebAppSlotIdentity>? identity;
  /// The User Assigned Identity ID used for accessing KeyVault secrets. The identity must be assigned to the application in the `identity` block. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity).
  final pulumi.Input<String>? keyVaultReferenceIdentityId;
  /// The Kind value for this Linux Web App.
  final pulumi.Input<String>? kind;
  /// A `logs` block as defined below.
  final pulumi.Input<LinuxWebAppSlotLogs>? logs;
  /// The name which should be used for this Linux Web App Slot. Changing this forces a new Linux Web App Slot to be created.
  ///
  /// > **Note:** Terraform will perform a name availability check as part of the creation progress, if this Web App is part of an App Service Environment terraform will require Read permission on the ASE for this to complete reliably.
  final pulumi.Input<String>? name;
  /// A list of outbound IP addresses - such as `["52.23.25.3", "52.143.43.12"]`
  final pulumi.Input<List<String>>? outboundIpAddressLists;
  /// A comma-separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12`.
  final pulumi.Input<String>? outboundIpAddresses;
  /// A `possible_outbound_ip_address_list`.
  final pulumi.Input<List<String>>? possibleOutboundIpAddressLists;
  /// A comma-separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12,52.143.43.17` - not all of which are necessarily in use. Superset of `outbound_ip_addresses`.
  final pulumi.Input<String>? possibleOutboundIpAddresses;
  /// Should public network access be enabled for the Web App. Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The ID of the Service Plan in which to run this slot. If not specified the same Service Plan as the Linux Web App will be used.
  ///
  /// > **Note:** `service_plan_id` should only be specified if it differs from the Service Plan of the associated Linux Web App.
  final pulumi.Input<String>? servicePlanId;
  /// A `site_config` block as defined below.
  final pulumi.Input<LinuxWebAppSlotSiteConfig>? siteConfig;
  /// A `site_credential` block as defined below.
  final pulumi.Input<List<LinuxWebAppSlotSiteCredential>>? siteCredentials;
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

  /// Creates a new [LinuxWebAppSlotState].
  /// [appMetadata] A `app_metadata`.
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
  /// [customDomainVerificationId] The identifier used by App Service to perform domain ownership verification via DNS TXT record.
  /// [defaultHostname] The default hostname of the Linux Web App.
  /// [enabled] Should the Linux Web App be enabled? Defaults to `true`.
  /// [ftpPublishBasicAuthenticationEnabled] Should the default FTP Basic Authentication publishing profile be enabled. Defaults to `true`.
  /// [hostingEnvironmentId] The ID of the App Service Environment used by App Service Slot.
  /// [httpsOnly] Should the Linux Web App require HTTPS connections. Defaults to `false`.
  /// [identity] An `identity` block as defined below.
  /// [keyVaultReferenceIdentityId] The User Assigned Identity ID used for accessing KeyVault secrets. The identity must be assigned to the application in the `identity` block. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity).
  /// [kind] The Kind value for this Linux Web App.
  /// [logs] A `logs` block as defined below.
  /// [name] The name which should be used for this Linux Web App Slot. Changing this forces a new Linux Web App Slot to be created.
  /// [outboundIpAddressLists] A list of outbound IP addresses - such as `["52.23.25.3", "52.143.43.12"]`
  /// [outboundIpAddresses] A comma-separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12`.
  /// [possibleOutboundIpAddressLists] A `possible_outbound_ip_address_list`.
  /// [possibleOutboundIpAddresses] A comma-separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12,52.143.43.17` - not all of which are necessarily in use. Superset of `outbound_ip_addresses`.
  /// [publicNetworkAccessEnabled] Should public network access be enabled for the Web App. Defaults to `true`.
  /// [servicePlanId] The ID of the Service Plan in which to run this slot. If not specified the same Service Plan as the Linux Web App will be used.
  /// [siteConfig] A `site_config` block as defined below.
  /// [siteCredentials] A `site_credential` block as defined below.
  /// [storageAccounts] One or more `storage_account` blocks as defined below.
  /// [tags] A mapping of tags that should be assigned to the Linux Web App.
  /// [virtualNetworkBackupRestoreEnabled] Whether backup and restore operations over the linked virtual network are enabled. Defaults to `false`.
  /// [virtualNetworkSubnetId] The subnet id which will be used by this Web App Slot for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration).
  /// [vnetImagePullEnabled] Should the traffic for the image pull be routed over virtual network enabled. Defaults to `false`.
  /// [webdeployPublishBasicAuthenticationEnabled] Should the default WebDeploy Basic Authentication publishing credentials enabled. Defaults to `true`.
  /// [zipDeployFile] The local path and filename of the Zip packaged application to deploy to this Linux Web App.
  LinuxWebAppSlotState({
    pulumi.Output<Map<String, String>>? appMetadata,
    pulumi.Output<String>? appServiceId,
    pulumi.Output<Map<String, String>>? appSettings,
    pulumi.Output<LinuxWebAppSlotAuthSettings>? authSettings,
    pulumi.Output<LinuxWebAppSlotAuthSettingsV2>? authSettingsV2,
    pulumi.Output<LinuxWebAppSlotBackup>? backup,
    pulumi.Output<bool>? clientAffinityEnabled,
    pulumi.Output<bool>? clientCertificateEnabled,
    pulumi.Output<String>? clientCertificateExclusionPaths,
    pulumi.Output<String>? clientCertificateMode,
    pulumi.Output<List<LinuxWebAppSlotConnectionString>>? connectionStrings,
    pulumi.Output<String>? customDomainVerificationId,
    pulumi.Output<String>? defaultHostname,
    pulumi.Output<bool>? enabled,
    pulumi.Output<bool>? ftpPublishBasicAuthenticationEnabled,
    pulumi.Output<String>? hostingEnvironmentId,
    pulumi.Output<bool>? httpsOnly,
    pulumi.Output<LinuxWebAppSlotIdentity>? identity,
    pulumi.Output<String>? keyVaultReferenceIdentityId,
    pulumi.Output<String>? kind,
    pulumi.Output<LinuxWebAppSlotLogs>? logs,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? outboundIpAddressLists,
    pulumi.Output<String>? outboundIpAddresses,
    pulumi.Output<List<String>>? possibleOutboundIpAddressLists,
    pulumi.Output<String>? possibleOutboundIpAddresses,
    pulumi.Output<bool>? publicNetworkAccessEnabled,
    pulumi.Output<String>? servicePlanId,
    pulumi.Output<LinuxWebAppSlotSiteConfig>? siteConfig,
    pulumi.Output<List<LinuxWebAppSlotSiteCredential>>? siteCredentials,
    pulumi.Output<List<LinuxWebAppSlotStorageAccount>>? storageAccounts,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<bool>? virtualNetworkBackupRestoreEnabled,
    pulumi.Output<String>? virtualNetworkSubnetId,
    pulumi.Output<bool>? vnetImagePullEnabled,
    pulumi.Output<bool>? webdeployPublishBasicAuthenticationEnabled,
    pulumi.Output<String>? zipDeployFile,
  }) :
      appMetadata = pulumi.Input.asOptionalInput<Map<String, String>>(appMetadata),
      appServiceId = pulumi.Input.asOptionalInput<String>(appServiceId),
      appSettings = pulumi.Input.asOptionalInput<Map<String, String>>(appSettings),
      authSettings = pulumi.Input.asOptionalInput<LinuxWebAppSlotAuthSettings>(authSettings),
      authSettingsV2 = pulumi.Input.asOptionalInput<LinuxWebAppSlotAuthSettingsV2>(authSettingsV2),
      backup = pulumi.Input.asOptionalInput<LinuxWebAppSlotBackup>(backup),
      clientAffinityEnabled = pulumi.Input.asOptionalInput<bool>(clientAffinityEnabled),
      clientCertificateEnabled = pulumi.Input.asOptionalInput<bool>(clientCertificateEnabled),
      clientCertificateExclusionPaths = pulumi.Input.asOptionalInput<String>(clientCertificateExclusionPaths),
      clientCertificateMode = pulumi.Input.asOptionalInput<String>(clientCertificateMode),
      connectionStrings = pulumi.Input.asOptionalInput<List<LinuxWebAppSlotConnectionString>>(connectionStrings),
      customDomainVerificationId = pulumi.Input.asOptionalInput<String>(customDomainVerificationId),
      defaultHostname = pulumi.Input.asOptionalInput<String>(defaultHostname),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      ftpPublishBasicAuthenticationEnabled = pulumi.Input.asOptionalInput<bool>(ftpPublishBasicAuthenticationEnabled),
      hostingEnvironmentId = pulumi.Input.asOptionalInput<String>(hostingEnvironmentId),
      httpsOnly = pulumi.Input.asOptionalInput<bool>(httpsOnly),
      identity = pulumi.Input.asOptionalInput<LinuxWebAppSlotIdentity>(identity),
      keyVaultReferenceIdentityId = pulumi.Input.asOptionalInput<String>(keyVaultReferenceIdentityId),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      logs = pulumi.Input.asOptionalInput<LinuxWebAppSlotLogs>(logs),
      name = pulumi.Input.asOptionalInput<String>(name),
      outboundIpAddressLists = pulumi.Input.asOptionalInput<List<String>>(outboundIpAddressLists),
      outboundIpAddresses = pulumi.Input.asOptionalInput<String>(outboundIpAddresses),
      possibleOutboundIpAddressLists = pulumi.Input.asOptionalInput<List<String>>(possibleOutboundIpAddressLists),
      possibleOutboundIpAddresses = pulumi.Input.asOptionalInput<String>(possibleOutboundIpAddresses),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      servicePlanId = pulumi.Input.asOptionalInput<String>(servicePlanId),
      siteConfig = pulumi.Input.asOptionalInput<LinuxWebAppSlotSiteConfig>(siteConfig),
      siteCredentials = pulumi.Input.asOptionalInput<List<LinuxWebAppSlotSiteCredential>>(siteCredentials),
      storageAccounts = pulumi.Input.asOptionalInput<List<LinuxWebAppSlotStorageAccount>>(storageAccounts),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      virtualNetworkBackupRestoreEnabled = pulumi.Input.asOptionalInput<bool>(virtualNetworkBackupRestoreEnabled),
      virtualNetworkSubnetId = pulumi.Input.asOptionalInput<String>(virtualNetworkSubnetId),
      vnetImagePullEnabled = pulumi.Input.asOptionalInput<bool>(vnetImagePullEnabled),
      webdeployPublishBasicAuthenticationEnabled = pulumi.Input.asOptionalInput<bool>(webdeployPublishBasicAuthenticationEnabled),
      zipDeployFile = pulumi.Input.asOptionalInput<String>(zipDeployFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appMetadata': ?appMetadata,
      'appServiceId': ?appServiceId,
      'appSettings': ?appSettings,
      'authSettings': ?pulumi.Input.mapOptionalInputValue<LinuxWebAppSlotAuthSettings, Map<String, dynamic>>(authSettings, (value) => value.toMap()),
      'authSettingsV2': ?pulumi.Input.mapOptionalInputValue<LinuxWebAppSlotAuthSettingsV2, Map<String, dynamic>>(authSettingsV2, (value) => value.toMap()),
      'backup': ?pulumi.Input.mapOptionalInputValue<LinuxWebAppSlotBackup, Map<String, dynamic>>(backup, (value) => value.toMap()),
      'clientAffinityEnabled': ?clientAffinityEnabled,
      'clientCertificateEnabled': ?clientCertificateEnabled,
      'clientCertificateExclusionPaths': ?clientCertificateExclusionPaths,
      'clientCertificateMode': ?clientCertificateMode,
      'connectionStrings': ?pulumi.Input.mapOptionalInputValue<List<LinuxWebAppSlotConnectionString>, List<Map<String, dynamic>>>(connectionStrings, (value) => pulumi.Input.encodeList<LinuxWebAppSlotConnectionString, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customDomainVerificationId': ?customDomainVerificationId,
      'defaultHostname': ?defaultHostname,
      'enabled': ?enabled,
      'ftpPublishBasicAuthenticationEnabled': ?ftpPublishBasicAuthenticationEnabled,
      'hostingEnvironmentId': ?hostingEnvironmentId,
      'httpsOnly': ?httpsOnly,
      'identity': ?pulumi.Input.mapOptionalInputValue<LinuxWebAppSlotIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'keyVaultReferenceIdentityId': ?keyVaultReferenceIdentityId,
      'kind': ?kind,
      'logs': ?pulumi.Input.mapOptionalInputValue<LinuxWebAppSlotLogs, Map<String, dynamic>>(logs, (value) => value.toMap()),
      'name': ?name,
      'outboundIpAddressLists': ?outboundIpAddressLists,
      'outboundIpAddresses': ?outboundIpAddresses,
      'possibleOutboundIpAddressLists': ?possibleOutboundIpAddressLists,
      'possibleOutboundIpAddresses': ?possibleOutboundIpAddresses,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'servicePlanId': ?servicePlanId,
      'siteConfig': ?pulumi.Input.mapOptionalInputValue<LinuxWebAppSlotSiteConfig, Map<String, dynamic>>(siteConfig, (value) => value.toMap()),
      'siteCredentials': ?pulumi.Input.mapOptionalInputValue<List<LinuxWebAppSlotSiteCredential>, List<Map<String, dynamic>>>(siteCredentials, (value) => pulumi.Input.encodeList<LinuxWebAppSlotSiteCredential, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageAccounts': ?pulumi.Input.mapOptionalInputValue<List<LinuxWebAppSlotStorageAccount>, List<Map<String, dynamic>>>(storageAccounts, (value) => pulumi.Input.encodeList<LinuxWebAppSlotStorageAccount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'virtualNetworkBackupRestoreEnabled': ?virtualNetworkBackupRestoreEnabled,
      'virtualNetworkSubnetId': ?virtualNetworkSubnetId,
      'vnetImagePullEnabled': ?vnetImagePullEnabled,
      'webdeployPublishBasicAuthenticationEnabled': ?webdeployPublishBasicAuthenticationEnabled,
      'zipDeployFile': ?zipDeployFile,
    };
  }

  factory LinuxWebAppSlotState.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppSlotState(
      appMetadata: map['appMetadata'] == null ? null : pulumi.Output.create<Map<String, String>>((map['appMetadata'] as Map).cast<String, String>()),
      appServiceId: map['appServiceId'] == null ? null : pulumi.Output.create<String>(map['appServiceId'] as String),
      appSettings: map['appSettings'] == null ? null : pulumi.Output.create<Map<String, String>>((map['appSettings'] as Map).cast<String, String>()),
      authSettings: map['authSettings'] == null ? null : pulumi.Output.create<LinuxWebAppSlotAuthSettings>(LinuxWebAppSlotAuthSettings.fromMap((map['authSettings'] as Map).cast<String, dynamic>())),
      authSettingsV2: map['authSettingsV2'] == null ? null : pulumi.Output.create<LinuxWebAppSlotAuthSettingsV2>(LinuxWebAppSlotAuthSettingsV2.fromMap((map['authSettingsV2'] as Map).cast<String, dynamic>())),
      backup: map['backup'] == null ? null : pulumi.Output.create<LinuxWebAppSlotBackup>(LinuxWebAppSlotBackup.fromMap((map['backup'] as Map).cast<String, dynamic>())),
      clientAffinityEnabled: map['clientAffinityEnabled'] == null ? null : pulumi.Output.create<bool>(map['clientAffinityEnabled'] as bool),
      clientCertificateEnabled: map['clientCertificateEnabled'] == null ? null : pulumi.Output.create<bool>(map['clientCertificateEnabled'] as bool),
      clientCertificateExclusionPaths: map['clientCertificateExclusionPaths'] == null ? null : pulumi.Output.create<String>(map['clientCertificateExclusionPaths'] as String),
      clientCertificateMode: map['clientCertificateMode'] == null ? null : pulumi.Output.create<String>(map['clientCertificateMode'] as String),
      connectionStrings: map['connectionStrings'] == null ? null : pulumi.Output.create<List<LinuxWebAppSlotConnectionString>>(pulumi.Input.decodeList<LinuxWebAppSlotConnectionString>(map['connectionStrings'], (value) => LinuxWebAppSlotConnectionString.fromMap((value as Map).cast<String, dynamic>()))),
      customDomainVerificationId: map['customDomainVerificationId'] == null ? null : pulumi.Output.create<String>(map['customDomainVerificationId'] as String),
      defaultHostname: map['defaultHostname'] == null ? null : pulumi.Output.create<String>(map['defaultHostname'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      ftpPublishBasicAuthenticationEnabled: map['ftpPublishBasicAuthenticationEnabled'] == null ? null : pulumi.Output.create<bool>(map['ftpPublishBasicAuthenticationEnabled'] as bool),
      hostingEnvironmentId: map['hostingEnvironmentId'] == null ? null : pulumi.Output.create<String>(map['hostingEnvironmentId'] as String),
      httpsOnly: map['httpsOnly'] == null ? null : pulumi.Output.create<bool>(map['httpsOnly'] as bool),
      identity: map['identity'] == null ? null : pulumi.Output.create<LinuxWebAppSlotIdentity>(LinuxWebAppSlotIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      keyVaultReferenceIdentityId: map['keyVaultReferenceIdentityId'] == null ? null : pulumi.Output.create<String>(map['keyVaultReferenceIdentityId'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      logs: map['logs'] == null ? null : pulumi.Output.create<LinuxWebAppSlotLogs>(LinuxWebAppSlotLogs.fromMap((map['logs'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      outboundIpAddressLists: map['outboundIpAddressLists'] == null ? null : pulumi.Output.create<List<String>>((map['outboundIpAddressLists'] as List).cast<String>()),
      outboundIpAddresses: map['outboundIpAddresses'] == null ? null : pulumi.Output.create<String>(map['outboundIpAddresses'] as String),
      possibleOutboundIpAddressLists: map['possibleOutboundIpAddressLists'] == null ? null : pulumi.Output.create<List<String>>((map['possibleOutboundIpAddressLists'] as List).cast<String>()),
      possibleOutboundIpAddresses: map['possibleOutboundIpAddresses'] == null ? null : pulumi.Output.create<String>(map['possibleOutboundIpAddresses'] as String),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicNetworkAccessEnabled'] as bool),
      servicePlanId: map['servicePlanId'] == null ? null : pulumi.Output.create<String>(map['servicePlanId'] as String),
      siteConfig: map['siteConfig'] == null ? null : pulumi.Output.create<LinuxWebAppSlotSiteConfig>(LinuxWebAppSlotSiteConfig.fromMap((map['siteConfig'] as Map).cast<String, dynamic>())),
      siteCredentials: map['siteCredentials'] == null ? null : pulumi.Output.create<List<LinuxWebAppSlotSiteCredential>>(pulumi.Input.decodeList<LinuxWebAppSlotSiteCredential>(map['siteCredentials'], (value) => LinuxWebAppSlotSiteCredential.fromMap((value as Map).cast<String, dynamic>()))),
      storageAccounts: map['storageAccounts'] == null ? null : pulumi.Output.create<List<LinuxWebAppSlotStorageAccount>>(pulumi.Input.decodeList<LinuxWebAppSlotStorageAccount>(map['storageAccounts'], (value) => LinuxWebAppSlotStorageAccount.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      virtualNetworkBackupRestoreEnabled: map['virtualNetworkBackupRestoreEnabled'] == null ? null : pulumi.Output.create<bool>(map['virtualNetworkBackupRestoreEnabled'] as bool),
      virtualNetworkSubnetId: map['virtualNetworkSubnetId'] == null ? null : pulumi.Output.create<String>(map['virtualNetworkSubnetId'] as String),
      vnetImagePullEnabled: map['vnetImagePullEnabled'] == null ? null : pulumi.Output.create<bool>(map['vnetImagePullEnabled'] as bool),
      webdeployPublishBasicAuthenticationEnabled: map['webdeployPublishBasicAuthenticationEnabled'] == null ? null : pulumi.Output.create<bool>(map['webdeployPublishBasicAuthenticationEnabled'] as bool),
      zipDeployFile: map['zipDeployFile'] == null ? null : pulumi.Output.create<String>(map['zipDeployFile'] as String),
    );
  }
}

