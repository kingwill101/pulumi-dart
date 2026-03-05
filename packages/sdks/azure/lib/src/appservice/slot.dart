import 'package:pulumi/pulumi.dart' as pulumi;
import 'slot_args.dart';
import 'slot_auth_settings.dart';
import 'slot_identity.dart';
import 'slot_logs.dart';
import 'slot_site_config.dart';
import 'slot_state.dart';

/// Manages an App Service Slot (within an App Service).
///
/// !&gt; **NOTE:** This resource has been deprecated in version 5.0 of the provider and will be removed in version 6.0. Please use `azure.appservice.LinuxWebAppSlot` and `azure.appservice.WindowsWebAppSlot` resources instead.
///
/// &gt; **Note:** When using Slots - the `app_settings`, `connection_string` and `site_config` blocks on the `azure.appservice.AppService` resource will be overwritten when promoting a Slot using the `azure.appservice.ActiveSlot` resource.
///
/// ## Example Usage
///
/// ### NET 4.X)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as random from "@pulumi/random";
///
/// const server = new random.index.Id("server", {
///     keepers: {
///         aziId: 1,
///     },
///     byteLength: 8,
/// });
/// const example = new azure.core.ResourceGroup("example", {
///     name: "some-resource-group",
///     location: "West Europe",
/// });
/// const examplePlan = new azure.appservice.Plan("example", {
///     name: "some-app-service-plan",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: {
///         tier: "Standard",
///         size: "S1",
///     },
/// });
/// const exampleAppService = new azure.appservice.AppService("example", {
///     name: server.hex,
///     location: example.location,
///     resourceGroupName: example.name,
///     appServicePlanId: examplePlan.id,
///     siteConfig: {
///         dotnetFrameworkVersion: "v4.0",
///     },
///     appSettings: {
///         SOME_KEY: "some-value",
///     },
///     connectionStrings: [{
///         name: "Database",
///         type: "SQLServer",
///         value: "Server=some-server.mydomain.com;Integrated Security=SSPI",
///     }],
/// });
/// const exampleSlot = new azure.appservice.Slot("example", {
///     name: server.hex,
///     appServiceName: exampleAppService.name,
///     location: example.location,
///     resourceGroupName: example.name,
///     appServicePlanId: examplePlan.id,
///     siteConfig: {
///         dotnetFrameworkVersion: "v4.0",
///     },
///     appSettings: {
///         SOME_KEY: "some-value",
///     },
///     connectionStrings: [{
///         name: "Database",
///         type: "SQLServer",
///         value: "Server=some-server.mydomain.com;Integrated Security=SSPI",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_random as random
///
/// server = random.index.Id("server",
///     keepers={
///         aziId: 1,
///     },
///     byte_length=8)
/// example = azure.core.ResourceGroup("example",
///     name="some-resource-group",
///     location="West Europe")
/// example_plan = azure.appservice.Plan("example",
///     name="some-app-service-plan",
///     location=example.location,
///     resource_group_name=example.name,
///     sku={
///         "tier": "Standard",
///         "size": "S1",
///     })
/// example_app_service = azure.appservice.AppService("example",
///     name=server["hex"],
///     location=example.location,
///     resource_group_name=example.name,
///     app_service_plan_id=example_plan.id,
///     site_config={
///         "dotnet_framework_version": "v4.0",
///     },
///     app_settings={
///         "SOME_KEY": "some-value",
///     },
///     connection_strings=[{
///         "name": "Database",
///         "type": "SQLServer",
///         "value": "Server=some-server.mydomain.com;Integrated Security=SSPI",
///     }])
/// example_slot = azure.appservice.Slot("example",
///     name=server["hex"],
///     app_service_name=example_app_service.name,
///     location=example.location,
///     resource_group_name=example.name,
///     app_service_plan_id=example_plan.id,
///     site_config={
///         "dotnet_framework_version": "v4.0",
///     },
///     app_settings={
///         "SOME_KEY": "some-value",
///     },
///     connection_strings=[{
///         "name": "Database",
///         "type": "SQLServer",
///         "value": "Server=some-server.mydomain.com;Integrated Security=SSPI",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var server = new Random.Index.Id("server", new()
///     {
///         Keepers =
///         {
///             { "aziId", 1 },
///         },
///         ByteLength = 8,
///     });
///
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "some-resource-group",
///         Location = "West Europe",
///     });
///
///     var examplePlan = new Azure.AppService.Plan("example", new()
///     {
///         Name = "some-app-service-plan",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = new Azure.AppService.Inputs.PlanSkuArgs
///         {
///             Tier = "Standard",
///             Size = "S1",
///         },
///     });
///
///     var exampleAppService = new Azure.AppService.AppService("example", new()
///     {
///         Name = server.Hex,
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AppServicePlanId = examplePlan.Id,
///         SiteConfig = new Azure.AppService.Inputs.AppServiceSiteConfigArgs
///         {
///             DotnetFrameworkVersion = "v4.0",
///         },
///         AppSettings =
///         {
///             { "SOME_KEY", "some-value" },
///         },
///         ConnectionStrings = new[]
///         {
///             new Azure.AppService.Inputs.AppServiceConnectionStringArgs
///             {
///                 Name = "Database",
///                 Type = "SQLServer",
///                 Value = "Server=some-server.mydomain.com;Integrated Security=SSPI",
///             },
///         },
///     });
///
///     var exampleSlot = new Azure.AppService.Slot("example", new()
///     {
///         Name = server.Hex,
///         AppServiceName = exampleAppService.Name,
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AppServicePlanId = examplePlan.Id,
///         SiteConfig = new Azure.AppService.Inputs.SlotSiteConfigArgs
///         {
///             DotnetFrameworkVersion = "v4.0",
///         },
///         AppSettings =
///         {
///             { "SOME_KEY", "some-value" },
///         },
///         ConnectionStrings = new[]
///         {
///             new Azure.AppService.Inputs.SlotConnectionStringArgs
///             {
///                 Name = "Database",
///                 Type = "SQLServer",
///                 Value = "Server=some-server.mydomain.com;Integrated Security=SSPI",
///             },
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
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		server, err := random.NewId(ctx, "server", &random.IdArgs{
/// 			Keepers: map[string]interface{}{
/// 				"aziId": 1,
/// 			},
/// 			ByteLength: 8,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("some-resource-group"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePlan, err := appservice.NewPlan(ctx, "example", &appservice.PlanArgs{
/// 			Name:              pulumi.String("some-app-service-plan"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku: &appservice.PlanSkuArgs{
/// 				Tier: pulumi.String("Standard"),
/// 				Size: pulumi.String("S1"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAppService, err := appservice.NewAppService(ctx, "example", &appservice.AppServiceArgs{
/// 			Name:              server.Hex,
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AppServicePlanId:  examplePlan.ID(),
/// 			SiteConfig: &appservice.AppServiceSiteConfigArgs{
/// 				DotnetFrameworkVersion: pulumi.String("v4.0"),
/// 			},
/// 			AppSettings: pulumi.StringMap{
/// 				"SOME_KEY": pulumi.String("some-value"),
/// 			},
/// 			ConnectionStrings: appservice.AppServiceConnectionStringArray{
/// 				&appservice.AppServiceConnectionStringArgs{
/// 					Name:  pulumi.String("Database"),
/// 					Type:  pulumi.String("SQLServer"),
/// 					Value: pulumi.String("Server=some-server.mydomain.com;Integrated Security=SSPI"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appservice.NewSlot(ctx, "example", &appservice.SlotArgs{
/// 			Name:              server.Hex,
/// 			AppServiceName:    exampleAppService.Name,
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AppServicePlanId:  examplePlan.ID(),
/// 			SiteConfig: &appservice.SlotSiteConfigArgs{
/// 				DotnetFrameworkVersion: pulumi.String("v4.0"),
/// 			},
/// 			AppSettings: pulumi.StringMap{
/// 				"SOME_KEY": pulumi.String("some-value"),
/// 			},
/// 			ConnectionStrings: appservice.SlotConnectionStringArray{
/// 				&appservice.SlotConnectionStringArgs{
/// 					Name:  pulumi.String("Database"),
/// 					Type:  pulumi.String("SQLServer"),
/// 					Value: pulumi.String("Server=some-server.mydomain.com;Integrated Security=SSPI"),
/// 				},
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
/// import com.pulumi.random.Id;
/// import com.pulumi.random.IdArgs;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.appservice.Plan;
/// import com.pulumi.azure.appservice.PlanArgs;
/// import com.pulumi.azure.appservice.inputs.PlanSkuArgs;
/// import com.pulumi.azure.appservice.AppService;
/// import com.pulumi.azure.appservice.AppServiceArgs;
/// import com.pulumi.azure.appservice.inputs.AppServiceSiteConfigArgs;
/// import com.pulumi.azure.appservice.inputs.AppServiceConnectionStringArgs;
/// import com.pulumi.azure.appservice.Slot;
/// import com.pulumi.azure.appservice.SlotArgs;
/// import com.pulumi.azure.appservice.inputs.SlotSiteConfigArgs;
/// import com.pulumi.azure.appservice.inputs.SlotConnectionStringArgs;
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
///         var server = new Id("server", IdArgs.builder()
///             .keepers(Map.of("aziId", 1))
///             .byteLength(8)
///             .build());
///
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("some-resource-group")
///             .location("West Europe")
///             .build());
///
///         var examplePlan = new Plan("examplePlan", PlanArgs.builder()
///             .name("some-app-service-plan")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku(PlanSkuArgs.builder()
///                 .tier("Standard")
///                 .size("S1")
///                 .build())
///             .build());
///
///         var exampleAppService = new AppService("exampleAppService", AppServiceArgs.builder()
///             .name(server.hex())
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .appServicePlanId(examplePlan.id())
///             .siteConfig(AppServiceSiteConfigArgs.builder()
///                 .dotnetFrameworkVersion("v4.0")
///                 .build())
///             .appSettings(Map.of("SOME_KEY", "some-value"))
///             .connectionStrings(AppServiceConnectionStringArgs.builder()
///                 .name("Database")
///                 .type("SQLServer")
///                 .value("Server=some-server.mydomain.com;Integrated Security=SSPI")
///                 .build())
///             .build());
///
///         var exampleSlot = new Slot("exampleSlot", SlotArgs.builder()
///             .name(server.hex())
///             .appServiceName(exampleAppService.name())
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .appServicePlanId(examplePlan.id())
///             .siteConfig(SlotSiteConfigArgs.builder()
///                 .dotnetFrameworkVersion("v4.0")
///                 .build())
///             .appSettings(Map.of("SOME_KEY", "some-value"))
///             .connectionStrings(SlotConnectionStringArgs.builder()
///                 .name("Database")
///                 .type("SQLServer")
///                 .value("Server=some-server.mydomain.com;Integrated Security=SSPI")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   server:
///     type: random:Id
///     properties:
///       keepers:
///         aziId: 1
///       byteLength: 8
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: some-resource-group
///       location: West Europe
///   examplePlan:
///     type: azure:appservice:Plan
///     name: example
///     properties:
///       name: some-app-service-plan
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku:
///         tier: Standard
///         size: S1
///   exampleAppService:
///     type: azure:appservice:AppService
///     name: example
///     properties:
///       name: ${server.hex}
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       appServicePlanId: ${examplePlan.id}
///       siteConfig:
///         dotnetFrameworkVersion: v4.0
///       appSettings:
///         SOME_KEY: some-value
///       connectionStrings:
///         - name: Database
///           type: SQLServer
///           value: Server=some-server.mydomain.com;Integrated Security=SSPI
///   exampleSlot:
///     type: azure:appservice:Slot
///     name: example
///     properties:
///       name: ${server.hex}
///       appServiceName: ${exampleAppService.name}
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       appServicePlanId: ${examplePlan.id}
///       siteConfig:
///         dotnetFrameworkVersion: v4.0
///       appSettings:
///         SOME_KEY: some-value
///       connectionStrings:
///         - name: Database
///           type: SQLServer
///           value: Server=some-server.mydomain.com;Integrated Security=SSPI
/// ```
///
///
///
/// ### Java 1.8)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as random from "@pulumi/random";
///
/// const server = new random.index.Id("server", {
///     keepers: {
///         aziId: 1,
///     },
///     byteLength: 8,
/// });
/// const example = new azure.core.ResourceGroup("example", {
///     name: "some-resource-group",
///     location: "West Europe",
/// });
/// const examplePlan = new azure.appservice.Plan("example", {
///     name: "some-app-service-plan",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: {
///         tier: "Standard",
///         size: "S1",
///     },
/// });
/// const exampleAppService = new azure.appservice.AppService("example", {
///     name: server.hex,
///     location: example.location,
///     resourceGroupName: example.name,
///     appServicePlanId: examplePlan.id,
///     siteConfig: {
///         javaVersion: "1.8",
///         javaContainer: "JETTY",
///         javaContainerVersion: "9.3",
///     },
/// });
/// const exampleSlot = new azure.appservice.Slot("example", {
///     name: server.hex,
///     appServiceName: exampleAppService.name,
///     location: example.location,
///     resourceGroupName: example.name,
///     appServicePlanId: examplePlan.id,
///     siteConfig: {
///         javaVersion: "1.8",
///         javaContainer: "JETTY",
///         javaContainerVersion: "9.3",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_random as random
///
/// server = random.index.Id("server",
///     keepers={
///         aziId: 1,
///     },
///     byte_length=8)
/// example = azure.core.ResourceGroup("example",
///     name="some-resource-group",
///     location="West Europe")
/// example_plan = azure.appservice.Plan("example",
///     name="some-app-service-plan",
///     location=example.location,
///     resource_group_name=example.name,
///     sku={
///         "tier": "Standard",
///         "size": "S1",
///     })
/// example_app_service = azure.appservice.AppService("example",
///     name=server["hex"],
///     location=example.location,
///     resource_group_name=example.name,
///     app_service_plan_id=example_plan.id,
///     site_config={
///         "java_version": "1.8",
///         "java_container": "JETTY",
///         "java_container_version": "9.3",
///     })
/// example_slot = azure.appservice.Slot("example",
///     name=server["hex"],
///     app_service_name=example_app_service.name,
///     location=example.location,
///     resource_group_name=example.name,
///     app_service_plan_id=example_plan.id,
///     site_config={
///         "java_version": "1.8",
///         "java_container": "JETTY",
///         "java_container_version": "9.3",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var server = new Random.Index.Id("server", new()
///     {
///         Keepers =
///         {
///             { "aziId", 1 },
///         },
///         ByteLength = 8,
///     });
///
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "some-resource-group",
///         Location = "West Europe",
///     });
///
///     var examplePlan = new Azure.AppService.Plan("example", new()
///     {
///         Name = "some-app-service-plan",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = new Azure.AppService.Inputs.PlanSkuArgs
///         {
///             Tier = "Standard",
///             Size = "S1",
///         },
///     });
///
///     var exampleAppService = new Azure.AppService.AppService("example", new()
///     {
///         Name = server.Hex,
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AppServicePlanId = examplePlan.Id,
///         SiteConfig = new Azure.AppService.Inputs.AppServiceSiteConfigArgs
///         {
///             JavaVersion = "1.8",
///             JavaContainer = "JETTY",
///             JavaContainerVersion = "9.3",
///         },
///     });
///
///     var exampleSlot = new Azure.AppService.Slot("example", new()
///     {
///         Name = server.Hex,
///         AppServiceName = exampleAppService.Name,
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AppServicePlanId = examplePlan.Id,
///         SiteConfig = new Azure.AppService.Inputs.SlotSiteConfigArgs
///         {
///             JavaVersion = "1.8",
///             JavaContainer = "JETTY",
///             JavaContainerVersion = "9.3",
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
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		server, err := random.NewId(ctx, "server", &random.IdArgs{
/// 			Keepers: map[string]interface{}{
/// 				"aziId": 1,
/// 			},
/// 			ByteLength: 8,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("some-resource-group"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePlan, err := appservice.NewPlan(ctx, "example", &appservice.PlanArgs{
/// 			Name:              pulumi.String("some-app-service-plan"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku: &appservice.PlanSkuArgs{
/// 				Tier: pulumi.String("Standard"),
/// 				Size: pulumi.String("S1"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAppService, err := appservice.NewAppService(ctx, "example", &appservice.AppServiceArgs{
/// 			Name:              server.Hex,
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AppServicePlanId:  examplePlan.ID(),
/// 			SiteConfig: &appservice.AppServiceSiteConfigArgs{
/// 				JavaVersion:          pulumi.String("1.8"),
/// 				JavaContainer:        pulumi.String("JETTY"),
/// 				JavaContainerVersion: pulumi.String("9.3"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appservice.NewSlot(ctx, "example", &appservice.SlotArgs{
/// 			Name:              server.Hex,
/// 			AppServiceName:    exampleAppService.Name,
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AppServicePlanId:  examplePlan.ID(),
/// 			SiteConfig: &appservice.SlotSiteConfigArgs{
/// 				JavaVersion:          pulumi.String("1.8"),
/// 				JavaContainer:        pulumi.String("JETTY"),
/// 				JavaContainerVersion: pulumi.String("9.3"),
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
/// import com.pulumi.random.Id;
/// import com.pulumi.random.IdArgs;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.appservice.Plan;
/// import com.pulumi.azure.appservice.PlanArgs;
/// import com.pulumi.azure.appservice.inputs.PlanSkuArgs;
/// import com.pulumi.azure.appservice.AppService;
/// import com.pulumi.azure.appservice.AppServiceArgs;
/// import com.pulumi.azure.appservice.inputs.AppServiceSiteConfigArgs;
/// import com.pulumi.azure.appservice.Slot;
/// import com.pulumi.azure.appservice.SlotArgs;
/// import com.pulumi.azure.appservice.inputs.SlotSiteConfigArgs;
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
///         var server = new Id("server", IdArgs.builder()
///             .keepers(Map.of("aziId", 1))
///             .byteLength(8)
///             .build());
///
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("some-resource-group")
///             .location("West Europe")
///             .build());
///
///         var examplePlan = new Plan("examplePlan", PlanArgs.builder()
///             .name("some-app-service-plan")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku(PlanSkuArgs.builder()
///                 .tier("Standard")
///                 .size("S1")
///                 .build())
///             .build());
///
///         var exampleAppService = new AppService("exampleAppService", AppServiceArgs.builder()
///             .name(server.hex())
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .appServicePlanId(examplePlan.id())
///             .siteConfig(AppServiceSiteConfigArgs.builder()
///                 .javaVersion("1.8")
///                 .javaContainer("JETTY")
///                 .javaContainerVersion("9.3")
///                 .build())
///             .build());
///
///         var exampleSlot = new Slot("exampleSlot", SlotArgs.builder()
///             .name(server.hex())
///             .appServiceName(exampleAppService.name())
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .appServicePlanId(examplePlan.id())
///             .siteConfig(SlotSiteConfigArgs.builder()
///                 .javaVersion("1.8")
///                 .javaContainer("JETTY")
///                 .javaContainerVersion("9.3")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   server:
///     type: random:Id
///     properties:
///       keepers:
///         aziId: 1
///       byteLength: 8
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: some-resource-group
///       location: West Europe
///   examplePlan:
///     type: azure:appservice:Plan
///     name: example
///     properties:
///       name: some-app-service-plan
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku:
///         tier: Standard
///         size: S1
///   exampleAppService:
///     type: azure:appservice:AppService
///     name: example
///     properties:
///       name: ${server.hex}
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       appServicePlanId: ${examplePlan.id}
///       siteConfig:
///         javaVersion: '1.8'
///         javaContainer: JETTY
///         javaContainerVersion: '9.3'
///   exampleSlot:
///     type: azure:appservice:Slot
///     name: example
///     properties:
///       name: ${server.hex}
///       appServiceName: ${exampleAppService.name}
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       appServicePlanId: ${examplePlan.id}
///       siteConfig:
///         javaVersion: '1.8'
///         javaContainer: JETTY
///         javaContainerVersion: '9.3'
/// ```
///
///
/// ## Import
///
/// App Service Slots can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appservice/slot:Slot instance1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Web/sites/website1/slots/instance1
/// ```
class Slot extends pulumi.CustomResource {
  /// The name of the App Service within which to create the App Service Slot. Changing this forces a new resource to be created.
  late final pulumi.Output<String> appServiceName;
  /// The ID of the App Service Plan within which to create this App Service Slot. Changing this forces a new resource to be created.
  late final pulumi.Output<String> appServicePlanId;
  /// A key-value pair of App Settings.
  late final pulumi.Output<Map<String, String>> appSettings;
  /// A `auth_settings` block as defined below.
  late final pulumi.Output<SlotAuthSettings> authSettings;
  /// Should the App Service Slot send session affinity cookies, which route client requests in the same session to the same instance?
  late final pulumi.Output<bool> clientAffinityEnabled;
  /// An `connection_string` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> connectionStrings;
  /// The Default Hostname associated with the App Service Slot - such as `mysite.azurewebsites.net`
  late final pulumi.Output<String> defaultSiteHostname;
  /// Is the App Service Slot Enabled? Defaults to `true`.
  late final pulumi.Output<bool?> enabled;
  /// Can the App Service Slot only be accessed via HTTPS? Defaults to `false`.
  late final pulumi.Output<bool?> httpsOnly;
  /// An `identity` block as defined below.
  late final pulumi.Output<SlotIdentity?> identity;
  /// The User Assigned Identity Id used for looking up KeyVault secrets. The identity must be assigned to the application. See [Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity) for more information.
  late final pulumi.Output<String> keyVaultReferenceIdentityId;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// A `logs` block as defined below.
  late final pulumi.Output<SlotLogs> logs;
  /// Specifies the name of the App Service Slot component. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the resource group in which to create the App Service Slot component. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A `site_config` object as defined below.
  late final pulumi.Output<SlotSiteConfig> siteConfig;
  /// A `site_credential` block as defined below, which contains the site-level credentials used to publish to this App Service slot.
  late final pulumi.Output<List<Map<String, dynamic>>> siteCredentials;
  /// One or more `storage_account` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> storageAccounts;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Slot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Slot]. {@macro pulumi_appservice_slot_slot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Slot(
    String name, {
    SlotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/slot:Slot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appServiceName = registerOutput<String>('appServiceName');
    appServicePlanId = registerOutput<String>('appServicePlanId');
    appSettings = registerOutput<Map<String, String>>('appSettings');
    authSettings = registerOutput<SlotAuthSettings>('authSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SlotAuthSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clientAffinityEnabled = registerOutput<bool>('clientAffinityEnabled');
    connectionStrings = registerOutput<List<Map<String, dynamic>>>('connectionStrings');
    defaultSiteHostname = registerOutput<String>('defaultSiteHostname');
    enabled = registerOutput<bool?>('enabled');
    httpsOnly = registerOutput<bool?>('httpsOnly');
    identity = registerOutput<SlotIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SlotIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    keyVaultReferenceIdentityId = registerOutput<String>('keyVaultReferenceIdentityId');
    location = registerOutput<String>('location');
    logs = registerOutput<SlotLogs>('logs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SlotLogs.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    siteConfig = registerOutput<SlotSiteConfig>('siteConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SlotSiteConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    siteCredentials = registerOutput<List<Map<String, dynamic>>>('siteCredentials');
    storageAccounts = registerOutput<List<Map<String, dynamic>>>('storageAccounts');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Slot] resource's state with the given [name] and [id].
  static Slot get(
    String name,
    pulumi.Input<String> id, {
    SlotState? state,
  }) {
    return Slot._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Slot._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/slot:Slot',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appServiceName = registerOutput<String>('appServiceName');
    appServicePlanId = registerOutput<String>('appServicePlanId');
    appSettings = registerOutput<Map<String, String>>('appSettings');
    authSettings = registerOutput<SlotAuthSettings>('authSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SlotAuthSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clientAffinityEnabled = registerOutput<bool>('clientAffinityEnabled');
    connectionStrings = registerOutput<List<Map<String, dynamic>>>('connectionStrings');
    defaultSiteHostname = registerOutput<String>('defaultSiteHostname');
    enabled = registerOutput<bool?>('enabled');
    httpsOnly = registerOutput<bool?>('httpsOnly');
    identity = registerOutput<SlotIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SlotIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    keyVaultReferenceIdentityId = registerOutput<String>('keyVaultReferenceIdentityId');
    location = registerOutput<String>('location');
    logs = registerOutput<SlotLogs>('logs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SlotLogs.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    siteConfig = registerOutput<SlotSiteConfig>('siteConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SlotSiteConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    siteCredentials = registerOutput<List<Map<String, dynamic>>>('siteCredentials');
    storageAccounts = registerOutput<List<Map<String, dynamic>>>('storageAccounts');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
