// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'standard_connection_string.dart';
import 'standard_identity.dart';
import 'standard_site_config.dart';

/// {@template pulumi_logicapps_standard_standard_args_doc}
/// The set of arguments for Standard.
/// {@endtemplate}
/// {@macro pulumi_logicapps_standard_standard_args_doc}
class StandardArgs {
  /// The ID of the App Service Plan within which to create this Logic App.
  final pulumi.Input<String> appServicePlanId;
  /// A map of key-value pairs for [App Settings](https://docs.microsoft.com/azure/azure-functions/functions-app-settings) and custom values.
  ///
  /// > **Note:** There are a number of application settings that will be managed for you by this resource type and *shouldn't* be configured separately as part of the app_settings you specify.  `AzureWebJobsStorage` is filled based on `storage_account_name` and `storage_account_access_key`. `WEBSITE_CONTENTSHARE` is detailed below. `FUNCTIONS_EXTENSION_VERSION` is filled based on `version`. `APP_KIND` is set to workflowApp and `AzureFunctionsJobHost__extensionBundle__id` and `AzureFunctionsJobHost__extensionBundle__version` are set as detailed below.
  final pulumi.Input<Map<String, String>>? appSettings;
  /// If `use_extension_bundle` is set to `true` this controls the allowed range for bundle versions. Defaults to `[1.*, 2.0.0)`.
  final pulumi.Input<String>? bundleVersion;
  /// Should the Logic App send session affinity cookies, which route client requests in the same session to the same instance?
  final pulumi.Input<bool>? clientAffinityEnabled;
  /// The mode of the Logic App's client certificates requirement for incoming requests. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`.
  final pulumi.Input<String>? clientCertificateMode;
  /// A `connection_string` block as defined below.
  final pulumi.Input<List<StandardConnectionString>>? connectionStrings;
  /// Is the Logic App enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// Whether the FTP basic authentication publishing profile is enabled. Defaults to `true`.
  final pulumi.Input<bool>? ftpPublishBasicAuthenticationEnabled;
  /// Can the Logic App only be accessed via HTTPS? Defaults to `false`.
  final pulumi.Input<bool>? httpsOnly;
  /// An `identity` block as defined below.
  final pulumi.Input<StandardIdentity>? identity;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Logic App. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Whether Public Network Access should be enabled or not. Possible values are `Enabled` and `Disabled`. Defaults to `Enabled`.
  ///
  /// > **Note:** Setting this property will also set it in the Site Config.
  final pulumi.Input<String>? publicNetworkAccess;
  /// The name of the resource group in which to create the Logic App. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Whether the default SCM basic authentication publishing profile is enabled. Defaults to `true`.
  final pulumi.Input<bool>? scmPublishBasicAuthenticationEnabled;
  /// A `site_config` object as defined below.
  final pulumi.Input<StandardSiteConfig>? siteConfig;
  /// The access key which will be used to access the backend storage account for the Logic App.
  final pulumi.Input<String> storageAccountAccessKey;
  /// The backend storage account name which will be used by this Logic App (e.g. for Stateful workflows data). Changing this forces a new resource to be created.
  final pulumi.Input<String> storageAccountName;
  /// The name of the share used by the logic app, if you want to use a custom name. This corresponds to the WEBSITE_CONTENTSHARE appsetting, which this resource will create for you. If you don't specify a name, then this resource will generate a dynamic name. This setting is useful if you want to provision a storage account and create a share using `azure.storage.Share`.
  ///
  /// > **Note:** When integrating a `CI/CD pipeline` and expecting to run from a deployed package in `Azure` you must seed your `app settings` as part of terraform code for Logic App to be successfully deployed. `Important Default key pairs`: (`"WEBSITE_RUN_FROM_PACKAGE" = ""`, `"FUNCTIONS_WORKER_RUNTIME" = "node"` (or Python, etc.), `"WEBSITE_NODE_DEFAULT_VERSION" = "10.14.1"`, `"APPINSIGHTS_INSTRUMENTATIONKEY" = ""`).
  ///
  /// > **Note:** When using an App Service Plan in the `Free` or `Shared` Tiers `use_32_bit_worker_process` must be set to `true`.
  final pulumi.Input<String>? storageAccountShareName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Should the logic app use the bundled extension package? If true, then application settings for `AzureFunctionsJobHost__extensionBundle__id` and `AzureFunctionsJobHost__extensionBundle__version` will be created. Defaults to `true`.
  final pulumi.Input<bool>? useExtensionBundle;
  /// The runtime version associated with the Logic App. Defaults to `~4`.
  final pulumi.Input<String>? version;
  /// The subnet ID which will be used by this resource for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration).
  ///
  /// > **Note:** The AzureRM Terraform provider provides regional virtual network integration via the standalone resource app_service_virtual_network_swift_connection and in-line within this resource using the `virtual_network_subnet_id` property. You cannot use both methods simultaneously.
  ///
  /// > **Note:** Assigning the `virtual_network_subnet_id` property requires [RBAC permissions on the subnet](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#permissions)
  final pulumi.Input<String>? virtualNetworkSubnetId;
  /// Specifies whether allow routing traffic between the Logic App and Storage Account content share through a virtual network. Defaults to `false`.
  final pulumi.Input<bool>? vnetContentShareEnabled;

