import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_app_args.dart';
import 'function_app_auth_settings.dart';
import 'function_app_identity.dart';
import 'function_app_site_config.dart';
import 'function_app_source_control.dart';
import 'function_app_state.dart';

/// Manages a Function App.
///
/// !&gt; **NOTE:** This resource has been deprecated in version 5.0 of the provider and will be removed in version 6.0. Please use `azure.appservice.LinuxFunctionApp` and `azure.appservice.WindowsFunctionApp` resources instead.
///
/// &gt; **Note:** To connect an Azure Function App and a subnet within the same region `azure.appservice.VirtualNetworkSwiftConnection` can be used.
/// For an example, check the `azure.appservice.VirtualNetworkSwiftConnection` documentation.
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
///     name: "azure-functions-test-rg",
///     location: "West Europe",
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "functionsapptestsa",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const examplePlan = new azure.appservice.Plan("example", {
///     name: "azure-functions-test-service-plan",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: {
///         tier: "Standard",
///         size: "S1",
///     },
/// });
/// const exampleFunctionApp = new azure.appservice.FunctionApp("example", {
///     name: "test-azure-functions",
///     location: example.location,
///     resourceGroupName: example.name,
///     appServicePlanId: examplePlan.id,
///     storageAccountName: exampleAccount.name,
///     storageAccountAccessKey: exampleAccount.primaryAccessKey,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="azure-functions-test-rg",
///     location="West Europe")
/// example_account = azure.storage.Account("example",
///     name="functionsapptestsa",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_plan = azure.appservice.Plan("example",
///     name="azure-functions-test-service-plan",
///     location=example.location,
///     resource_group_name=example.name,
///     sku={
///         "tier": "Standard",
///         "size": "S1",
///     })
/// example_function_app = azure.appservice.FunctionApp("example",
///     name="test-azure-functions",
///     location=example.location,
///     resource_group_name=example.name,
///     app_service_plan_id=example_plan.id,
///     storage_account_name=example_account.name,
///     storage_account_access_key=example_account.primary_access_key)
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
///         Name = "azure-functions-test-rg",
///         Location = "West Europe",
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "functionsapptestsa",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var examplePlan = new Azure.AppService.Plan("example", new()
///     {
///         Name = "azure-functions-test-service-plan",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = new Azure.AppService.Inputs.PlanSkuArgs
///         {
///             Tier = "Standard",
///             Size = "S1",
///         },
///     });
///
///     var exampleFunctionApp = new Azure.AppService.FunctionApp("example", new()
///     {
///         Name = "test-azure-functions",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AppServicePlanId = examplePlan.Id,
///         StorageAccountName = exampleAccount.Name,
///         StorageAccountAccessKey = exampleAccount.PrimaryAccessKey,
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
/// 			Name:     pulumi.String("azure-functions-test-rg"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("functionsapptestsa"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePlan, err := appservice.NewPlan(ctx, "example", &appservice.PlanArgs{
/// 			Name:              pulumi.String("azure-functions-test-service-plan"),
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
/// 		_, err = appservice.NewFunctionApp(ctx, "example", &appservice.FunctionAppArgs{
/// 			Name:                    pulumi.String("test-azure-functions"),
/// 			Location:                example.Location,
/// 			ResourceGroupName:       example.Name,
/// 			AppServicePlanId:        examplePlan.ID(),
/// 			StorageAccountName:      exampleAccount.Name,
/// 			StorageAccountAccessKey: exampleAccount.PrimaryAccessKey,
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
/// import com.pulumi.azure.appservice.FunctionApp;
/// import com.pulumi.azure.appservice.FunctionAppArgs;
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
///             .name("azure-functions-test-rg")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("functionsapptestsa")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var examplePlan = new Plan("examplePlan", PlanArgs.builder()
///             .name("azure-functions-test-service-plan")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku(PlanSkuArgs.builder()
///                 .tier("Standard")
///                 .size("S1")
///                 .build())
///             .build());
///
///         var exampleFunctionApp = new FunctionApp("exampleFunctionApp", FunctionAppArgs.builder()
///             .name("test-azure-functions")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .appServicePlanId(examplePlan.id())
///             .storageAccountName(exampleAccount.name())
///             .storageAccountAccessKey(exampleAccount.primaryAccessKey())
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
///       name: azure-functions-test-rg
///       location: West Europe
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: functionsapptestsa
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   examplePlan:
///     type: azure:appservice:Plan
///     name: example
///     properties:
///       name: azure-functions-test-service-plan
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku:
///         tier: Standard
///         size: S1
///   exampleFunctionApp:
///     type: azure:appservice:FunctionApp
///     name: example
///     properties:
///       name: test-azure-functions
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       appServicePlanId: ${examplePlan.id}
///       storageAccountName: ${exampleAccount.name}
///       storageAccountAccessKey: ${exampleAccount.primaryAccessKey}
/// ```
///
///
///
/// ### In A Consumption Plan)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "azure-functions-cptest-rg",
///     location: "West Europe",
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "functionsapptestsa",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const examplePlan = new azure.appservice.Plan("example", {
///     name: "azure-functions-test-service-plan",
///     location: example.location,
///     resourceGroupName: example.name,
///     kind: "FunctionApp",
///     sku: {
///         tier: "Dynamic",
///         size: "Y1",
///     },
/// });
/// const exampleFunctionApp = new azure.appservice.FunctionApp("example", {
///     name: "test-azure-functions",
///     location: example.location,
///     resourceGroupName: example.name,
///     appServicePlanId: examplePlan.id,
///     storageAccountName: exampleAccount.name,
///     storageAccountAccessKey: exampleAccount.primaryAccessKey,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="azure-functions-cptest-rg",
///     location="West Europe")
/// example_account = azure.storage.Account("example",
///     name="functionsapptestsa",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_plan = azure.appservice.Plan("example",
///     name="azure-functions-test-service-plan",
///     location=example.location,
///     resource_group_name=example.name,
///     kind="FunctionApp",
///     sku={
///         "tier": "Dynamic",
///         "size": "Y1",
///     })
/// example_function_app = azure.appservice.FunctionApp("example",
///     name="test-azure-functions",
///     location=example.location,
///     resource_group_name=example.name,
///     app_service_plan_id=example_plan.id,
///     storage_account_name=example_account.name,
///     storage_account_access_key=example_account.primary_access_key)
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
///         Name = "azure-functions-cptest-rg",
///         Location = "West Europe",
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "functionsapptestsa",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var examplePlan = new Azure.AppService.Plan("example", new()
///     {
///         Name = "azure-functions-test-service-plan",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Kind = "FunctionApp",
///         Sku = new Azure.AppService.Inputs.PlanSkuArgs
///         {
///             Tier = "Dynamic",
///             Size = "Y1",
///         },
///     });
///
///     var exampleFunctionApp = new Azure.AppService.FunctionApp("example", new()
///     {
///         Name = "test-azure-functions",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AppServicePlanId = examplePlan.Id,
///         StorageAccountName = exampleAccount.Name,
///         StorageAccountAccessKey = exampleAccount.PrimaryAccessKey,
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
/// 			Name:     pulumi.String("azure-functions-cptest-rg"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("functionsapptestsa"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePlan, err := appservice.NewPlan(ctx, "example", &appservice.PlanArgs{
/// 			Name:              pulumi.String("azure-functions-test-service-plan"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Kind:              pulumi.Any("FunctionApp"),
/// 			Sku: &appservice.PlanSkuArgs{
/// 				Tier: pulumi.String("Dynamic"),
/// 				Size: pulumi.String("Y1"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appservice.NewFunctionApp(ctx, "example", &appservice.FunctionAppArgs{
/// 			Name:                    pulumi.String("test-azure-functions"),
/// 			Location:                example.Location,
/// 			ResourceGroupName:       example.Name,
/// 			AppServicePlanId:        examplePlan.ID(),
/// 			StorageAccountName:      exampleAccount.Name,
/// 			StorageAccountAccessKey: exampleAccount.PrimaryAccessKey,
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
/// import com.pulumi.azure.appservice.FunctionApp;
/// import com.pulumi.azure.appservice.FunctionAppArgs;
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
///             .name("azure-functions-cptest-rg")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("functionsapptestsa")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var examplePlan = new Plan("examplePlan", PlanArgs.builder()
///             .name("azure-functions-test-service-plan")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .kind("FunctionApp")
///             .sku(PlanSkuArgs.builder()
///                 .tier("Dynamic")
///                 .size("Y1")
///                 .build())
///             .build());
///
///         var exampleFunctionApp = new FunctionApp("exampleFunctionApp", FunctionAppArgs.builder()
///             .name("test-azure-functions")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .appServicePlanId(examplePlan.id())
///             .storageAccountName(exampleAccount.name())
///             .storageAccountAccessKey(exampleAccount.primaryAccessKey())
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
///       name: azure-functions-cptest-rg
///       location: West Europe
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: functionsapptestsa
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   examplePlan:
///     type: azure:appservice:Plan
///     name: example
///     properties:
///       name: azure-functions-test-service-plan
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       kind: FunctionApp
///       sku:
///         tier: Dynamic
///         size: Y1
///   exampleFunctionApp:
///     type: azure:appservice:FunctionApp
///     name: example
///     properties:
///       name: test-azure-functions
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       appServicePlanId: ${examplePlan.id}
///       storageAccountName: ${exampleAccount.name}
///       storageAccountAccessKey: ${exampleAccount.primaryAccessKey}
/// ```
///
///
///
/// ### Linux)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "azure-functions-cptest-rg",
///     location: "West Europe",
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "functionsapptestsa",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const examplePlan = new azure.appservice.Plan("example", {
///     name: "azure-functions-test-service-plan",
///     location: example.location,
///     resourceGroupName: example.name,
///     kind: "Linux",
///     reserved: true,
///     sku: {
///         tier: "Dynamic",
///         size: "Y1",
///     },
/// });
/// const exampleFunctionApp = new azure.appservice.FunctionApp("example", {
///     name: "test-azure-functions",
///     location: example.location,
///     resourceGroupName: example.name,
///     appServicePlanId: examplePlan.id,
///     storageAccountName: exampleAccount.name,
///     storageAccountAccessKey: exampleAccount.primaryAccessKey,
///     osType: "linux",
///     version: "~3",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="azure-functions-cptest-rg",
///     location="West Europe")
/// example_account = azure.storage.Account("example",
///     name="functionsapptestsa",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_plan = azure.appservice.Plan("example",
///     name="azure-functions-test-service-plan",
///     location=example.location,
///     resource_group_name=example.name,
///     kind="Linux",
///     reserved=True,
///     sku={
///         "tier": "Dynamic",
///         "size": "Y1",
///     })
/// example_function_app = azure.appservice.FunctionApp("example",
///     name="test-azure-functions",
///     location=example.location,
///     resource_group_name=example.name,
///     app_service_plan_id=example_plan.id,
///     storage_account_name=example_account.name,
///     storage_account_access_key=example_account.primary_access_key,
///     os_type="linux",
///     version="~3")
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
///         Name = "azure-functions-cptest-rg",
///         Location = "West Europe",
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "functionsapptestsa",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var examplePlan = new Azure.AppService.Plan("example", new()
///     {
///         Name = "azure-functions-test-service-plan",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Kind = "Linux",
///         Reserved = true,
///         Sku = new Azure.AppService.Inputs.PlanSkuArgs
///         {
///             Tier = "Dynamic",
///             Size = "Y1",
///         },
///     });
///
///     var exampleFunctionApp = new Azure.AppService.FunctionApp("example", new()
///     {
///         Name = "test-azure-functions",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AppServicePlanId = examplePlan.Id,
///         StorageAccountName = exampleAccount.Name,
///         StorageAccountAccessKey = exampleAccount.PrimaryAccessKey,
///         OsType = "linux",
///         Version = "~3",
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
/// 			Name:     pulumi.String("azure-functions-cptest-rg"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("functionsapptestsa"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePlan, err := appservice.NewPlan(ctx, "example", &appservice.PlanArgs{
/// 			Name:              pulumi.String("azure-functions-test-service-plan"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Kind:              pulumi.Any("Linux"),
/// 			Reserved:          pulumi.Bool(true),
/// 			Sku: &appservice.PlanSkuArgs{
/// 				Tier: pulumi.String("Dynamic"),
/// 				Size: pulumi.String("Y1"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appservice.NewFunctionApp(ctx, "example", &appservice.FunctionAppArgs{
/// 			Name:                    pulumi.String("test-azure-functions"),
/// 			Location:                example.Location,
/// 			ResourceGroupName:       example.Name,
/// 			AppServicePlanId:        examplePlan.ID(),
/// 			StorageAccountName:      exampleAccount.Name,
/// 			StorageAccountAccessKey: exampleAccount.PrimaryAccessKey,
/// 			OsType:                  pulumi.String("linux"),
/// 			Version:                 pulumi.String("~3"),
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
/// import com.pulumi.azure.appservice.FunctionApp;
/// import com.pulumi.azure.appservice.FunctionAppArgs;
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
///             .name("azure-functions-cptest-rg")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("functionsapptestsa")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var examplePlan = new Plan("examplePlan", PlanArgs.builder()
///             .name("azure-functions-test-service-plan")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .kind("Linux")
///             .reserved(true)
///             .sku(PlanSkuArgs.builder()
///                 .tier("Dynamic")
///                 .size("Y1")
///                 .build())
///             .build());
///
///         var exampleFunctionApp = new FunctionApp("exampleFunctionApp", FunctionAppArgs.builder()
///             .name("test-azure-functions")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .appServicePlanId(examplePlan.id())
///             .storageAccountName(exampleAccount.name())
///             .storageAccountAccessKey(exampleAccount.primaryAccessKey())
///             .osType("linux")
///             .version("~3")
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
///       name: azure-functions-cptest-rg
///       location: West Europe
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: functionsapptestsa
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   examplePlan:
///     type: azure:appservice:Plan
///     name: example
///     properties:
///       name: azure-functions-test-service-plan
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       kind: Linux
///       reserved: true
///       sku:
///         tier: Dynamic
///         size: Y1
///   exampleFunctionApp:
///     type: azure:appservice:FunctionApp
///     name: example
///     properties:
///       name: test-azure-functions
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       appServicePlanId: ${examplePlan.id}
///       storageAccountName: ${exampleAccount.name}
///       storageAccountAccessKey: ${exampleAccount.primaryAccessKey}
///       osType: linux
///       version: ~3
/// ```
///
///
/// &gt; **Note:** Version `~3` or `~4` is required for Linux Function Apps.
///
///
/// ### Python In A Consumption Plan)
///
///
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: azure-functions-example-rg
///       location: West Europe
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: functionsappexamlpesa
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   examplePlan:
///     type: azure:appservice:Plan
///     name: example
///     properties:
///       name: azure-functions-example-sp
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       kind: Linux
///       reserved: true
///       sku:
///         tier: Dynamic
///         size: Y1
///   exampleFunctionApp:
///     type: azure:appservice:FunctionApp
///     name: example
///     properties:
///       name: example-azure-function
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       appServicePlanId: ${examplePlan.id}
///       storageAccountName: ${exampleAccount.name}
///       storageAccountAccessKey: ${exampleAccount.primaryAccessKey}
///       osType: linux
///       version: ~4
///       appSettings:
///         - FUNCTIONS_WORKER_RUNTIME: python
///       siteConfig:
///         linuxFxVersion: python|3.9
/// ```
///
///
/// &gt; **Note:** The Python runtime is only supported on a Linux based hosting plan.  See [the documentation for additional information](https://docs.microsoft.com/azure/azure-functions/functions-reference-python).
///
/// ## Import
///
/// Function Apps can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appservice/functionApp:FunctionApp functionapp1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Web/sites/functionapp1
/// ```
class FunctionApp extends pulumi.CustomResource {
  /// The ID of the App Service Plan within which to create this Function App.
  late final pulumi.Output<String> appServicePlanId;

  /// A map of key-value pairs for [App Settings](https://docs.microsoft.com/azure/azure-functions/functions-app-settings) and custom values.
  ///
  /// &gt; **NOTE:** The values for `AzureWebJobsStorage` and `FUNCTIONS_EXTENSION_VERSION` will be filled by other input arguments and shouldn't be configured separately. `AzureWebJobsStorage` is filled based on `storage_account_name` and `storage_account_access_key`. `FUNCTIONS_EXTENSION_VERSION` is filled based on `version`.
  late final pulumi.Output<Map<String, String>> appSettings;

  /// A `auth_settings` block as defined below.
  late final pulumi.Output<FunctionAppAuthSettings> authSettings;

  /// The mode of the Function App's client certificates requirement for incoming requests. Possible values are `Required` and `Optional`.
  late final pulumi.Output<String?> clientCertMode;

  /// An `connection_string` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> connectionStrings;

  /// An identifier used by App Service to perform domain ownership verification via DNS TXT record.
  late final pulumi.Output<String> customDomainVerificationId;

  /// The amount of memory in gigabyte-seconds that your application is allowed to consume per day. Setting this value only affects function apps under the consumption plan.
  late final pulumi.Output<int?> dailyMemoryTimeQuota;

  /// The default hostname associated with the Function App - such as `mysite.azurewebsites.net`
  late final pulumi.Output<String> defaultHostname;

  /// Should the built-in logging of this Function App be enabled? Defaults to `true`.
  late final pulumi.Output<bool?> enableBuiltinLogging;

  /// Is the Function App enabled? Defaults to `true`.
  late final pulumi.Output<bool?> enabled;

  /// Can the Function App only be accessed via HTTPS? Defaults to `false`.
  late final pulumi.Output<bool?> httpsOnly;

  /// An `identity` block as defined below.
  late final pulumi.Output<FunctionAppIdentity?> identity;

  /// The User Assigned Identity Id used for looking up KeyVault secrets. The identity must be assigned to the application. See [Access vaults with a user-assigned identity](https://docs.microsoft.com/azure/app-service/app-service-key-vault-references#access-vaults-with-a-user-assigned-identity) for more information.
  late final pulumi.Output<String> keyVaultReferenceIdentityId;

  /// The Function App kind - such as `functionapp,linux,container`
  late final pulumi.Output<String> kind;

  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;

  /// Specifies the name of the Function App. Changing this forces a new resource to be created. Limit the function name to 32 characters to avoid naming collisions. For more information about [Function App naming rule](https://docs.microsoft.com/azure/azure-resource-manager/management/resource-name-rules#microsoftweb).
  late final pulumi.Output<String> name;

  /// A string indicating the Operating System type for this function app. Possible values are `linux` and ``(empty string). Changing this forces a new resource to be created. Defaults to `""`.
  ///
  /// &gt; **NOTE:** This value will be `linux` for Linux derivatives, or an empty string for Windows (default). When set to `linux` you must also set `azure.appservice.Plan` arguments as `kind = "Linux"` and `reserved = true`
  late final pulumi.Output<String?> osType;

  /// A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12`
  late final pulumi.Output<String> outboundIpAddresses;

  /// A comma separated list of outbound IP addresses - such as `52.23.25.3,52.143.43.12,52.143.43.17` - not all of which are necessarily in use. Superset of `outbound_ip_addresses`.
  late final pulumi.Output<String> possibleOutboundIpAddresses;

  /// The name of the resource group in which to create the Function App. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// A `site_config` object as defined below.
  late final pulumi.Output<FunctionAppSiteConfig> siteConfig;

  /// A `site_credential` block as defined below, which contains the site-level credentials used to publish to this App Service.
  late final pulumi.Output<List<Map<String, dynamic>>> siteCredentials;

  /// A `source_control` block, as defined below.
  late final pulumi.Output<FunctionAppSourceControl> sourceControl;

  /// The access key which will be used to access the backend storage account for the Function App.
  ///
  /// &gt; **Note:** When integrating a `CI/CD pipeline` and expecting to run from a deployed package in `Azure` you must seed your `app settings` as part of the application code for function app to be successfully deployed. `Important Default key pairs`: (`"WEBSITE_RUN_FROM_PACKAGE" = ""`, `"FUNCTIONS_WORKER_RUNTIME" = "node"` (or python, etc), `"WEBSITE_NODE_DEFAULT_VERSION" = "10.14.1"`, `"APPINSIGHTS_INSTRUMENTATIONKEY" = ""`).
  ///
  /// &gt; **Note:**  When using an App Service Plan in the `Free` or `Shared` Tiers `use_32_bit_worker_process` must be set to `true`.
  late final pulumi.Output<String> storageAccountAccessKey;

  /// The backend storage account name which will be used by this Function App (such as the dashboard, logs). Changing this forces a new resource to be created.
  late final pulumi.Output<String> storageAccountName;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The runtime version associated with the Function App. Defaults to `~1`.
  late final pulumi.Output<String?> version;

  /// Creates a new [FunctionApp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FunctionApp]. {@macro pulumi_appservice_function_app_function_app_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FunctionApp(
    String name, {
    FunctionAppArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:appservice/functionApp:FunctionApp',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    appServicePlanId = registerOutput<String>('appServicePlanId');
    appSettings = registerOutput<Map<String, String>>('appSettings');
    authSettings = registerOutput<FunctionAppAuthSettings>(
      'authSettings',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return FunctionAppAuthSettings.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    clientCertMode = registerOutput<String?>('clientCertMode');
    connectionStrings = registerOutput<List<Map<String, dynamic>>>(
      'connectionStrings',
    );
    customDomainVerificationId = registerOutput<String>(
      'customDomainVerificationId',
    );
    dailyMemoryTimeQuota = registerOutput<int?>('dailyMemoryTimeQuota');
    defaultHostname = registerOutput<String>('defaultHostname');
    enableBuiltinLogging = registerOutput<bool?>('enableBuiltinLogging');
    enabled = registerOutput<bool?>('enabled');
    httpsOnly = registerOutput<bool?>('httpsOnly');
    identity = registerOutput<FunctionAppIdentity?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return FunctionAppIdentity.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    keyVaultReferenceIdentityId = registerOutput<String>(
      'keyVaultReferenceIdentityId',
    );
    kind = registerOutput<String>('kind');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    osType = registerOutput<String?>('osType');
    outboundIpAddresses = registerOutput<String>('outboundIpAddresses');
    possibleOutboundIpAddresses = registerOutput<String>(
      'possibleOutboundIpAddresses',
    );
    resourceGroupName = registerOutput<String>('resourceGroupName');
    siteConfig = registerOutput<FunctionAppSiteConfig>(
      'siteConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return FunctionAppSiteConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    siteCredentials = registerOutput<List<Map<String, dynamic>>>(
      'siteCredentials',
    );
    sourceControl = registerOutput<FunctionAppSourceControl>(
      'sourceControl',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return FunctionAppSourceControl.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    storageAccountAccessKey = registerOutput<String>('storageAccountAccessKey');
    storageAccountName = registerOutput<String>('storageAccountName');
    tags = registerOutput<Map<String, String>?>('tags');
    version = registerOutput<String?>('version');
  }

  /// Gets an existing [FunctionApp] resource's state with the given [name] and [id].
  static FunctionApp get(
    String name,
    pulumi.Input<String> id, {
    FunctionAppState? state,
  }) {
    return FunctionApp._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FunctionApp._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:appservice/functionApp:FunctionApp',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    appServicePlanId = registerOutput<String>('appServicePlanId');
    appSettings = registerOutput<Map<String, String>>('appSettings');
    authSettings = registerOutput<FunctionAppAuthSettings>(
      'authSettings',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return FunctionAppAuthSettings.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    clientCertMode = registerOutput<String?>('clientCertMode');
    connectionStrings = registerOutput<List<Map<String, dynamic>>>(
      'connectionStrings',
    );
    customDomainVerificationId = registerOutput<String>(
      'customDomainVerificationId',
    );
    dailyMemoryTimeQuota = registerOutput<int?>('dailyMemoryTimeQuota');
    defaultHostname = registerOutput<String>('defaultHostname');
    enableBuiltinLogging = registerOutput<bool?>('enableBuiltinLogging');
    enabled = registerOutput<bool?>('enabled');
    httpsOnly = registerOutput<bool?>('httpsOnly');
    identity = registerOutput<FunctionAppIdentity?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return FunctionAppIdentity.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    keyVaultReferenceIdentityId = registerOutput<String>(
      'keyVaultReferenceIdentityId',
    );
    kind = registerOutput<String>('kind');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    osType = registerOutput<String?>('osType');
    outboundIpAddresses = registerOutput<String>('outboundIpAddresses');
    possibleOutboundIpAddresses = registerOutput<String>(
      'possibleOutboundIpAddresses',
    );
    resourceGroupName = registerOutput<String>('resourceGroupName');
    siteConfig = registerOutput<FunctionAppSiteConfig>(
      'siteConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return FunctionAppSiteConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    siteCredentials = registerOutput<List<Map<String, dynamic>>>(
      'siteCredentials',
    );
    sourceControl = registerOutput<FunctionAppSourceControl>(
      'sourceControl',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return FunctionAppSourceControl.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    storageAccountAccessKey = registerOutput<String>('storageAccountAccessKey');
    storageAccountName = registerOutput<String>('storageAccountName');
    tags = registerOutput<Map<String, String>?>('tags');
    version = registerOutput<String?>('version');
  }
}
