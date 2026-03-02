// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_app_slot_auth_settings.dart';
import 'function_app_slot_connection_string.dart';
import 'function_app_slot_identity.dart';
import 'function_app_slot_site_config.dart';

/// {@template pulumi_appservice_function_app_slot_function_app_slot_args_doc}
/// The set of arguments for FunctionAppSlot.
/// {@endtemplate}
/// {@macro pulumi_appservice_function_app_slot_function_app_slot_args_doc}
class FunctionAppSlotArgs {
  /// The ID of the App Service Plan within which to create this Function App Slot. Changing this forces a new resource to be created.
  final pulumi.Input<String> appServicePlanId;
  /// A key-value pair of App Settings.
  ///
  /// > **Note:** When integrating a `CI/CD pipeline` and expecting to run from a deployed package in `Azure` you must seed your `app settings` as part of the application code for function app to be successfully deployed. `Important Default key pairs`: (`"WEBSITE_RUN_FROM_PACKAGE" = ""`, `"FUNCTIONS_WORKER_RUNTIME" = "node"` (or python, etc), `"WEBSITE_NODE_DEFAULT_VERSION" = "10.14.1"`, `"APPINSIGHTS_INSTRUMENTATIONKEY" = ""`).
  ///
  /// > **NOTE:** The values for `AzureWebJobsStorage` and `FUNCTIONS_EXTENSION_VERSION` will be filled by other input arguments and shouldn't be configured separately. `AzureWebJobsStorage` is filled based on `storage_account_name` and `storage_account_access_key`. `FUNCTIONS_EXTENSION_VERSION` is filled based on `version`.
  ///
  /// > **Note:**  When using an App Service Plan in the `Free` or `Shared` Tiers `use_32_bit_worker_process` must be set to `true`.
  final pulumi.Input<Map<String, String>>? appSettings;
  /// An `auth_settings` block as defined below.
  final pulumi.Input<FunctionAppSlotAuthSettings>? authSettings;
  /// A `connection_string` block as defined below.
  final pulumi.Input<List<FunctionAppSlotConnectionString>>? connectionStrings;
  /// The amount of memory in gigabyte-seconds that your application is allowed to consume per day. Setting this value only affects function apps under the consumption plan.
  final pulumi.Input<int>? dailyMemoryTimeQuota;
  /// Should the built-in logging of the Function App be enabled? Defaults to `true`.
  final pulumi.Input<bool>? enableBuiltinLogging;
  /// Is the Function App enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// The name of the Function App within which to create the Function App Slot. Changing this forces a new resource to be created.
  final pulumi.Input<String> functionAppName;
  /// Can the Function App only be accessed via HTTPS? Defaults to `false`.
  final pulumi.Input<bool>? httpsOnly;
  /// An `identity` block as defined below.
  final pulumi.Input<FunctionAppSlotIdentity>? identity;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Function App. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A string indicating the Operating System type for this function app. The only possible value is `linux`. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** This value will be `linux` for Linux Derivatives or an empty string for Windows (default).
  final pulumi.Input<String>? osType;
  /// The name of the resource group in which to create the Function App Slot. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `site_config` object as defined below.
  final pulumi.Input<FunctionAppSlotSiteConfig>? siteConfig;
  /// The access key which will be used to access the backend storage account for the Function App.
  final pulumi.Input<String> storageAccountAccessKey;
  /// The backend storage account name which will be used by the Function App (such as the dashboard, logs). Changing this forces a new resource to be created.
  final pulumi.Input<String> storageAccountName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The runtime version associated with the Function App. Defaults to `~1`.
  final pulumi.Input<String>? version;

