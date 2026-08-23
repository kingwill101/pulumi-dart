// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'slot_auth_settings.dart';
import 'slot_connection_string.dart';
import 'slot_identity.dart';
import 'slot_logs.dart';
import 'slot_site_config.dart';
import 'slot_storage_account.dart';

/// {@template pulumi_appservice_slot_slot_args_doc}
/// The set of arguments for Slot.
/// {@endtemplate}
/// {@macro pulumi_appservice_slot_slot_args_doc}
class SlotArgs {
  /// The name of the App Service within which to create the App Service Slot. Changing this forces a new resource to be created.
  final pulumi.Input<String> appServiceName;
  /// The ID of the App Service Plan within which to create this App Service Slot. Changing this forces a new resource to be created.
  final pulumi.Input<String> appServicePlanId;
  /// A key-value pair of App Settings.
  final pulumi.Input<Map<String, String>>? appSettings;
  /// A `authSettings` block as defined below.
  final pulumi.Input<SlotAuthSettings>? authSettings;
  /// Should the App Service Slot send session affinity cookies, which route client requests in the same session to the same instance?
  final pulumi.Input<bool>? clientAffinityEnabled;
  /// An `connectionString` block as defined below.
  final pulumi.Input<List<SlotConnectionString>>? connectionStrings;
  /// Is the App Service Slot Enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// Can the App Service Slot only be accessed via HTTPS? Defaults to `false`.
  final pulumi.Input<bool>? httpsOnly;
  /// An `identity` block as defined below.
  final pulumi.Input<SlotIdentity>? identity;
  /// The User Assigned Identity Id used for looking up KeyVault secrets. The identity must be assigned to the application. See [Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity) for more information.
  final pulumi.Input<String>? keyVaultReferenceIdentityId;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// A `logs` block as defined below.
  final pulumi.Input<SlotLogs>? logs;
  /// Specifies the name of the App Service Slot component. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which to create the App Service Slot component. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `siteConfig` object as defined below.
  final pulumi.Input<SlotSiteConfig>? siteConfig;
  /// One or more `storageAccount` blocks as defined below.
  final pulumi.Input<List<SlotStorageAccount>>? storageAccounts;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SlotArgs].
  /// [appServiceName] The name of the App Service within which to create the App Service Slot. Changing this forces a new resource to be created.
  /// [appServicePlanId] The ID of the App Service Plan within which to create this App Service Slot. Changing this forces a new resource to be created.
  /// [appSettings] A key-value pair of App Settings.
  /// [authSettings] A `authSettings` block as defined below.
  /// [clientAffinityEnabled] Should the App Service Slot send session affinity cookies, which route client requests in the same session to the same instance?
  /// [connectionStrings] An `connectionString` block as defined below.
  /// [enabled] Is the App Service Slot Enabled? Defaults to `true`.
  /// [httpsOnly] Can the App Service Slot only be accessed via HTTPS? Defaults to `false`.
  /// [identity] An `identity` block as defined below.
  /// [keyVaultReferenceIdentityId] The User Assigned Identity Id used for looking up KeyVault secrets. The identity must be assigned to the application. See [Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity) for more information.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [logs] A `logs` block as defined below.
  /// [name] Specifies the name of the App Service Slot component. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the App Service Slot component. Changing this forces a new resource to be created.
  /// [siteConfig] A `siteConfig` object as defined below.
  /// [storageAccounts] One or more `storageAccount` blocks as defined below.
  /// [tags] A mapping of tags to assign to the resource.
  const SlotArgs({
    required this.appServiceName,
    required this.appServicePlanId,
    this.appSettings,
    this.authSettings,
    this.clientAffinityEnabled,
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
    this.storageAccounts,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appServiceName': appServiceName,
      'appServicePlanId': appServicePlanId,
      'appSettings': ?appSettings,
      'authSettings': ?pulumi.Input.mapOptionalInputValue<SlotAuthSettings, Map<String, dynamic>>(authSettings, (value) => value.toMap()),
      'clientAffinityEnabled': ?clientAffinityEnabled,
      'connectionStrings': ?pulumi.Input.mapOptionalInputValue<List<SlotConnectionString>, List<Map<String, dynamic>>>(connectionStrings, (value) => pulumi.Input.encodeList<SlotConnectionString, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': ?enabled,
      'httpsOnly': ?httpsOnly,
      'identity': ?pulumi.Input.mapOptionalInputValue<SlotIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'keyVaultReferenceIdentityId': ?keyVaultReferenceIdentityId,
      'location': ?location,
      'logs': ?pulumi.Input.mapOptionalInputValue<SlotLogs, Map<String, dynamic>>(logs, (value) => value.toMap()),
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'siteConfig': ?pulumi.Input.mapOptionalInputValue<SlotSiteConfig, Map<String, dynamic>>(siteConfig, (value) => value.toMap()),
      'storageAccounts': ?pulumi.Input.mapOptionalInputValue<List<SlotStorageAccount>, List<Map<String, dynamic>>>(storageAccounts, (value) => pulumi.Input.encodeList<SlotStorageAccount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory SlotArgs.fromMap(Map<String, dynamic> map) {
    return SlotArgs(
      appServiceName: pulumi.Input.fromValue(map['appServiceName'] as String),
      appServicePlanId: pulumi.Input.fromValue(map['appServicePlanId'] as String),
      appSettings: (() { final guardedValue = map['appSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      authSettings: (() { final guardedValue = map['authSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SlotAuthSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clientAffinityEnabled: (() { final guardedValue = map['clientAffinityEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      connectionStrings: (() { final guardedValue = map['connectionStrings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SlotConnectionString>(guardedValue, (value) => SlotConnectionString.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      httpsOnly: (() { final guardedValue = map['httpsOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SlotIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      keyVaultReferenceIdentityId: (() { final guardedValue = map['keyVaultReferenceIdentityId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logs: (() { final guardedValue = map['logs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SlotLogs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      siteConfig: (() { final guardedValue = map['siteConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SlotSiteConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageAccounts: (() { final guardedValue = map['storageAccounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SlotStorageAccount>(guardedValue, (value) => SlotStorageAccount.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
