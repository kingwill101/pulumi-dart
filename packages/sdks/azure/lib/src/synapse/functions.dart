import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workspace_args.dart';
import 'get_workspace_result.dart';

/// Use this data source to access information about an existing Synapse Workspace.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.synapse.getWorkspace({
///     name: "existing",
///     resourceGroupName: "example-resource-group",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.synapse.get_workspace(name="existing",
///     resource_group_name="example-resource-group")
/// pulumi.export("id", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Synapse.GetWorkspace.Invoke(new()
///     {
///         Name = "existing",
///         ResourceGroupName = "example-resource-group",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getWorkspaceResult => getWorkspaceResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/synapse"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := synapse.LookupWorkspace(ctx, &synapse.LookupWorkspaceArgs{
/// 			Name:              "existing",
/// 			ResourceGroupName: "example-resource-group",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
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
/// data "azure_synapse_getworkspace" "example" {
///   name                = "existing"
///   resource_group_name = "example-resource-group"
/// }
///
/// output "id" {
///   value = data.azure_synapse_getworkspace.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.synapse.SynapseFunctions;
/// import com.pulumi.azure.synapse.inputs.GetWorkspaceArgs;
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
///         final var example = SynapseFunctions.getWorkspace(GetWorkspaceArgs.builder()
///             .name("existing")
///             .resourceGroupName("example-resource-group")
///             .build());
///
///         ctx.export("id", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:synapse:getWorkspace
///       arguments:
///         name: existing
///         resourceGroupName: example-resource-group
/// outputs:
///   id: ${example.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_synapse_get_workspace_get_workspace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkspaceResult> getWorkspace(
  GetWorkspaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:synapse/getWorkspace:getWorkspace',
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
    'azure:synapse/getWorkspace:getWorkspace',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkspaceResult.fromMap);
}