  /// Creates a new [FunctionAppSlotArgs].
  /// [appServicePlanId] The ID of the App Service Plan within which to create this Function App Slot. Changing this forces a new resource to be created.
  /// [appSettings] A key-value pair of App Settings.
  /// [authSettings] An `auth_settings` block as defined below.
  /// [connectionStrings] A `connection_string` block as defined below.
  /// [dailyMemoryTimeQuota] The amount of memory in gigabyte-seconds that your application is allowed to consume per day. Setting this value only affects function apps under the consumption plan.
  /// [enableBuiltinLogging] Should the built-in logging of the Function App be enabled? Defaults to `true`.
  /// [enabled] Is the Function App enabled? Defaults to `true`.
  /// [functionAppName] The name of the Function App within which to create the Function App Slot. Changing this forces a new resource to be created.
  /// [httpsOnly] Can the Function App only be accessed via HTTPS? Defaults to `false`.
  /// [identity] An `identity` block as defined below.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Function App. Changing this forces a new resource to be created.
  /// [osType] A string indicating the Operating System type for this function app. The only possible value is `linux`. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the Function App Slot. Changing this forces a new resource to be created.
  /// [siteConfig] A `site_config` object as defined below.
  /// [storageAccountAccessKey] The access key which will be used to access the backend storage account for the Function App.
  /// [storageAccountName] The backend storage account name which will be used by the Function App (such as the dashboard, logs). Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [version] The runtime version associated with the Function App. Defaults to `~1`.
  FunctionAppSlotArgs({
    required this.appServicePlanId,
    this.appSettings,
    this.authSettings,
    this.connectionStrings,
    this.dailyMemoryTimeQuota,
    this.enableBuiltinLogging,
    this.enabled,
    required this.functionAppName,
    this.httpsOnly,
    this.identity,
    this.location,
    this.name,
    this.osType,
    required this.resourceGroupName,
    this.siteConfig,
    required this.storageAccountAccessKey,
    required this.storageAccountName,
    this.tags,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appServicePlanId': appServicePlanId,
      'appSettings': ?appSettings,
      'authSettings': ?pulumi.Input.mapOptionalInputValue<FunctionAppSlotAuthSettings, Map<String, dynamic>>(authSettings, (value) => value.toMap()),
      'connectionStrings': ?pulumi.Input.mapOptionalInputValue<List<FunctionAppSlotConnectionString>, List<Map<String, dynamic>>>(connectionStrings, (value) => pulumi.Input.encodeList<FunctionAppSlotConnectionString, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dailyMemoryTimeQuota': ?dailyMemoryTimeQuota,
      'enableBuiltinLogging': ?enableBuiltinLogging,
      'enabled': ?enabled,
      'functionAppName': functionAppName,
      'httpsOnly': ?httpsOnly,
      'identity': ?pulumi.Input.mapOptionalInputValue<FunctionAppSlotIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'osType': ?osType,
      'resourceGroupName': resourceGroupName,
      'siteConfig': ?pulumi.Input.mapOptionalInputValue<FunctionAppSlotSiteConfig, Map<String, dynamic>>(siteConfig, (value) => value.toMap()),
      'storageAccountAccessKey': storageAccountAccessKey,
      'storageAccountName': storageAccountName,
      'tags': ?tags,
      'version': ?version,
    };
  }

  factory FunctionAppSlotArgs.fromMap(Map<String, dynamic> map) {
    return FunctionAppSlotArgs(
      appServicePlanId: (map['appServicePlanId'] as String).input(),
      appSettings: map['appSettings'] == null ? null : ((map['appSettings']! as Map).cast<String, String>()).input(),
      authSettings: map['authSettings'] == null ? null : (FunctionAppSlotAuthSettings.fromMap((map['authSettings']! as Map).cast<String, dynamic>())).input(),
      connectionStrings: map['connectionStrings'] == null ? null : (pulumi.Input.decodeList<FunctionAppSlotConnectionString>(map['connectionStrings']!, (value) => FunctionAppSlotConnectionString.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dailyMemoryTimeQuota: map['dailyMemoryTimeQuota'] == null ? null : (map['dailyMemoryTimeQuota']! as int).input(),
      enableBuiltinLogging: map['enableBuiltinLogging'] == null ? null : (map['enableBuiltinLogging']! as bool).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      functionAppName: (map['functionAppName'] as String).input(),
      httpsOnly: map['httpsOnly'] == null ? null : (map['httpsOnly']! as bool).input(),
      identity: map['identity'] == null ? null : (FunctionAppSlotIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      osType: map['osType'] == null ? null : (map['osType']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      siteConfig: map['siteConfig'] == null ? null : (FunctionAppSlotSiteConfig.fromMap((map['siteConfig']! as Map).cast<String, dynamic>())).input(),
      storageAccountAccessKey: (map['storageAccountAccessKey'] as String).input(),
      storageAccountName: (map['storageAccountName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

