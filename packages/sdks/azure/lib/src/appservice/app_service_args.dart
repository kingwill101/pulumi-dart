// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_service_auth_settings.dart';
import 'app_service_backup.dart';
import 'app_service_connection_string.dart';
import 'app_service_identity.dart';
import 'app_service_logs.dart';
import 'app_service_site_config.dart';
import 'app_service_source_control.dart';
import 'app_service_storage_account.dart';

/// {@template pulumi_appservice_app_service_app_service_args_doc}
/// The set of arguments for AppService.
/// {@endtemplate}
/// {@macro pulumi_appservice_app_service_app_service_args_doc}
class AppServiceArgs {
  /// The ID of the App Service Plan within which to create this App Service.
  final pulumi.Input<String> appServicePlanId;
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
  /// The name of the resource group in which to create the App Service. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `site_config` block as defined below.
  final pulumi.Input<AppServiceSiteConfig>? siteConfig;
  /// A `source_control` block as defined below.
  final pulumi.Input<AppServiceSourceControl>? sourceControl;
  /// One or more `storage_account` blocks as defined below.
  final pulumi.Input<List<AppServiceStorageAccount>>? storageAccounts;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AppServiceArgs].
  /// [appServicePlanId] The ID of the App Service Plan within which to create this App Service.
  /// [appSettings] A key-value pair of App Settings.
  /// [authSettings] A `auth_settings` block as defined below.
  /// [backup] A `backup` block as defined below.
  /// [clientAffinityEnabled] Should the App Service send session affinity cookies, which route client requests in the same session to the same instance?
  /// [clientCertEnabled] Does the App Service require client certificates for incoming requests? Defaults to `false`.
  /// [clientCertMode] Mode of client certificates for this App Service. Possible values are `Required`, `Optional` and `OptionalInteractiveUser`. If this parameter is set, `client_cert_enabled` must be set to `true`, otherwise this parameter is ignored.
  /// [connectionStrings] One or more `connection_string` blocks as defined below.
  /// [enabled] Is the App Service Enabled? Defaults to `true`.
  /// [httpsOnly] Can the App Service only be accessed via HTTPS? Defaults to `false`.
  /// [identity] An `identity` block as defined below.
  /// [keyVaultReferenceIdentityId] The User Assigned Identity Id used for looking up KeyVault secrets. The identity must be assigned to the application. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity)
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [logs] A `logs` block as defined below.
  /// [name] Specifies the name of the App Service. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the App Service. Changing this forces a new resource to be created.
  /// [siteConfig] A `site_config` block as defined below.
  /// [sourceControl] A `source_control` block as defined below.
  /// [storageAccounts] One or more `storage_account` blocks as defined below.
  /// [tags] A mapping of tags to assign to the resource.
  AppServiceArgs({
    required this.appServicePlanId,
    this.appSettings,
    this.authSettings,
    this.backup,
    this.clientAffinityEnabled,
    this.clientCertEnabled,
    this.clientCertMode,
    this.connectionStrings,
    this.enabled,
    this.httpsOnly,
    this.identity,
    this.keyVaultReferenceIdentityId,
    this.location,
    this.logs,
    this.name,
    required this.resourceGroupName,
    this.siteConfig,
    this.sourceControl,
    this.storageAccounts,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appServicePlanId': appServicePlanId,
      'appSettings': ?appSettings,
      'authSettings': ?pulumi.Input.mapOptionalInputValue<AppServiceAuthSettings, Map<String, dynamic>>(authSettings, (value) => value.toMap()),
      'backup': ?pulumi.Input.mapOptionalInputValue<AppServiceBackup, Map<String, dynamic>>(backup, (value) => value.toMap()),
      'clientAffinityEnabled': ?clientAffinityEnabled,
      'clientCertEnabled': ?clientCertEnabled,
      'clientCertMode': ?clientCertMode,
      'connectionStrings': ?pulumi.Input.mapOptionalInputValue<List<AppServiceConnectionString>, List<Map<String, dynamic>>>(connectionStrings, (value) => pulumi.Input.encodeList<AppServiceConnectionString, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': ?enabled,
      'httpsOnly': ?httpsOnly,
      'identity': ?pulumi.Input.mapOptionalInputValue<AppServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'keyVaultReferenceIdentityId': ?keyVaultReferenceIdentityId,
      'location': ?location,
      'logs': ?pulumi.Input.mapOptionalInputValue<AppServiceLogs, Map<String, dynamic>>(logs, (value) => value.toMap()),
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'siteConfig': ?pulumi.Input.mapOptionalInputValue<AppServiceSiteConfig, Map<String, dynamic>>(siteConfig, (value) => value.toMap()),
      'sourceControl': ?pulumi.Input.mapOptionalInputValue<AppServiceSourceControl, Map<String, dynamic>>(sourceControl, (value) => value.toMap()),
      'storageAccounts': ?pulumi.Input.mapOptionalInputValue<List<AppServiceStorageAccount>, List<Map<String, dynamic>>>(storageAccounts, (value) => pulumi.Input.encodeList<AppServiceStorageAccount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory AppServiceArgs.fromMap(Map<String, dynamic> map) {
    return AppServiceArgs(
      appServicePlanId: (map['appServicePlanId'] as String).input(),
      appSettings: map['appSettings'] == null ? null : ((map['appSettings'] as Map).cast<String, String>()).input(),
      authSettings: map['authSettings'] == null ? null : (AppServiceAuthSettings.fromMap((map['authSettings'] as Map).cast<String, dynamic>())).input(),
      backup: map['backup'] == null ? null : (AppServiceBackup.fromMap((map['backup'] as Map).cast<String, dynamic>())).input(),
      clientAffinityEnabled: map['clientAffinityEnabled'] == null ? null : (map['clientAffinityEnabled'] as bool).input(),
      clientCertEnabled: map['clientCertEnabled'] == null ? null : (map['clientCertEnabled'] as bool).input(),
      clientCertMode: map['clientCertMode'] == null ? null : (map['clientCertMode'] as String).input(),
      connectionStrings: map['connectionStrings'] == null ? null : (pulumi.Input.decodeList<AppServiceConnectionString>(map['connectionStrings'], (value) => AppServiceConnectionString.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      httpsOnly: map['httpsOnly'] == null ? null : (map['httpsOnly'] as bool).input(),
      identity: map['identity'] == null ? null : (AppServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      keyVaultReferenceIdentityId: map['keyVaultReferenceIdentityId'] == null ? null : (map['keyVaultReferenceIdentityId'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      logs: map['logs'] == null ? null : (AppServiceLogs.fromMap((map['logs'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      siteConfig: map['siteConfig'] == null ? null : (AppServiceSiteConfig.fromMap((map['siteConfig'] as Map).cast<String, dynamic>())).input(),
      sourceControl: map['sourceControl'] == null ? null : (AppServiceSourceControl.fromMap((map['sourceControl'] as Map).cast<String, dynamic>())).input(),
      storageAccounts: map['storageAccounts'] == null ? null : (pulumi.Input.decodeList<AppServiceStorageAccount>(map['storageAccounts'], (value) => AppServiceStorageAccount.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

