// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_flex_consumption_always_ready.dart';
import 'app_flex_consumption_auth_settings.dart';
import 'app_flex_consumption_auth_settings_v2.dart';
import 'app_flex_consumption_connection_string.dart';
import 'app_flex_consumption_identity.dart';
import 'app_flex_consumption_site_config.dart';
import 'app_flex_consumption_site_credential.dart';
import 'app_flex_consumption_sticky_settings.dart';

/// Input properties used for looking up and filtering AppFlexConsumption resources.
class AppFlexConsumptionState {
  /// One or more `always_ready` blocks as defined below.
  final pulumi.Input<List<AppFlexConsumptionAlwaysReady>>? alwaysReadies;
  /// A map of key-value pairs for [App Settings](https://docs.microsoft.com/azure/azure-functions/functions-app-settings) and custom values.
  ///
  /// > **Note:** For storage related settings, please use related properties that are available such as `storage_access_key`, terraform will assign the value to keys such as `WEBSITE_CONTENTAZUREFILECONNECTIONSTRING`, `AzureWebJobsStorage` in app_setting.
  ///
  /// > **Note:** For application insight related settings, please use `application_insights_connection_string` and `application_insights_key`, terraform will assign the value to the key `APPINSIGHTS_INSTRUMENTATIONKEY` and `APPLICATIONINSIGHTS_CONNECTION_STRING` in app setting.
  ///
  /// > **Note:** For health check related settings, please use `health_check_eviction_time_in_min`, terraform will assign the value to the key `WEBSITE_HEALTHCHECK_MAXPINGFAILURES` in app setting.
  ///
  /// > **Note:** For those app settings that are deprecated or replaced by another properties for flex consumption function app, please check https://learn.microsoft.com/en-us/azure/azure-functions/functions-app-settings.
  final pulumi.Input<Map<String, String>>? appSettings;
  /// A `auth_settings` block as defined below.
  final pulumi.Input<AppFlexConsumptionAuthSettings>? authSettings;
  /// An `auth_settings_v2` block as defined below.
  final pulumi.Input<AppFlexConsumptionAuthSettingsV2>? authSettingsV2;
  /// Should the function app use Client Certificates.
  final pulumi.Input<bool>? clientCertificateEnabled;
  /// Paths to exclude when using client certificates, separated by ;
  final pulumi.Input<String>? clientCertificateExclusionPaths;
  /// The mode of the Function App's client certificates requirement for incoming requests. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`. Defaults to `Optional`.
  final pulumi.Input<String>? clientCertificateMode;
  /// One or more `connection_string` blocks as defined below.
  final pulumi.Input<List<AppFlexConsumptionConnectionString>>? connectionStrings;
  /// The identifier used by App Service to perform domain ownership verification via DNS TXT record.
  final pulumi.Input<String>? customDomainVerificationId;
  /// The default hostname of the Linux Function App.
  final pulumi.Input<String>? defaultHostname;
  /// Is the Function App enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// The ID of the App Service Environment used by Function App.
  final pulumi.Input<String>? hostingEnvironmentId;
  /// The Http concurrency of the instances on which your app runs. The supported value are from `1` to `1000`.
  ///
  /// > **Note:** A value will be assigned by the system if `http_concurrency` is not specified.
  final pulumi.Input<int>? httpConcurrency;
  /// Is Https Connection enforced to the function app. Defaults to `false`
  final pulumi.Input<bool>? httpsOnly;
  /// A `identity` block as defined below.
  final pulumi.Input<AppFlexConsumptionIdentity>? identity;
  /// The memory size of the instances on which your app runs. Reference the Microsoft Documentation for the [currently supported values](https://learn.microsoft.com/en-us/azure/azure-functions/flex-consumption-plan#instance-memory). Defaults to `2048`.
  final pulumi.Input<int>? instanceMemoryInMb;
  /// The Kind value for this Linux Function App.
  final pulumi.Input<String>? kind;
  /// The Azure Region where the Function App should exist. Changing this forces a new Function App to be created.
  final pulumi.Input<String>? location;
  /// The number of workers this function app can scale out to. The supported value are from `1` to `1000`.
  final pulumi.Input<int>? maximumInstanceCount;
  /// The name which should be used for this Function App. Changing this forces a new Function App to be created. Limit the function name to 32 characters to avoid naming collisions. For more information about [Function App naming rule](https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/resource-name-rules#microsoftweb) and [Host ID Collisions](https://github.com/Azure/azure-functions-host/wiki/Host-IDs#host-id-collisions)
  final pulumi.Input<String>? name;
  /// A list of outbound IP addresses. For example `["52.23.25.3", "52.143.43.12"]`
  final pulumi.Input<List<String>>? outboundIpAddressLists;
  /// A comma separated list of outbound IP addresses as a string. For example `52.23.25.3,52.143.43.12`.
  final pulumi.Input<String>? outboundIpAddresses;
  /// A list of possible outbound IP addresses, not all of which are necessarily in use. This is a superset of `outbound_ip_address_list`. For example `["52.23.25.3", "52.143.43.12"]`.
  final pulumi.Input<List<String>>? possibleOutboundIpAddressLists;
  /// A comma separated list of possible outbound IP addresses as a string. For example `52.23.25.3,52.143.43.12,52.143.43.17`. This is a superset of `outbound_ip_addresses`.
  final pulumi.Input<String>? possibleOutboundIpAddresses;
  /// Should public network access be enabled for the Function App. Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The name of the Resource Group where the Function App should exist. Changing this forces a new Linux Function App to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The Runtime of the Linux Function App. Possible values are `node`, `dotnet-isolated`, `powershell`, `python`, `java` and `custom`.
  final pulumi.Input<String>? runtimeName;
  /// The Runtime version of the Linux Function App. Accepted values varies with the value of `runtime_name`.
  ///
  /// > **Note:** To get the most up-to-date list of supported versions, use command `az functionapp list-runtimes` or visit [Supported languages in Azure Functions](https://learn.microsoft.com/en-us/azure/azure-functions/supported-languages)
  final pulumi.Input<String>? runtimeVersion;
  /// The ID of the App Service Plan within which to create this Function App. Changing this forces a new Linux Function App to be created.
  final pulumi.Input<String>? servicePlanId;
  /// A `site_config` block as defined below.
  final pulumi.Input<AppFlexConsumptionSiteConfig>? siteConfig;
  /// A `site_credential` block as defined below.
  final pulumi.Input<List<AppFlexConsumptionSiteCredential>>? siteCredentials;
  /// A `sticky_settings` block as defined below.
  final pulumi.Input<AppFlexConsumptionStickySettings>? stickySettings;
  /// The access key which will be used to access the backend storage account for the Function App.
  ///
  /// > **Note:** The `storage_access_key` must be specified when `storage_authentication_type` is set to `StorageAccountConnectionString`.
  final pulumi.Input<String>? storageAccessKey;
  /// The authentication type which will be used to access the backend storage account for the Function App. Possible values are `StorageAccountConnectionString`, `SystemAssignedIdentity`, and `UserAssignedIdentity`.
  final pulumi.Input<String>? storageAuthenticationType;
  /// The backend storage container endpoint which will be used by this Function App.
  final pulumi.Input<String>? storageContainerEndpoint;
  /// The storage container type used for the Function App. The current supported type is `blobContainer`.
  final pulumi.Input<String>? storageContainerType;
  /// The user assigned Managed Identity to access the storage account. Conflicts with `storage_access_key`.
  ///
  /// > **Note:** The `storage_user_assigned_identity_id` must be specified when `storage_authentication_type` is set to `UserAssignedIdentity`.
  final pulumi.Input<String>? storageUserAssignedIdentityId;
  /// A mapping of tags which should be assigned to the Linux Function App.
  final pulumi.Input<Map<String, String>>? tags;
  /// The subnet id which will be used by this Function App for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration).
  ///
  /// > **Note:** The AzureRM Terraform provider provides regional virtual network integration via the standalone resource azure.appservice.VirtualNetworkSwiftConnection and in-line within this resource using the `virtual_network_subnet_id` property. You cannot use both methods simultaneously. If the virtual network is set via the resource `app_service_virtual_network_swift_connection` then `ignore_changes` should be used in the function app configuration.
  ///
  /// > **Note:** Assigning the `virtual_network_subnet_id` property requires [RBAC permissions on the subnet](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#permissions)
  final pulumi.Input<String>? virtualNetworkSubnetId;
  /// Should the default WebDeploy Basic Authentication publishing credentials enabled. Defaults to `true`.
  ///
  /// > **Note:** Setting this value to true will disable the ability to use `zip_deploy_file` which currently relies on the default publishing profile.
  final pulumi.Input<bool>? webdeployPublishBasicAuthenticationEnabled;
  /// The local path and filename of the Zip packaged application to deploy to this Linux Function App.
  ///
  /// > **Note:** Using this value requires either `WEBSITE_RUN_FROM_PACKAGE=1` or `SCM_DO_BUILD_DURING_DEPLOYMENT=true` to be set on the App in `app_settings`. Refer to the [Azure docs](https://learn.microsoft.com/en-us/azure/azure-functions/functions-deployment-technologies) for further details.
  final pulumi.Input<String>? zipDeployFile;

