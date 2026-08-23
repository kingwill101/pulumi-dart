import 'package:pulumi/pulumi.dart' as pulumi;
import 'solution_args.dart';
import 'solution_plan_response.dart';
import 'solution_properties_response.dart';

/// The container for solution.
///
/// Uses Azure REST API version 2015-11-01-preview. In version 2.x of the Azure Native provider, it used API version 2015-11-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### SolutionCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var solution = new AzureNative.OperationsManagement.Solution("solution", new()
///     {
///         Location = "East US",
///         Plan = new AzureNative.OperationsManagement.Inputs.SolutionPlanArgs
///         {
///             Name = "name1",
///             Product = "product1",
///             PromotionCode = "promocode1",
///             Publisher = "publisher1",
///         },
///         Properties = new AzureNative.OperationsManagement.Inputs.SolutionPropertiesArgs
///         {
///             ContainedResources = new[]
///             {
///                 "/subscriptions/sub2/resourceGroups/rg2/providers/provider1/resources/resource1",
///                 "/subscriptions/sub2/resourceGroups/rg2/providers/provider2/resources/resource2",
///             },
///             ReferencedResources = new[]
///             {
///                 "/subscriptions/sub2/resourceGroups/rg2/providers/provider1/resources/resource2",
///                 "/subscriptions/sub2/resourceGroups/rg2/providers/provider2/resources/resource3",
///             },
///             WorkspaceResourceId = "/subscriptions/sub2/resourceGroups/rg2/providers/Microsoft.OperationalInsights/workspaces/ws1",
///         },
///         ResourceGroupName = "rg1",
///         SolutionName = "solution1",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	operationsmanagement "github.com/pulumi/pulumi-azure-native-sdk/operationsmanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := operationsmanagement.NewSolution(ctx, "solution", &operationsmanagement.SolutionArgs{
/// 			Location: pulumi.String("East US"),
/// 			Plan: &operationsmanagement.SolutionPlanArgs{
/// 				Name:          pulumi.String("name1"),
/// 				Product:       pulumi.String("product1"),
/// 				PromotionCode: pulumi.String("promocode1"),
/// 				Publisher:     pulumi.String("publisher1"),
/// 			},
/// 			Properties: &operationsmanagement.SolutionPropertiesArgs{
/// 				ContainedResources: pulumi.StringArray{
/// 					pulumi.String("/subscriptions/sub2/resourceGroups/rg2/providers/provider1/resources/resource1"),
/// 					pulumi.String("/subscriptions/sub2/resourceGroups/rg2/providers/provider2/resources/resource2"),
/// 				},
/// 				ReferencedResources: pulumi.StringArray{
/// 					pulumi.String("/subscriptions/sub2/resourceGroups/rg2/providers/provider1/resources/resource2"),
/// 					pulumi.String("/subscriptions/sub2/resourceGroups/rg2/providers/provider2/resources/resource3"),
/// 				},
/// 				WorkspaceResourceId: pulumi.String("/subscriptions/sub2/resourceGroups/rg2/providers/Microsoft.OperationalInsights/workspaces/ws1"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			SolutionName:      pulumi.String("solution1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_operationsmanagement_solution" "solution" {
///   location = "East US"
///   plan = {
///     name           = "name1"
///     product        = "product1"
///     promotion_code = "promocode1"
///     publisher      = "publisher1"
///   }
///   properties = {
///     contained_resources   = ["/subscriptions/sub2/resourceGroups/rg2/providers/provider1/resources/resource1", "/subscriptions/sub2/resourceGroups/rg2/providers/provider2/resources/resource2"]
///     referenced_resources  = ["/subscriptions/sub2/resourceGroups/rg2/providers/provider1/resources/resource2", "/subscriptions/sub2/resourceGroups/rg2/providers/provider2/resources/resource3"]
///     workspace_resource_id = "/subscriptions/sub2/resourceGroups/rg2/providers/Microsoft.OperationalInsights/workspaces/ws1"
///   }
///   resource_group_name = "rg1"
///   solution_name       = "solution1"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.operationsmanagement.Solution;
/// import com.pulumi.azurenative.operationsmanagement.SolutionArgs;
/// import com.pulumi.azurenative.operationsmanagement.inputs.SolutionPlanArgs;
/// import com.pulumi.azurenative.operationsmanagement.inputs.SolutionPropertiesArgs;
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
///         var solution = new Solution("solution", SolutionArgs.builder()
///             .location("East US")
///             .plan(SolutionPlanArgs.builder()
///                 .name("name1")
///                 .product("product1")
///                 .promotionCode("promocode1")
///                 .publisher("publisher1")
///                 .build())
///             .properties(SolutionPropertiesArgs.builder()
///                 .containedResources(
///                     "/subscriptions/sub2/resourceGroups/rg2/providers/provider1/resources/resource1",
///                     "/subscriptions/sub2/resourceGroups/rg2/providers/provider2/resources/resource2")
///                 .referencedResources(
///                     "/subscriptions/sub2/resourceGroups/rg2/providers/provider1/resources/resource2",
///                     "/subscriptions/sub2/resourceGroups/rg2/providers/provider2/resources/resource3")
///                 .workspaceResourceId("/subscriptions/sub2/resourceGroups/rg2/providers/Microsoft.OperationalInsights/workspaces/ws1")
///                 .build())
///             .resourceGroupName("rg1")
///             .solutionName("solution1")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const solution = new azure_native.operationsmanagement.Solution("solution", {
///     location: "East US",
///     plan: {
///         name: "name1",
///         product: "product1",
///         promotionCode: "promocode1",
///         publisher: "publisher1",
///     },
///     properties: {
///         containedResources: [
///             "/subscriptions/sub2/resourceGroups/rg2/providers/provider1/resources/resource1",
///             "/subscriptions/sub2/resourceGroups/rg2/providers/provider2/resources/resource2",
///         ],
///         referencedResources: [
///             "/subscriptions/sub2/resourceGroups/rg2/providers/provider1/resources/resource2",
///             "/subscriptions/sub2/resourceGroups/rg2/providers/provider2/resources/resource3",
///         ],
///         workspaceResourceId: "/subscriptions/sub2/resourceGroups/rg2/providers/Microsoft.OperationalInsights/workspaces/ws1",
///     },
///     resourceGroupName: "rg1",
///     solutionName: "solution1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// solution = azure_native.operationsmanagement.Solution("solution",
///     location="East US",
///     plan={
///         "name": "name1",
///         "product": "product1",
///         "promotion_code": "promocode1",
///         "publisher": "publisher1",
///     },
///     properties={
///         "contained_resources": [
///             "/subscriptions/sub2/resourceGroups/rg2/providers/provider1/resources/resource1",
///             "/subscriptions/sub2/resourceGroups/rg2/providers/provider2/resources/resource2",
///         ],
///         "referenced_resources": [
///             "/subscriptions/sub2/resourceGroups/rg2/providers/provider1/resources/resource2",
///             "/subscriptions/sub2/resourceGroups/rg2/providers/provider2/resources/resource3",
///         ],
///         "workspace_resource_id": "/subscriptions/sub2/resourceGroups/rg2/providers/Microsoft.OperationalInsights/workspaces/ws1",
///     },
///     resource_group_name="rg1",
///     solution_name="solution1")
///
/// ```
///
/// ```yaml
/// resources:
///   solution:
///     type: azure-native:operationsmanagement:Solution
///     properties:
///       location: East US
///       plan:
///         name: name1
///         product: product1
///         promotionCode: promocode1
///         publisher: publisher1
///       properties:
///         containedResources:
///           - /subscriptions/sub2/resourceGroups/rg2/providers/provider1/resources/resource1
///           - /subscriptions/sub2/resourceGroups/rg2/providers/provider2/resources/resource2
///         referencedResources:
///           - /subscriptions/sub2/resourceGroups/rg2/providers/provider1/resources/resource2
///           - /subscriptions/sub2/resourceGroups/rg2/providers/provider2/resources/resource3
///         workspaceResourceId: /subscriptions/sub2/resourceGroups/rg2/providers/Microsoft.OperationalInsights/workspaces/ws1
///       resourceGroupName: rg1
///       solutionName: solution1
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:operationsmanagement:Solution solution1 /subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.OperationsManagement/solutions/{solutionName}
/// ```
class Solution extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Resource location
  late final pulumi.Output<String?> location;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Plan for solution object supported by the OperationsManagement resource provider.
  late final pulumi.Output<SolutionPlanResponse?> plan;
  /// Properties for solution object supported by the OperationsManagement resource provider.
  late final pulumi.Output<SolutionPropertiesResponse> properties;
  /// Resource tags
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [Solution].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Solution]. {@macro pulumi_operationsmanagement_solution_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Solution(
    String name, {
    SolutionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:operationsmanagement:Solution',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    plan = registerOutput<SolutionPlanResponse?>('plan', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SolutionPlanResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    properties = registerOutput<SolutionPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SolutionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
