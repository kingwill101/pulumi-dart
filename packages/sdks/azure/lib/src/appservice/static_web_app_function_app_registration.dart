import 'package:pulumi/pulumi.dart' as pulumi;
import 'static_web_app_function_app_registration_args.dart';
import 'static_web_app_function_app_registration_state.dart';

/// Manages an App Service Static Web App Function App Registration.
///
/// &gt; **Note:** This resource registers the specified Function App to the `Production` build of the Static Web App.
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
/// const exampleStaticWebApp = new azure.appservice.StaticWebApp("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "examplesstorageacc",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleServicePlan = new azure.appservice.ServicePlan("example", {
///     name: "example-service-plan",
///     location: example.location,
///     resourceGroupName: example.name,
///     osType: "Linux",
///     skuName: "S1",
/// });
/// const exampleLinuxFunctionApp = new azure.appservice.LinuxFunctionApp("example", {
///     name: "example-function-app",
///     location: example.location,
///     resourceGroupName: example.name,
///     servicePlanId: exampleServicePlan.id,
///     storageAccountName: exampleAccount.name,
///     storageAccountAccessKey: exampleAccount.primaryAccessKey,
///     siteConfig: {},
/// });
/// const exampleStaticWebAppFunctionAppRegistration = new azure.appservice.StaticWebAppFunctionAppRegistration("example", {
///     staticWebAppId: exampleStaticWebApp.id,
///     functionAppId: exampleLinuxFunctionApp.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_static_web_app = azure.appservice.StaticWebApp("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location)
/// example_account = azure.storage.Account("example",
///     name="examplesstorageacc",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_service_plan = azure.appservice.ServicePlan("example",
///     name="example-service-plan",
///     location=example.location,
///     resource_group_name=example.name,
///     os_type="Linux",
///     sku_name="S1")
/// example_linux_function_app = azure.appservice.LinuxFunctionApp("example",
///     name="example-function-app",
///     location=example.location,
///     resource_group_name=example.name,
///     service_plan_id=example_service_plan.id,
///     storage_account_name=example_account.name,
///     storage_account_access_key=example_account.primary_access_key,
///     site_config={})
/// example_static_web_app_function_app_registration = azure.appservice.StaticWebAppFunctionAppRegistration("example",
///     static_web_app_id=example_static_web_app.id,
///     function_app_id=example_linux_function_app.id)
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
///     var exampleStaticWebApp = new Azure.AppService.StaticWebApp("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "examplesstorageacc",
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
///         OsType = "Linux",
///         SkuName = "S1",
///     });
///
///     var exampleLinuxFunctionApp = new Azure.AppService.LinuxFunctionApp("example", new()
///     {
///         Name = "example-function-app",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         ServicePlanId = exampleServicePlan.Id,
///         StorageAccountName = exampleAccount.Name,
///         StorageAccountAccessKey = exampleAccount.PrimaryAccessKey,
///         SiteConfig = null,
///     });
///
///     var exampleStaticWebAppFunctionAppRegistration = new Azure.AppService.StaticWebAppFunctionAppRegistration("example", new()
///     {
///         StaticWebAppId = exampleStaticWebApp.Id,
///         FunctionAppId = exampleLinuxFunctionApp.Id,
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
/// 		exampleStaticWebApp, err := appservice.NewStaticWebApp(ctx, "example", &appservice.StaticWebAppArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("examplesstorageacc"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleServicePlan, err := appservice.NewServicePlan(ctx, "example", &appservice.ServicePlanArgs{
/// 			Name:              pulumi.String("example-service-plan"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			OsType:            pulumi.String("Linux"),
/// 			SkuName:           pulumi.String("S1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLinuxFunctionApp, err := appservice.NewLinuxFunctionApp(ctx, "example", &appservice.LinuxFunctionAppArgs{
/// 			Name:                    pulumi.String("example-function-app"),
/// 			Location:                example.Location,
/// 			ResourceGroupName:       example.Name,
/// 			ServicePlanId:           exampleServicePlan.ID(),
/// 			StorageAccountName:      exampleAccount.Name,
/// 			StorageAccountAccessKey: exampleAccount.PrimaryAccessKey,
/// 			SiteConfig:              &appservice.LinuxFunctionAppSiteConfigArgs{},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appservice.NewStaticWebAppFunctionAppRegistration(ctx, "example", &appservice.StaticWebAppFunctionAppRegistrationArgs{
/// 			StaticWebAppId: exampleStaticWebApp.ID(),
/// 			FunctionAppId:  exampleLinuxFunctionApp.ID(),
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
/// import com.pulumi.azure.appservice.StaticWebApp;
/// import com.pulumi.azure.appservice.StaticWebAppArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.appservice.ServicePlan;
/// import com.pulumi.azure.appservice.ServicePlanArgs;
/// import com.pulumi.azure.appservice.LinuxFunctionApp;
/// import com.pulumi.azure.appservice.LinuxFunctionAppArgs;
/// import com.pulumi.azure.appservice.inputs.LinuxFunctionAppSiteConfigArgs;
/// import com.pulumi.azure.appservice.StaticWebAppFunctionAppRegistration;
/// import com.pulumi.azure.appservice.StaticWebAppFunctionAppRegistrationArgs;
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
///         var exampleStaticWebApp = new StaticWebApp("exampleStaticWebApp", StaticWebAppArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("examplesstorageacc")
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
///             .osType("Linux")
///             .skuName("S1")
///             .build());
///
///         var exampleLinuxFunctionApp = new LinuxFunctionApp("exampleLinuxFunctionApp", LinuxFunctionAppArgs.builder()
///             .name("example-function-app")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .servicePlanId(exampleServicePlan.id())
///             .storageAccountName(exampleAccount.name())
///             .storageAccountAccessKey(exampleAccount.primaryAccessKey())
///             .siteConfig(LinuxFunctionAppSiteConfigArgs.builder()
///                 .build())
///             .build());
///
///         var exampleStaticWebAppFunctionAppRegistration = new StaticWebAppFunctionAppRegistration("exampleStaticWebAppFunctionAppRegistration", StaticWebAppFunctionAppRegistrationArgs.builder()
///             .staticWebAppId(exampleStaticWebApp.id())
///             .functionAppId(exampleLinuxFunctionApp.id())
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
///   exampleStaticWebApp:
///     type: azure:appservice:StaticWebApp
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: examplesstorageacc
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
///       osType: Linux
///       skuName: S1
///   exampleLinuxFunctionApp:
///     type: azure:appservice:LinuxFunctionApp
///     name: example
///     properties:
///       name: example-function-app
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       servicePlanId: ${exampleServicePlan.id}
///       storageAccountName: ${exampleAccount.name}
///       storageAccountAccessKey: ${exampleAccount.primaryAccessKey}
///       siteConfig: {}
///   exampleStaticWebAppFunctionAppRegistration:
///     type: azure:appservice:StaticWebAppFunctionAppRegistration
///     name: example
///     properties:
///       staticWebAppId: ${exampleStaticWebApp.id}
///       functionAppId: ${exampleLinuxFunctionApp.id}
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
/// Static Web App Function App Registration can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appservice/staticWebAppFunctionAppRegistration:StaticWebAppFunctionAppRegistration example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/group1/providers/Microsoft.Web/staticSites/my-static-site1/userProvidedFunctionApps/myFunctionApp
/// ```
class StaticWebAppFunctionAppRegistration extends pulumi.CustomResource {
  /// The ID of a Linux or Windows Function App to connect to the Static Web App as a Backend. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** Only one Function App can be connected to a Static Web App. Multiple Function Apps are not currently supported.
  ///
  /// &gt; **Note:** Connecting a Function App resource to a Static Web App resource updates the Function App to use AuthV2 and configures the `azure_static_web_app_v2` which may need to be accounted for by the use of `ignore_changes` depending on the existing `auth_settings_v2` configuration of the target Function App.
  late final pulumi.Output<String> functionAppId;

