// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_web_app_auth_settings.dart';
import 'linux_web_app_auth_settings_v2.dart';
import 'linux_web_app_backup.dart';
import 'linux_web_app_connection_string.dart';
import 'linux_web_app_identity.dart';
import 'linux_web_app_logs.dart';
import 'linux_web_app_site_config.dart';
import 'linux_web_app_site_credential.dart';
import 'linux_web_app_sticky_settings.dart';
import 'linux_web_app_storage_account.dart';

/// Input properties used for looking up and filtering LinuxWebApp resources.
class LinuxWebAppState {
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
  /// The identifier used by App Service to perform domain ownership verification via DNS TXT record.
  final pulumi.Input<String>? customDomainVerificationId;
  /// The default hostname of the Linux Web App.
  final pulumi.Input<String>? defaultHostname;
  /// Should the Linux Web App be enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// Should the default FTP Basic Authentication publishing profile be enabled. Defaults to `true`.
  final pulumi.Input<bool>? ftpPublishBasicAuthenticationEnabled;
  /// The ID of the App Service Environment used by App Service.
  final pulumi.Input<String>? hostingEnvironmentId;
  /// Should the Linux Web App require HTTPS connections. Defaults to `false`.
  final pulumi.Input<bool>? httpsOnly;
  /// An `identity` block as defined below.
  final pulumi.Input<LinuxWebAppIdentity>? identity;
  /// The User Assigned Identity ID used for accessing KeyVault secrets. The identity must be assigned to the application in the `identity` block. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity).
  final pulumi.Input<String>? keyVaultReferenceIdentityId;
  /// The Kind value for this Linux Web App.
  final pulumi.Input<String>? kind;
  /// The Azure Region where the Linux Web App should exist. Changing this forces a new Linux Web App to be created.
  final pulumi.Input<String>? location;
  /// A `logs` block as defined below.
  final pulumi.Input<LinuxWebAppLogs>? logs;
  /// The name which should be used for this Linux Web App. Changing this forces a new Linux Web App to be created.
  ///
  /// > **Note:** Terraform will perform a name availability check as part of the creation progress, if this Web App is part of an App Service Environment terraform will require Read permission on the ASE for this to complete reliably.
  final pulumi.Input<String>? name;
  /// A list of outbound IP addresses - such as `["52.23.25.3", "52.143.43.12"]`
  final pulumi.Input<List<String>>? outboundIpAddressLists;
  /// A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12`.
  final pulumi.Input<String>? outboundIpAddresses;
  /// A list of possible outbound ip address.
  final pulumi.Input<List<String>>? possibleOutboundIpAddressLists;
  /// A comma-separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12,52.143.43.17` - not all of which are necessarily in use. Superset of `outbound_ip_addresses`.
  final pulumi.Input<String>? possibleOutboundIpAddresses;
  /// Should public network access be enabled for the Web App. Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The name of the Resource Group where the Linux Web App should exist. Changing this forces a new Linux Web App to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The ID of the Service Plan that this Linux App Service will be created in.
  final pulumi.Input<String>? servicePlanId;
  /// A `site_config` block as defined below.
  final pulumi.Input<LinuxWebAppSiteConfig>? siteConfig;
  /// A `site_credential` block as defined below.
  final pulumi.Input<List<LinuxWebAppSiteCredential>>? siteCredentials;
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
  /// > **Note:** The AzureRM Terraform provider provides regional virtual network integration via the standalone resource app_service_virtual_network_swift_connection and in-line within this resource using the `virtual_network_subnet_id` property. You cannot use both methods simultaneously. If the virtual network is set via the resource `app_service_virtual_network_swift_connection` then `ignore_changes` should be used in the web app configuration.
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
  /// > **Note:** Using this value requires either `WEBSITE_RUN_FROM_PACKAGE=1` or `SCM_DO_BUILD_DURING_DEPLOYMENT=true` to be set on the App in `app_settings`. Refer to the Azure docs on [running the Web App directly from the Zip package](https://learn.microsoft.com/en-us/azure/app-service/deploy-run-package), or [automating the build for Zip deploy](https://learn.microsoft.com/en-us/azure/app-service/deploy-zip#enable-build-automation-for-zip-deploy) for further details.
  final pulumi.Input<String>? zipDeployFile;

