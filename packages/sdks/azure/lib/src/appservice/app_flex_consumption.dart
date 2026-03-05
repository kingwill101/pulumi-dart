import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_flex_consumption_args.dart';
import 'app_flex_consumption_auth_settings.dart';
import 'app_flex_consumption_auth_settings_v2.dart';
import 'app_flex_consumption_identity.dart';
import 'app_flex_consumption_site_config.dart';
import 'app_flex_consumption_state.dart';
import 'app_flex_consumption_sticky_settings.dart';

/// Manages a Function App Running on a Flex Consumption Plan.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "examplelinuxfunctionappsa",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleContainer = new azure.storage.Container("example", {
///     name: "example-flexcontainer",
///     storageAccountId: exampleAccount.id,
///     containerAccessType: "private",
/// });
/// const exampleServicePlan = new azure.appservice.ServicePlan("example", {
///     name: "example-app-service-plan",
///     resourceGroupName: example.name,
///     location: example.location,
///     skuName: "FC1",
///     osType: "Linux",
/// });
/// const exampleAppFlexConsumption = new azure.appservice.AppFlexConsumption("example", {
///     name: "example-linux-function-app",
///     resourceGroupName: example.name,
///     location: example.location,
///     servicePlanId: exampleServicePlan.id,
///     storageContainerType: "blobContainer",
///     storageContainerEndpoint: pulumi.interpolate`${exampleAccount.primaryBlobEndpoint}${exampleContainer.name}`,
///     storageAuthenticationType: "StorageAccountConnectionString",
///     storageAccessKey: exampleAccount.primaryAccessKey,
///     runtimeName: "node",
///     runtimeVersion: "20",
///     maximumInstanceCount: 50,
///     instanceMemoryInMb: 2048,
///     siteConfig: {},
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_account = azure.storage.Account("example",
///     name="examplelinuxfunctionappsa",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_container = azure.storage.Container("example",
///     name="example-flexcontainer",
///     storage_account_id=example_account.id,
///     container_access_type="private")
/// example_service_plan = azure.appservice.ServicePlan("example",
///     name="example-app-service-plan",
///     resource_group_name=example.name,
///     location=example.location,
///     sku_name="FC1",
///     os_type="Linux")
/// example_app_flex_consumption = azure.appservice.AppFlexConsumption("example",
///     name="example-linux-function-app",
///     resource_group_name=example.name,
///     location=example.location,
///     service_plan_id=example_service_plan.id,
///     storage_container_type="blobContainer",
///     storage_container_endpoint=pulumi.Output.all(
///         primary_blob_endpoint=example_account.primary_blob_endpoint,
///         name=example_container.name
/// ).apply(lambda resolved_outputs: f"{resolved_outputs['primary_blob_endpoint']}{resolved_outputs['name']}")
/// ,
///     storage_authentication_type="StorageAccountConnectionString",
///     storage_access_key=example_account.primary_access_key,
///     runtime_name="node",
///     runtime_version="20",
///     maximum_instance_count=50,
///     instance_memory_in_mb=2048,
///     site_config={})
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "examplelinuxfunctionappsa",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleContainer = new Azure.Storage.Container("example", new()
///     {
///         Name = "example-flexcontainer",
///         StorageAccountId = exampleAccount.Id,
///         ContainerAccessType = "private",
///     });
///
///     var exampleServicePlan = new Azure.AppService.ServicePlan("example", new()
///     {
///         Name = "example-app-service-plan",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         SkuName = "FC1",
///         OsType = "Linux",
///     });
///
///     var exampleAppFlexConsumption = new Azure.AppService.AppFlexConsumption("example", new()
///     {
///         Name = "example-linux-function-app",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         ServicePlanId = exampleServicePlan.Id,
///         StorageContainerType = "blobContainer",
///         StorageContainerEndpoint = Output.Tuple(exampleAccount.PrimaryBlobEndpoint, exampleContainer.Name).Apply(values =>
///         {
///             var primaryBlobEndpoint = values.Item1;
///             var name = values.Item2;
///             return $"{primaryBlobEndpoint}{name}";
///         }),
///         StorageAuthenticationType = "StorageAccountConnectionString",
///         StorageAccessKey = exampleAccount.PrimaryAccessKey,
///         RuntimeName = "node",
///         RuntimeVersion = "20",
///         MaximumInstanceCount = 50,
///         InstanceMemoryInMb = 2048,
///         SiteConfig = null,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appservice"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("examplelinuxfunctionappsa"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleContainer, err := storage.NewContainer(ctx, "example", &storage.ContainerArgs{
/// 			Name:                pulumi.String("example-flexcontainer"),
/// 			StorageAccountId:    exampleAccount.ID(),
/// 			ContainerAccessType: pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleServicePlan, err := appservice.NewServicePlan(ctx, "example", &appservice.ServicePlanArgs{
/// 			Name:              pulumi.String("example-app-service-plan"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			SkuName:           pulumi.String("FC1"),
/// 			OsType:            pulumi.String("Linux"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appservice.NewAppFlexConsumption(ctx, "example", &appservice.AppFlexConsumptionArgs{
/// 			Name:                 pulumi.String("example-linux-function-app"),
/// 			ResourceGroupName:    example.Name,
/// 			Location:             example.Location,
/// 			ServicePlanId:        exampleServicePlan.ID(),
/// 			StorageContainerType: pulumi.String("blobContainer"),
/// 			StorageContainerEndpoint: pulumi.All(exampleAccount.PrimaryBlobEndpoint, exampleContainer.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 				primaryBlobEndpoint := _args[0].(string)
/// 				name := _args[1].(string)
/// 				return fmt.Sprintf("%v%v", primaryBlobEndpoint, name), nil
/// 			}).(pulumi.StringOutput),
/// 			StorageAuthenticationType: pulumi.String("StorageAccountConnectionString"),
/// 			StorageAccessKey:          exampleAccount.PrimaryAccessKey,
/// 			RuntimeName:               pulumi.String("node"),
/// 			RuntimeVersion:            pulumi.String("20"),
/// 			MaximumInstanceCount:      pulumi.Int(50),
/// 			InstanceMemoryInMb:        pulumi.Int(2048),
/// 			SiteConfig:                &appservice.AppFlexConsumptionSiteConfigArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.storage.Container;
/// import com.pulumi.azure.storage.ContainerArgs;
/// import com.pulumi.azure.appservice.ServicePlan;
/// import com.pulumi.azure.appservice.ServicePlanArgs;
/// import com.pulumi.azure.appservice.AppFlexConsumption;
/// import com.pulumi.azure.appservice.AppFlexConsumptionArgs;
/// import com.pulumi.azure.appservice.inputs.AppFlexConsumptionSiteConfigArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("examplelinuxfunctionappsa")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleContainer = new Container("exampleContainer", ContainerArgs.builder()
///             .name("example-flexcontainer")
///             .storageAccountId(exampleAccount.id())
///             .containerAccessType("private")
///             .build());
///
///         var exampleServicePlan = new ServicePlan("exampleServicePlan", ServicePlanArgs.builder()
///             .name("example-app-service-plan")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .skuName("FC1")
///             .osType("Linux")
///             .build());
///
///         var exampleAppFlexConsumption = new AppFlexConsumption("exampleAppFlexConsumption", AppFlexConsumptionArgs.builder()
///             .name("example-linux-function-app")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .servicePlanId(exampleServicePlan.id())
///             .storageContainerType("blobContainer")
///             .storageContainerEndpoint(Output.tuple(exampleAccount.primaryBlobEndpoint(), exampleContainer.name()).applyValue(values -> {
///                 var primaryBlobEndpoint = values.t1;
///                 var name = values.t2;
///                 return String.format("%s%s", primaryBlobEndpoint,name);
///             }))
///             .storageAuthenticationType("StorageAccountConnectionString")
///             .storageAccessKey(exampleAccount.primaryAccessKey())
///             .runtimeName("node")
///             .runtimeVersion("20")
///             .maximumInstanceCount(50)
///             .instanceMemoryInMb(2048)
///             .siteConfig(AppFlexConsumptionSiteConfigArgs.builder()
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: examplelinuxfunctionappsa
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleContainer:
///     type: azure:storage:Container
///     name: example
///     properties:
///       name: example-flexcontainer
///       storageAccountId: ${exampleAccount.id}
///       containerAccessType: private
///   exampleServicePlan:
///     type: azure:appservice:ServicePlan
///     name: example
///     properties:
///       name: example-app-service-plan
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       skuName: FC1
///       osType: Linux
///   exampleAppFlexConsumption:
///     type: azure:appservice:AppFlexConsumption
///     name: example
///     properties:
///       name: example-linux-function-app
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       servicePlanId: ${exampleServicePlan.id}
///       storageContainerType: blobContainer
///       storageContainerEndpoint: ${exampleAccount.primaryBlobEndpoint}${exampleContainer.name}
///       storageAuthenticationType: StorageAccountConnectionString
///       storageAccessKey: ${exampleAccount.primaryAccessKey}
///       runtimeName: node
///       runtimeVersion: '20'
///       maximumInstanceCount: 50
///       instanceMemoryInMb: 2048
///       siteConfig: {}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Web` - 2023-12-01, 2023-01-01
///
/// ## Import
///
/// The Function Apps can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appservice/appFlexConsumption:AppFlexConsumption example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Microsoft.Web/sites/site1
/// ```
class AppFlexConsumption extends pulumi.CustomResource {
  /// One or more `always_ready` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> alwaysReadies;
  /// A map of key-value pairs for [App Settings](https://docs.microsoft.com/azure/azure-functions/functions-app-settings) and custom values.
  ///
  /// &gt; **Note:** For storage related settings, please use related properties that are available such as `storage_access_key`, terraform will assign the value to keys such as `WEBSITE_CONTENTAZUREFILECONNECTIONSTRING`, `AzureWebJobsStorage` in app_setting.
  ///
  /// &gt; **Note:** For application insight related settings, please use `application_insights_connection_string` and `application_insights_key`, terraform will assign the value to the key `APPINSIGHTS_INSTRUMENTATIONKEY` and `APPLICATIONINSIGHTS_CONNECTION_STRING` in app setting.
  ///
  /// &gt; **Note:** For health check related settings, please use `health_check_eviction_time_in_min`, terraform will assign the value to the key `WEBSITE_HEALTHCHECK_MAXPINGFAILURES` in app setting.
  ///
  /// &gt; **Note:** For those app settings that are deprecated or replaced by another properties for flex consumption function app, please check https://learn.microsoft.com/en-us/azure/azure-functions/functions-app-settings.
  late final pulumi.Output<Map<String, String>?> appSettings;
  /// A `auth_settings` block as defined below.
  late final pulumi.Output<AppFlexConsumptionAuthSettings?> authSettings;
  /// An `auth_settings_v2` block as defined below.
  late final pulumi.Output<AppFlexConsumptionAuthSettingsV2?> authSettingsV2;
  /// Should the function app use Client Certificates.
  late final pulumi.Output<bool?> clientCertificateEnabled;
  /// Paths to exclude when using client certificates, separated by ;
  late final pulumi.Output<String?> clientCertificateExclusionPaths;
  /// The mode of the Function App's client certificates requirement for incoming requests. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`. Defaults to `Optional`.
  late final pulumi.Output<String?> clientCertificateMode;
  /// One or more `connection_string` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> connectionStrings;
  /// The identifier used by App Service to perform domain ownership verification via DNS TXT record.
  late final pulumi.Output<String> customDomainVerificationId;
  /// The default hostname of the Linux Function App.
  late final pulumi.Output<String> defaultHostname;
  /// Is the Function App enabled? Defaults to `true`.
  late final pulumi.Output<bool?> enabled;
  /// The ID of the App Service Environment used by Function App.
  late final pulumi.Output<String> hostingEnvironmentId;
  /// The Http concurrency of the instances on which your app runs. The supported value are from `1` to `1000`.
  ///
  /// &gt; **Note:** A value will be assigned by the system if `http_concurrency` is not specified.
  late final pulumi.Output<int?> httpConcurrency;
  /// Is Https Connection enforced to the function app. Defaults to `false`
  late final pulumi.Output<bool?> httpsOnly;
  /// A `identity` block as defined below.
  late final pulumi.Output<AppFlexConsumptionIdentity?> identity;
  /// The memory size of the instances on which your app runs. Reference the Microsoft Documentation for the [currently supported values](https://learn.microsoft.com/en-us/azure/azure-functions/flex-consumption-plan#instance-memory). Defaults to `2048`.
  late final pulumi.Output<int?> instanceMemoryInMb;
  /// The Kind value for this Linux Function App.
  late final pulumi.Output<String> kind;
  /// The Azure Region where the Function App should exist. Changing this forces a new Function App to be created.
  late final pulumi.Output<String> location;
  /// The number of workers this function app can scale out to. The supported value are from `1` to `1000`.
  late final pulumi.Output<int?> maximumInstanceCount;
  /// The name which should be used for this Function App. Changing this forces a new Function App to be created. Limit the function name to 32 characters to avoid naming collisions. For more information about [Function App naming rule](https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/resource-name-rules#microsoftweb) and [Host ID Collisions](https://github.com/Azure/azure-functions-host/wiki/Host-IDs#host-id-collisions)
  late final pulumi.Output<String> name;
  /// A list of outbound IP addresses. For example `["52.23.25.3", "52.143.43.12"]`
  late final pulumi.Output<List<String>> outboundIpAddressLists;
  /// A comma separated list of outbound IP addresses as a string. For example `52.23.25.3,52.143.43.12`.
  late final pulumi.Output<String> outboundIpAddresses;
  /// A list of possible outbound IP addresses, not all of which are necessarily in use. This is a superset of `outbound_ip_address_list`. For example `["52.23.25.3", "52.143.43.12"]`.
  late final pulumi.Output<List<String>> possibleOutboundIpAddressLists;
  /// A comma separated list of possible outbound IP addresses as a string. For example `52.23.25.3,52.143.43.12,52.143.43.17`. This is a superset of `outbound_ip_addresses`.
  late final pulumi.Output<String> possibleOutboundIpAddresses;
  /// Should public network access be enabled for the Function App. Defaults to `true`.
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;
  /// The name of the Resource Group where the Function App should exist. Changing this forces a new Linux Function App to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The Runtime of the Linux Function App. Possible values are `node`, `dotnet-isolated`, `powershell`, `python`, `java` and `custom`.
  late final pulumi.Output<String> runtimeName;
  /// The Runtime version of the Linux Function App. Accepted values varies with the value of `runtime_name`.
  ///
  /// &gt; **Note:** To get the most up-to-date list of supported versions, use command `az functionapp list-runtimes` or visit [Supported languages in Azure Functions](https://learn.microsoft.com/en-us/azure/azure-functions/supported-languages)
  late final pulumi.Output<String> runtimeVersion;
  /// The ID of the App Service Plan within which to create this Function App. Changing this forces a new Linux Function App to be created.
  late final pulumi.Output<String> servicePlanId;
  /// A `site_config` block as defined below.
  late final pulumi.Output<AppFlexConsumptionSiteConfig> siteConfig;
  /// A `site_credential` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> siteCredentials;
  /// A `sticky_settings` block as defined below.
  late final pulumi.Output<AppFlexConsumptionStickySettings?> stickySettings;
  /// The access key which will be used to access the backend storage account for the Function App.
  ///
  /// &gt; **Note:** The `storage_access_key` must be specified when `storage_authentication_type` is set to `StorageAccountConnectionString`.
  late final pulumi.Output<String?> storageAccessKey;
  /// The authentication type which will be used to access the backend storage account for the Function App. Possible values are `StorageAccountConnectionString`, `SystemAssignedIdentity`, and `UserAssignedIdentity`.
  late final pulumi.Output<String> storageAuthenticationType;
  /// The backend storage container endpoint which will be used by this Function App.
  late final pulumi.Output<String> storageContainerEndpoint;
  /// The storage container type used for the Function App. The current supported type is `blobContainer`.
  late final pulumi.Output<String> storageContainerType;
  /// The user assigned Managed Identity to access the storage account. Conflicts with `storage_access_key`.
  ///
  /// &gt; **Note:** The `storage_user_assigned_identity_id` must be specified when `storage_authentication_type` is set to `UserAssignedIdentity`.
  late final pulumi.Output<String?> storageUserAssignedIdentityId;
  /// A mapping of tags which should be assigned to the Linux Function App.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The subnet id which will be used by this Function App for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration).
  ///
  /// &gt; **Note:** The AzureRM Terraform provider provides regional virtual network integration via the standalone resource azure.appservice.VirtualNetworkSwiftConnection and in-line within this resource using the `virtual_network_subnet_id` property. You cannot use both methods simultaneously. If the virtual network is set via the resource `app_service_virtual_network_swift_connection` then `ignore_changes` should be used in the function app configuration.
  ///
  /// &gt; **Note:** Assigning the `virtual_network_subnet_id` property requires [RBAC permissions on the subnet](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#permissions)
  late final pulumi.Output<String?> virtualNetworkSubnetId;
  /// Should the default WebDeploy Basic Authentication publishing credentials enabled. Defaults to `true`.
  ///
  /// &gt; **Note:** Setting this value to true will disable the ability to use `zip_deploy_file` which currently relies on the default publishing profile.
  late final pulumi.Output<bool?> webdeployPublishBasicAuthenticationEnabled;
  /// The local path and filename of the Zip packaged application to deploy to this Linux Function App.
  ///
  /// &gt; **Note:** Using this value requires either `WEBSITE_RUN_FROM_PACKAGE=1` or `SCM_DO_BUILD_DURING_DEPLOYMENT=true` to be set on the App in `app_settings`. Refer to the [Azure docs](https://learn.microsoft.com/en-us/azure/azure-functions/functions-deployment-technologies) for further details.
  late final pulumi.Output<String> zipDeployFile;

  /// Creates a new [AppFlexConsumption].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppFlexConsumption]. {@macro pulumi_appservice_app_flex_consumption_app_flex_consumption_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppFlexConsumption(
    String name, {
    AppFlexConsumptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/appFlexConsumption:AppFlexConsumption',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    alwaysReadies = registerOutput<List<Map<String, dynamic>>?>('alwaysReadies');
    appSettings = registerOutput<Map<String, String>?>('appSettings');
    authSettings = registerOutput<AppFlexConsumptionAuthSettings?>('authSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppFlexConsumptionAuthSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    authSettingsV2 = registerOutput<AppFlexConsumptionAuthSettingsV2?>('authSettingsV2', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppFlexConsumptionAuthSettingsV2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clientCertificateEnabled = registerOutput<bool?>('clientCertificateEnabled');
    clientCertificateExclusionPaths = registerOutput<String?>('clientCertificateExclusionPaths');
    clientCertificateMode = registerOutput<String?>('clientCertificateMode');
    connectionStrings = registerOutput<List<Map<String, dynamic>>?>('connectionStrings');
    customDomainVerificationId = registerOutput<String>('customDomainVerificationId');
    defaultHostname = registerOutput<String>('defaultHostname');
    enabled = registerOutput<bool?>('enabled');
    hostingEnvironmentId = registerOutput<String>('hostingEnvironmentId');
    httpConcurrency = registerOutput<int?>('httpConcurrency');
    httpsOnly = registerOutput<bool?>('httpsOnly');
    identity = registerOutput<AppFlexConsumptionIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppFlexConsumptionIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instanceMemoryInMb = registerOutput<int?>('instanceMemoryInMb');
    kind = registerOutput<String>('kind');
    location = registerOutput<String>('location');
    maximumInstanceCount = registerOutput<int?>('maximumInstanceCount');
    this.name = registerOutput<String>('name');
    outboundIpAddressLists = registerOutput<List<String>>('outboundIpAddressLists');
    outboundIpAddresses = registerOutput<String>('outboundIpAddresses');
    possibleOutboundIpAddressLists = registerOutput<List<String>>('possibleOutboundIpAddressLists');
    possibleOutboundIpAddresses = registerOutput<String>('possibleOutboundIpAddresses');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    runtimeName = registerOutput<String>('runtimeName');
    runtimeVersion = registerOutput<String>('runtimeVersion');
    servicePlanId = registerOutput<String>('servicePlanId');
    siteConfig = registerOutput<AppFlexConsumptionSiteConfig>('siteConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppFlexConsumptionSiteConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    siteCredentials = registerOutput<List<Map<String, dynamic>>>('siteCredentials');
    stickySettings = registerOutput<AppFlexConsumptionStickySettings?>('stickySettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppFlexConsumptionStickySettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storageAccessKey = registerOutput<String?>('storageAccessKey');
    storageAuthenticationType = registerOutput<String>('storageAuthenticationType');
    storageContainerEndpoint = registerOutput<String>('storageContainerEndpoint');
    storageContainerType = registerOutput<String>('storageContainerType');
    storageUserAssignedIdentityId = registerOutput<String?>('storageUserAssignedIdentityId');
    tags = registerOutput<Map<String, String>?>('tags');
    virtualNetworkSubnetId = registerOutput<String?>('virtualNetworkSubnetId');
    webdeployPublishBasicAuthenticationEnabled = registerOutput<bool?>('webdeployPublishBasicAuthenticationEnabled');
    zipDeployFile = registerOutput<String>('zipDeployFile');
  }

  /// Gets an existing [AppFlexConsumption] resource's state with the given [name] and [id].
  static AppFlexConsumption get(
    String name,
    pulumi.Input<String> id, {
    AppFlexConsumptionState? state,
  }) {
    return AppFlexConsumption._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AppFlexConsumption._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/appFlexConsumption:AppFlexConsumption',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    alwaysReadies = registerOutput<List<Map<String, dynamic>>?>('alwaysReadies');
    appSettings = registerOutput<Map<String, String>?>('appSettings');
    authSettings = registerOutput<AppFlexConsumptionAuthSettings?>('authSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppFlexConsumptionAuthSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    authSettingsV2 = registerOutput<AppFlexConsumptionAuthSettingsV2?>('authSettingsV2', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppFlexConsumptionAuthSettingsV2.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clientCertificateEnabled = registerOutput<bool?>('clientCertificateEnabled');
    clientCertificateExclusionPaths = registerOutput<String?>('clientCertificateExclusionPaths');
    clientCertificateMode = registerOutput<String?>('clientCertificateMode');
    connectionStrings = registerOutput<List<Map<String, dynamic>>?>('connectionStrings');
    customDomainVerificationId = registerOutput<String>('customDomainVerificationId');
    defaultHostname = registerOutput<String>('defaultHostname');
    enabled = registerOutput<bool?>('enabled');
    hostingEnvironmentId = registerOutput<String>('hostingEnvironmentId');
    httpConcurrency = registerOutput<int?>('httpConcurrency');
    httpsOnly = registerOutput<bool?>('httpsOnly');
    identity = registerOutput<AppFlexConsumptionIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppFlexConsumptionIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instanceMemoryInMb = registerOutput<int?>('instanceMemoryInMb');
    kind = registerOutput<String>('kind');
    location = registerOutput<String>('location');
    maximumInstanceCount = registerOutput<int?>('maximumInstanceCount');
    this.name = registerOutput<String>('name');
    outboundIpAddressLists = registerOutput<List<String>>('outboundIpAddressLists');
    outboundIpAddresses = registerOutput<String>('outboundIpAddresses');
    possibleOutboundIpAddressLists = registerOutput<List<String>>('possibleOutboundIpAddressLists');
    possibleOutboundIpAddresses = registerOutput<String>('possibleOutboundIpAddresses');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    runtimeName = registerOutput<String>('runtimeName');
    runtimeVersion = registerOutput<String>('runtimeVersion');
    servicePlanId = registerOutput<String>('servicePlanId');
    siteConfig = registerOutput<AppFlexConsumptionSiteConfig>('siteConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppFlexConsumptionSiteConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    siteCredentials = registerOutput<List<Map<String, dynamic>>>('siteCredentials');
    stickySettings = registerOutput<AppFlexConsumptionStickySettings?>('stickySettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AppFlexConsumptionStickySettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storageAccessKey = registerOutput<String?>('storageAccessKey');
    storageAuthenticationType = registerOutput<String>('storageAuthenticationType');
    storageContainerEndpoint = registerOutput<String>('storageContainerEndpoint');
    storageContainerType = registerOutput<String>('storageContainerType');
    storageUserAssignedIdentityId = registerOutput<String?>('storageUserAssignedIdentityId');
    tags = registerOutput<Map<String, String>?>('tags');
    virtualNetworkSubnetId = registerOutput<String?>('virtualNetworkSubnetId');
    webdeployPublishBasicAuthenticationEnabled = registerOutput<bool?>('webdeployPublishBasicAuthenticationEnabled');
    zipDeployFile = registerOutput<String>('zipDeployFile');
  }
}
