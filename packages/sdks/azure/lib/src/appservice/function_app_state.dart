// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_app_auth_settings.dart';
import 'function_app_connection_string.dart';
import 'function_app_identity.dart';
import 'function_app_site_config.dart';
import 'function_app_site_credential.dart';
import 'function_app_source_control.dart';

/// Input properties used for looking up and filtering FunctionApp resources.
class FunctionAppState {
  /// The ID of the App Service Plan within which to create this Function App.
  final pulumi.Input<String>? appServicePlanId;
  /// A map of key-value pairs for [App Settings](https://docs.microsoft.com/azure/azure-functions/functions-app-settings) and custom values.
  ///
  /// > **NOTE:** The values for `AzureWebJobsStorage` and `FUNCTIONS_EXTENSION_VERSION` will be filled by other input arguments and shouldn't be configured separately. `AzureWebJobsStorage` is filled based on `storage_account_name` and `storage_account_access_key`. `FUNCTIONS_EXTENSION_VERSION` is filled based on `version`.
  final pulumi.Input<Map<String, String>>? appSettings;
  /// A `auth_settings` block as defined below.
  final pulumi.Input<FunctionAppAuthSettings>? authSettings;
  /// The mode of the Function App's client certificates requirement for incoming requests. Possible values are `Required` and `Optional`.
  final pulumi.Input<String>? clientCertMode;
  /// An `connection_string` block as defined below.
  final pulumi.Input<List<FunctionAppConnectionString>>? connectionStrings;
  /// An identifier used by App Service to perform domain ownership verification via DNS TXT record.
  final pulumi.Input<String>? customDomainVerificationId;
  /// The amount of memory in gigabyte-seconds that your application is allowed to consume per day. Setting this value only affects function apps under the consumption plan.
  final pulumi.Input<int>? dailyMemoryTimeQuota;
  /// The default hostname associated with the Function App - such as `mysite.azurewebsites.net`
  final pulumi.Input<String>? defaultHostname;
  /// Should the built-in logging of this Function App be enabled? Defaults to `true`.
  final pulumi.Input<bool>? enableBuiltinLogging;
  /// Is the Function App enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// Can the Function App only be accessed via HTTPS? Defaults to `false`.
  final pulumi.Input<bool>? httpsOnly;
  /// An `identity` block as defined below.
  final pulumi.Input<FunctionAppIdentity>? identity;
  /// The User Assigned Identity Id used for looking up KeyVault secrets. The identity must be assigned to the application. See [Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity) for more information.
  final pulumi.Input<String>? keyVaultReferenceIdentityId;
  /// The Function App kind - such as `functionapp,linux,container`
  final pulumi.Input<String>? kind;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Function App. Changing this forces a new resource to be created. Limit the function name to 32 characters to avoid naming collisions. For more information about [Function App naming rule](https://docs.microsoft.com/azure/azure-resource-manager/management/resource-name-rules#microsoftweb).
  final pulumi.Input<String>? name;
  /// A string indicating the Operating System type for this function app. Possible values are `linux` and ``(empty string). Changing this forces a new resource to be created. Defaults to `""`.
  ///
  /// > **NOTE:** This value will be `linux` for Linux derivatives, or an empty string for Windows (default). When set to `linux` you must also set `azure.appservice.Plan` arguments as `kind = "Linux"` and `reserved = true`
  final pulumi.Input<String>? osType;
  /// A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12`
  final pulumi.Input<String>? outboundIpAddresses;
  /// A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12,52.143.43.17` - not all of which are necessarily in use. Superset of `outbound_ip_addresses`.
  final pulumi.Input<String>? possibleOutboundIpAddresses;
  /// The name of the resource group in which to create the Function App. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A `site_config` object as defined below.
  final pulumi.Input<FunctionAppSiteConfig>? siteConfig;
  /// A `site_credential` block as defined below, which contains the site-level credentials used to publish to this App Service.
  final pulumi.Input<List<FunctionAppSiteCredential>>? siteCredentials;
  /// A `source_control` block, as defined below.
  final pulumi.Input<FunctionAppSourceControl>? sourceControl;
  /// The access key which will be used to access the backend storage account for the Function App.
  ///
  /// > **Note:** When integrating a `CI/CD pipeline` and expecting to run from a deployed package in `Azure` you must seed your `app settings` as part of the application code for function app to be successfully deployed. `Important Default key pairs`: (`"WEBSITE_RUN_FROM_PACKAGE" = ""`, `"FUNCTIONS_WORKER_RUNTIME" = "node"` (or python, etc), `"WEBSITE_NODE_DEFAULT_VERSION" = "10.14.1"`, `"APPINSIGHTS_INSTRUMENTATIONKEY" = ""`).
  ///
  /// > **Note:**  When using an App Service Plan in the `Free` or `Shared` Tiers `use_32_bit_worker_process` must be set to `true`.
  final pulumi.Input<String>? storageAccountAccessKey;
  /// The backend storage account name which will be used by this Function App (such as the dashboard, logs). Changing this forces a new resource to be created.
  final pulumi.Input<String>? storageAccountName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The runtime version associated with the Function App. Defaults to `~1`.
  final pulumi.Input<String>? version;

  /// Creates a new [FunctionAppState].
  /// [appServicePlanId] The ID of the App Service Plan within which to create this Function App.
  /// [appSettings] A map of key-value pairs for [App Settings](https://docs.microsoft.com/azure/azure-functions/functions-app-settings) and custom values.
  /// [authSettings] A `auth_settings` block as defined below.
  /// [clientCertMode] The mode of the Function App's client certificates requirement for incoming requests. Possible values are `Required` and `Optional`.
  /// [connectionStrings] An `connection_string` block as defined below.
  /// [customDomainVerificationId] An identifier used by App Service to perform domain ownership verification via DNS TXT record.
  /// [dailyMemoryTimeQuota] The amount of memory in gigabyte-seconds that your application is allowed to consume per day. Setting this value only affects function apps under the consumption plan.
  /// [defaultHostname] The default hostname associated with the Function App - such as `mysite.azurewebsites.net`
  /// [enableBuiltinLogging] Should the built-in logging of this Function App be enabled? Defaults to `true`.
  /// [enabled] Is the Function App enabled? Defaults to `true`.
  /// [httpsOnly] Can the Function App only be accessed via HTTPS? Defaults to `false`.
  /// [identity] An `identity` block as defined below.
  /// [keyVaultReferenceIdentityId] The User Assigned Identity Id used for looking up KeyVault secrets. The identity must be assigned to the application. See [Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity) for more information.
  /// [kind] The Function App kind - such as `functionapp,linux,container`
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Function App. Changing this forces a new resource to be created. Limit the function name to 32 characters to avoid naming collisions. For more information about [Function App naming rule](https://docs.microsoft.com/azure/azure-resource-manager/management/resource-name-rules#microsoftweb).
  /// [osType] A string indicating the Operating System type for this function app. Possible values are `linux` and ``(empty string). Changing this forces a new resource to be created. Defaults to `""`.
  /// [outboundIpAddresses] A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12`
  /// [possibleOutboundIpAddresses] A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12,52.143.43.17` - not all of which are necessarily in use. Superset of `outbound_ip_addresses`.
  /// [resourceGroupName] The name of the resource group in which to create the Function App. Changing this forces a new resource to be created.
  /// [siteConfig] A `site_config` object as defined below.
  /// [siteCredentials] A `site_credential` block as defined below, which contains the site-level credentials used to publish to this App Service.
  /// [sourceControl] A `source_control` block, as defined below.
  /// [storageAccountAccessKey] The access key which will be used to access the backend storage account for the Function App.
  /// [storageAccountName] The backend storage account name which will be used by this Function App (such as the dashboard, logs). Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [version] The runtime version associated with the Function App. Defaults to `~1`.
  FunctionAppState({
    this.appServicePlanId,
    this.appSettings,
    this.authSettings,
    this.clientCertMode,
    this.connectionStrings,
    this.customDomainVerificationId,
    this.dailyMemoryTimeQuota,
    this.defaultHostname,
    this.enableBuiltinLogging,
    this.enabled,
    this.httpsOnly,
    this.identity,
    this.keyVaultReferenceIdentityId,
    this.kind,
    this.location,
    this.name,
    this.osType,
    this.outboundIpAddresses,
    this.possibleOutboundIpAddresses,
    this.resourceGroupName,
    this.siteConfig,
    this.siteCredentials,
    this.sourceControl,
    this.storageAccountAccessKey,
    this.storageAccountName,
    this.tags,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appServicePlanId': ?appServicePlanId,
      'appSettings': ?appSettings,
      'authSettings': ?pulumi.Input.mapOptionalInputValue<FunctionAppAuthSettings, Map<String, dynamic>>(authSettings, (value) => value.toMap()),
      'clientCertMode': ?clientCertMode,
      'connectionStrings': ?pulumi.Input.mapOptionalInputValue<List<FunctionAppConnectionString>, List<Map<String, dynamic>>>(connectionStrings, (value) => pulumi.Input.encodeList<FunctionAppConnectionString, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customDomainVerificationId': ?customDomainVerificationId,
      'dailyMemoryTimeQuota': ?dailyMemoryTimeQuota,
      'defaultHostname': ?defaultHostname,
      'enableBuiltinLogging': ?enableBuiltinLogging,
      'enabled': ?enabled,
      'httpsOnly': ?httpsOnly,
      'identity': ?pulumi.Input.mapOptionalInputValue<FunctionAppIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'keyVaultReferenceIdentityId': ?keyVaultReferenceIdentityId,
      'kind': ?kind,
      'location': ?location,
      'name': ?name,
      'osType': ?osType,
      'outboundIpAddresses': ?outboundIpAddresses,
      'possibleOutboundIpAddresses': ?possibleOutboundIpAddresses,
      'resourceGroupName': ?resourceGroupName,
      'siteConfig': ?pulumi.Input.mapOptionalInputValue<FunctionAppSiteConfig, Map<String, dynamic>>(siteConfig, (value) => value.toMap()),
      'siteCredentials': ?pulumi.Input.mapOptionalInputValue<List<FunctionAppSiteCredential>, List<Map<String, dynamic>>>(siteCredentials, (value) => pulumi.Input.encodeList<FunctionAppSiteCredential, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceControl': ?pulumi.Input.mapOptionalInputValue<FunctionAppSourceControl, Map<String, dynamic>>(sourceControl, (value) => value.toMap()),
      'storageAccountAccessKey': ?storageAccountAccessKey,
      'storageAccountName': ?storageAccountName,
      'tags': ?tags,
      'version': ?version,
    };
  }

  factory FunctionAppState.fromMap(Map<String, dynamic> map) {
    return FunctionAppState(
      appServicePlanId: map['appServicePlanId'] == null ? null : (map['appServicePlanId']! as String).input(),
      appSettings: map['appSettings'] == null ? null : ((map['appSettings']! as Map).cast<String, String>()).input(),
      authSettings: map['authSettings'] == null ? null : (FunctionAppAuthSettings.fromMap((map['authSettings']! as Map).cast<String, dynamic>())).input(),
      clientCertMode: map['clientCertMode'] == null ? null : (map['clientCertMode']! as String).input(),
      connectionStrings: map['connectionStrings'] == null ? null : (pulumi.Input.decodeList<FunctionAppConnectionString>(map['connectionStrings']!, (value) => FunctionAppConnectionString.fromMap((value as Map).cast<String, dynamic>()))).input(),
      customDomainVerificationId: map['customDomainVerificationId'] == null ? null : (map['customDomainVerificationId']! as String).input(),
      dailyMemoryTimeQuota: map['dailyMemoryTimeQuota'] == null ? null : (map['dailyMemoryTimeQuota']! as int).input(),
      defaultHostname: map['defaultHostname'] == null ? null : (map['defaultHostname']! as String).input(),
      enableBuiltinLogging: map['enableBuiltinLogging'] == null ? null : (map['enableBuiltinLogging']! as bool).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      httpsOnly: map['httpsOnly'] == null ? null : (map['httpsOnly']! as bool).input(),
      identity: map['identity'] == null ? null : (FunctionAppIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      keyVaultReferenceIdentityId: map['keyVaultReferenceIdentityId'] == null ? null : (map['keyVaultReferenceIdentityId']! as String).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      osType: map['osType'] == null ? null : (map['osType']! as String).input(),
      outboundIpAddresses: map['outboundIpAddresses'] == null ? null : (map['outboundIpAddresses']! as String).input(),
      possibleOutboundIpAddresses: map['possibleOutboundIpAddresses'] == null ? null : (map['possibleOutboundIpAddresses']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      siteConfig: map['siteConfig'] == null ? null : (FunctionAppSiteConfig.fromMap((map['siteConfig']! as Map).cast<String, dynamic>())).input(),
      siteCredentials: map['siteCredentials'] == null ? null : (pulumi.Input.decodeList<FunctionAppSiteCredential>(map['siteCredentials']!, (value) => FunctionAppSiteCredential.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sourceControl: map['sourceControl'] == null ? null : (FunctionAppSourceControl.fromMap((map['sourceControl']! as Map).cast<String, dynamic>())).input(),
      storageAccountAccessKey: map['storageAccountAccessKey'] == null ? null : (map['storageAccountAccessKey']! as String).input(),
      storageAccountName: map['storageAccountName'] == null ? null : (map['storageAccountName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