  /// Creates a new [LinuxWebAppState].
  /// [appSettings] A map of key-value pairs of App Settings.
  /// [authSettings] A `auth_settings` block as defined below.
  /// [authSettingsV2] An `auth_settings_v2` block as defined below.
  /// [backup] A `backup` block as defined below.
  /// [clientAffinityEnabled] Should Client Affinity be enabled?
  /// [clientCertificateEnabled] Should Client Certificates be enabled?
  /// [clientCertificateExclusionPaths] Paths to exclude when using client certificates, separated by ;
  /// [clientCertificateMode] The Client Certificate mode. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`. This property has no effect when `client_certificate_enabled` is `false`. Defaults to `Required`.
  /// [connectionStrings] One or more `connection_string` blocks as defined below.
  /// [customDomainVerificationId] The identifier used by App Service to perform domain ownership verification via DNS TXT record.
  /// [defaultHostname] The default hostname of the Linux Web App.
  /// [enabled] Should the Linux Web App be enabled? Defaults to `true`.
  /// [ftpPublishBasicAuthenticationEnabled] Should the default FTP Basic Authentication publishing profile be enabled. Defaults to `true`.
  /// [hostingEnvironmentId] The ID of the App Service Environment used by App Service.
  /// [httpsOnly] Should the Linux Web App require HTTPS connections. Defaults to `false`.
  /// [identity] An `identity` block as defined below.
  /// [keyVaultReferenceIdentityId] The User Assigned Identity ID used for accessing KeyVault secrets. The identity must be assigned to the application in the `identity` block. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity).
  /// [kind] The Kind value for this Linux Web App.
  /// [location] The Azure Region where the Linux Web App should exist. Changing this forces a new Linux Web App to be created.
  /// [logs] A `logs` block as defined below.
  /// [name] The name which should be used for this Linux Web App. Changing this forces a new Linux Web App to be created.
  /// [outboundIpAddressLists] A list of outbound IP addresses - such as `["52.23.25.3", "52.143.43.12"]`
  /// [outboundIpAddresses] A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12`.
  /// [possibleOutboundIpAddressLists] A list of possible outbound ip address.
  /// [possibleOutboundIpAddresses] A comma-separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12,52.143.43.17` - not all of which are necessarily in use. Superset of `outbound_ip_addresses`.
  /// [publicNetworkAccessEnabled] Should public network access be enabled for the Web App. Defaults to `true`.
  /// [resourceGroupName] The name of the Resource Group where the Linux Web App should exist. Changing this forces a new Linux Web App to be created.
  /// [servicePlanId] The ID of the Service Plan that this Linux App Service will be created in.
  /// [siteConfig] A `site_config` block as defined below.
  /// [siteCredentials] A `site_credential` block as defined below.
  /// [stickySettings] A `sticky_settings` block as defined below.
  /// [storageAccounts] One or more `storage_account` blocks as defined below.
  /// [tags] A mapping of tags which should be assigned to the Linux Web App.
  /// [virtualNetworkBackupRestoreEnabled] Whether backup and restore operations over the linked virtual network are enabled. Defaults to `false`.
  /// [virtualNetworkSubnetId] The subnet id which will be used by this Web App for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration).
  /// [vnetImagePullEnabled] Should the traffic for the image pull be routed over virtual network enabled. Defaults to `false`.
  /// [webdeployPublishBasicAuthenticationEnabled] Should the default WebDeploy Basic Authentication publishing credentials enabled. Defaults to `true`.
  /// [zipDeployFile] The local path and filename of the Zip packaged application to deploy to this Linux Web App.
  LinuxWebAppState({
    pulumi.Output<Map<String, String>>? appSettings,
    pulumi.Output<LinuxWebAppAuthSettings>? authSettings,
    pulumi.Output<LinuxWebAppAuthSettingsV2>? authSettingsV2,
    pulumi.Output<LinuxWebAppBackup>? backup,
    pulumi.Output<bool>? clientAffinityEnabled,
    pulumi.Output<bool>? clientCertificateEnabled,
    pulumi.Output<String>? clientCertificateExclusionPaths,
    pulumi.Output<String>? clientCertificateMode,
    pulumi.Output<List<LinuxWebAppConnectionString>>? connectionStrings,
    pulumi.Output<String>? customDomainVerificationId,
    pulumi.Output<String>? defaultHostname,
    pulumi.Output<bool>? enabled,
    pulumi.Output<bool>? ftpPublishBasicAuthenticationEnabled,
    pulumi.Output<String>? hostingEnvironmentId,
    pulumi.Output<bool>? httpsOnly,
    pulumi.Output<LinuxWebAppIdentity>? identity,
    pulumi.Output<String>? keyVaultReferenceIdentityId,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? location,
    pulumi.Output<LinuxWebAppLogs>? logs,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? outboundIpAddressLists,
    pulumi.Output<String>? outboundIpAddresses,
    pulumi.Output<List<String>>? possibleOutboundIpAddressLists,
    pulumi.Output<String>? possibleOutboundIpAddresses,
    pulumi.Output<bool>? publicNetworkAccessEnabled,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? servicePlanId,
    pulumi.Output<LinuxWebAppSiteConfig>? siteConfig,
    pulumi.Output<List<LinuxWebAppSiteCredential>>? siteCredentials,
    pulumi.Output<LinuxWebAppStickySettings>? stickySettings,
    pulumi.Output<List<LinuxWebAppStorageAccount>>? storageAccounts,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<bool>? virtualNetworkBackupRestoreEnabled,
    pulumi.Output<String>? virtualNetworkSubnetId,
    pulumi.Output<bool>? vnetImagePullEnabled,
    pulumi.Output<bool>? webdeployPublishBasicAuthenticationEnabled,
    pulumi.Output<String>? zipDeployFile,
  }) :
      appSettings = pulumi.Input.asOptionalInput<Map<String, String>>(appSettings),
      authSettings = pulumi.Input.asOptionalInput<LinuxWebAppAuthSettings>(authSettings),
      authSettingsV2 = pulumi.Input.asOptionalInput<LinuxWebAppAuthSettingsV2>(authSettingsV2),
      backup = pulumi.Input.asOptionalInput<LinuxWebAppBackup>(backup),
      clientAffinityEnabled = pulumi.Input.asOptionalInput<bool>(clientAffinityEnabled),
      clientCertificateEnabled = pulumi.Input.asOptionalInput<bool>(clientCertificateEnabled),
      clientCertificateExclusionPaths = pulumi.Input.asOptionalInput<String>(clientCertificateExclusionPaths),
      clientCertificateMode = pulumi.Input.asOptionalInput<String>(clientCertificateMode),
      connectionStrings = pulumi.Input.asOptionalInput<List<LinuxWebAppConnectionString>>(connectionStrings),
      customDomainVerificationId = pulumi.Input.asOptionalInput<String>(customDomainVerificationId),
      defaultHostname = pulumi.Input.asOptionalInput<String>(defaultHostname),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      ftpPublishBasicAuthenticationEnabled = pulumi.Input.asOptionalInput<bool>(ftpPublishBasicAuthenticationEnabled),
      hostingEnvironmentId = pulumi.Input.asOptionalInput<String>(hostingEnvironmentId),
      httpsOnly = pulumi.Input.asOptionalInput<bool>(httpsOnly),
      identity = pulumi.Input.asOptionalInput<LinuxWebAppIdentity>(identity),
      keyVaultReferenceIdentityId = pulumi.Input.asOptionalInput<String>(keyVaultReferenceIdentityId),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      logs = pulumi.Input.asOptionalInput<LinuxWebAppLogs>(logs),
      name = pulumi.Input.asOptionalInput<String>(name),
      outboundIpAddressLists = pulumi.Input.asOptionalInput<List<String>>(outboundIpAddressLists),
      outboundIpAddresses = pulumi.Input.asOptionalInput<String>(outboundIpAddresses),
      possibleOutboundIpAddressLists = pulumi.Input.asOptionalInput<List<String>>(possibleOutboundIpAddressLists),
      possibleOutboundIpAddresses = pulumi.Input.asOptionalInput<String>(possibleOutboundIpAddresses),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      servicePlanId = pulumi.Input.asOptionalInput<String>(servicePlanId),
      siteConfig = pulumi.Input.asOptionalInput<LinuxWebAppSiteConfig>(siteConfig),
      siteCredentials = pulumi.Input.asOptionalInput<List<LinuxWebAppSiteCredential>>(siteCredentials),
      stickySettings = pulumi.Input.asOptionalInput<LinuxWebAppStickySettings>(stickySettings),
      storageAccounts = pulumi.Input.asOptionalInput<List<LinuxWebAppStorageAccount>>(storageAccounts),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      virtualNetworkBackupRestoreEnabled = pulumi.Input.asOptionalInput<bool>(virtualNetworkBackupRestoreEnabled),
      virtualNetworkSubnetId = pulumi.Input.asOptionalInput<String>(virtualNetworkSubnetId),
      vnetImagePullEnabled = pulumi.Input.asOptionalInput<bool>(vnetImagePullEnabled),
      webdeployPublishBasicAuthenticationEnabled = pulumi.Input.asOptionalInput<bool>(webdeployPublishBasicAuthenticationEnabled),
      zipDeployFile = pulumi.Input.asOptionalInput<String>(zipDeployFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appSettings': ?appSettings,
      'authSettings': ?pulumi.Input.mapOptionalInputValue<LinuxWebAppAuthSettings, Map<String, dynamic>>(authSettings, (value) => value.toMap()),
      'authSettingsV2': ?pulumi.Input.mapOptionalInputValue<LinuxWebAppAuthSettingsV2, Map<String, dynamic>>(authSettingsV2, (value) => value.toMap()),
      'backup': ?pulumi.Input.mapOptionalInputValue<LinuxWebAppBackup, Map<String, dynamic>>(backup, (value) => value.toMap()),
      'clientAffinityEnabled': ?clientAffinityEnabled,
      'clientCertificateEnabled': ?clientCertificateEnabled,
      'clientCertificateExclusionPaths': ?clientCertificateExclusionPaths,
      'clientCertificateMode': ?clientCertificateMode,
      'connectionStrings': ?pulumi.Input.mapOptionalInputValue<List<LinuxWebAppConnectionString>, List<Map<String, dynamic>>>(connectionStrings, (value) => pulumi.Input.encodeList<LinuxWebAppConnectionString, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customDomainVerificationId': ?customDomainVerificationId,
      'defaultHostname': ?defaultHostname,
      'enabled': ?enabled,
      'ftpPublishBasicAuthenticationEnabled': ?ftpPublishBasicAuthenticationEnabled,
      'hostingEnvironmentId': ?hostingEnvironmentId,
      'httpsOnly': ?httpsOnly,
      'identity': ?pulumi.Input.mapOptionalInputValue<LinuxWebAppIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'keyVaultReferenceIdentityId': ?keyVaultReferenceIdentityId,
      'kind': ?kind,
      'location': ?location,
      'logs': ?pulumi.Input.mapOptionalInputValue<LinuxWebAppLogs, Map<String, dynamic>>(logs, (value) => value.toMap()),
      'name': ?name,
      'outboundIpAddressLists': ?outboundIpAddressLists,
      'outboundIpAddresses': ?outboundIpAddresses,
      'possibleOutboundIpAddressLists': ?possibleOutboundIpAddressLists,
      'possibleOutboundIpAddresses': ?possibleOutboundIpAddresses,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': ?resourceGroupName,
      'servicePlanId': ?servicePlanId,
      'siteConfig': ?pulumi.Input.mapOptionalInputValue<LinuxWebAppSiteConfig, Map<String, dynamic>>(siteConfig, (value) => value.toMap()),
      'siteCredentials': ?pulumi.Input.mapOptionalInputValue<List<LinuxWebAppSiteCredential>, List<Map<String, dynamic>>>(siteCredentials, (value) => pulumi.Input.encodeList<LinuxWebAppSiteCredential, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stickySettings': ?pulumi.Input.mapOptionalInputValue<LinuxWebAppStickySettings, Map<String, dynamic>>(stickySettings, (value) => value.toMap()),
      'storageAccounts': ?pulumi.Input.mapOptionalInputValue<List<LinuxWebAppStorageAccount>, List<Map<String, dynamic>>>(storageAccounts, (value) => pulumi.Input.encodeList<LinuxWebAppStorageAccount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'virtualNetworkBackupRestoreEnabled': ?virtualNetworkBackupRestoreEnabled,
      'virtualNetworkSubnetId': ?virtualNetworkSubnetId,
      'vnetImagePullEnabled': ?vnetImagePullEnabled,
      'webdeployPublishBasicAuthenticationEnabled': ?webdeployPublishBasicAuthenticationEnabled,
      'zipDeployFile': ?zipDeployFile,
    };
  }

  factory LinuxWebAppState.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppState(
      appSettings: map['appSettings'] == null ? null : pulumi.Output.create<Map<String, String>>((map['appSettings'] as Map).cast<String, String>()),
      authSettings: map['authSettings'] == null ? null : pulumi.Output.create<LinuxWebAppAuthSettings>(LinuxWebAppAuthSettings.fromMap((map['authSettings'] as Map).cast<String, dynamic>())),
      authSettingsV2: map['authSettingsV2'] == null ? null : pulumi.Output.create<LinuxWebAppAuthSettingsV2>(LinuxWebAppAuthSettingsV2.fromMap((map['authSettingsV2'] as Map).cast<String, dynamic>())),
      backup: map['backup'] == null ? null : pulumi.Output.create<LinuxWebAppBackup>(LinuxWebAppBackup.fromMap((map['backup'] as Map).cast<String, dynamic>())),
      clientAffinityEnabled: map['clientAffinityEnabled'] == null ? null : pulumi.Output.create<bool>(map['clientAffinityEnabled'] as bool),
      clientCertificateEnabled: map['clientCertificateEnabled'] == null ? null : pulumi.Output.create<bool>(map['clientCertificateEnabled'] as bool),
      clientCertificateExclusionPaths: map['clientCertificateExclusionPaths'] == null ? null : pulumi.Output.create<String>(map['clientCertificateExclusionPaths'] as String),
      clientCertificateMode: map['clientCertificateMode'] == null ? null : pulumi.Output.create<String>(map['clientCertificateMode'] as String),
      connectionStrings: map['connectionStrings'] == null ? null : pulumi.Output.create<List<LinuxWebAppConnectionString>>(pulumi.Input.decodeList<LinuxWebAppConnectionString>(map['connectionStrings'], (value) => LinuxWebAppConnectionString.fromMap((value as Map).cast<String, dynamic>()))),
      customDomainVerificationId: map['customDomainVerificationId'] == null ? null : pulumi.Output.create<String>(map['customDomainVerificationId'] as String),
      defaultHostname: map['defaultHostname'] == null ? null : pulumi.Output.create<String>(map['defaultHostname'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      ftpPublishBasicAuthenticationEnabled: map['ftpPublishBasicAuthenticationEnabled'] == null ? null : pulumi.Output.create<bool>(map['ftpPublishBasicAuthenticationEnabled'] as bool),
      hostingEnvironmentId: map['hostingEnvironmentId'] == null ? null : pulumi.Output.create<String>(map['hostingEnvironmentId'] as String),
      httpsOnly: map['httpsOnly'] == null ? null : pulumi.Output.create<bool>(map['httpsOnly'] as bool),
      identity: map['identity'] == null ? null : pulumi.Output.create<LinuxWebAppIdentity>(LinuxWebAppIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      keyVaultReferenceIdentityId: map['keyVaultReferenceIdentityId'] == null ? null : pulumi.Output.create<String>(map['keyVaultReferenceIdentityId'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      logs: map['logs'] == null ? null : pulumi.Output.create<LinuxWebAppLogs>(LinuxWebAppLogs.fromMap((map['logs'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      outboundIpAddressLists: map['outboundIpAddressLists'] == null ? null : pulumi.Output.create<List<String>>((map['outboundIpAddressLists'] as List).cast<String>()),
      outboundIpAddresses: map['outboundIpAddresses'] == null ? null : pulumi.Output.create<String>(map['outboundIpAddresses'] as String),
      possibleOutboundIpAddressLists: map['possibleOutboundIpAddressLists'] == null ? null : pulumi.Output.create<List<String>>((map['possibleOutboundIpAddressLists'] as List).cast<String>()),
      possibleOutboundIpAddresses: map['possibleOutboundIpAddresses'] == null ? null : pulumi.Output.create<String>(map['possibleOutboundIpAddresses'] as String),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicNetworkAccessEnabled'] as bool),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      servicePlanId: map['servicePlanId'] == null ? null : pulumi.Output.create<String>(map['servicePlanId'] as String),
      siteConfig: map['siteConfig'] == null ? null : pulumi.Output.create<LinuxWebAppSiteConfig>(LinuxWebAppSiteConfig.fromMap((map['siteConfig'] as Map).cast<String, dynamic>())),
      siteCredentials: map['siteCredentials'] == null ? null : pulumi.Output.create<List<LinuxWebAppSiteCredential>>(pulumi.Input.decodeList<LinuxWebAppSiteCredential>(map['siteCredentials'], (value) => LinuxWebAppSiteCredential.fromMap((value as Map).cast<String, dynamic>()))),
      stickySettings: map['stickySettings'] == null ? null : pulumi.Output.create<LinuxWebAppStickySettings>(LinuxWebAppStickySettings.fromMap((map['stickySettings'] as Map).cast<String, dynamic>())),
      storageAccounts: map['storageAccounts'] == null ? null : pulumi.Output.create<List<LinuxWebAppStorageAccount>>(pulumi.Input.decodeList<LinuxWebAppStorageAccount>(map['storageAccounts'], (value) => LinuxWebAppStorageAccount.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      virtualNetworkBackupRestoreEnabled: map['virtualNetworkBackupRestoreEnabled'] == null ? null : pulumi.Output.create<bool>(map['virtualNetworkBackupRestoreEnabled'] as bool),
      virtualNetworkSubnetId: map['virtualNetworkSubnetId'] == null ? null : pulumi.Output.create<String>(map['virtualNetworkSubnetId'] as String),
      vnetImagePullEnabled: map['vnetImagePullEnabled'] == null ? null : pulumi.Output.create<bool>(map['vnetImagePullEnabled'] as bool),
      webdeployPublishBasicAuthenticationEnabled: map['webdeployPublishBasicAuthenticationEnabled'] == null ? null : pulumi.Output.create<bool>(map['webdeployPublishBasicAuthenticationEnabled'] as bool),
      zipDeployFile: map['zipDeployFile'] == null ? null : pulumi.Output.create<String>(map['zipDeployFile'] as String),
    );
  }
}