  /// Creates a new [AppFlexConsumptionState].
  /// [alwaysReadies] One or more `always_ready` blocks as defined below.
  /// [appSettings] A map of key-value pairs for [App Settings](https://docs.microsoft.com/azure/azure-functions/functions-app-settings) and custom values.
  /// [authSettings] A `auth_settings` block as defined below.
  /// [authSettingsV2] An `auth_settings_v2` block as defined below.
  /// [clientCertificateEnabled] Should the function app use Client Certificates.
  /// [clientCertificateExclusionPaths] Paths to exclude when using client certificates, separated by ;
  /// [clientCertificateMode] The mode of the Function App's client certificates requirement for incoming requests. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`. Defaults to `Optional`.
  /// [connectionStrings] One or more `connection_string` blocks as defined below.
  /// [customDomainVerificationId] The identifier used by App Service to perform domain ownership verification via DNS TXT record.
  /// [defaultHostname] The default hostname of the Linux Function App.
  /// [enabled] Is the Function App enabled? Defaults to `true`.
  /// [hostingEnvironmentId] The ID of the App Service Environment used by Function App.
  /// [httpConcurrency] The Http concurrency of the instances on which your app runs. The supported value are from `1` to `1000`.
  /// [httpsOnly] Is Https Connection enforced to the function app. Defaults to `false`
  /// [identity] A `identity` block as defined below.
  /// [instanceMemoryInMb] The memory size of the instances on which your app runs. Reference the Microsoft Documentation for the [currently supported values](https://learn.microsoft.com/en-us/azure/azure-functions/flex-consumption-plan#instance-memory). Defaults to `2048`.
  /// [kind] The Kind value for this Linux Function App.
  /// [location] The Azure Region where the Function App should exist. Changing this forces a new Function App to be created.
  /// [maximumInstanceCount] The number of workers this function app can scale out to. The supported value are from `1` to `1000`.
  /// [name] The name which should be used for this Function App. Changing this forces a new Function App to be created. Limit the function name to 32 characters to avoid naming collisions. For more information about [Function App naming rule](https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/resource-name-rules#microsoftweb) and [Host ID Collisions](https://github.com/Azure/azure-functions-host/wiki/Host-IDs#host-id-collisions)
  /// [outboundIpAddressLists] A list of outbound IP addresses. For example `["52.23.25.3", "52.143.43.12"]`
  /// [outboundIpAddresses] A comma separated list of outbound IP addresses as a string. For example `52.23.25.3,52.143.43.12`.
  /// [possibleOutboundIpAddressLists] A list of possible outbound IP addresses, not all of which are necessarily in use. This is a superset of `outbound_ip_address_list`. For example `["52.23.25.3", "52.143.43.12"]`.
  /// [possibleOutboundIpAddresses] A comma separated list of possible outbound IP addresses as a string. For example `52.23.25.3,52.143.43.12,52.143.43.17`. This is a superset of `outbound_ip_addresses`.
  /// [publicNetworkAccessEnabled] Should public network access be enabled for the Function App. Defaults to `true`.
  /// [resourceGroupName] The name of the Resource Group where the Function App should exist. Changing this forces a new Linux Function App to be created.
  /// [runtimeName] The Runtime of the Linux Function App. Possible values are `node`, `dotnet-isolated`, `powershell`, `python`, `java` and `custom`.
  /// [runtimeVersion] The Runtime version of the Linux Function App. Accepted values varies with the value of `runtime_name`.
  /// [servicePlanId] The ID of the App Service Plan within which to create this Function App. Changing this forces a new Linux Function App to be created.
  /// [siteConfig] A `site_config` block as defined below.
  /// [siteCredentials] A `site_credential` block as defined below.
  /// [stickySettings] A `sticky_settings` block as defined below.
  /// [storageAccessKey] The access key which will be used to access the backend storage account for the Function App.
  /// [storageAuthenticationType] The authentication type which will be used to access the backend storage account for the Function App. Possible values are `StorageAccountConnectionString`, `SystemAssignedIdentity`, and `UserAssignedIdentity`.
  /// [storageContainerEndpoint] The backend storage container endpoint which will be used by this Function App.
  /// [storageContainerType] The storage container type used for the Function App. The current supported type is `blobContainer`.
  /// [storageUserAssignedIdentityId] The user assigned Managed Identity to access the storage account. Conflicts with `storage_access_key`.
  /// [tags] A mapping of tags which should be assigned to the Linux Function App.
  /// [virtualNetworkSubnetId] The subnet id which will be used by this Function App for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration).
  /// [webdeployPublishBasicAuthenticationEnabled] Should the default WebDeploy Basic Authentication publishing credentials enabled. Defaults to `true`.
  /// [zipDeployFile] The local path and filename of the Zip packaged application to deploy to this Linux Function App.
  AppFlexConsumptionState({
    pulumi.Output<List<AppFlexConsumptionAlwaysReady>>? alwaysReadies,
    pulumi.Output<Map<String, String>>? appSettings,
    pulumi.Output<AppFlexConsumptionAuthSettings>? authSettings,
    pulumi.Output<AppFlexConsumptionAuthSettingsV2>? authSettingsV2,
    pulumi.Output<bool>? clientCertificateEnabled,
    pulumi.Output<String>? clientCertificateExclusionPaths,
    pulumi.Output<String>? clientCertificateMode,
    pulumi.Output<List<AppFlexConsumptionConnectionString>>? connectionStrings,
    pulumi.Output<String>? customDomainVerificationId,
    pulumi.Output<String>? defaultHostname,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? hostingEnvironmentId,
    pulumi.Output<int>? httpConcurrency,
    pulumi.Output<bool>? httpsOnly,
    pulumi.Output<AppFlexConsumptionIdentity>? identity,
    pulumi.Output<int>? instanceMemoryInMb,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? location,
    pulumi.Output<int>? maximumInstanceCount,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? outboundIpAddressLists,
    pulumi.Output<String>? outboundIpAddresses,
    pulumi.Output<List<String>>? possibleOutboundIpAddressLists,
    pulumi.Output<String>? possibleOutboundIpAddresses,
    pulumi.Output<bool>? publicNetworkAccessEnabled,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? runtimeName,
    pulumi.Output<String>? runtimeVersion,
    pulumi.Output<String>? servicePlanId,
    pulumi.Output<AppFlexConsumptionSiteConfig>? siteConfig,
    pulumi.Output<List<AppFlexConsumptionSiteCredential>>? siteCredentials,
    pulumi.Output<AppFlexConsumptionStickySettings>? stickySettings,
    pulumi.Output<String>? storageAccessKey,
    pulumi.Output<String>? storageAuthenticationType,
    pulumi.Output<String>? storageContainerEndpoint,
    pulumi.Output<String>? storageContainerType,
    pulumi.Output<String>? storageUserAssignedIdentityId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? virtualNetworkSubnetId,
    pulumi.Output<bool>? webdeployPublishBasicAuthenticationEnabled,
    pulumi.Output<String>? zipDeployFile,
  }) :
      alwaysReadies = pulumi.Input.asOptionalInput<List<AppFlexConsumptionAlwaysReady>>(alwaysReadies),
      appSettings = pulumi.Input.asOptionalInput<Map<String, String>>(appSettings),
      authSettings = pulumi.Input.asOptionalInput<AppFlexConsumptionAuthSettings>(authSettings),
      authSettingsV2 = pulumi.Input.asOptionalInput<AppFlexConsumptionAuthSettingsV2>(authSettingsV2),
      clientCertificateEnabled = pulumi.Input.asOptionalInput<bool>(clientCertificateEnabled),
      clientCertificateExclusionPaths = pulumi.Input.asOptionalInput<String>(clientCertificateExclusionPaths),
      clientCertificateMode = pulumi.Input.asOptionalInput<String>(clientCertificateMode),
      connectionStrings = pulumi.Input.asOptionalInput<List<AppFlexConsumptionConnectionString>>(connectionStrings),
      customDomainVerificationId = pulumi.Input.asOptionalInput<String>(customDomainVerificationId),
      defaultHostname = pulumi.Input.asOptionalInput<String>(defaultHostname),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      hostingEnvironmentId = pulumi.Input.asOptionalInput<String>(hostingEnvironmentId),
      httpConcurrency = pulumi.Input.asOptionalInput<int>(httpConcurrency),
      httpsOnly = pulumi.Input.asOptionalInput<bool>(httpsOnly),
      identity = pulumi.Input.asOptionalInput<AppFlexConsumptionIdentity>(identity),
      instanceMemoryInMb = pulumi.Input.asOptionalInput<int>(instanceMemoryInMb),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      maximumInstanceCount = pulumi.Input.asOptionalInput<int>(maximumInstanceCount),
      name = pulumi.Input.asOptionalInput<String>(name),
      outboundIpAddressLists = pulumi.Input.asOptionalInput<List<String>>(outboundIpAddressLists),
      outboundIpAddresses = pulumi.Input.asOptionalInput<String>(outboundIpAddresses),
      possibleOutboundIpAddressLists = pulumi.Input.asOptionalInput<List<String>>(possibleOutboundIpAddressLists),
      possibleOutboundIpAddresses = pulumi.Input.asOptionalInput<String>(possibleOutboundIpAddresses),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      runtimeName = pulumi.Input.asOptionalInput<String>(runtimeName),
      runtimeVersion = pulumi.Input.asOptionalInput<String>(runtimeVersion),
      servicePlanId = pulumi.Input.asOptionalInput<String>(servicePlanId),
      siteConfig = pulumi.Input.asOptionalInput<AppFlexConsumptionSiteConfig>(siteConfig),
      siteCredentials = pulumi.Input.asOptionalInput<List<AppFlexConsumptionSiteCredential>>(siteCredentials),
      stickySettings = pulumi.Input.asOptionalInput<AppFlexConsumptionStickySettings>(stickySettings),
      storageAccessKey = pulumi.Input.asOptionalInput<String>(storageAccessKey),
      storageAuthenticationType = pulumi.Input.asOptionalInput<String>(storageAuthenticationType),
      storageContainerEndpoint = pulumi.Input.asOptionalInput<String>(storageContainerEndpoint),
      storageContainerType = pulumi.Input.asOptionalInput<String>(storageContainerType),
      storageUserAssignedIdentityId = pulumi.Input.asOptionalInput<String>(storageUserAssignedIdentityId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      virtualNetworkSubnetId = pulumi.Input.asOptionalInput<String>(virtualNetworkSubnetId),
      webdeployPublishBasicAuthenticationEnabled = pulumi.Input.asOptionalInput<bool>(webdeployPublishBasicAuthenticationEnabled),
      zipDeployFile = pulumi.Input.asOptionalInput<String>(zipDeployFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alwaysReadies': ?pulumi.Input.mapOptionalInputValue<List<AppFlexConsumptionAlwaysReady>, List<Map<String, dynamic>>>(alwaysReadies, (value) => pulumi.Input.encodeList<AppFlexConsumptionAlwaysReady, Map<String, dynamic>>(value, (value) => value.toMap())),
      'appSettings': ?appSettings,
      'authSettings': ?pulumi.Input.mapOptionalInputValue<AppFlexConsumptionAuthSettings, Map<String, dynamic>>(authSettings, (value) => value.toMap()),
      'authSettingsV2': ?pulumi.Input.mapOptionalInputValue<AppFlexConsumptionAuthSettingsV2, Map<String, dynamic>>(authSettingsV2, (value) => value.toMap()),
      'clientCertificateEnabled': ?clientCertificateEnabled,
      'clientCertificateExclusionPaths': ?clientCertificateExclusionPaths,
      'clientCertificateMode': ?clientCertificateMode,
      'connectionStrings': ?pulumi.Input.mapOptionalInputValue<List<AppFlexConsumptionConnectionString>, List<Map<String, dynamic>>>(connectionStrings, (value) => pulumi.Input.encodeList<AppFlexConsumptionConnectionString, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customDomainVerificationId': ?customDomainVerificationId,
      'defaultHostname': ?defaultHostname,
      'enabled': ?enabled,
      'hostingEnvironmentId': ?hostingEnvironmentId,
      'httpConcurrency': ?httpConcurrency,
      'httpsOnly': ?httpsOnly,
      'identity': ?pulumi.Input.mapOptionalInputValue<AppFlexConsumptionIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'instanceMemoryInMb': ?instanceMemoryInMb,
      'kind': ?kind,
      'location': ?location,
      'maximumInstanceCount': ?maximumInstanceCount,
      'name': ?name,
      'outboundIpAddressLists': ?outboundIpAddressLists,
      'outboundIpAddresses': ?outboundIpAddresses,
      'possibleOutboundIpAddressLists': ?possibleOutboundIpAddressLists,
      'possibleOutboundIpAddresses': ?possibleOutboundIpAddresses,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': ?resourceGroupName,
      'runtimeName': ?runtimeName,
      'runtimeVersion': ?runtimeVersion,
      'servicePlanId': ?servicePlanId,
      'siteConfig': ?pulumi.Input.mapOptionalInputValue<AppFlexConsumptionSiteConfig, Map<String, dynamic>>(siteConfig, (value) => value.toMap()),
      'siteCredentials': ?pulumi.Input.mapOptionalInputValue<List<AppFlexConsumptionSiteCredential>, List<Map<String, dynamic>>>(siteCredentials, (value) => pulumi.Input.encodeList<AppFlexConsumptionSiteCredential, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stickySettings': ?pulumi.Input.mapOptionalInputValue<AppFlexConsumptionStickySettings, Map<String, dynamic>>(stickySettings, (value) => value.toMap()),
      'storageAccessKey': ?storageAccessKey,
      'storageAuthenticationType': ?storageAuthenticationType,
      'storageContainerEndpoint': ?storageContainerEndpoint,
      'storageContainerType': ?storageContainerType,
      'storageUserAssignedIdentityId': ?storageUserAssignedIdentityId,
      'tags': ?tags,
      'virtualNetworkSubnetId': ?virtualNetworkSubnetId,
      'webdeployPublishBasicAuthenticationEnabled': ?webdeployPublishBasicAuthenticationEnabled,
      'zipDeployFile': ?zipDeployFile,
    };
  }

  factory AppFlexConsumptionState.fromMap(Map<String, dynamic> map) {
    return AppFlexConsumptionState(
      alwaysReadies: map['alwaysReadies'] == null ? null : pulumi.Output.create<List<AppFlexConsumptionAlwaysReady>>(pulumi.Input.decodeList<AppFlexConsumptionAlwaysReady>(map['alwaysReadies'], (value) => AppFlexConsumptionAlwaysReady.fromMap((value as Map).cast<String, dynamic>()))),
      appSettings: map['appSettings'] == null ? null : pulumi.Output.create<Map<String, String>>((map['appSettings'] as Map).cast<String, String>()),
      authSettings: map['authSettings'] == null ? null : pulumi.Output.create<AppFlexConsumptionAuthSettings>(AppFlexConsumptionAuthSettings.fromMap((map['authSettings'] as Map).cast<String, dynamic>())),
      authSettingsV2: map['authSettingsV2'] == null ? null : pulumi.Output.create<AppFlexConsumptionAuthSettingsV2>(AppFlexConsumptionAuthSettingsV2.fromMap((map['authSettingsV2'] as Map).cast<String, dynamic>())),
      clientCertificateEnabled: map['clientCertificateEnabled'] == null ? null : pulumi.Output.create<bool>(map['clientCertificateEnabled'] as bool),
      clientCertificateExclusionPaths: map['clientCertificateExclusionPaths'] == null ? null : pulumi.Output.create<String>(map['clientCertificateExclusionPaths'] as String),
      clientCertificateMode: map['clientCertificateMode'] == null ? null : pulumi.Output.create<String>(map['clientCertificateMode'] as String),
      connectionStrings: map['connectionStrings'] == null ? null : pulumi.Output.create<List<AppFlexConsumptionConnectionString>>(pulumi.Input.decodeList<AppFlexConsumptionConnectionString>(map['connectionStrings'], (value) => AppFlexConsumptionConnectionString.fromMap((value as Map).cast<String, dynamic>()))),
      customDomainVerificationId: map['customDomainVerificationId'] == null ? null : pulumi.Output.create<String>(map['customDomainVerificationId'] as String),
      defaultHostname: map['defaultHostname'] == null ? null : pulumi.Output.create<String>(map['defaultHostname'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      hostingEnvironmentId: map['hostingEnvironmentId'] == null ? null : pulumi.Output.create<String>(map['hostingEnvironmentId'] as String),
      httpConcurrency: map['httpConcurrency'] == null ? null : pulumi.Output.create<int>(map['httpConcurrency'] as int),
      httpsOnly: map['httpsOnly'] == null ? null : pulumi.Output.create<bool>(map['httpsOnly'] as bool),
      identity: map['identity'] == null ? null : pulumi.Output.create<AppFlexConsumptionIdentity>(AppFlexConsumptionIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      instanceMemoryInMb: map['instanceMemoryInMb'] == null ? null : pulumi.Output.create<int>(map['instanceMemoryInMb'] as int),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      maximumInstanceCount: map['maximumInstanceCount'] == null ? null : pulumi.Output.create<int>(map['maximumInstanceCount'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      outboundIpAddressLists: map['outboundIpAddressLists'] == null ? null : pulumi.Output.create<List<String>>((map['outboundIpAddressLists'] as List).cast<String>()),
      outboundIpAddresses: map['outboundIpAddresses'] == null ? null : pulumi.Output.create<String>(map['outboundIpAddresses'] as String),
      possibleOutboundIpAddressLists: map['possibleOutboundIpAddressLists'] == null ? null : pulumi.Output.create<List<String>>((map['possibleOutboundIpAddressLists'] as List).cast<String>()),
      possibleOutboundIpAddresses: map['possibleOutboundIpAddresses'] == null ? null : pulumi.Output.create<String>(map['possibleOutboundIpAddresses'] as String),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicNetworkAccessEnabled'] as bool),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      runtimeName: map['runtimeName'] == null ? null : pulumi.Output.create<String>(map['runtimeName'] as String),
      runtimeVersion: map['runtimeVersion'] == null ? null : pulumi.Output.create<String>(map['runtimeVersion'] as String),
      servicePlanId: map['servicePlanId'] == null ? null : pulumi.Output.create<String>(map['servicePlanId'] as String),
      siteConfig: map['siteConfig'] == null ? null : pulumi.Output.create<AppFlexConsumptionSiteConfig>(AppFlexConsumptionSiteConfig.fromMap((map['siteConfig'] as Map).cast<String, dynamic>())),
      siteCredentials: map['siteCredentials'] == null ? null : pulumi.Output.create<List<AppFlexConsumptionSiteCredential>>(pulumi.Input.decodeList<AppFlexConsumptionSiteCredential>(map['siteCredentials'], (value) => AppFlexConsumptionSiteCredential.fromMap((value as Map).cast<String, dynamic>()))),
      stickySettings: map['stickySettings'] == null ? null : pulumi.Output.create<AppFlexConsumptionStickySettings>(AppFlexConsumptionStickySettings.fromMap((map['stickySettings'] as Map).cast<String, dynamic>())),
      storageAccessKey: map['storageAccessKey'] == null ? null : pulumi.Output.create<String>(map['storageAccessKey'] as String),
      storageAuthenticationType: map['storageAuthenticationType'] == null ? null : pulumi.Output.create<String>(map['storageAuthenticationType'] as String),
      storageContainerEndpoint: map['storageContainerEndpoint'] == null ? null : pulumi.Output.create<String>(map['storageContainerEndpoint'] as String),
      storageContainerType: map['storageContainerType'] == null ? null : pulumi.Output.create<String>(map['storageContainerType'] as String),
      storageUserAssignedIdentityId: map['storageUserAssignedIdentityId'] == null ? null : pulumi.Output.create<String>(map['storageUserAssignedIdentityId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      virtualNetworkSubnetId: map['virtualNetworkSubnetId'] == null ? null : pulumi.Output.create<String>(map['virtualNetworkSubnetId'] as String),
      webdeployPublishBasicAuthenticationEnabled: map['webdeployPublishBasicAuthenticationEnabled'] == null ? null : pulumi.Output.create<bool>(map['webdeployPublishBasicAuthenticationEnabled'] as bool),
      zipDeployFile: map['zipDeployFile'] == null ? null : pulumi.Output.create<String>(map['zipDeployFile'] as String),
    );
  }
}

