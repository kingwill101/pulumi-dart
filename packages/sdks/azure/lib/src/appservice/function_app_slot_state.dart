// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_app_slot_auth_settings.dart';
import 'function_app_slot_connection_string.dart';
import 'function_app_slot_identity.dart';
import 'function_app_slot_site_config.dart';
import 'function_app_slot_site_credential.dart';

/// Input properties used for looking up and filtering FunctionAppSlot resources.
class FunctionAppSlotState {
  /// The ID of the App Service Plan within which to create this Function App Slot. Changing this forces a new resource to be created.
  final pulumi.Input<String>? appServicePlanId;
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
  /// The default hostname associated with the Function App - such as `mysite.azurewebsites.net`
  final pulumi.Input<String>? defaultHostname;
  /// Should the built-in logging of the Function App be enabled? Defaults to `true`.
  final pulumi.Input<bool>? enableBuiltinLogging;
  /// Is the Function App enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// The name of the Function App within which to create the Function App Slot. Changing this forces a new resource to be created.
  final pulumi.Input<String>? functionAppName;
  /// Can the Function App only be accessed via HTTPS? Defaults to `false`.
  final pulumi.Input<bool>? httpsOnly;
  /// An `identity` block as defined below.
  final pulumi.Input<FunctionAppSlotIdentity>? identity;
  /// The Function App kind - such as `functionapp,linux,container`
  final pulumi.Input<String>? kind;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Function App. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A string indicating the Operating System type for this function app. The only possible value is `linux`. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** This value will be `linux` for Linux Derivatives or an empty string for Windows (default).
  final pulumi.Input<String>? osType;
  /// A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12`
  final pulumi.Input<String>? outboundIpAddresses;
  /// A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12,52.143.43.17` - not all of which are necessarily in use. Superset of `outbound_ip_addresses`.
  final pulumi.Input<String>? possibleOutboundIpAddresses;
  /// The name of the resource group in which to create the Function App Slot. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A `site_config` object as defined below.
  final pulumi.Input<FunctionAppSlotSiteConfig>? siteConfig;
  /// A `site_credential` block as defined below, which contains the site-level credentials used to publish to this Function App Slot.
  final pulumi.Input<List<FunctionAppSlotSiteCredential>>? siteCredentials;
  /// The access key which will be used to access the backend storage account for the Function App.
  final pulumi.Input<String>? storageAccountAccessKey;
  /// The backend storage account name which will be used by the Function App (such as the dashboard, logs). Changing this forces a new resource to be created.
  final pulumi.Input<String>? storageAccountName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The runtime version associated with the Function App. Defaults to `~1`.
  final pulumi.Input<String>? version;

