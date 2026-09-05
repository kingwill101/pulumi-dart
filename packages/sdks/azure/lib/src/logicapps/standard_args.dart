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
  /// &gt; **Note:** There are a number of application settings that will be managed for you by this resource type and *shouldn't* be configured separately as part of the appSettings you specify.  `AzureWebJobsStorage` is filled based on `storageAccountName` and `storageAccountAccessKey`, or from `storageKeyVaultSecretId` when using a Key Vault reference. `WEBSITE_CONTENTSHARE` is detailed below. `FUNCTIONS_EXTENSION_VERSION` is filled based on `version`. `APP_KIND` is set to workflowApp and `AzureFunctionsJobHost__extensionBundle__id` and `AzureFunctionsJobHost__extensionBundle__version` are set as detailed below.
  final pulumi.Input<Map<String, String>?>? appSettings;
  /// If `useExtensionBundle` is set to `true` this controls the allowed range for bundle versions. Defaults to `[1.*, 2.0.0)`.
  final pulumi.Input<String?>? bundleVersion;
  /// Should the Logic App send session affinity cookies, which route client requests in the same session to the same instance?
  final pulumi.Input<bool?>? clientAffinityEnabled;
  /// The mode of the Logic App's client certificates requirement for incoming requests. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`.
  final pulumi.Input<String?>? clientCertificateMode;
  /// A `connectionString` block as defined below.
  final pulumi.Input<List<StandardConnectionString>?>? connectionStrings;
  /// Is the Logic App enabled? Defaults to `true`.
  final pulumi.Input<bool?>? enabled;
  /// Whether the FTP basic authentication publishing profile is enabled. Defaults to `true`.
  final pulumi.Input<bool?>? ftpPublishBasicAuthenticationEnabled;
  /// Can the Logic App only be accessed via HTTPS? Defaults to `false`.
  final pulumi.Input<bool?>? httpsOnly;
  /// An `identity` block as defined below.
  final pulumi.Input<StandardIdentity?>? identity;
  /// The User Assigned Identity ID used for accessing KeyVault secrets.
  ///
  /// &gt; **Note:** The identity must be assigned to the Logic App in the `identity` block. [For more information see - Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity)
  final pulumi.Input<String?>? keyVaultReferenceIdentityId;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// Specifies the name of the Logic App. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// Whether Public Network Access should be enabled or not. Possible values are `Enabled` and `Disabled`. Defaults to `Enabled`.
  ///
  /// &gt; **Note:** Setting this property will also set it in the Site Config.
  final pulumi.Input<String?>? publicNetworkAccess;
  /// The name of the resource group in which to create the Logic App. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Whether the default SCM basic authentication publishing profile is enabled. Defaults to `true`.
  final pulumi.Input<bool?>? scmPublishBasicAuthenticationEnabled;
  /// A `siteConfig` object as defined below.
  final pulumi.Input<StandardSiteConfig?>? siteConfig;
  /// The access key which will be used to access the backend storage account for the Logic App. Required when `storageAccountName` is specified. Conflicts with `storageKeyVaultSecretId`.
  final pulumi.Input<String?>? storageAccountAccessKey;
  /// The backend storage account name which will be used by this Logic App (e.g. for Stateful workflows data). Exactly one of `storageAccountName` or `storageKeyVaultSecretId` must be specified.
  final pulumi.Input<String?>? storageAccountName;
  /// The name of the share used by the logic app, if you want to use a custom name. This corresponds to the WEBSITE_CONTENTSHARE appsetting, which this resource will create for you. If you don't specify a name, then this resource will generate a dynamic name. This setting is useful if you want to provision a storage account and create a share using `azure.storage.Share`.
  ///
  /// &gt; **Note:** When integrating a `CI/CD pipeline` and expecting to run from a deployed package in `Azure` you must seed your `app settings` as part of terraform code for Logic App to be successfully deployed. `Important Default key pairs`: (`"WEBSITE_RUN_FROM_PACKAGE" = ""`, `"FUNCTIONS_WORKER_RUNTIME" = "node"` (or Python, etc.), `"WEBSITE_NODE_DEFAULT_VERSION" = "10.14.1"`, `"APPINSIGHTS_INSTRUMENTATIONKEY" = ""`).
  ///
  /// &gt; **Note:** When using an App Service Plan in the `Free` or `Shared` Tiers `use32BitWorkerProcess` must be set to `true`.
  final pulumi.Input<String?>? storageAccountShareName;
  /// The Key Vault Secret ID, optionally including version, that contains the connection string to the backend storage account for the Logic App. Exactly one of `storageAccountName` or `storageKeyVaultSecretId` must be specified.
  ///
  /// &gt; **Note:** When using `storageKeyVaultSecretId`, a `keyVaultReferenceIdentityId` must be set and the corresponding identity must have `Get` and `List` secret permissions on the Key Vault.
  ///
  /// &gt; **Note:** `storageKeyVaultSecretId` used without a version will use the latest version of the secret, however, the service can take up to 24h to pick up a rotation of the latest version. See the [official docs](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#rotation) for more information.
  final pulumi.Input<String?>? storageKeyVaultSecretId;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Should the logic app use the bundled extension package? If true, then application settings for `AzureFunctionsJobHost__extensionBundle__id` and `AzureFunctionsJobHost__extensionBundle__version` will be created. Defaults to `true`.
  final pulumi.Input<bool?>? useExtensionBundle;
  /// The runtime version associated with the Logic App. Defaults to `~4`.
  final pulumi.Input<String?>? version;
  /// The subnet ID which will be used by this resource for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration).
  ///
  /// &gt; **Note:** The AzureRM Terraform provider provides regional virtual network integration via the standalone resource appServiceVirtualNetworkSwiftConnection and in-line within this resource using the `virtualNetworkSubnetId` property. You cannot use both methods simultaneously.
  ///
  /// &gt; **Note:** Assigning the `virtualNetworkSubnetId` property requires [RBAC permissions on the subnet](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#permissions)
  final pulumi.Input<String?>? virtualNetworkSubnetId;
  /// Specifies whether allow routing traffic between the Logic App and Storage Account content share through a virtual network. Defaults to `false`.
  final pulumi.Input<bool?>? vnetContentShareEnabled;

  /// Creates a new [StandardArgs].
  /// [appServicePlanId] The ID of the App Service Plan within which to create this Logic App.
  /// [appSettings] A map of key-value pairs for [App Settings](https://docs.microsoft.com/azure/azure-functions/functions-app-settings) and custom values.
  /// [bundleVersion] If `useExtensionBundle` is set to `true` this controls the allowed range for bundle versions. Defaults to `[1.*, 2.0.0)`.
  /// [clientAffinityEnabled] Should the Logic App send session affinity cookies, which route client requests in the same session to the same instance?
  /// [clientCertificateMode] The mode of the Logic App's client certificates requirement for incoming requests. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`.
  /// [connectionStrings] A `connectionString` block as defined below.
  /// [enabled] Is the Logic App enabled? Defaults to `true`.
  /// [ftpPublishBasicAuthenticationEnabled] Whether the FTP basic authentication publishing profile is enabled. Defaults to `true`.
  /// [httpsOnly] Can the Logic App only be accessed via HTTPS? Defaults to `false`.
  /// [identity] An `identity` block as defined below.
  /// [keyVaultReferenceIdentityId] The User Assigned Identity ID used for accessing KeyVault secrets.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Logic App. Changing this forces a new resource to be created.
  /// [publicNetworkAccess] Whether Public Network Access should be enabled or not. Possible values are `Enabled` and `Disabled`. Defaults to `Enabled`.
  /// [resourceGroupName] The name of the resource group in which to create the Logic App. Changing this forces a new resource to be created.
  /// [scmPublishBasicAuthenticationEnabled] Whether the default SCM basic authentication publishing profile is enabled. Defaults to `true`.
  /// [siteConfig] A `siteConfig` object as defined below.
  /// [storageAccountAccessKey] The access key which will be used to access the backend storage account for the Logic App. Required when `storageAccountName` is specified. Conflicts with `storageKeyVaultSecretId`.
  /// [storageAccountName] The backend storage account name which will be used by this Logic App (e.g. for Stateful workflows data). Exactly one of `storageAccountName` or `storageKeyVaultSecretId` must be specified.
  /// [storageAccountShareName] The name of the share used by the logic app, if you want to use a custom name. This corresponds to the WEBSITE_CONTENTSHARE appsetting, which this resource will create for you. If you don't specify a name, then this resource will generate a dynamic name. This setting is useful if you want to provision a storage account and create a share using `azure.storage.Share`.
  /// [storageKeyVaultSecretId] The Key Vault Secret ID, optionally including version, that contains the connection string to the backend storage account for the Logic App. Exactly one of `storageAccountName` or `storageKeyVaultSecretId` must be specified.
  /// [tags] A mapping of tags to assign to the resource.
  /// [useExtensionBundle] Should the logic app use the bundled extension package? If true, then application settings for `AzureFunctionsJobHost__extensionBundle__id` and `AzureFunctionsJobHost__extensionBundle__version` will be created. Defaults to `true`.
  /// [version] The runtime version associated with the Logic App. Defaults to `~4`.
  /// [virtualNetworkSubnetId] The subnet ID which will be used by this resource for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration).
  /// [vnetContentShareEnabled] Specifies whether allow routing traffic between the Logic App and Storage Account content share through a virtual network. Defaults to `false`.
  const StandardArgs({
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
    this.keyVaultReferenceIdentityId,
    this.location,
    this.name,
    this.publicNetworkAccess,
    required this.resourceGroupName,
    this.scmPublishBasicAuthenticationEnabled,
    this.siteConfig,
    this.storageAccountAccessKey,
    this.storageAccountName,
    this.storageAccountShareName,
    this.storageKeyVaultSecretId,
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
      'keyVaultReferenceIdentityId': ?keyVaultReferenceIdentityId,
      'location': ?location,
      'name': ?name,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'scmPublishBasicAuthenticationEnabled': ?scmPublishBasicAuthenticationEnabled,
      'siteConfig': ?pulumi.Input.mapOptionalInputValue<StandardSiteConfig, Map<String, dynamic>>(siteConfig, (value) => value.toMap()),
      'storageAccountAccessKey': ?storageAccountAccessKey,
      'storageAccountName': ?storageAccountName,
      'storageAccountShareName': ?storageAccountShareName,
      'storageKeyVaultSecretId': ?storageKeyVaultSecretId,
      'tags': ?tags,
      'useExtensionBundle': ?useExtensionBundle,
      'version': ?version,
      'virtualNetworkSubnetId': ?virtualNetworkSubnetId,
      'vnetContentShareEnabled': ?vnetContentShareEnabled,
    };
  }

  factory StandardArgs.fromMap(Map<String, dynamic> map) {
    return StandardArgs(
      appServicePlanId: pulumi.Input.fromValue(map['appServicePlanId'] as String),
      appSettings: (() { final guardedValue = map['appSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      bundleVersion: (() { final guardedValue = map['bundleVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientAffinityEnabled: (() { final guardedValue = map['clientAffinityEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      clientCertificateMode: (() { final guardedValue = map['clientCertificateMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionStrings: (() { final guardedValue = map['connectionStrings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StandardConnectionString>(guardedValue, (value) => StandardConnectionString.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ftpPublishBasicAuthenticationEnabled: (() { final guardedValue = map['ftpPublishBasicAuthenticationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      httpsOnly: (() { final guardedValue = map['httpsOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StandardIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      keyVaultReferenceIdentityId: (() { final guardedValue = map['keyVaultReferenceIdentityId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      scmPublishBasicAuthenticationEnabled: (() { final guardedValue = map['scmPublishBasicAuthenticationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      siteConfig: (() { final guardedValue = map['siteConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StandardSiteConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageAccountAccessKey: (() { final guardedValue = map['storageAccountAccessKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountName: (() { final guardedValue = map['storageAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountShareName: (() { final guardedValue = map['storageAccountShareName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageKeyVaultSecretId: (() { final guardedValue = map['storageKeyVaultSecretId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      useExtensionBundle: (() { final guardedValue = map['useExtensionBundle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualNetworkSubnetId: (() { final guardedValue = map['virtualNetworkSubnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vnetContentShareEnabled: (() { final guardedValue = map['vnetContentShareEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