  /// Creates a new [StandardArgs].
  /// [appServicePlanId] The ID of the App Service Plan within which to create this Logic App.
  /// [appSettings] A map of key-value pairs for [App Settings](https://docs.microsoft.com/azure/azure-functions/functions-app-settings) and custom values.
  /// [bundleVersion] If `use_extension_bundle` is set to `true` this controls the allowed range for bundle versions. Defaults to `[1.*, 2.0.0)`.
  /// [clientAffinityEnabled] Should the Logic App send session affinity cookies, which route client requests in the same session to the same instance?
  /// [clientCertificateMode] The mode of the Logic App's client certificates requirement for incoming requests. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`.
  /// [connectionStrings] A `connection_string` block as defined below.
  /// [enabled] Is the Logic App enabled? Defaults to `true`.
  /// [ftpPublishBasicAuthenticationEnabled] Whether the FTP basic authentication publishing profile is enabled. Defaults to `true`.
  /// [httpsOnly] Can the Logic App only be accessed via HTTPS? Defaults to `false`.
  /// [identity] An `identity` block as defined below.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Logic App. Changing this forces a new resource to be created.
  /// [publicNetworkAccess] Whether Public Network Access should be enabled or not. Possible values are `Enabled` and `Disabled`. Defaults to `Enabled`.
  /// [resourceGroupName] The name of the resource group in which to create the Logic App. Changing this forces a new resource to be created.
  /// [scmPublishBasicAuthenticationEnabled] Whether the default SCM basic authentication publishing profile is enabled. Defaults to `true`.
  /// [siteConfig] A `site_config` object as defined below.
  /// [storageAccountAccessKey] The access key which will be used to access the backend storage account for the Logic App.
  /// [storageAccountName] The backend storage account name which will be used by this Logic App (e.g. for Stateful workflows data). Changing this forces a new resource to be created.
  /// [storageAccountShareName] The name of the share used by the logic app, if you want to use a custom name. This corresponds to the WEBSITE_CONTENTSHARE appsetting, which this resource will create for you. If you don't specify a name, then this resource will generate a dynamic name. This setting is useful if you want to provision a storage account and create a share using `azure.storage.Share`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [useExtensionBundle] Should the logic app use the bundled extension package? If true, then application settings for `AzureFunctionsJobHost__extensionBundle__id` and `AzureFunctionsJobHost__extensionBundle__version` will be created. Defaults to `true`.
  /// [version] The runtime version associated with the Logic App. Defaults to `~4`.
  /// [virtualNetworkSubnetId] The subnet ID which will be used by this resource for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration).
  /// [vnetContentShareEnabled] Specifies whether allow routing traffic between the Logic App and Storage Account content share through a virtual network. Defaults to `false`.
  StandardArgs({
    required this.appServicePlanId,
    this.appSettings,
    this.bundleVersion,
    this.clientAffinityEnabled,
    this.clientCertificateMode,
    this.connectionStrings,
    this.enabled,
    this.ftpPublishBasicAuthenticationEnabled,
    this.httpsOnly,
    this.identity,
    this.location,
    this.name,
    this.publicNetworkAccess,
    required this.resourceGroupName,
    this.scmPublishBasicAuthenticationEnabled,
    this.siteConfig,
    required this.storageAccountAccessKey,
    required this.storageAccountName,
    this.storageAccountShareName,
    this.tags,
    this.useExtensionBundle,
    this.version,
    this.virtualNetworkSubnetId,
    this.vnetContentShareEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appServicePlanId': appServicePlanId,
      'appSettings': ?appSettings,
      'bundleVersion': ?bundleVersion,
      'clientAffinityEnabled': ?clientAffinityEnabled,
      'clientCertificateMode': ?clientCertificateMode,
      'connectionStrings': ?pulumi.Input.mapOptionalInputValue<List<StandardConnectionString>, List<Map<String, dynamic>>>(connectionStrings, (value) => pulumi.Input.encodeList<StandardConnectionString, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': ?enabled,
      'ftpPublishBasicAuthenticationEnabled': ?ftpPublishBasicAuthenticationEnabled,
      'httpsOnly': ?httpsOnly,
      'identity': ?pulumi.Input.mapOptionalInputValue<StandardIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'scmPublishBasicAuthenticationEnabled': ?scmPublishBasicAuthenticationEnabled,
      'siteConfig': ?pulumi.Input.mapOptionalInputValue<StandardSiteConfig, Map<String, dynamic>>(siteConfig, (value) => value.toMap()),
      'storageAccountAccessKey': storageAccountAccessKey,
      'storageAccountName': storageAccountName,
      'storageAccountShareName': ?storageAccountShareName,
      'tags': ?tags,
      'useExtensionBundle': ?useExtensionBundle,
      'version': ?version,
      'virtualNetworkSubnetId': ?virtualNetworkSubnetId,
      'vnetContentShareEnabled': ?vnetContentShareEnabled,
    };
  }

  factory StandardArgs.fromMap(Map<String, dynamic> map) {
    return StandardArgs(
      appServicePlanId: (map['appServicePlanId'] as String).input(),
      appSettings: map['appSettings'] == null ? null : ((map['appSettings'] as Map).cast<String, String>()).input(),
      bundleVersion: map['bundleVersion'] == null ? null : (map['bundleVersion'] as String).input(),
      clientAffinityEnabled: map['clientAffinityEnabled'] == null ? null : (map['clientAffinityEnabled'] as bool).input(),
      clientCertificateMode: map['clientCertificateMode'] == null ? null : (map['clientCertificateMode'] as String).input(),
      connectionStrings: map['connectionStrings'] == null ? null : (pulumi.Input.decodeList<StandardConnectionString>(map['connectionStrings'], (value) => StandardConnectionString.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      ftpPublishBasicAuthenticationEnabled: map['ftpPublishBasicAuthenticationEnabled'] == null ? null : (map['ftpPublishBasicAuthenticationEnabled'] as bool).input(),
      httpsOnly: map['httpsOnly'] == null ? null : (map['httpsOnly'] as bool).input(),
      identity: map['identity'] == null ? null : (StandardIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : (map['publicNetworkAccess'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      scmPublishBasicAuthenticationEnabled: map['scmPublishBasicAuthenticationEnabled'] == null ? null : (map['scmPublishBasicAuthenticationEnabled'] as bool).input(),
      siteConfig: map['siteConfig'] == null ? null : (StandardSiteConfig.fromMap((map['siteConfig'] as Map).cast<String, dynamic>())).input(),
      storageAccountAccessKey: (map['storageAccountAccessKey'] as String).input(),
      storageAccountName: (map['storageAccountName'] as String).input(),
      storageAccountShareName: map['storageAccountShareName'] == null ? null : (map['storageAccountShareName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      useExtensionBundle: map['useExtensionBundle'] == null ? null : (map['useExtensionBundle'] as bool).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
      virtualNetworkSubnetId: map['virtualNetworkSubnetId'] == null ? null : (map['virtualNetworkSubnetId'] as String).input(),
      vnetContentShareEnabled: map['vnetContentShareEnabled'] == null ? null : (map['vnetContentShareEnabled'] as bool).input(),
    );
  }
}

