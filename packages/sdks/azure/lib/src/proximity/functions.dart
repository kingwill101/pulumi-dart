import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_placement_group_args.dart';
import 'get_placement_group_result.dart';

/// Use this data source to access information about an existing Proximity Placement Group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.proximity.getPlacementGroup({
///     name: "tf-appsecuritygroup",
///     resourceGroupName: "my-resource-group",
/// });
/// export const proximityPlacementGroupId = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.proximity.get_placement_group(name="tf-appsecuritygroup",
///     resource_group_name="my-resource-group")
/// pulumi.export("proximityPlacementGroupId", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Proximity.GetPlacementGroup.Invoke(new()
///     {
///         Name = "tf-appsecuritygroup",
///         ResourceGroupName = "my-resource-group",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["proximityPlacementGroupId"] = example.Apply(getPlacementGroupResult => getPlacementGroupResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/proximity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := proximity.LookupPlacementGroup(ctx, &proximity.LookupPlacementGroupArgs{
/// 			Name:              "tf-appsecuritygroup",
/// 			ResourceGroupName: "my-resource-group",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("proximityPlacementGroupId", example.Id)
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
/// import com.pulumi.azure.proximity.ProximityFunctions;
/// import com.pulumi.azure.proximity.inputs.GetPlacementGroupArgs;
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
///         final var example = ProximityFunctions.getPlacementGroup(GetPlacementGroupArgs.builder()
///             .name("tf-appsecuritygroup")
///             .resourceGroupName("my-resource-group")
///             .build());
///
///         ctx.export("proximityPlacementGroupId", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:proximity:getPlacementGroup
///       arguments:
///         name: tf-appsecuritygroup
///         resourceGroupName: my-resource-group
/// outputs:
///   proximityPlacementGroupId: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Compute` - 2022-03-01
/// [args] Arguments passed to this invoke. {@macro pulumi_proximity_get_placement_group_get_placement_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPlacementGroupResult> getPlacementGroup(
  GetPlacementGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:proximity/getPlacementGroup:getPlacementGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPlacementGroupResult.fromMap(result);
}