  /// The ID of the Static Web App to register the Function App to as a backend. Changing this forces a new resource to be created.
  late final pulumi.Output<String> staticWebAppId;

  /// Creates a new [StaticWebAppFunctionAppRegistration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StaticWebAppFunctionAppRegistration]. {@macro pulumi_appservice_static_web_app_function_app_registration_static_web_app_function_app_registration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StaticWebAppFunctionAppRegistration(
    String name, {
    StaticWebAppFunctionAppRegistrationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:appservice/staticWebAppFunctionAppRegistration:StaticWebAppFunctionAppRegistration',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    functionAppId = registerOutput<String>('functionAppId');
    staticWebAppId = registerOutput<String>('staticWebAppId');
  }

  /// Gets an existing [StaticWebAppFunctionAppRegistration] resource's state with the given [name] and [id].
  static StaticWebAppFunctionAppRegistration get(
    String name,
    pulumi.Input<String> id, {
    StaticWebAppFunctionAppRegistrationState? state,
  }) {
    return StaticWebAppFunctionAppRegistration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  StaticWebAppFunctionAppRegistration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:appservice/staticWebAppFunctionAppRegistration:StaticWebAppFunctionAppRegistration',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    functionAppId = registerOutput<String>('functionAppId');
    staticWebAppId = registerOutput<String>('staticWebAppId');
  }
}
