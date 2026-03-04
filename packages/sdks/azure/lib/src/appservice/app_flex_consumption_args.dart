// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_flex_consumption_always_ready.dart';
import 'app_flex_consumption_auth_settings.dart';
import 'app_flex_consumption_auth_settings_v2.dart';
import 'app_flex_consumption_connection_string.dart';
import 'app_flex_consumption_identity.dart';
import 'app_flex_consumption_site_config.dart';
import 'app_flex_consumption_sticky_settings.dart';

/// {@template pulumi_appservice_app_flex_consumption_app_flex_consumption_args_doc}
/// The set of arguments for AppFlexConsumption.
/// {@endtemplate}
/// {@macro pulumi_appservice_app_flex_consumption_app_flex_consumption_args_doc}
class AppFlexConsumptionArgs {
  /// One or more `always_ready` blocks as defined below.
  final pulumi.Input<List<AppFlexConsumptionAlwaysReady>>? alwaysReadies;

  /// A map of key-value pairs for [App Settings](https://docs.microsoft.com/azure/azure-functions/functions-app-settings) and custom values.
  ///
  /// &gt; **Note:** For storage related settings, please use related properties that are available such as `storage_access_key`, terraform will assign the value to keys such as `WEBSITE_CONTENTAZUREFILECONNECTIONSTRING`, `AzureWebJobsStorage` in app_setting.
  ///
  /// &gt; **Note:** For application insight related settings, please use `application_insights_connection_string` and `application_insights_key`, terraform will assign the value to the key `APPINSIGHTS_INSTRUMENTATIONKEY` and `APPLICATIONINSIGHTS_CONNECTION_STRING` in app setting.
  ///
  /// &gt; **Note:** For health check related settings, please use `health_check_eviction_time_in_min`, terraform will assign the value to the key `WEBSITE_HEALTHCHECK_MAXPINGFAILURES` in app setting.
  ///
  /// &gt; **Note:** For those app settings that are deprecated or replaced by another properties for flex consumption function app, please check https://learn.microsoft.com/en-us/azure/azure-functions/functions-app-settings.
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
  final pulumi.Input<List<AppFlexConsumptionConnectionString>>?
  connectionStrings;

  /// Is the Function App enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;

  /// The Http concurrency of the instances on which your app runs. The supported value are from `1` to `1000`.
  ///
  /// &gt; **Note:** A value will be assigned by the system if `http_concurrency` is not specified.
  final pulumi.Input<int>? httpConcurrency;

  /// Is Https Connection enforced to the function app. Defaults to `false`
  final pulumi.Input<bool>? httpsOnly;

  /// A `identity` block as defined below.
  final pulumi.Input<AppFlexConsumptionIdentity>? identity;

  /// The memory size of the instances on which your app runs. Reference the Microsoft Documentation for the [currently supported values](https://learn.microsoft.com/en-us/azure/azure-functions/flex-consumption-plan#instance-memory). Defaults to `2048`.
  final pulumi.Input<int>? instanceMemoryInMb;

  /// The Azure Region where the Function App should exist. Changing this forces a new Function App to be created.
  final pulumi.Input<String>? location;

  /// The number of workers this function app can scale out to. The supported value are from `1` to `1000`.
  final pulumi.Input<int>? maximumInstanceCount;

  /// The name which should be used for this Function App. Changing this forces a new Function App to be created. Limit the function name to 32 characters to avoid naming collisions. For more information about [Function App naming rule](https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/resource-name-rules#microsoftweb) and [Host ID Collisions](https://github.com/Azure/azure-functions-host/wiki/Host-IDs#host-id-collisions)
  final pulumi.Input<String>? name;

  /// Should public network access be enabled for the Function App. Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;

  /// The name of the Resource Group where the Function App should exist. Changing this forces a new Linux Function App to be created.
  final pulumi.Input<String> resourceGroupName;

  /// The Runtime of the Linux Function App. Possible values are `node`, `dotnet-isolated`, `powershell`, `python`, `java` and `custom`.
  final pulumi.Input<String> runtimeName;

