import 'package:pulumi/pulumi.dart' as pulumi;
import 'standard_args.dart';
import 'standard_identity.dart';
import 'standard_site_config.dart';
import 'standard_state.dart';

/// Manages a Logic App (Standard / Single Tenant)
///
/// ## Example Usage
///
/// ### With App Service Plan)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example",
///     location: "West Europe",
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "examplestorageaccount",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleServicePlan = new azure.appservice.ServicePlan("example", {
///     name: "example-service-plan",
///     location: example.location,
///     resourceGroupName: example.name,
///     osType: "Windows",
///     skuName: "WS1",
/// });
/// const exampleStandard = new azure.logicapps.Standard("example", {
///     name: "example-logic-app",
///     location: example.location,
///     resourceGroupName: example.name,
///     appServicePlanId: exampleAzurermAppServicePlan.id,
///     storageAccountName: exampleAccount.name,
///     storageAccountAccessKey: exampleAccount.primaryAccessKey,
///     appSettings: {
///         FUNCTIONS_WORKER_RUNTIME: "node",
///         WEBSITE_NODE_DEFAULT_VERSION: "~18",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example",
///     location="West Europe")
/// example_account = azure.storage.Account("example",
///     name="examplestorageaccount",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_service_plan = azure.appservice.ServicePlan("example",
///     name="example-service-plan",
///     location=example.location,
///     resource_group_name=example.name,
///     os_type="Windows",
///     sku_name="WS1")
/// example_standard = azure.logicapps.Standard("example",
///     name="example-logic-app",
///     location=example.location,
///     resource_group_name=example.name,
///     app_service_plan_id=example_azurerm_app_service_plan["id"],
///     storage_account_name=example_account.name,
///     storage_account_access_key=example_account.primary_access_key,
///     app_settings={
///         "FUNCTIONS_WORKER_RUNTIME": "node",
///         "WEBSITE_NODE_DEFAULT_VERSION": "~18",
///     })
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
///         Name = "example",
///         Location = "West Europe",
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "examplestorageaccount",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleServicePlan = new Azure.AppService.ServicePlan("example", new()
///     {
///         Name = "example-service-plan",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         OsType = "Windows",
///         SkuName = "WS1",
///     });
///
///     var exampleStandard = new Azure.LogicApps.Standard("example", new()
///     {
///         Name = "example-logic-app",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AppServicePlanId = exampleAzurermAppServicePlan.Id,
///         StorageAccountName = exampleAccount.Name,
///         StorageAccountAccessKey = exampleAccount.PrimaryAccessKey,
///         AppSettings =
///         {
///             { "FUNCTIONS_WORKER_RUNTIME", "node" },
///             { "WEBSITE_NODE_DEFAULT_VERSION", "~18" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appservice"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/logicapps"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("examplestorageaccount"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appservice.NewServicePlan(ctx, "example", &appservice.ServicePlanArgs{
/// 			Name:              pulumi.String("example-service-plan"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			OsType:            pulumi.String("Windows"),
/// 			SkuName:           pulumi.String("WS1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = logicapps.NewStandard(ctx, "example", &logicapps.StandardArgs{
/// 			Name:                    pulumi.String("example-logic-app"),
/// 			Location:                example.Location,
/// 			ResourceGroupName:       example.Name,
/// 			AppServicePlanId:        pulumi.Any(exampleAzurermAppServicePlan.Id),
/// 			StorageAccountName:      exampleAccount.Name,
/// 			StorageAccountAccessKey: exampleAccount.PrimaryAccessKey,
/// 			AppSettings: pulumi.StringMap{
/// 				"FUNCTIONS_WORKER_RUNTIME":     pulumi.String("node"),
/// 				"WEBSITE_NODE_DEFAULT_VERSION": pulumi.String("~18"),
/// 			},
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
/// import com.pulumi.azure.appservice.ServicePlan;
/// import com.pulumi.azure.appservice.ServicePlanArgs;
/// import com.pulumi.azure.logicapps.Standard;
/// import com.pulumi.azure.logicapps.StandardArgs;
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
///             .name("example")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("examplestorageaccount")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleServicePlan = new ServicePlan("exampleServicePlan", ServicePlanArgs.builder()
///             .name("example-service-plan")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .osType("Windows")
///             .skuName("WS1")
///             .build());
///
///         var exampleStandard = new Standard("exampleStandard", StandardArgs.builder()
///             .name("example-logic-app")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .appServicePlanId(exampleAzurermAppServicePlan.id())
///             .storageAccountName(exampleAccount.name())
///             .storageAccountAccessKey(exampleAccount.primaryAccessKey())
///             .appSettings(Map.ofEntries(
///                 Map.entry("FUNCTIONS_WORKER_RUNTIME", "node"),
///                 Map.entry("WEBSITE_NODE_DEFAULT_VERSION", "~18")
///             ))
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
///       name: example
///       location: West Europe
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: examplestorageaccount
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleServicePlan:
///     type: azure:appservice:ServicePlan
///     name: example
///     properties:
///       name: example-service-plan
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       osType: Windows
///       skuName: WS1
///   exampleStandard:
///     type: azure:logicapps:Standard
///     name: example
///     properties:
///       name: example-logic-app
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       appServicePlanId: ${exampleAzurermAppServicePlan.id}
///       storageAccountName: ${exampleAccount.name}
///       storageAccountAccessKey: ${exampleAccount.primaryAccessKey}
///       appSettings:
///         FUNCTIONS_WORKER_RUNTIME: node
///         WEBSITE_NODE_DEFAULT_VERSION: ~18
/// ```
///
///
///
/// ### For Container Mode)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example",
///     location: "West Europe",
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "examplestorageaccount",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const examplePlan = new azure.appservice.Plan("example", {
///     name: "example-service-plan",
///     location: example.location,
///     resourceGroupName: example.name,
///     kind: "Linux",
///     reserved: true,
///     sku: {
///         tier: "WorkflowStandard",
///         size: "WS1",
///     },
/// });
/// const exampleStandard = new azure.logicapps.Standard("example", {
///     name: "example-logic-app",
///     location: example.location,
///     resourceGroupName: example.name,
///     appServicePlanId: examplePlan.id,
///     storageAccountName: exampleAccount.name,
///     storageAccountAccessKey: exampleAccount.primaryAccessKey,
///     siteConfig: {
///         linuxFxVersion: "DOCKER|mcr.microsoft.com/azure-functions/dotnet:3.0-appservice",
///     },
///     appSettings: {
///         DOCKER_REGISTRY_SERVER_URL: "https://<server-name>.azurecr.io",
///         DOCKER_REGISTRY_SERVER_USERNAME: "username",
///         DOCKER_REGISTRY_SERVER_PASSWORD: "password",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example",
///     location="West Europe")
/// example_account = azure.storage.Account("example",
///     name="examplestorageaccount",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_plan = azure.appservice.Plan("example",
///     name="example-service-plan",
///     location=example.location,
///     resource_group_name=example.name,
///     kind="Linux",
///     reserved=True,
///     sku={
///         "tier": "WorkflowStandard",
///         "size": "WS1",
///     })
/// example_standard = azure.logicapps.Standard("example",
///     name="example-logic-app",
///     location=example.location,
///     resource_group_name=example.name,
///     app_service_plan_id=example_plan.id,
///     storage_account_name=example_account.name,
///     storage_account_access_key=example_account.primary_access_key,
///     site_config={
///         "linux_fx_version": "DOCKER|mcr.microsoft.com/azure-functions/dotnet:3.0-appservice",
///     },
///     app_settings={
///         "DOCKER_REGISTRY_SERVER_URL": "https://<server-name>.azurecr.io",
///         "DOCKER_REGISTRY_SERVER_USERNAME": "username",
///         "DOCKER_REGISTRY_SERVER_PASSWORD": "password",
///     })
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
///         Name = "example",
///         Location = "West Europe",
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "examplestorageaccount",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var examplePlan = new Azure.AppService.Plan("example", new()
///     {
///         Name = "example-service-plan",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Kind = "Linux",
///         Reserved = true,
///         Sku = new Azure.AppService.Inputs.PlanSkuArgs
///         {
///             Tier = "WorkflowStandard",
///             Size = "WS1",
///         },
///     });
///
///     var exampleStandard = new Azure.LogicApps.Standard("example", new()
///     {
///         Name = "example-logic-app",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AppServicePlanId = examplePlan.Id,
///         StorageAccountName = exampleAccount.Name,
///         StorageAccountAccessKey = exampleAccount.PrimaryAccessKey,
///         SiteConfig = new Azure.LogicApps.Inputs.StandardSiteConfigArgs
///         {
///             LinuxFxVersion = "DOCKER|mcr.microsoft.com/azure-functions/dotnet:3.0-appservice",
///         },
///         AppSettings =
///         {
///             { "DOCKER_REGISTRY_SERVER_URL", "https://<server-name>.azurecr.io" },
///             { "DOCKER_REGISTRY_SERVER_USERNAME", "username" },
///             { "DOCKER_REGISTRY_SERVER_PASSWORD", "password" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appservice"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/logicapps"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("examplestorageaccount"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePlan, err := appservice.NewPlan(ctx, "example", &appservice.PlanArgs{
/// 			Name:              pulumi.String("example-service-plan"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Kind:              pulumi.Any("Linux"),
/// 			Reserved:          pulumi.Bool(true),
/// 			Sku: &appservice.PlanSkuArgs{
/// 				Tier: pulumi.String("WorkflowStandard"),
/// 				Size: pulumi.String("WS1"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = logicapps.NewStandard(ctx, "example", &logicapps.StandardArgs{
/// 			Name:                    pulumi.String("example-logic-app"),
/// 			Location:                example.Location,
/// 			ResourceGroupName:       example.Name,
/// 			AppServicePlanId:        examplePlan.ID(),
/// 			StorageAccountName:      exampleAccount.Name,
/// 			StorageAccountAccessKey: exampleAccount.PrimaryAccessKey,
/// 			SiteConfig: &logicapps.StandardSiteConfigArgs{
/// 				LinuxFxVersion: pulumi.String("DOCKER|mcr.microsoft.com/azure-functions/dotnet:3.0-appservice"),
/// 			},
/// 			AppSettings: pulumi.StringMap{
/// 				"DOCKER_REGISTRY_SERVER_URL":      pulumi.String("https://<server-name>.azurecr.io"),
/// 				"DOCKER_REGISTRY_SERVER_USERNAME": pulumi.String("username"),
/// 				"DOCKER_REGISTRY_SERVER_PASSWORD": pulumi.String("password"),
/// 			},
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
/// import com.pulumi.azure.appservice.Plan;
/// import com.pulumi.azure.appservice.PlanArgs;
/// import com.pulumi.azure.appservice.inputs.PlanSkuArgs;
/// import com.pulumi.azure.logicapps.Standard;
/// import com.pulumi.azure.logicapps.StandardArgs;
/// import com.pulumi.azure.logicapps.inputs.StandardSiteConfigArgs;
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
///             .name("example")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("examplestorageaccount")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var examplePlan = new Plan("examplePlan", PlanArgs.builder()
///             .name("example-service-plan")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .kind("Linux")
///             .reserved(true)
///             .sku(PlanSkuArgs.builder()
///                 .tier("WorkflowStandard")
///                 .size("WS1")
///                 .build())
///             .build());
///
///         var exampleStandard = new Standard("exampleStandard", StandardArgs.builder()
///             .name("example-logic-app")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .appServicePlanId(examplePlan.id())
///             .storageAccountName(exampleAccount.name())
///             .storageAccountAccessKey(exampleAccount.primaryAccessKey())
///             .siteConfig(StandardSiteConfigArgs.builder()
///                 .linuxFxVersion("DOCKER|mcr.microsoft.com/azure-functions/dotnet:3.0-appservice")
///                 .build())
///             .appSettings(Map.ofEntries(
///                 Map.entry("DOCKER_REGISTRY_SERVER_URL", "https://<server-name>.azurecr.io"),
///                 Map.entry("DOCKER_REGISTRY_SERVER_USERNAME", "username"),
///                 Map.entry("DOCKER_REGISTRY_SERVER_PASSWORD", "password")
///             ))
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
///       name: example
///       location: West Europe
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: examplestorageaccount
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   examplePlan:
///     type: azure:appservice:Plan
///     name: example
///     properties:
///       name: example-service-plan
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       kind: Linux
///       reserved: true
///       sku:
///         tier: WorkflowStandard
///         size: WS1
///   exampleStandard:
///     type: azure:logicapps:Standard
///     name: example
///     properties:
///       name: example-logic-app
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       appServicePlanId: ${examplePlan.id}
///       storageAccountName: ${exampleAccount.name}
///       storageAccountAccessKey: ${exampleAccount.primaryAccessKey}
///       siteConfig:
///         linuxFxVersion: DOCKER|mcr.microsoft.com/azure-functions/dotnet:3.0-appservice
///       appSettings:
///         DOCKER_REGISTRY_SERVER_URL: https://<server-name>.azurecr.io
///         DOCKER_REGISTRY_SERVER_USERNAME: username
///         DOCKER_REGISTRY_SERVER_PASSWORD: password
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
/// Logic Apps can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:logicapps/standard:Standard logicapp1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Web/sites/logicapp1
/// ```
class Standard extends pulumi.CustomResource {
  /// The ID of the App Service Plan within which to create this Logic App.
  late final pulumi.Output<String> appServicePlanId;

  /// A map of key-value pairs for [App Settings](https://docs.microsoft.com/azure/azure-functions/functions-app-settings) and custom values.
  ///
  /// &gt; **Note:** There are a number of application settings that will be managed for you by this resource type and *shouldn't* be configured separately as part of the app_settings you specify.  `AzureWebJobsStorage` is filled based on `storage_account_name` and `storage_account_access_key`. `WEBSITE_CONTENTSHARE` is detailed below. `FUNCTIONS_EXTENSION_VERSION` is filled based on `version`. `APP_KIND` is set to workflowApp and `AzureFunctionsJobHost__extensionBundle__id` and `AzureFunctionsJobHost__extensionBundle__version` are set as detailed below.
  late final pulumi.Output<Map<String, String>> appSettings;

  /// If `use_extension_bundle` is set to `true` this controls the allowed range for bundle versions. Defaults to `[1.*, 2.0.0)`.
  late final pulumi.Output<String?> bundleVersion;

  /// Should the Logic App send session affinity cookies, which route client requests in the same session to the same instance?
  late final pulumi.Output<bool> clientAffinityEnabled;

  /// The mode of the Logic App's client certificates requirement for incoming requests. Possible values are `Required`, `Optional`, and `OptionalInteractiveUser`.
  late final pulumi.Output<String?> clientCertificateMode;

  /// A `connection_string` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> connectionStrings;

  /// An identifier used by App Service to perform domain ownership verification via DNS TXT record.
  late final pulumi.Output<String> customDomainVerificationId;

  /// The default hostname associated with the Logic App - such as `mysite.azurewebsites.net`.
  late final pulumi.Output<String> defaultHostname;

  /// Is the Logic App enabled? Defaults to `true`.
  late final pulumi.Output<bool?> enabled;

  /// Whether the FTP basic authentication publishing profile is enabled. Defaults to `true`.
  late final pulumi.Output<bool?> ftpPublishBasicAuthenticationEnabled;

  /// Can the Logic App only be accessed via HTTPS? Defaults to `false`.
  late final pulumi.Output<bool?> httpsOnly;

  /// An `identity` block as defined below.
  late final pulumi.Output<StandardIdentity?> identity;

  /// The Logic App kind.
  late final pulumi.Output<String> kind;

  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;

  /// Specifies the name of the Logic App. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12`.
  late final pulumi.Output<String> outboundIpAddresses;

  /// A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12,52.143.43.17` - not all of which are necessarily in use. Superset of `outbound_ip_addresses`.
  late final pulumi.Output<String> possibleOutboundIpAddresses;

  /// Whether Public Network Access should be enabled or not. Possible values are `Enabled` and `Disabled`. Defaults to `Enabled`.
  ///
  /// &gt; **Note:** Setting this property will also set it in the Site Config.
  late final pulumi.Output<String> publicNetworkAccess;

  /// The name of the resource group in which to create the Logic App. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// Whether the default SCM basic authentication publishing profile is enabled. Defaults to `true`.
  late final pulumi.Output<bool?> scmPublishBasicAuthenticationEnabled;

  /// A `site_config` object as defined below.
  late final pulumi.Output<StandardSiteConfig> siteConfig;

  /// A `site_credential` block as defined below, which contains the site-level credentials used to publish to this App Service.
  late final pulumi.Output<List<Map<String, dynamic>>> siteCredentials;

  /// The access key which will be used to access the backend storage account for the Logic App.
  late final pulumi.Output<String> storageAccountAccessKey;

  /// The backend storage account name which will be used by this Logic App (e.g. for Stateful workflows data). Changing this forces a new resource to be created.
  late final pulumi.Output<String> storageAccountName;

  /// The name of the share used by the logic app, if you want to use a custom name. This corresponds to the WEBSITE_CONTENTSHARE appsetting, which this resource will create for you. If you don't specify a name, then this resource will generate a dynamic name. This setting is useful if you want to provision a storage account and create a share using `azure.storage.Share`.
  ///
  /// &gt; **Note:** When integrating a `CI/CD pipeline` and expecting to run from a deployed package in `Azure` you must seed your `app settings` as part of terraform code for Logic App to be successfully deployed. `Important Default key pairs`: (`"WEBSITE_RUN_FROM_PACKAGE" = ""`, `"FUNCTIONS_WORKER_RUNTIME" = "node"` (or Python, etc.), `"WEBSITE_NODE_DEFAULT_VERSION" = "10.14.1"`, `"APPINSIGHTS_INSTRUMENTATIONKEY" = ""`).
  ///
  /// &gt; **Note:** When using an App Service Plan in the `Free` or `Shared` Tiers `use_32_bit_worker_process` must be set to `true`.
  late final pulumi.Output<String> storageAccountShareName;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Should the logic app use the bundled extension package? If true, then application settings for `AzureFunctionsJobHost__extensionBundle__id` and `AzureFunctionsJobHost__extensionBundle__version` will be created. Defaults to `true`.
  late final pulumi.Output<bool?> useExtensionBundle;

  /// The runtime version associated with the Logic App. Defaults to `~4`.
  late final pulumi.Output<String?> version;

  /// The subnet ID which will be used by this resource for [regional virtual network integration](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#regional-virtual-network-integration).
  ///
  /// &gt; **Note:** The AzureRM Terraform provider provides regional virtual network integration via the standalone resource app_service_virtual_network_swift_connection and in-line within this resource using the `virtual_network_subnet_id` property. You cannot use both methods simultaneously.
  ///
  /// &gt; **Note:** Assigning the `virtual_network_subnet_id` property requires [RBAC permissions on the subnet](https://docs.microsoft.com/en-us/azure/app-service/overview-vnet-integration#permissions)
  late final pulumi.Output<String?> virtualNetworkSubnetId;

  /// Specifies whether allow routing traffic between the Logic App and Storage Account content share through a virtual network. Defaults to `false`.
  late final pulumi.Output<bool?> vnetContentShareEnabled;

  /// Creates a new [Standard].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Standard]. {@macro pulumi_logicapps_standard_standard_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Standard(
    String name, {
    StandardArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:logicapps/standard:Standard',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    appServicePlanId = registerOutput<String>('appServicePlanId');
    appSettings = registerOutput<Map<String, String>>('appSettings');
    bundleVersion = registerOutput<String?>('bundleVersion');
    clientAffinityEnabled = registerOutput<bool>('clientAffinityEnabled');
    clientCertificateMode = registerOutput<String?>('clientCertificateMode');
    connectionStrings = registerOutput<List<Map<String, dynamic>>>(
      'connectionStrings',
    );
    customDomainVerificationId = registerOutput<String>(
      'customDomainVerificationId',
    );
    defaultHostname = registerOutput<String>('defaultHostname');
    enabled = registerOutput<bool?>('enabled');
    ftpPublishBasicAuthenticationEnabled = registerOutput<bool?>(
      'ftpPublishBasicAuthenticationEnabled',
    );
    httpsOnly = registerOutput<bool?>('httpsOnly');
    identity = registerOutput<StandardIdentity?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return StandardIdentity.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    kind = registerOutput<String>('kind');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    outboundIpAddresses = registerOutput<String>('outboundIpAddresses');
    possibleOutboundIpAddresses = registerOutput<String>(
      'possibleOutboundIpAddresses',
    );
    publicNetworkAccess = registerOutput<String>('publicNetworkAccess');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    scmPublishBasicAuthenticationEnabled = registerOutput<bool?>(
      'scmPublishBasicAuthenticationEnabled',
    );
    siteConfig = registerOutput<StandardSiteConfig>(
      'siteConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return StandardSiteConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    siteCredentials = registerOutput<List<Map<String, dynamic>>>(
      'siteCredentials',
    );
    storageAccountAccessKey = registerOutput<String>('storageAccountAccessKey');
    storageAccountName = registerOutput<String>('storageAccountName');
    storageAccountShareName = registerOutput<String>('storageAccountShareName');
    tags = registerOutput<Map<String, String>?>('tags');
    useExtensionBundle = registerOutput<bool?>('useExtensionBundle');
    version = registerOutput<String?>('version');
    virtualNetworkSubnetId = registerOutput<String?>('virtualNetworkSubnetId');
    vnetContentShareEnabled = registerOutput<bool?>('vnetContentShareEnabled');
  }

  /// Gets an existing [Standard] resource's state with the given [name] and [id].
  static Standard get(
    String name,
    pulumi.Input<String> id, {
    StandardState? state,
  }) {
    return Standard._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Standard._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:logicapps/standard:Standard',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    appServicePlanId = registerOutput<String>('appServicePlanId');
    appSettings = registerOutput<Map<String, String>>('appSettings');
    bundleVersion = registerOutput<String?>('bundleVersion');
    clientAffinityEnabled = registerOutput<bool>('clientAffinityEnabled');
    clientCertificateMode = registerOutput<String?>('clientCertificateMode');
    connectionStrings = registerOutput<List<Map<String, dynamic>>>(
      'connectionStrings',
    );
    customDomainVerificationId = registerOutput<String>(
      'customDomainVerificationId',
    );
    defaultHostname = registerOutput<String>('defaultHostname');
    enabled = registerOutput<bool?>('enabled');
    ftpPublishBasicAuthenticationEnabled = registerOutput<bool?>(
      'ftpPublishBasicAuthenticationEnabled',
    );
    httpsOnly = registerOutput<bool?>('httpsOnly');
    identity = registerOutput<StandardIdentity?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return StandardIdentity.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    kind = registerOutput<String>('kind');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    outboundIpAddresses = registerOutput<String>('outboundIpAddresses');
    possibleOutboundIpAddresses = registerOutput<String>(
      'possibleOutboundIpAddresses',
    );
    publicNetworkAccess = registerOutput<String>('publicNetworkAccess');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    scmPublishBasicAuthenticationEnabled = registerOutput<bool?>(
      'scmPublishBasicAuthenticationEnabled',
    );
    siteConfig = registerOutput<StandardSiteConfig>(
      'siteConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return StandardSiteConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    siteCredentials = registerOutput<List<Map<String, dynamic>>>(
      'siteCredentials',
    );
    storageAccountAccessKey = registerOutput<String>('storageAccountAccessKey');
    storageAccountName = registerOutput<String>('storageAccountName');
    storageAccountShareName = registerOutput<String>('storageAccountShareName');
    tags = registerOutput<Map<String, String>?>('tags');
    useExtensionBundle = registerOutput<bool?>('useExtensionBundle');
    version = registerOutput<String?>('version');
    virtualNetworkSubnetId = registerOutput<String?>('virtualNetworkSubnetId');
    vnetContentShareEnabled = registerOutput<bool?>('vnetContentShareEnabled');
  }
}
