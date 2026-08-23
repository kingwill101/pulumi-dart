import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_args.dart';
import 'plan_sku.dart';
import 'plan_state.dart';

/// Manages an App Service Plan component.
///
/// &gt; **NOTE:** This resource has been deprecated and will be removed in version 6.0 of the provider. Please use `azure.appservice.ServicePlan` resource instead.
///
/// ## Example Usage
///
/// ### Dedicated)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "api-rg-pro",
///     location: "West Europe",
/// });
/// const examplePlan = new azure.appservice.Plan("example", {
///     name: "api-appserviceplan-pro",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: {
///         tier: "Standard",
///         size: "S1",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="api-rg-pro",
///     location="West Europe")
/// example_plan = azure.appservice.Plan("example",
///     name="api-appserviceplan-pro",
///     location=example.location,
///     resource_group_name=example.name,
///     sku={
///         "tier": "Standard",
///         "size": "S1",
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
///         Name = "api-rg-pro",
///         Location = "West Europe",
///     });
///
///     var examplePlan = new Azure.AppService.Plan("example", new()
///     {
///         Name = "api-appserviceplan-pro",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = new Azure.AppService.Inputs.PlanSkuArgs
///         {
///             Tier = "Standard",
///             Size = "S1",
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("api-rg-pro"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appservice.NewPlan(ctx, "example", &appservice.PlanArgs{
/// 			Name:              pulumi.String("api-appserviceplan-pro"),
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
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "api-rg-pro"
///   location = "West Europe"
/// }
/// resource "azure_appservice_plan" "example" {
///   name                = "api-appserviceplan-pro"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku = {
///     tier = "Standard"
///     size = "S1"
///   }
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
/// import com.pulumi.azure.appservice.Plan;
/// import com.pulumi.azure.appservice.PlanArgs;
/// import com.pulumi.azure.appservice.inputs.PlanSkuArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///             .name("api-rg-pro")
///             .location("West Europe")
///             .build());
///
///         var examplePlan = new Plan("examplePlan", PlanArgs.builder()
///             .name("api-appserviceplan-pro")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku(PlanSkuArgs.builder()
///                 .tier("Standard")
///                 .size("S1")
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
///       name: api-rg-pro
///       location: West Europe
///   examplePlan:
///     type: azure:appservice:Plan
///     name: example
///     properties:
///       name: api-appserviceplan-pro
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku:
///         tier: Standard
///         size: S1
/// ```
///
///
///
/// ### Shared / Consumption Plan)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "api-rg-pro",
///     location: "West Europe",
/// });
/// const examplePlan = new azure.appservice.Plan("example", {
///     name: "api-appserviceplan-pro",
///     location: example.location,
///     resourceGroupName: example.name,
///     kind: "FunctionApp",
///     sku: {
///         tier: "Dynamic",
///         size: "Y1",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="api-rg-pro",
///     location="West Europe")
/// example_plan = azure.appservice.Plan("example",
///     name="api-appserviceplan-pro",
///     location=example.location,
///     resource_group_name=example.name,
///     kind="FunctionApp",
///     sku={
///         "tier": "Dynamic",
///         "size": "Y1",
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
///         Name = "api-rg-pro",
///         Location = "West Europe",
///     });
///
///     var examplePlan = new Azure.AppService.Plan("example", new()
///     {
///         Name = "api-appserviceplan-pro",
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
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appservice"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("api-rg-pro"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appservice.NewPlan(ctx, "example", &appservice.PlanArgs{
/// 			Name:              pulumi.String("api-appserviceplan-pro"),
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
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "api-rg-pro"
///   location = "West Europe"
/// }
/// resource "azure_appservice_plan" "example" {
///   name                = "api-appserviceplan-pro"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   kind                = "FunctionApp"
///   sku = {
///     tier = "Dynamic"
///     size = "Y1"
///   }
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
/// import com.pulumi.azure.appservice.Plan;
/// import com.pulumi.azure.appservice.PlanArgs;
/// import com.pulumi.azure.appservice.inputs.PlanSkuArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///             .name("api-rg-pro")
///             .location("West Europe")
///             .build());
///
///         var examplePlan = new Plan("examplePlan", PlanArgs.builder()
///             .name("api-appserviceplan-pro")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .kind("FunctionApp")
///             .sku(PlanSkuArgs.builder()
///                 .tier("Dynamic")
///                 .size("Y1")
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
///       name: api-rg-pro
///       location: West Europe
///   examplePlan:
///     type: azure:appservice:Plan
///     name: example
///     properties:
///       name: api-appserviceplan-pro
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       kind: FunctionApp
///       sku:
///         tier: Dynamic
///         size: Y1
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
///     name: "api-rg-pro",
///     location: "West Europe",
/// });
/// const examplePlan = new azure.appservice.Plan("example", {
///     name: "api-appserviceplan-pro",
///     location: example.location,
///     resourceGroupName: example.name,
///     kind: "Linux",
///     reserved: true,
///     sku: {
///         tier: "Standard",
///         size: "S1",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="api-rg-pro",
///     location="West Europe")
/// example_plan = azure.appservice.Plan("example",
///     name="api-appserviceplan-pro",
///     location=example.location,
///     resource_group_name=example.name,
///     kind="Linux",
///     reserved=True,
///     sku={
///         "tier": "Standard",
///         "size": "S1",
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
///         Name = "api-rg-pro",
///         Location = "West Europe",
///     });
///
///     var examplePlan = new Azure.AppService.Plan("example", new()
///     {
///         Name = "api-appserviceplan-pro",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Kind = "Linux",
///         Reserved = true,
///         Sku = new Azure.AppService.Inputs.PlanSkuArgs
///         {
///             Tier = "Standard",
///             Size = "S1",
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("api-rg-pro"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appservice.NewPlan(ctx, "example", &appservice.PlanArgs{
/// 			Name:              pulumi.String("api-appserviceplan-pro"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Kind:              pulumi.Any("Linux"),
/// 			Reserved:          pulumi.Bool(true),
/// 			Sku: &appservice.PlanSkuArgs{
/// 				Tier: pulumi.String("Standard"),
/// 				Size: pulumi.String("S1"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "api-rg-pro"
///   location = "West Europe"
/// }
/// resource "azure_appservice_plan" "example" {
///   name                = "api-appserviceplan-pro"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   kind                = "Linux"
///   reserved            = true
///   sku = {
///     tier = "Standard"
///     size = "S1"
///   }
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
/// import com.pulumi.azure.appservice.Plan;
/// import com.pulumi.azure.appservice.PlanArgs;
/// import com.pulumi.azure.appservice.inputs.PlanSkuArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///             .name("api-rg-pro")
///             .location("West Europe")
///             .build());
///
///         var examplePlan = new Plan("examplePlan", PlanArgs.builder()
///             .name("api-appserviceplan-pro")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .kind("Linux")
///             .reserved(true)
///             .sku(PlanSkuArgs.builder()
///                 .tier("Standard")
///                 .size("S1")
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
///       name: api-rg-pro
///       location: West Europe
///   examplePlan:
///     type: azure:appservice:Plan
///     name: example
///     properties:
///       name: api-appserviceplan-pro
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       kind: Linux
///       reserved: true
///       sku:
///         tier: Standard
///         size: S1
/// ```
///
///
///
/// ### Windows Container)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "api-rg-pro",
///     location: "West Europe",
/// });
/// const examplePlan = new azure.appservice.Plan("example", {
///     name: "api-appserviceplan-pro",
///     location: example.location,
///     resourceGroupName: example.name,
///     kind: "xenon",
///     isXenon: true,
///     sku: {
///         tier: "PremiumContainer",
///         size: "PC2",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="api-rg-pro",
///     location="West Europe")
/// example_plan = azure.appservice.Plan("example",
///     name="api-appserviceplan-pro",
///     location=example.location,
///     resource_group_name=example.name,
///     kind="xenon",
///     is_xenon=True,
///     sku={
///         "tier": "PremiumContainer",
///         "size": "PC2",
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
///         Name = "api-rg-pro",
///         Location = "West Europe",
///     });
///
///     var examplePlan = new Azure.AppService.Plan("example", new()
///     {
///         Name = "api-appserviceplan-pro",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Kind = "xenon",
///         IsXenon = true,
///         Sku = new Azure.AppService.Inputs.PlanSkuArgs
///         {
///             Tier = "PremiumContainer",
///             Size = "PC2",
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("api-rg-pro"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appservice.NewPlan(ctx, "example", &appservice.PlanArgs{
/// 			Name:              pulumi.String("api-appserviceplan-pro"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Kind:              pulumi.Any("xenon"),
/// 			IsXenon:           pulumi.Bool(true),
/// 			Sku: &appservice.PlanSkuArgs{
/// 				Tier: pulumi.String("PremiumContainer"),
/// 				Size: pulumi.String("PC2"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "api-rg-pro"
///   location = "West Europe"
/// }
/// resource "azure_appservice_plan" "example" {
///   name                = "api-appserviceplan-pro"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   kind                = "xenon"
///   is_xenon            = true
///   sku = {
///     tier = "PremiumContainer"
///     size = "PC2"
///   }
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
/// import com.pulumi.azure.appservice.Plan;
/// import com.pulumi.azure.appservice.PlanArgs;
/// import com.pulumi.azure.appservice.inputs.PlanSkuArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///             .name("api-rg-pro")
///             .location("West Europe")
///             .build());
///
///         var examplePlan = new Plan("examplePlan", PlanArgs.builder()
///             .name("api-appserviceplan-pro")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .kind("xenon")
///             .isXenon(true)
///             .sku(PlanSkuArgs.builder()
///                 .tier("PremiumContainer")
///                 .size("PC2")
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
///       name: api-rg-pro
///       location: West Europe
///   examplePlan:
///     type: azure:appservice:Plan
///     name: example
///     properties:
///       name: api-appserviceplan-pro
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       kind: xenon
///       isXenon: true
///       sku:
///         tier: PremiumContainer
///         size: PC2
/// ```
///
///
/// ## Import
///
/// App Service Plan instances can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appservice/plan:Plan instance1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Web/serverFarms/instance1
/// ```
class Plan extends pulumi.CustomResource {
  /// The ID of the App Service Environment where the App Service Plan should be located. Changing forces a new resource to be created.
  ///
  /// &gt; **NOTE:** Attaching to an App Service Environment requires the App Service Plan use a `Premium` SKU (when using an ASEv1) and the `Isolated` SKU (for an ASEv2).
  late final pulumi.Output<String?> appServiceEnvironmentId;
  /// Whether to create a xenon App Service Plan.
  late final pulumi.Output<bool?> isXenon;
  /// The kind of the App Service Plan to create. Possible values are `Windows` (also available as `App`), `Linux`, `elastic` (for Premium Consumption), `xenon` and `FunctionApp` (for a Consumption Plan). Defaults to `Windows`. Changing this forces a new resource to be created.
  ///
  /// &gt; **NOTE:** When creating a `Linux` App Service Plan, the `reserved` field must be set to `true`, and when creating a `Windows`/`app` App Service Plan the `reserved` field must be set to `false`.
  late final pulumi.Output<String?> kind;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The maximum number of total workers allowed for this ElasticScaleEnabled App Service Plan.
  late final pulumi.Output<int> maximumElasticWorkerCount;
  /// The maximum number of workers supported with the App Service Plan's sku.
  late final pulumi.Output<int> maximumNumberOfWorkers;
  /// Specifies the name of the App Service Plan component. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Can Apps assigned to this App Service Plan be scaled independently? If set to `false` apps assigned to this plan will scale to all instances of the plan.
  late final pulumi.Output<bool?> perSiteScaling;
  /// Is this App Service Plan `Reserved`.
  late final pulumi.Output<bool?> reserved;
  /// The name of the resource group in which to create the App Service Plan component. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A `sku` block as documented below.
  late final pulumi.Output<PlanSku> sku;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Specifies if the App Service Plan should be Zone Redundant. Changing this forces a new resource to be created.
  ///
  /// &gt; **NOTE:** Requires either `PremiumV2` or `PremiumV3` SKU and that at least 3 instances. For more information, please see the [App Service Team Blog](https://azure.github.io/AppService/2021/08/25/App-service-support-for-availability-zones.html).
  late final pulumi.Output<bool?> zoneRedundant;

  /// Creates a new [Plan].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Plan]. {@macro pulumi_appservice_plan_plan_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Plan(
    String name, {
    PlanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/plan:Plan',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appServiceEnvironmentId = registerOutput<String?>('appServiceEnvironmentId');
    isXenon = registerOutput<bool?>('isXenon');
    kind = registerOutput<String?>('kind');
    location = registerOutput<String>('location');
    maximumElasticWorkerCount = registerOutput<int>('maximumElasticWorkerCount');
    maximumNumberOfWorkers = registerOutput<int>('maximumNumberOfWorkers');
    this.name = registerOutput<String>('name');
    perSiteScaling = registerOutput<bool?>('perSiteScaling');
    reserved = registerOutput<bool?>('reserved');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sku = registerOutput<PlanSku>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PlanSku.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    zoneRedundant = registerOutput<bool?>('zoneRedundant');
  }

  /// Gets an existing [Plan] resource's state with the given [name] and [id].
  static Plan get(
    String name,
    pulumi.Input<String> id, {
    PlanState? state,
  }) {
    return Plan._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Plan._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appservice/plan:Plan',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appServiceEnvironmentId = registerOutput<String?>('appServiceEnvironmentId');
    isXenon = registerOutput<bool?>('isXenon');
    kind = registerOutput<String?>('kind');
    location = registerOutput<String>('location');
    maximumElasticWorkerCount = registerOutput<int>('maximumElasticWorkerCount');
    maximumNumberOfWorkers = registerOutput<int>('maximumNumberOfWorkers');
    this.name = registerOutput<String>('name');
    perSiteScaling = registerOutput<bool?>('perSiteScaling');
    reserved = registerOutput<bool?>('reserved');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sku = registerOutput<PlanSku>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PlanSku.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    zoneRedundant = registerOutput<bool?>('zoneRedundant');
  }
}
