// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_service_auth_settings.dart';
import 'app_service_backup.dart';
import 'app_service_connection_string.dart';
import 'app_service_identity.dart';
import 'app_service_logs.dart';
import 'app_service_site_config.dart';
import 'app_service_site_credential.dart';
import 'app_service_source_control.dart';
import 'app_service_storage_account.dart';

/// Input properties used for looking up and filtering AppService resources.
class AppServiceState {
  /// The ID of the App Service Plan within which to create this App Service.
  final pulumi.Input<String>? appServicePlanId;
  /// A key-value pair of App Settings.
  final pulumi.Input<Map<String, String>>? appSettings;
  /// A `auth_settings` block as defined below.
  final pulumi.Input<AppServiceAuthSettings>? authSettings;
  /// A `backup` block as defined below.
  final pulumi.Input<AppServiceBackup>? backup;
  /// Should the App Service send session affinity cookies, which route client requests in the same session to the same instance?
  final pulumi.Input<bool>? clientAffinityEnabled;
  /// Does the App Service require client certificates for incoming requests? Defaults to `false`.
  final pulumi.Input<bool>? clientCertEnabled;
  /// Mode of client certificates for this App Service. Possible values are `Required`, `Optional` and `OptionalInteractiveUser`. If this parameter is set, `client_cert_enabled` must be set to `true`, otherwise this parameter is ignored.
  final pulumi.Input<String>? clientCertMode;
  /// One or more `connection_string` blocks as defined below.
  final pulumi.Input<List<AppServiceConnectionString>>? connectionStrings;
  /// An identifier used by App Service to perform domain ownership verification via DNS TXT record.
  final pulumi.Input<String>? customDomainVerificationId;
  /// The Default Hostname associated with the App Service - such as `mysite.azurewebsites.net`
  final pulumi.Input<String>? defaultSiteHostname;
  /// Is the App Service Enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// Can the App Service only be accessed via HTTPS? Defaults to `false`.
  final pulumi.Input<bool>? httpsOnly;
  /// An `identity` block as defined below.
  final pulumi.Input<AppServiceIdentity>? identity;
  /// The User Assigned Identity Id used for looking up KeyVault secrets. The identity must be assigned to the application. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity)
  final pulumi.Input<String>? keyVaultReferenceIdentityId;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// A `logs` block as defined below.
  final pulumi.Input<AppServiceLogs>? logs;
  /// Specifies the name of the App Service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A list of outbound IP addresses - such as `["52.23.25.3", "52.143.43.12"]`
  final pulumi.Input<List<String>>? outboundIpAddressLists;
  /// A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12`
  final pulumi.Input<String>? outboundIpAddresses;
  /// A list of outbound IP addresses - such as `["52.23.25.3", "52.143.43.12", "52.143.43.17"]` - not all of which are necessarily in use. Superset of `outbound_ip_address_list`.
  final pulumi.Input<List<String>>? possibleOutboundIpAddressLists;
  /// A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12,52.143.43.17` - not all of which are necessarily in use. Superset of `outbound_ip_addresses`.
  final pulumi.Input<String>? possibleOutboundIpAddresses;
  /// The name of the resource group in which to create the App Service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A `site_config` block as defined below.
  final pulumi.Input<AppServiceSiteConfig>? siteConfig;
  /// A `site_credential` block as defined below, which contains the site-level credentials used to publish to this App Service.
  final pulumi.Input<List<AppServiceSiteCredential>>? siteCredentials;
  /// A `source_control` block as defined below.
  final pulumi.Input<AppServiceSourceControl>? sourceControl;
  /// One or more `storage_account` blocks as defined below.
  final pulumi.Input<List<AppServiceStorageAccount>>? storageAccounts;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AppServiceState].
  /// [appServicePlanId] The ID of the App Service Plan within which to create this App Service.
  /// [appSettings] A key-value pair of App Settings.
  /// [authSettings] A `auth_settings` block as defined below.
  /// [backup] A `backup` block as defined below.
  /// [clientAffinityEnabled] Should the App Service send session affinity cookies, which route client requests in the same session to the same instance?
  /// [clientCertEnabled] Does the App Service require client certificates for incoming requests? Defaults to `false`.
  /// [clientCertMode] Mode of client certificates for this App Service. Possible values are `Required`, `Optional` and `OptionalInteractiveUser`. If this parameter is set, `client_cert_enabled` must be set to `true`, otherwise this parameter is ignored.
  /// [connectionStrings] One or more `connection_string` blocks as defined below.
  /// [customDomainVerificationId] An identifier used by App Service to perform domain ownership verification via DNS TXT record.
  /// [defaultSiteHostname] The Default Hostname associated with the App Service - such as `mysite.azurewebsites.net`
  /// [enabled] Is the App Service Enabled? Defaults to `true`.
  /// [httpsOnly] Can the App Service only be accessed via HTTPS? Defaults to `false`.
  /// [identity] An `identity` block as defined below.
  /// [keyVaultReferenceIdentityId] The User Assigned Identity Id used for looking up KeyVault secrets. The identity must be assigned to the application. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity)
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [logs] A `logs` block as defined below.
  /// [name] Specifies the name of the App Service. Changing this forces a new resource to be created.
  /// [outboundIpAddressLists] A list of outbound IP addresses - such as `["52.23.25.3", "52.143.43.12"]`
  /// [outboundIpAddresses] A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12`
  /// [possibleOutboundIpAddressLists] A list of outbound IP addresses - such as `["52.23.25.3", "52.143.43.12", "52.143.43.17"]` - not all of which are necessarily in use. Superset of `outbound_ip_address_list`.
  /// [possibleOutboundIpAddresses] A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12,52.143.43.17` - not all of which are necessarily in use. Superset of `outbound_ip_addresses`.
  /// [resourceGroupName] The name of the resource group in which to create the App Service. Changing this forces a new resource to be created.
  /// [siteConfig] A `site_config` block as defined below.
  /// [siteCredentials] A `site_credential` block as defined below, which contains the site-level credentials used to publish to this App Service.
  /// [sourceControl] A `source_control` block as defined below.
  /// [storageAccounts] One or more `storage_account` blocks as defined below.
  /// [tags] A mapping of tags to assign to the resource.
  AppServiceState({
    pulumi.Output<String>? appServicePlanId,
    pulumi.Output<Map<String, String>>? appSettings,
    pulumi.Output<AppServiceAuthSettings>? authSettings,
    pulumi.Output<AppServiceBackup>? backup,
    pulumi.Output<bool>? clientAffinityEnabled,
    pulumi.Output<bool>? clientCertEnabled,
    pulumi.Output<String>? clientCertMode,
    pulumi.Output<List<AppServiceConnectionString>>? connectionStrings,
    pulumi.Output<String>? customDomainVerificationId,
    pulumi.Output<String>? defaultSiteHostname,
    pulumi.Output<bool>? enabled,
    pulumi.Output<bool>? httpsOnly,
    pulumi.Output<AppServiceIdentity>? identity,
    pulumi.Output<String>? keyVaultReferenceIdentityId,
    pulumi.Output<String>? location,
    pulumi.Output<AppServiceLogs>? logs,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? outboundIpAddressLists,
    pulumi.Output<String>? outboundIpAddresses,
    pulumi.Output<List<String>>? possibleOutboundIpAddressLists,
    pulumi.Output<String>? possibleOutboundIpAddresses,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<AppServiceSiteConfig>? siteConfig,
    pulumi.Output<List<AppServiceSiteCredential>>? siteCredentials,
    pulumi.Output<AppServiceSourceControl>? sourceControl,
    pulumi.Output<List<AppServiceStorageAccount>>? storageAccounts,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      appServicePlanId = pulumi.Input.asOptionalInput<String>(appServicePlanId),
      appSettings = pulumi.Input.asOptionalInput<Map<String, String>>(appSettings),
      authSettings = pulumi.Input.asOptionalInput<AppServiceAuthSettings>(authSettings),
      backup = pulumi.Input.asOptionalInput<AppServiceBackup>(backup),
      clientAffinityEnabled = pulumi.Input.asOptionalInput<bool>(clientAffinityEnabled),
      clientCertEnabled = pulumi.Input.asOptionalInput<bool>(clientCertEnabled),
      clientCertMode = pulumi.Input.asOptionalInput<String>(clientCertMode),
      connectionStrings = pulumi.Input.asOptionalInput<List<AppServiceConnectionString>>(connectionStrings),
      customDomainVerificationId = pulumi.Input.asOptionalInput<String>(customDomainVerificationId),
      defaultSiteHostname = pulumi.Input.asOptionalInput<String>(defaultSiteHostname),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      httpsOnly = pulumi.Input.asOptionalInput<bool>(httpsOnly),
      identity = pulumi.Input.asOptionalInput<AppServiceIdentity>(identity),
      keyVaultReferenceIdentityId = pulumi.Input.asOptionalInput<String>(keyVaultReferenceIdentityId),
      location = pulumi.Input.asOptionalInput<String>(location),
      logs = pulumi.Input.asOptionalInput<AppServiceLogs>(logs),
      name = pulumi.Input.asOptionalInput<String>(name),
      outboundIpAddressLists = pulumi.Input.asOptionalInput<List<String>>(outboundIpAddressLists),
      outboundIpAddresses = pulumi.Input.asOptionalInput<String>(outboundIpAddresses),
      possibleOutboundIpAddressLists = pulumi.Input.asOptionalInput<List<String>>(possibleOutboundIpAddressLists),
      possibleOutboundIpAddresses = pulumi.Input.asOptionalInput<String>(possibleOutboundIpAddresses),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      siteConfig = pulumi.Input.asOptionalInput<AppServiceSiteConfig>(siteConfig),
      siteCredentials = pulumi.Input.asOptionalInput<List<AppServiceSiteCredential>>(siteCredentials),
      sourceControl = pulumi.Input.asOptionalInput<AppServiceSourceControl>(sourceControl),
      storageAccounts = pulumi.Input.asOptionalInput<List<AppServiceStorageAccount>>(storageAccounts),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appServicePlanId': ?appServicePlanId,
      'appSettings': ?appSettings,
      'authSettings': ?pulumi.Input.mapOptionalInputValue<AppServiceAuthSettings, Map<String, dynamic>>(authSettings, (value) => value.toMap()),
      'backup': ?pulumi.Input.mapOptionalInputValue<AppServiceBackup, Map<String, dynamic>>(backup, (value) => value.toMap()),
      'clientAffinityEnabled': ?clientAffinityEnabled,
      'clientCertEnabled': ?clientCertEnabled,
      'clientCertMode': ?clientCertMode,
      'connectionStrings': ?pulumi.Input.mapOptionalInputValue<List<AppServiceConnectionString>, List<Map<String, dynamic>>>(connectionStrings, (value) => pulumi.Input.encodeList<AppServiceConnectionString, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customDomainVerificationId': ?customDomainVerificationId,
      'defaultSiteHostname': ?defaultSiteHostname,
      'enabled': ?enabled,
      'httpsOnly': ?httpsOnly,
      'identity': ?pulumi.Input.mapOptionalInputValue<AppServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'keyVaultReferenceIdentityId': ?keyVaultReferenceIdentityId,
      'location': ?location,
      'logs': ?pulumi.Input.mapOptionalInputValue<AppServiceLogs, Map<String, dynamic>>(logs, (value) => value.toMap()),
      'name': ?name,
      'outboundIpAddressLists': ?outboundIpAddressLists,
      'outboundIpAddresses': ?outboundIpAddresses,
      'possibleOutboundIpAddressLists': ?possibleOutboundIpAddressLists,
      'possibleOutboundIpAddresses': ?possibleOutboundIpAddresses,
      'resourceGroupName': ?resourceGroupName,
      'siteConfig': ?pulumi.Input.mapOptionalInputValue<AppServiceSiteConfig, Map<String, dynamic>>(siteConfig, (value) => value.toMap()),
      'siteCredentials': ?pulumi.Input.mapOptionalInputValue<List<AppServiceSiteCredential>, List<Map<String, dynamic>>>(siteCredentials, (value) => pulumi.Input.encodeList<AppServiceSiteCredential, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceControl': ?pulumi.Input.mapOptionalInputValue<AppServiceSourceControl, Map<String, dynamic>>(sourceControl, (value) => value.toMap()),
      'storageAccounts': ?pulumi.Input.mapOptionalInputValue<List<AppServiceStorageAccount>, List<Map<String, dynamic>>>(storageAccounts, (value) => pulumi.Input.encodeList<AppServiceStorageAccount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory AppServiceState.fromMap(Map<String, dynamic> map) {
    return AppServiceState(
      appServicePlanId: map['appServicePlanId'] == null ? null : pulumi.Output.create<String>(map['appServicePlanId'] as String),
      appSettings: map['appSettings'] == null ? null : pulumi.Output.create<Map<String, String>>((map['appSettings'] as Map).cast<String, String>()),
      authSettings: map['authSettings'] == null ? null : pulumi.Output.create<AppServiceAuthSettings>(AppServiceAuthSettings.fromMap((map['authSettings'] as Map).cast<String, dynamic>())),
      backup: map['backup'] == null ? null : pulumi.Output.create<AppServiceBackup>(AppServiceBackup.fromMap((map['backup'] as Map).cast<String, dynamic>())),
      clientAffinityEnabled: map['clientAffinityEnabled'] == null ? null : pulumi.Output.create<bool>(map['clientAffinityEnabled'] as bool),
      clientCertEnabled: map['clientCertEnabled'] == null ? null : pulumi.Output.create<bool>(map['clientCertEnabled'] as bool),
      clientCertMode: map['clientCertMode'] == null ? null : pulumi.Output.create<String>(map['clientCertMode'] as String),
      connectionStrings: map['connectionStrings'] == null ? null : pulumi.Output.create<List<AppServiceConnectionString>>(pulumi.Input.decodeList<AppServiceConnectionString>(map['connectionStrings'], (value) => AppServiceConnectionString.fromMap((value as Map).cast<String, dynamic>()))),
      customDomainVerificationId: map['customDomainVerificationId'] == null ? null : pulumi.Output.create<String>(map['customDomainVerificationId'] as String),
      defaultSiteHostname: map['defaultSiteHostname'] == null ? null : pulumi.Output.create<String>(map['defaultSiteHostname'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      httpsOnly: map['httpsOnly'] == null ? null : pulumi.Output.create<bool>(map['httpsOnly'] as bool),
      identity: map['identity'] == null ? null : pulumi.Output.create<AppServiceIdentity>(AppServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      keyVaultReferenceIdentityId: map['keyVaultReferenceIdentityId'] == null ? null : pulumi.Output.create<String>(map['keyVaultReferenceIdentityId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      logs: map['logs'] == null ? null : pulumi.Output.create<AppServiceLogs>(AppServiceLogs.fromMap((map['logs'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      outboundIpAddressLists: map['outboundIpAddressLists'] == null ? null : pulumi.Output.create<List<String>>((map['outboundIpAddressLists'] as List).cast<String>()),
      outboundIpAddresses: map['outboundIpAddresses'] == null ? null : pulumi.Output.create<String>(map['outboundIpAddresses'] as String),
      possibleOutboundIpAddressLists: map['possibleOutboundIpAddressLists'] == null ? null : pulumi.Output.create<List<String>>((map['possibleOutboundIpAddressLists'] as List).cast<String>()),
      possibleOutboundIpAddresses: map['possibleOutboundIpAddresses'] == null ? null : pulumi.Output.create<String>(map['possibleOutboundIpAddresses'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      siteConfig: map['siteConfig'] == null ? null : pulumi.Output.create<AppServiceSiteConfig>(AppServiceSiteConfig.fromMap((map['siteConfig'] as Map).cast<String, dynamic>())),
      siteCredentials: map['siteCredentials'] == null ? null : pulumi.Output.create<List<AppServiceSiteCredential>>(pulumi.Input.decodeList<AppServiceSiteCredential>(map['siteCredentials'], (value) => AppServiceSiteCredential.fromMap((value as Map).cast<String, dynamic>()))),
      sourceControl: map['sourceControl'] == null ? null : pulumi.Output.create<AppServiceSourceControl>(AppServiceSourceControl.fromMap((map['sourceControl'] as Map).cast<String, dynamic>())),
      storageAccounts: map['storageAccounts'] == null ? null : pulumi.Output.create<List<AppServiceStorageAccount>>(pulumi.Input.decodeList<AppServiceStorageAccount>(map['storageAccounts'], (value) => AppServiceStorageAccount.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

