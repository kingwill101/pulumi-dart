import 'package:pulumi/pulumi.dart' as pulumi;
import 'analytics_solution_args.dart';
import 'analytics_solution_plan.dart';
import 'analytics_solution_state.dart';

/// Manages a Log Analytics (formally Operational Insights) Solution.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as random from "@pulumi/random";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "k8s-log-analytics-test",
///     location: "West Europe",
/// });
/// const workspace = new random.index.Id("workspace", {
///     keepers: {
///         groupName: example.name,
///     },
///     byteLength: 8,
/// });
/// const exampleAnalyticsWorkspace = new azure.operationalinsights.AnalyticsWorkspace("example", {
///     name: `k8s-workspace-${workspace.hex}`,
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "PerGB2018",
/// });
/// const exampleAnalyticsSolution = new azure.operationalinsights.AnalyticsSolution("example", {
///     solutionName: "ContainerInsights",
///     location: example.location,
///     resourceGroupName: example.name,
///     workspaceResourceId: exampleAnalyticsWorkspace.id,
///     workspaceName: exampleAnalyticsWorkspace.name,
///     plan: {
///         publisher: "Microsoft",
///         product: "OMSGallery/ContainerInsights",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_random as random
///
/// example = azure.core.ResourceGroup("example",
///     name="k8s-log-analytics-test",
///     location="West Europe")
/// workspace = random.index.Id("workspace",
///     keepers={
///         groupName: example.name,
///     },
///     byte_length=8)
/// example_analytics_workspace = azure.operationalinsights.AnalyticsWorkspace("example",
///     name=f"k8s-workspace-{workspace['hex']}",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="PerGB2018")
/// example_analytics_solution = azure.operationalinsights.AnalyticsSolution("example",
///     solution_name="ContainerInsights",
///     location=example.location,
///     resource_group_name=example.name,
///     workspace_resource_id=example_analytics_workspace.id,
///     workspace_name=example_analytics_workspace.name,
///     plan={
///         "publisher": "Microsoft",
///         "product": "OMSGallery/ContainerInsights",
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
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "k8s-log-analytics-test",
///         Location = "West Europe",
///     });
///
///     var workspace = new Random.Index.Id("workspace", new()
///     {
///         Keepers =
///         {
///             { "groupName", example.Name },
///         },
///         ByteLength = 8,
///     });
///
///     var exampleAnalyticsWorkspace = new Azure.OperationalInsights.AnalyticsWorkspace("example", new()
///     {
///         Name = $"k8s-workspace-{workspace.Hex}",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "PerGB2018",
///     });
///
///     var exampleAnalyticsSolution = new Azure.OperationalInsights.AnalyticsSolution("example", new()
///     {
///         SolutionName = "ContainerInsights",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         WorkspaceResourceId = exampleAnalyticsWorkspace.Id,
///         WorkspaceName = exampleAnalyticsWorkspace.Name,
///         Plan = new Azure.OperationalInsights.Inputs.AnalyticsSolutionPlanArgs
///         {
///             Publisher = "Microsoft",
///             Product = "OMSGallery/ContainerInsights",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/operationalinsights"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("k8s-log-analytics-test"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		workspace, err := random.NewId(ctx, "workspace", &random.IdArgs{
/// 			Keepers: map[string]interface{}{
/// 				"groupName": example.Name,
/// 			},
/// 			ByteLength: 8,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAnalyticsWorkspace, err := operationalinsights.NewAnalyticsWorkspace(ctx, "example", &operationalinsights.AnalyticsWorkspaceArgs{
/// 			Name:              pulumi.Sprintf("k8s-workspace-%v", workspace.Hex),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("PerGB2018"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = operationalinsights.NewAnalyticsSolution(ctx, "example", &operationalinsights.AnalyticsSolutionArgs{
/// 			SolutionName:        pulumi.String("ContainerInsights"),
/// 			Location:            example.Location,
/// 			ResourceGroupName:   example.Name,
/// 			WorkspaceResourceId: exampleAnalyticsWorkspace.ID(),
/// 			WorkspaceName:       exampleAnalyticsWorkspace.Name,
/// 			Plan: &operationalinsights.AnalyticsSolutionPlanArgs{
/// 				Publisher: pulumi.String("Microsoft"),
/// 				Product:   pulumi.String("OMSGallery/ContainerInsights"),
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
/// import com.pulumi.random.Id;
/// import com.pulumi.random.IdArgs;
/// import com.pulumi.azure.operationalinsights.AnalyticsWorkspace;
/// import com.pulumi.azure.operationalinsights.AnalyticsWorkspaceArgs;
/// import com.pulumi.azure.operationalinsights.AnalyticsSolution;
/// import com.pulumi.azure.operationalinsights.AnalyticsSolutionArgs;
/// import com.pulumi.azure.operationalinsights.inputs.AnalyticsSolutionPlanArgs;
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
///             .name("k8s-log-analytics-test")
///             .location("West Europe")
///             .build());
///
///         var workspace = new Id("workspace", IdArgs.builder()
///             .keepers(Map.of("groupName", example.name()))
///             .byteLength(8)
///             .build());
///
///         var exampleAnalyticsWorkspace = new AnalyticsWorkspace("exampleAnalyticsWorkspace", AnalyticsWorkspaceArgs.builder()
///             .name(String.format("k8s-workspace-%s", workspace.hex()))
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("PerGB2018")
///             .build());
///
///         var exampleAnalyticsSolution = new AnalyticsSolution("exampleAnalyticsSolution", AnalyticsSolutionArgs.builder()
///             .solutionName("ContainerInsights")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .workspaceResourceId(exampleAnalyticsWorkspace.id())
///             .workspaceName(exampleAnalyticsWorkspace.name())
///             .plan(AnalyticsSolutionPlanArgs.builder()
///                 .publisher("Microsoft")
///                 .product("OMSGallery/ContainerInsights")
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
///       name: k8s-log-analytics-test
///       location: West Europe
///   workspace:
///     type: random:Id
///     properties:
///       keepers:
///         groupName: ${example.name}
///       byteLength: 8
///   exampleAnalyticsWorkspace:
///     type: azure:operationalinsights:AnalyticsWorkspace
///     name: example
///     properties:
///       name: k8s-workspace-${workspace.hex}
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: PerGB2018
///   exampleAnalyticsSolution:
///     type: azure:operationalinsights:AnalyticsSolution
///     name: example
///     properties:
///       solutionName: ContainerInsights
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       workspaceResourceId: ${exampleAnalyticsWorkspace.id}
///       workspaceName: ${exampleAnalyticsWorkspace.name}
///       plan:
///         publisher: Microsoft
///         product: OMSGallery/ContainerInsights
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.OperationsManagement` - 2015-11-01-preview
///
/// ## Import
///
/// Log Analytics Solutions can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:operationalinsights/analyticsSolution:AnalyticsSolution solution1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.OperationsManagement/solutions/solution1
/// ```
class AnalyticsSolution extends pulumi.CustomResource {
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// A `plan` block as documented below.
  late final pulumi.Output<AnalyticsSolutionPlan> plan;
  /// The name of the resource group in which the Log Analytics solution is created. Changing this forces a new resource to be created. Note: The solution and its related workspace can only exist in the same resource group.
  late final pulumi.Output<String> resourceGroupName;
  /// Specifies the name of the solution to be deployed. See [here for options](https://docs.microsoft.com/azure/log-analytics/log-analytics-add-solutions).Changing this forces a new resource to be created.
  late final pulumi.Output<String> solutionName;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The full name of the Log Analytics workspace with which the solution will be linked. Changing this forces a new resource to be created.
  late final pulumi.Output<String> workspaceName;
  /// The full resource ID of the Log Analytics workspace with which the solution will be linked. Changing this forces a new resource to be created.
  late final pulumi.Output<String> workspaceResourceId;

