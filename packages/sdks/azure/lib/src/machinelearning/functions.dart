import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workspace_args.dart';
import 'get_workspace_result.dart';

/// Use this data source to access information about an existing Machine Learning Workspace.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const existing = azure.machinelearning.getWorkspace({
///     name: "example-workspace",
///     resourceGroupName: "example-resources",
/// });
/// export const id = existing.then(existing => existing.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// existing = azure.machinelearning.get_workspace(name="example-workspace",
///     resource_group_name="example-resources")
/// pulumi.export("id", existing.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var existing = Azure.MachineLearning.GetWorkspace.Invoke(new()
///     {
///         Name = "example-workspace",
///         ResourceGroupName = "example-resources",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = existing.Apply(getWorkspaceResult => getWorkspaceResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/machinelearning"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		existing, err := machinelearning.LookupWorkspace(ctx, &machinelearning.LookupWorkspaceArgs{
/// 			Name:              "example-workspace",
/// 			ResourceGroupName: "example-resources",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", existing.Id)
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
/// data "azure_machinelearning_getworkspace" "existing" {
///   name                = "example-workspace"
///   resource_group_name = "example-resources"
/// }
///
/// output "id" {
///   value = data.azure_machinelearning_getworkspace.existing.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.machinelearning.MachinelearningFunctions;
/// import com.pulumi.azure.machinelearning.inputs.GetWorkspaceArgs;
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
///         final var existing = MachinelearningFunctions.getWorkspace(GetWorkspaceArgs.builder()
///             .name("example-workspace")
///             .resourceGroupName("example-resources")
///             .build());
///
///         ctx.export("id", existing.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   existing:
///     fn::invoke:
///       function: azure:machinelearning:getWorkspace
///       arguments:
///         name: example-workspace
///         resourceGroupName: example-resources
/// outputs:
///   id: ${existing.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.MachineLearningServices` - 2025-06-01
/// [args] Arguments passed to this invoke. {@macro pulumi_machinelearning_get_workspace_get_workspace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceResult> getWorkspace(
  GetWorkspaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:machinelearning/getWorkspace:getWorkspace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkspaceResult.fromMap(result);
}

pulumi.Output<GetWorkspaceResult> getWorkspaceOutput(
  GetWorkspaceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:machinelearning/getWorkspace:getWorkspace',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkspaceResult.fromMap);
}
