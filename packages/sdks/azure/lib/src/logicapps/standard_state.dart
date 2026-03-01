// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'standard_connection_string.dart';
import 'standard_identity.dart';
import 'standard_site_config.dart';
import 'standard_site_credential.dart';

/// Input properties used for looking up and filtering Standard resources.
class StandardState {
  /// The ID of the App Service Plan within which to create this Logic App.
  final pulumi.Input<String>? appServicePlanId;
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
  /// An identifier used by App Service to perform domain ownership verification via DNS TXT record.
  final pulumi.Input<String>? customDomainVerificationId;
  /// The default hostname associated with the Logic App - such as `mysite.azurewebsites.net`.
  final pulumi.Input<String>? defaultHostname;
  /// Is the Logic App enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// Whether the FTP basic authentication publishing profile is enabled. Defaults to `true`.
  final pulumi.Input<bool>? ftpPublishBasicAuthenticationEnabled;
  /// Can the Logic App only be accessed via HTTPS? Defaults to `false`.
  final pulumi.Input<bool>? httpsOnly;
  /// An `identity` block as defined below.
  final pulumi.Input<StandardIdentity>? identity;
  /// The Logic App kind.
  final pulumi.Input<String>? kind;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Logic App. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12`.
  final pulumi.Input<String>? outboundIpAddresses;
  /// A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12,52.143.43.17` - not all of which are necessarily in use. Superset of `outbound_ip_addresses`.
  final pulumi.Input<String>? possibleOutboundIpAddresses;
  /// Whether Public Network Access should be enabled or not. Possible values are `Enabled` and `Disabled`. Defaults to `Enabled`.
  ///
  /// > **Note:** Setting this property will also set it in the Site Config.
  final pulumi.Input<String>? publicNetworkAccess;
  /// The name of the resource group in which to create the Logic App. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Whether the default SCM basic authentication publishing profile is enabled. Defaults to `true`.
  final pulumi.Input<bool>? scmPublishBasicAuthenticationEnabled;
  /// A `site_config` object as defined below.
  final pulumi.Input<StandardSiteConfig>? siteConfig;
  /// A `site_credential` block as defined below, which contains the site-level credentials used to publish to this App Service.
  final pulumi.Input<List<StandardSiteCredential>>? siteCredentials;
  /// The access key which will be used to access the backend storage account for the Logic App.
  final pulumi.Input<String>? storageAccountAccessKey;
  /// The backend storage account name which will be used by this Logic App (e.g. for Stateful workflows data). Changing this forces a new resource to be created.
  final pulumi.Input<String>? storageAccountName;
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