  /// The Runtime version of the Linux Function App. Accepted values varies with the value of `runtime_name`.
  ///
  /// &gt; **Note:** To get the most up-to-date list of supported versions, use command `az functionapp list-runtimes` or visit [Supported languages in Azure Functions](https://learn.microsoft.com/en-us/azure/azure-functions/supported-languages)
  final pulumi.Input<String> runtimeVersion;

  /// The ID of the App Service Plan within which to create this Function App. Changing this forces a new Linux Function App to be created.
  final pulumi.Input<String> servicePlanId;

  /// A `site_config` block as defined below.
  final pulumi.Input<AppFlexConsumptionSiteConfig> siteConfig;

  /// A `sticky_settings` block as defined below.
  final pulumi.Input<AppFlexConsumptionStickySettings>? stickySettings;

  /// The access key which will be used to access the backend storage account for the Function App.
  ///
  /// &gt; **Note:** The `storage_access_key` must be specified when `storage_authentication_type` is set to `StorageAccountConnectionString`.
  final pulumi.Input<String>? storageAccessKey;

  /// The authentication type which will be used to access the backend storage account for the Function App. Possible values are `StorageAccountConnectionString`, `SystemAssignedIdentity`, and `UserAssignedIdentity`.
  final pulumi.Input<String> storageAuthenticationType;

  /// The backend storage container endpoint which will be used by this Function App.
  final pulumi.Input<String> storageContainerEndpoint;

  /// The storage container type used for the Function App. The current supported type is `blobContainer`.
  final pulumi.Input<String> storageContainerType;

  /// The user assigned Managed Identity to access the storage account. Conflicts with `storage_access_key`.
  ///
  /// &gt; **Note:** The `storage_user_assigned_identity_id` must be specified when `storage_authentication_type` is set to `UserAssignedIdentity`.
  final pulumi.Input<String>? storageUserAssignedIdentityId;

  /// A mapping of tags which should be assigned to the Linux Function App.
  final pulumi.Input<Map<String, String>>? tags;

  /// The subnet id which will be used by this Function App for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration).
  ///
  /// &gt; **Note:** The AzureRM Terraform provider provides regional virtual network integration via the standalone resource azure.appservice.VirtualNetworkSwiftConnection and in-line within this resource using the `virtual_network_subnet_id` property. You cannot use both methods simultaneously. If the virtual network is set via the resource `app_service_virtual_network_swift_connection` then `ignore_changes` should be used in the function app configuration.
  ///
  /// &gt; **Note:** Assigning the `virtual_network_subnet_id` property requires [RBAC permissions on the subnet](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#permissions)
  final pulumi.Input<String>? virtualNetworkSubnetId;

  /// Should the default WebDeploy Basic Authentication publishing credentials enabled. Defaults to `true`.
  ///
  /// &gt; **Note:** Setting this value to true will disable the ability to use `zip_deploy_file` which currently relies on the default publishing profile.
  final pulumi.Input<bool>? webdeployPublishBasicAuthenticationEnabled;

  /// The local path and filename of the Zip packaged application to deploy to this Linux Function App.
  ///
  /// &gt; **Note:** Using this value requires either `WEBSITE_RUN_FROM_PACKAGE=1` or `SCM_DO_BUILD_DURING_DEPLOYMENT=true` to be set on the App in `app_settings`. Refer to the [Azure docs](https://learn.microsoft.com/en-us/azure/azure-functions/functions-deployment-technologies) for further details.
  final pulumi.Input<String>? zipDeployFile;

