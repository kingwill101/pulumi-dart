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
    required pulumi.Output<String> appServicePlanId,
    pulumi.Output<Map<String, String>>? appSettings,
    pulumi.Output<FunctionAppSlotAuthSettings>? authSettings,
    pulumi.Output<List<FunctionAppSlotConnectionString>>? connectionStrings,
    pulumi.Output<int>? dailyMemoryTimeQuota,
    pulumi.Output<bool>? enableBuiltinLogging,
    pulumi.Output<bool>? enabled,
    required pulumi.Output<String> functionAppName,
    pulumi.Output<bool>? httpsOnly,
    pulumi.Output<FunctionAppSlotIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? osType,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<FunctionAppSlotSiteConfig>? siteConfig,
    required pulumi.Output<String> storageAccountAccessKey,
    required pulumi.Output<String> storageAccountName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? version,
  }) :
      appServicePlanId = pulumi.Input.asInput<String>(appServicePlanId),
      appSettings = pulumi.Input.asOptionalInput<Map<String, String>>(appSettings),
      authSettings = pulumi.Input.asOptionalInput<FunctionAppSlotAuthSettings>(authSettings),
      connectionStrings = pulumi.Input.asOptionalInput<List<FunctionAppSlotConnectionString>>(connectionStrings),
      dailyMemoryTimeQuota = pulumi.Input.asOptionalInput<int>(dailyMemoryTimeQuota),
      enableBuiltinLogging = pulumi.Input.asOptionalInput<bool>(enableBuiltinLogging),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      functionAppName = pulumi.Input.asInput<String>(functionAppName),
      httpsOnly = pulumi.Input.asOptionalInput<bool>(httpsOnly),
      identity = pulumi.Input.asOptionalInput<FunctionAppSlotIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      osType = pulumi.Input.asOptionalInput<String>(osType),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      siteConfig = pulumi.Input.asOptionalInput<FunctionAppSlotSiteConfig>(siteConfig),
      storageAccountAccessKey = pulumi.Input.asInput<String>(storageAccountAccessKey),
      storageAccountName = pulumi.Input.asInput<String>(storageAccountName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      version = pulumi.Input.asOptionalInput<String>(version);

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
      appServicePlanId: pulumi.Output.create<String>(map['appServicePlanId'] as String),
      appSettings: map['appSettings'] == null ? null : pulumi.Output.create<Map<String, String>>((map['appSettings'] as Map).cast<String, String>()),
      authSettings: map['authSettings'] == null ? null : pulumi.Output.create<FunctionAppSlotAuthSettings>(FunctionAppSlotAuthSettings.fromMap((map['authSettings'] as Map).cast<String, dynamic>())),
      connectionStrings: map['connectionStrings'] == null ? null : pulumi.Output.create<List<FunctionAppSlotConnectionString>>(pulumi.Input.decodeList<FunctionAppSlotConnectionString>(map['connectionStrings'], (value) => FunctionAppSlotConnectionString.fromMap((value as Map).cast<String, dynamic>()))),
      dailyMemoryTimeQuota: map['dailyMemoryTimeQuota'] == null ? null : pulumi.Output.create<int>(map['dailyMemoryTimeQuota'] as int),
      enableBuiltinLogging: map['enableBuiltinLogging'] == null ? null : pulumi.Output.create<bool>(map['enableBuiltinLogging'] as bool),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      functionAppName: pulumi.Output.create<String>(map['functionAppName'] as String),
      httpsOnly: map['httpsOnly'] == null ? null : pulumi.Output.create<bool>(map['httpsOnly'] as bool),
      identity: map['identity'] == null ? null : pulumi.Output.create<FunctionAppSlotIdentity>(FunctionAppSlotIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      osType: map['osType'] == null ? null : pulumi.Output.create<String>(map['osType'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      siteConfig: map['siteConfig'] == null ? null : pulumi.Output.create<FunctionAppSlotSiteConfig>(FunctionAppSlotSiteConfig.fromMap((map['siteConfig'] as Map).cast<String, dynamic>())),
      storageAccountAccessKey: pulumi.Output.create<String>(map['storageAccountAccessKey'] as String),
      storageAccountName: pulumi.Output.create<String>(map['storageAccountName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