  /// Creates a new [StandardState].
  /// [appServicePlanId] The ID of the App Service Plan within which to create this Logic App.
  /// [appSettings] A map of key-value pairs for [App Settings](https://docs.microsoft.com/azure/azure-functions/functions-app-settings) and custom values.
  /// [bundleVersion] If `use_extension_bundle` is set to `true` this controls the allowed range for bundle versions. Defaults to `[1.*, 2.0.0)`.
  /// [clientAffinityEnabled] Should the Logic App send session affinity cookies, which route client requests in the same session to the same instance?
  /// [clientCertificateMode] The mode of the Logic App's client certificates requirement for incoming requests. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`.
  /// [connectionStrings] A `connection_string` block as defined below.
  /// [customDomainVerificationId] An identifier used by App Service to perform domain ownership verification via DNS TXT record.
  /// [defaultHostname] The default hostname associated with the Logic App - such as `mysite.azurewebsites.net`.
  /// [enabled] Is the Logic App enabled? Defaults to `true`.
  /// [ftpPublishBasicAuthenticationEnabled] Whether the FTP basic authentication publishing profile is enabled. Defaults to `true`.
  /// [httpsOnly] Can the Logic App only be accessed via HTTPS? Defaults to `false`.
  /// [identity] An `identity` block as defined below.
  /// [kind] The Logic App kind.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Logic App. Changing this forces a new resource to be created.
  /// [outboundIpAddresses] A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12`.
  /// [possibleOutboundIpAddresses] A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12,52.143.43.17` - not all of which are necessarily in use. Superset of `outbound_ip_addresses`.
  /// [publicNetworkAccess] Whether Public Network Access should be enabled or not. Possible values are `Enabled` and `Disabled`. Defaults to `Enabled`.
  /// [resourceGroupName] The name of the resource group in which to create the Logic App. Changing this forces a new resource to be created.
  /// [scmPublishBasicAuthenticationEnabled] Whether the default SCM basic authentication publishing profile is enabled. Defaults to `true`.
  /// [siteConfig] A `site_config` object as defined below.
  /// [siteCredentials] A `site_credential` block as defined below, which contains the site-level credentials used to publish to this App Service.
  /// [storageAccountAccessKey] The access key which will be used to access the backend storage account for the Logic App.
  /// [storageAccountName] The backend storage account name which will be used by this Logic App (e.g. for Stateful workflows data). Changing this forces a new resource to be created.
  /// [storageAccountShareName] The name of the share used by the logic app, if you want to use a custom name. This corresponds to the WEBSITE_CONTENTSHARE appsetting, which this resource will create for you. If you don't specify a name, then this resource will generate a dynamic name. This setting is useful if you want to provision a storage account and create a share using `azure.storage.Share`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [useExtensionBundle] Should the logic app use the bundled extension package? If true, then application settings for `AzureFunctionsJobHost__extensionBundle__id` and `AzureFunctionsJobHost__extensionBundle__version` will be created. Defaults to `true`.
  /// [version] The runtime version associated with the Logic App. Defaults to `~4`.
  /// [virtualNetworkSubnetId] The subnet ID which will be used by this resource for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration).
  /// [vnetContentShareEnabled] Specifies whether allow routing traffic between the Logic App and Storage Account content share through a virtual network. Defaults to `false`.
  StandardState({
    pulumi.Output<String>? appServicePlanId,
    pulumi.Output<Map<String, String>>? appSettings,
    pulumi.Output<String>? bundleVersion,
    pulumi.Output<bool>? clientAffinityEnabled,
    pulumi.Output<String>? clientCertificateMode,
    pulumi.Output<List<StandardConnectionString>>? connectionStrings,
    pulumi.Output<String>? customDomainVerificationId,
    pulumi.Output<String>? defaultHostname,
    pulumi.Output<bool>? enabled,
    pulumi.Output<bool>? ftpPublishBasicAuthenticationEnabled,
    pulumi.Output<bool>? httpsOnly,
    pulumi.Output<StandardIdentity>? identity,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? outboundIpAddresses,
    pulumi.Output<String>? possibleOutboundIpAddresses,
    pulumi.Output<String>? publicNetworkAccess,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<bool>? scmPublishBasicAuthenticationEnabled,
    pulumi.Output<StandardSiteConfig>? siteConfig,
    pulumi.Output<List<StandardSiteCredential>>? siteCredentials,
    pulumi.Output<String>? storageAccountAccessKey,
    pulumi.Output<String>? storageAccountName,
    pulumi.Output<String>? storageAccountShareName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<bool>? useExtensionBundle,
    pulumi.Output<String>? version,
    pulumi.Output<String>? virtualNetworkSubnetId,
    pulumi.Output<bool>? vnetContentShareEnabled,
  }) :
      appServicePlanId = pulumi.Input.asOptionalInput<String>(appServicePlanId),
      appSettings = pulumi.Input.asOptionalInput<Map<String, String>>(appSettings),
      bundleVersion = pulumi.Input.asOptionalInput<String>(bundleVersion),
      clientAffinityEnabled = pulumi.Input.asOptionalInput<bool>(clientAffinityEnabled),
      clientCertificateMode = pulumi.Input.asOptionalInput<String>(clientCertificateMode),
      connectionStrings = pulumi.Input.asOptionalInput<List<StandardConnectionString>>(connectionStrings),
      customDomainVerificationId = pulumi.Input.asOptionalInput<String>(customDomainVerificationId),
      defaultHostname = pulumi.Input.asOptionalInput<String>(defaultHostname),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      ftpPublishBasicAuthenticationEnabled = pulumi.Input.asOptionalInput<bool>(ftpPublishBasicAuthenticationEnabled),
      httpsOnly = pulumi.Input.asOptionalInput<bool>(httpsOnly),
      identity = pulumi.Input.asOptionalInput<StandardIdentity>(identity),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      outboundIpAddresses = pulumi.Input.asOptionalInput<String>(outboundIpAddresses),
      possibleOutboundIpAddresses = pulumi.Input.asOptionalInput<String>(possibleOutboundIpAddresses),
      publicNetworkAccess = pulumi.Input.asOptionalInput<String>(publicNetworkAccess),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      scmPublishBasicAuthenticationEnabled = pulumi.Input.asOptionalInput<bool>(scmPublishBasicAuthenticationEnabled),
      siteConfig = pulumi.Input.asOptionalInput<StandardSiteConfig>(siteConfig),
      siteCredentials = pulumi.Input.asOptionalInput<List<StandardSiteCredential>>(siteCredentials),
      storageAccountAccessKey = pulumi.Input.asOptionalInput<String>(storageAccountAccessKey),
      storageAccountName = pulumi.Input.asOptionalInput<String>(storageAccountName),
      storageAccountShareName = pulumi.Input.asOptionalInput<String>(storageAccountShareName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      useExtensionBundle = pulumi.Input.asOptionalInput<bool>(useExtensionBundle),
      version = pulumi.Input.asOptionalInput<String>(version),
      virtualNetworkSubnetId = pulumi.Input.asOptionalInput<String>(virtualNetworkSubnetId),
      vnetContentShareEnabled = pulumi.Input.asOptionalInput<bool>(vnetContentShareEnabled);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appServicePlanId': ?appServicePlanId,
      'appSettings': ?appSettings,
      'bundleVersion': ?bundleVersion,
      'clientAffinityEnabled': ?clientAffinityEnabled,
      'clientCertificateMode': ?clientCertificateMode,
      'connectionStrings': ?pulumi.Input.mapOptionalInputValue<List<StandardConnectionString>, List<Map<String, dynamic>>>(connectionStrings, (value) => pulumi.Input.encodeList<StandardConnectionString, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customDomainVerificationId': ?customDomainVerificationId,
      'defaultHostname': ?defaultHostname,
      'enabled': ?enabled,
      'ftpPublishBasicAuthenticationEnabled': ?ftpPublishBasicAuthenticationEnabled,
      'httpsOnly': ?httpsOnly,
      'identity': ?pulumi.Input.mapOptionalInputValue<StandardIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'kind': ?kind,
      'location': ?location,
      'name': ?name,
      'outboundIpAddresses': ?outboundIpAddresses,
      'possibleOutboundIpAddresses': ?possibleOutboundIpAddresses,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': ?resourceGroupName,
      'scmPublishBasicAuthenticationEnabled': ?scmPublishBasicAuthenticationEnabled,
      'siteConfig': ?pulumi.Input.mapOptionalInputValue<StandardSiteConfig, Map<String, dynamic>>(siteConfig, (value) => value.toMap()),
      'siteCredentials': ?pulumi.Input.mapOptionalInputValue<List<StandardSiteCredential>, List<Map<String, dynamic>>>(siteCredentials, (value) => pulumi.Input.encodeList<StandardSiteCredential, Map<String, dynamic>>(value, (value) => value.toMap())),
      'storageAccountAccessKey': ?storageAccountAccessKey,
      'storageAccountName': ?storageAccountName,
      'storageAccountShareName': ?storageAccountShareName,
      'tags': ?tags,
      'useExtensionBundle': ?useExtensionBundle,
      'version': ?version,
      'virtualNetworkSubnetId': ?virtualNetworkSubnetId,
      'vnetContentShareEnabled': ?vnetContentShareEnabled,
    };
  }