  /// Creates a new [FunctionAppSlotState].
  /// [appServicePlanId] The ID of the App Service Plan within which to create this Function App Slot. Changing this forces a new resource to be created.
  /// [appSettings] A key-value pair of App Settings.
  /// [authSettings] An `auth_settings` block as defined below.
  /// [connectionStrings] A `connection_string` block as defined below.
  /// [dailyMemoryTimeQuota] The amount of memory in gigabyte-seconds that your application is allowed to consume per day. Setting this value only affects function apps under the consumption plan.
  /// [defaultHostname] The default hostname associated with the Function App - such as `mysite.azurewebsites.net`
  /// [enableBuiltinLogging] Should the built-in logging of the Function App be enabled? Defaults to `true`.
  /// [enabled] Is the Function App enabled? Defaults to `true`.
  /// [functionAppName] The name of the Function App within which to create the Function App Slot. Changing this forces a new resource to be created.
  /// [httpsOnly] Can the Function App only be accessed via HTTPS? Defaults to `false`.
  /// [identity] An `identity` block as defined below.
  /// [kind] The Function App kind - such as `functionapp,linux,container`
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Function App. Changing this forces a new resource to be created.
  /// [osType] A string indicating the Operating System type for this function app. The only possible value is `linux`. Changing this forces a new resource to be created.
  /// [outboundIpAddresses] A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12`
  /// [possibleOutboundIpAddresses] A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12,52.143.43.17` - not all of which are necessarily in use. Superset of `outbound_ip_addresses`.
  /// [resourceGroupName] The name of the resource group in which to create the Function App Slot. Changing this forces a new resource to be created.
  /// [siteConfig] A `site_config` object as defined below.
  /// [siteCredentials] A `site_credential` block as defined below, which contains the site-level credentials used to publish to this Function App Slot.
  /// [storageAccountAccessKey] The access key which will be used to access the backend storage account for the Function App.
  /// [storageAccountName] The backend storage account name which will be used by the Function App (such as the dashboard, logs). Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [version] The runtime version associated with the Function App. Defaults to `~1`.
  FunctionAppSlotState({
    pulumi.Output<String>? appServicePlanId,
    pulumi.Output<Map<String, String>>? appSettings,
    pulumi.Output<FunctionAppSlotAuthSettings>? authSettings,
    pulumi.Output<List<FunctionAppSlotConnectionString>>? connectionStrings,
    pulumi.Output<int>? dailyMemoryTimeQuota,
    pulumi.Output<String>? defaultHostname,
    pulumi.Output<bool>? enableBuiltinLogging,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? functionAppName,
    pulumi.Output<bool>? httpsOnly,
    pulumi.Output<FunctionAppSlotIdentity>? identity,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? osType,
    pulumi.Output<String>? outboundIpAddresses,
    pulumi.Output<String>? possibleOutboundIpAddresses,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<FunctionAppSlotSiteConfig>? siteConfig,
    pulumi.Output<List<FunctionAppSlotSiteCredential>>? siteCredentials,
    pulumi.Output<String>? storageAccountAccessKey,
    pulumi.Output<String>? storageAccountName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? version,
  }) :
      appServicePlanId = pulumi.Input.asOptionalInput<String>(appServicePlanId),
      appSettings = pulumi.Input.asOptionalInput<Map<String, String>>(appSettings),
      authSettings = pulumi.Input.asOptionalInput<FunctionAppSlotAuthSettings>(authSettings),
      connectionStrings = pulumi.Input.asOptionalInput<List<FunctionAppSlotConnectionString>>(connectionStrings),
      dailyMemoryTimeQuota = pulumi.Input.asOptionalInput<int>(dailyMemoryTimeQuota),
      defaultHostname = pulumi.Input.asOptionalInput<String>(defaultHostname),
      enableBuiltinLogging = pulumi.Input.asOptionalInput<bool>(enableBuiltinLogging),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      functionAppName = pulumi.Input.asOptionalInput<String>(functionAppName),
      httpsOnly = pulumi.Input.asOptionalInput<bool>(httpsOnly),
      identity = pulumi.Input.asOptionalInput<FunctionAppSlotIdentity>(identity),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      osType = pulumi.Input.asOptionalInput<String>(osType),
      outboundIpAddresses = pulumi.Input.asOptionalInput<String>(outboundIpAddresses),
      possibleOutboundIpAddresses = pulumi.Input.asOptionalInput<String>(possibleOutboundIpAddresses),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      siteConfig = pulumi.Input.asOptionalInput<FunctionAppSlotSiteConfig>(siteConfig),
      siteCredentials = pulumi.Input.asOptionalInput<List<FunctionAppSlotSiteCredential>>(siteCredentials),
      storageAccountAccessKey = pulumi.Input.asOptionalInput<String>(storageAccountAccessKey),
      storageAccountName = pulumi.Input.asOptionalInput<String>(storageAccountName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appServicePlanId': ?appServicePlanId,
      'appSettings': ?appSettings,
      'authSettings': ?pulumi.Input.mapOptionalInputValue<FunctionAppSlotAuthSettings, Map<String, dynamic>>(authSettings, (value) => value.toMap()),
      'connectionStrings': ?pulumi.Input.mapOptionalInputValue<List<FunctionAppSlotConnectionString>, List<Map<String, dynamic>>>(connectionStrings, (value) => pulumi.Input.encodeList<FunctionAppSlotConnectionString, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dailyMemoryTimeQuota': ?dailyMemoryTimeQuota,
      'defaultHostname': ?defaultHostname,
      'enableBuiltinLogging': ?enableBuiltinLogging,
      'enabled': ?enabled,
      'functionAppName': ?functionAppName,
      'httpsOnly': ?httpsOnly,
      'identity': ?pulumi.Input.mapOptionalInputValue<FunctionAppSlotIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'kind': ?kind,
      'location': ?location,
      'name': ?name,
      'osType': ?osType,
      'outboundIpAddresses': ?outboundIpAddresses,
      'possibleOutboundIpAddresses': ?possibleOutboundIpAddresses,
      'resourceGroupName': ?resourceGroupName,
      'siteConfig': ?pulumi.Input.mapOptionalInputValue<FunctionAppSlotSiteConfig, Map<String, dynamic>>(siteConfig, (value) => value.toMap()),
      'siteCredentials': ?pulumi.Input.mapOptionalInputValue<List<FunctionAppSlotSiteCredential>, List<Map<String, dynamic>>>(siteCredentials, (value) => pulumi.Input.encodeList<FunctionAppSlotSiteCredential, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageAccountAccessKey': ?storageAccountAccessKey,
      'storageAccountName': ?storageAccountName,
      'tags': ?tags,
      'version': ?version,
    };
  }

  factory FunctionAppSlotState.fromMap(Map<String, dynamic> map) {
    return FunctionAppSlotState(
      appServicePlanId: map['appServicePlanId'] == null ? null : pulumi.Output.create<String>(map['appServicePlanId'] as String),
      appSettings: map['appSettings'] == null ? null : pulumi.Output.create<Map<String, String>>((map['appSettings'] as Map).cast<String, String>()),
      authSettings: map['authSettings'] == null ? null : pulumi.Output.create<FunctionAppSlotAuthSettings>(FunctionAppSlotAuthSettings.fromMap((map['authSettings'] as Map).cast<String, dynamic>())),
      connectionStrings: map['connectionStrings'] == null ? null : pulumi.Output.create<List<FunctionAppSlotConnectionString>>(pulumi.Input.decodeList<FunctionAppSlotConnectionString>(map['connectionStrings'], (value) => FunctionAppSlotConnectionString.fromMap((value as Map).cast<String, dynamic>()))),
      dailyMemoryTimeQuota: map['dailyMemoryTimeQuota'] == null ? null : pulumi.Output.create<int>(map['dailyMemoryTimeQuota'] as int),
      defaultHostname: map['defaultHostname'] == null ? null : pulumi.Output.create<String>(map['defaultHostname'] as String),
      enableBuiltinLogging: map['enableBuiltinLogging'] == null ? null : pulumi.Output.create<bool>(map['enableBuiltinLogging'] as bool),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      functionAppName: map['functionAppName'] == null ? null : pulumi.Output.create<String>(map['functionAppName'] as String),
      httpsOnly: map['httpsOnly'] == null ? null : pulumi.Output.create<bool>(map['httpsOnly'] as bool),
      identity: map['identity'] == null ? null : pulumi.Output.create<FunctionAppSlotIdentity>(FunctionAppSlotIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      osType: map['osType'] == null ? null : pulumi.Output.create<String>(map['osType'] as String),
      outboundIpAddresses: map['outboundIpAddresses'] == null ? null : pulumi.Output.create<String>(map['outboundIpAddresses'] as String),
      possibleOutboundIpAddresses: map['possibleOutboundIpAddresses'] == null ? null : pulumi.Output.create<String>(map['possibleOutboundIpAddresses'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      siteConfig: map['siteConfig'] == null ? null : pulumi.Output.create<FunctionAppSlotSiteConfig>(FunctionAppSlotSiteConfig.fromMap((map['siteConfig'] as Map).cast<String, dynamic>())),
      siteCredentials: map['siteCredentials'] == null ? null : pulumi.Output.create<List<FunctionAppSlotSiteCredential>>(pulumi.Input.decodeList<FunctionAppSlotSiteCredential>(map['siteCredentials'], (value) => FunctionAppSlotSiteCredential.fromMap((value as Map).cast<String, dynamic>()))),
      storageAccountAccessKey: map['storageAccountAccessKey'] == null ? null : pulumi.Output.create<String>(map['storageAccountAccessKey'] as String),
      storageAccountName: map['storageAccountName'] == null ? null : pulumi.Output.create<String>(map['storageAccountName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