  /// Creates a new [AnalyticsSolution].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AnalyticsSolution]. {@macro pulumi_operationalinsights_analytics_solution_analytics_solution_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AnalyticsSolution(
    String name, {
    AnalyticsSolutionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:operationalinsights/analyticsSolution:AnalyticsSolution',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    location = registerOutput<String>('location');
    plan = registerOutput<AnalyticsSolutionPlan>('plan', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AnalyticsSolutionPlan.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    solutionName = registerOutput<String>('solutionName');
    tags = registerOutput<Map<String, String>?>('tags');
    workspaceName = registerOutput<String>('workspaceName');
    workspaceResourceId = registerOutput<String>('workspaceResourceId');
  }

  /// Gets an existing [AnalyticsSolution] resource's state with the given [name] and [id].
  static AnalyticsSolution get(
    String name,
    pulumi.Input<String> id, {
    AnalyticsSolutionState? state,
  }) {
    return AnalyticsSolution._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AnalyticsSolution._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:operationalinsights/analyticsSolution:AnalyticsSolution',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    location = registerOutput<String>('location');
    plan = registerOutput<AnalyticsSolutionPlan>('plan', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AnalyticsSolutionPlan.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    solutionName = registerOutput<String>('solutionName');
    tags = registerOutput<Map<String, String>?>('tags');
    workspaceName = registerOutput<String>('workspaceName');
    workspaceResourceId = registerOutput<String>('workspaceResourceId');
  }
}