  factory StandardState.fromMap(Map<String, dynamic> map) {
    return StandardState(
      appServicePlanId: map['appServicePlanId'] == null ? null : pulumi.Output.create<String>(map['appServicePlanId'] as String),
      appSettings: map['appSettings'] == null ? null : pulumi.Output.create<Map<String, String>>((map['appSettings'] as Map).cast<String, String>()),
      bundleVersion: map['bundleVersion'] == null ? null : pulumi.Output.create<String>(map['bundleVersion'] as String),
      clientAffinityEnabled: map['clientAffinityEnabled'] == null ? null : pulumi.Output.create<bool>(map['clientAffinityEnabled'] as bool),
      clientCertificateMode: map['clientCertificateMode'] == null ? null : pulumi.Output.create<String>(map['clientCertificateMode'] as String),
      connectionStrings: map['connectionStrings'] == null ? null : pulumi.Output.create<List<StandardConnectionString>>(pulumi.Input.decodeList<StandardConnectionString>(map['connectionStrings'], (value) => StandardConnectionString.fromMap((value as Map).cast<String, dynamic>()))),
      customDomainVerificationId: map['customDomainVerificationId'] == null ? null : pulumi.Output.create<String>(map['customDomainVerificationId'] as String),
      defaultHostname: map['defaultHostname'] == null ? null : pulumi.Output.create<String>(map['defaultHostname'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      ftpPublishBasicAuthenticationEnabled: map['ftpPublishBasicAuthenticationEnabled'] == null ? null : pulumi.Output.create<bool>(map['ftpPublishBasicAuthenticationEnabled'] as bool),
      httpsOnly: map['httpsOnly'] == null ? null : pulumi.Output.create<bool>(map['httpsOnly'] as bool),
      identity: map['identity'] == null ? null : pulumi.Output.create<StandardIdentity>(StandardIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      outboundIpAddresses: map['outboundIpAddresses'] == null ? null : pulumi.Output.create<String>(map['outboundIpAddresses'] as String),
      possibleOutboundIpAddresses: map['possibleOutboundIpAddresses'] == null ? null : pulumi.Output.create<String>(map['possibleOutboundIpAddresses'] as String),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : pulumi.Output.create<String>(map['publicNetworkAccess'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      scmPublishBasicAuthenticationEnabled: map['scmPublishBasicAuthenticationEnabled'] == null ? null : pulumi.Output.create<bool>(map['scmPublishBasicAuthenticationEnabled'] as bool),
      siteConfig: map['siteConfig'] == null ? null : pulumi.Output.create<StandardSiteConfig>(StandardSiteConfig.fromMap((map['siteConfig'] as Map).cast<String, dynamic>())),
      siteCredentials: map['siteCredentials'] == null ? null : pulumi.Output.create<List<StandardSiteCredential>>(pulumi.Input.decodeList<StandardSiteCredential>(map['siteCredentials'], (value) => StandardSiteCredential.fromMap((value as Map).cast<String, dynamic>()))),
      storageAccountAccessKey: map['storageAccountAccessKey'] == null ? null : pulumi.Output.create<String>(map['storageAccountAccessKey'] as String),
      storageAccountName: map['storageAccountName'] == null ? null : pulumi.Output.create<String>(map['storageAccountName'] as String),
      storageAccountShareName: map['storageAccountShareName'] == null ? null : pulumi.Output.create<String>(map['storageAccountShareName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      useExtensionBundle: map['useExtensionBundle'] == null ? null : pulumi.Output.create<bool>(map['useExtensionBundle'] as bool),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
      virtualNetworkSubnetId: map['virtualNetworkSubnetId'] == null ? null : pulumi.Output.create<String>(map['virtualNetworkSubnetId'] as String),
      vnetContentShareEnabled: map['vnetContentShareEnabled'] == null ? null : pulumi.Output.create<bool>(map['vnetContentShareEnabled'] as bool),
    );
  }
}