  /// Creates a new [AppFlexConsumptionArgs].
  /// [alwaysReadies] One or more `always_ready` blocks as defined below.
  /// [appSettings] A map of key-value pairs for [App Settings](https://docs.microsoft.com/azure/azure-functions/functions-app-settings) and custom values.
  /// [authSettings] A `auth_settings` block as defined below.
  /// [authSettingsV2] An `auth_settings_v2` block as defined below.
  /// [clientCertificateEnabled] Should the function app use Client Certificates.
  /// [clientCertificateExclusionPaths] Paths to exclude when using client certificates, separated by ;
  /// [clientCertificateMode] The mode of the Function App's client certificates requirement for incoming requests. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`. Defaults to `Optional`.
  /// [connectionStrings] One or more `connection_string` blocks as defined below.
  /// [enabled] Is the Function App enabled? Defaults to `true`.
  /// [httpConcurrency] The Http concurrency of the instances on which your app runs. The supported value are from `1` to `1000`.
  /// [httpsOnly] Is Https Connection enforced to the function app. Defaults to `false`
  /// [identity] A `identity` block as defined below.
  /// [instanceMemoryInMb] The memory size of the instances on which your app runs. Reference the Microsoft Documentation for the [currently supported values](https://learn.microsoft.com/en-us/azure/azure-functions/flex-consumption-plan#instance-memory). Defaults to `2048`.
  /// [location] The Azure Region where the Function App should exist. Changing this forces a new Function App to be created.
  /// [maximumInstanceCount] The number of workers this function app can scale out to. The supported value are from `1` to `1000`.
  /// [name] The name which should be used for this Function App. Changing this forces a new Function App to be created. Limit the function name to 32 characters to avoid naming collisions. For more information about [Function App naming rule](https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/resource-name-rules#microsoftweb) and [Host ID Collisions](https://github.com/Azure/azure-functions-host/wiki/Host-IDs#host-id-collisions)
  /// [publicNetworkAccessEnabled] Should public network access be enabled for the Function App. Defaults to `true`.
  /// [resourceGroupName] The name of the Resource Group where the Function App should exist. Changing this forces a new Linux Function App to be created.
  /// [runtimeName] The Runtime of the Linux Function App. Possible values are `node`, `dotnet-isolated`, `powershell`, `python`, `java` and `custom`.
  /// [runtimeVersion] The Runtime version of the Linux Function App. Accepted values varies with the value of `runtime_name`.
  /// [servicePlanId] The ID of the App Service Plan within which to create this Function App. Changing this forces a new Linux Function App to be created.
  /// [siteConfig] A `site_config` block as defined below.
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
  AppFlexConsumptionArgs({
    this.alwaysReadies,
    this.appSettings,
    this.authSettings,
    this.authSettingsV2,
    this.clientCertificateEnabled,
    this.clientCertificateExclusionPaths,
    this.clientCertificateMode,
    this.connectionStrings,
    this.enabled,
    this.httpConcurrency,
    this.httpsOnly,
    this.identity,
    this.instanceMemoryInMb,
    this.location,
    this.maximumInstanceCount,
    this.name,
    this.publicNetworkAccessEnabled,
    required this.resourceGroupName,
    required this.runtimeName,
    required this.runtimeVersion,
    required this.servicePlanId,
    required this.siteConfig,
    this.stickySettings,
    this.storageAccessKey,
    required this.storageAuthenticationType,
    required this.storageContainerEndpoint,
    required this.storageContainerType,
    this.storageUserAssignedIdentityId,
    this.tags,
    this.virtualNetworkSubnetId,
    this.webdeployPublishBasicAuthenticationEnabled,
    this.zipDeployFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alwaysReadies':
          ?pulumi.Input.mapOptionalInputValue<
            List<AppFlexConsumptionAlwaysReady>,
            List<Map<String, dynamic>>
          >(
            alwaysReadies,
            (value) =>
                pulumi.Input.encodeList<
                  AppFlexConsumptionAlwaysReady,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'appSettings': ?appSettings,
      'authSettings':
          ?pulumi.Input.mapOptionalInputValue<
            AppFlexConsumptionAuthSettings,
            Map<String, dynamic>
          >(authSettings, (value) => value.toMap()),
      'authSettingsV2':
          ?pulumi.Input.mapOptionalInputValue<
            AppFlexConsumptionAuthSettingsV2,
            Map<String, dynamic>
          >(authSettingsV2, (value) => value.toMap()),
      'clientCertificateEnabled': ?clientCertificateEnabled,
      'clientCertificateExclusionPaths': ?clientCertificateExclusionPaths,
      'clientCertificateMode': ?clientCertificateMode,
      'connectionStrings':
          ?pulumi.Input.mapOptionalInputValue<
            List<AppFlexConsumptionConnectionString>,
            List<Map<String, dynamic>>
          >(
            connectionStrings,
            (value) =>
                pulumi.Input.encodeList<
                  AppFlexConsumptionConnectionString,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'enabled': ?enabled,
      'httpConcurrency': ?httpConcurrency,
      'httpsOnly': ?httpsOnly,
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            AppFlexConsumptionIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'instanceMemoryInMb': ?instanceMemoryInMb,
      'location': ?location,
      'maximumInstanceCount': ?maximumInstanceCount,
      'name': ?name,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': resourceGroupName,
      'runtimeName': runtimeName,
      'runtimeVersion': runtimeVersion,
      'servicePlanId': servicePlanId,
      'siteConfig':
          pulumi.Input.mapInputValue<
            AppFlexConsumptionSiteConfig,
            Map<String, dynamic>
          >(siteConfig, (value) => value.toMap()),
      'stickySettings':
          ?pulumi.Input.mapOptionalInputValue<
            AppFlexConsumptionStickySettings,
            Map<String, dynamic>
          >(stickySettings, (value) => value.toMap()),
      'storageAccessKey': ?storageAccessKey,
      'storageAuthenticationType': storageAuthenticationType,
      'storageContainerEndpoint': storageContainerEndpoint,
      'storageContainerType': storageContainerType,
      'storageUserAssignedIdentityId': ?storageUserAssignedIdentityId,
      'tags': ?tags,
      'virtualNetworkSubnetId': ?virtualNetworkSubnetId,
      'webdeployPublishBasicAuthenticationEnabled':
          ?webdeployPublishBasicAuthenticationEnabled,
      'zipDeployFile': ?zipDeployFile,
    };
  }

  factory AppFlexConsumptionArgs.fromMap(Map<String, dynamic> map) {
    return AppFlexConsumptionArgs(
      alwaysReadies: (() {
        final guardedValue = map['alwaysReadies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AppFlexConsumptionAlwaysReady>(
            guardedValue,
            (value) => AppFlexConsumptionAlwaysReady.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      appSettings: (() {
        final guardedValue = map['appSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      authSettings: (() {
        final guardedValue = map['authSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AppFlexConsumptionAuthSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      authSettingsV2: (() {
        final guardedValue = map['authSettingsV2'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AppFlexConsumptionAuthSettingsV2.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      clientCertificateEnabled: (() {
        final guardedValue = map['clientCertificateEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      clientCertificateExclusionPaths: (() {
        final guardedValue = map['clientCertificateExclusionPaths'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clientCertificateMode: (() {
        final guardedValue = map['clientCertificateMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      connectionStrings: (() {
        final guardedValue = map['connectionStrings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AppFlexConsumptionConnectionString>(
            guardedValue,
            (value) => AppFlexConsumptionConnectionString.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      httpConcurrency: (() {
        final guardedValue = map['httpConcurrency'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      httpsOnly: (() {
        final guardedValue = map['httpsOnly'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AppFlexConsumptionIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      instanceMemoryInMb: (() {
        final guardedValue = map['instanceMemoryInMb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      maximumInstanceCount: (() {
        final guardedValue = map['maximumInstanceCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publicNetworkAccessEnabled: (() {
        final guardedValue = map['publicNetworkAccessEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      runtimeName: pulumi.Input.fromValue(map['runtimeName'] as String),
      runtimeVersion: pulumi.Input.fromValue(map['runtimeVersion'] as String),
      servicePlanId: pulumi.Input.fromValue(map['servicePlanId'] as String),
      siteConfig: pulumi.Input.fromValue(
        AppFlexConsumptionSiteConfig.fromMap(
          (map['siteConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      stickySettings: (() {
        final guardedValue = map['stickySettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AppFlexConsumptionStickySettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      storageAccessKey: (() {
        final guardedValue = map['storageAccessKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageAuthenticationType: pulumi.Input.fromValue(
        map['storageAuthenticationType'] as String,
      ),
      storageContainerEndpoint: pulumi.Input.fromValue(
        map['storageContainerEndpoint'] as String,
      ),
      storageContainerType: pulumi.Input.fromValue(
        map['storageContainerType'] as String,
      ),
      storageUserAssignedIdentityId: (() {
        final guardedValue = map['storageUserAssignedIdentityId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      virtualNetworkSubnetId: (() {
        final guardedValue = map['virtualNetworkSubnetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      webdeployPublishBasicAuthenticationEnabled: (() {
        final guardedValue = map['webdeployPublishBasicAuthenticationEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      zipDeployFile: (() {
        final guardedValue = map['zipDeployFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
