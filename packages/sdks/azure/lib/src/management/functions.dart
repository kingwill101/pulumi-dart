import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_group_args.dart';
import 'get_group_result.dart';
import 'get_group_template_deployment_args.dart';
import 'get_group_template_deployment_result.dart';

/// Use this data source to access information about an existing Management Group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.management.getGroup({
///     name: "00000000-0000-0000-0000-000000000000",
/// });
/// export const displayName = example.then(example => example.displayName);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.management.get_group(name="00000000-0000-0000-0000-000000000000")
/// pulumi.export("displayName", example.display_name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Management.GetGroup.Invoke(new()
///     {
///         Name = "00000000-0000-0000-0000-000000000000",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["displayName"] = example.Apply(getGroupResult => getGroupResult.DisplayName),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/management"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := management.LookupGroup(ctx, &management.LookupGroupArgs{
/// 			Name: pulumi.StringRef("00000000-0000-0000-0000-000000000000"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("displayName", example.DisplayName)
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
/// data "azure_management_getgroup" "example" {
///   name = "00000000-0000-0000-0000-000000000000"
/// }
///
/// output "displayName" {
///   value = data.azure_management_getgroup.example.display_name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.management.ManagementFunctions;
/// import com.pulumi.azure.management.inputs.GetGroupArgs;
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
///         final var example = ManagementFunctions.getGroup(GetGroupArgs.builder()
///             .name("00000000-0000-0000-0000-000000000000")
///             .build());
///
///         ctx.export("displayName", example.displayName());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:management:getGroup
///       arguments:
///         name: 00000000-0000-0000-0000-000000000000
/// outputs:
///   displayName: ${example.displayName}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Management` - 2020-05-01
/// [args] Arguments passed to this invoke. {@macro pulumi_management_get_group_get_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGroupResult> getGroup(
  GetGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:management/getGroup:getGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupResult.fromMap(result);
}

pulumi.Output<GetGroupResult> getGroupOutput(
  GetGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:management/getGroup:getGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGroupResult.fromMap);
}

/// Use this data source to access information about an existing Management Group Template Deployment.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as std from "@pulumi/std";
///
/// const example = azure.management.getGroupTemplateDeployment({
///     name: "existing",
///     managementGroupId: "00000000-0000-0000-000000000000",
/// });
/// export const id = example.then(example => example.id);
/// export const exampleOutput = example.then(example => std.jsondecode({
///     input: example.outputContent,
/// })).then(invoke => invoke.result?.exampleOutput?.value);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_std as std
///
/// example = azure.management.get_group_template_deployment(name="existing",
///     management_group_id="00000000-0000-0000-000000000000")
/// pulumi.export("id", example.id)
/// pulumi.export("exampleOutput", std.jsondecode(input=example.output_content).result["exampleOutput"]["value"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Management.GetGroupTemplateDeployment.Invoke(new()
///     {
///         Name = "existing",
///         ManagementGroupId = "00000000-0000-0000-000000000000",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getGroupTemplateDeploymentResult => getGroupTemplateDeploymentResult.Id),
///         ["exampleOutput"] = Std.Jsondecode.Invoke(new()
///         {
///             Input = example.Apply(getGroupTemplateDeploymentResult => getGroupTemplateDeploymentResult.OutputContent),
///         }).Apply(invoke => invoke.Result?.ExampleOutput?.Value),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/management"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := management.LookupGroupTemplateDeployment(ctx, &management.LookupGroupTemplateDeploymentArgs{
/// 			Name:              "existing",
/// 			ManagementGroupId: "00000000-0000-0000-000000000000",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
/// 		ctx.Export("exampleOutput", pulumi.Any(std.Jsondecode(ctx, &std.JsondecodeArgs{
/// 			Input: example.OutputContent,
/// 		}, nil).Result.ExampleOutput.Value))
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
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// data "azure_management_getgrouptemplatedeployment" "example" {
///   name                = "existing"
///   management_group_id = "00000000-0000-0000-000000000000"
/// }
///
/// output "id" {
///   value = data.azure_management_getgrouptemplatedeployment.example.id
/// }
/// output "exampleOutput" {
///   value = jsondecode(data.azure_management_getgrouptemplatedeployment.example.output_content).example_output.value
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.management.ManagementFunctions;
/// import com.pulumi.azure.management.inputs.GetGroupTemplateDeploymentArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.JsondecodeArgs;
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
///         final var example = ManagementFunctions.getGroupTemplateDeployment(GetGroupTemplateDeploymentArgs.builder()
///             .name("existing")
///             .managementGroupId("00000000-0000-0000-000000000000")
///             .build());
///
///         ctx.export("id", example.id());
///         ctx.export("exampleOutput", StdFunctions.jsondecode(JsondecodeArgs.builder()
///             .input(example.outputContent())
///             .build()).result().exampleOutput().value());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:management:getGroupTemplateDeployment
///       arguments:
///         name: existing
///         managementGroupId: 00000000-0000-0000-000000000000
/// outputs:
///   id: ${example.id}
///   exampleOutput:
///     fn::invoke:
///       function: std:jsondecode
///       arguments:
///         input: ${example.outputContent}
///       return: result.exampleOutput.value
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_management_get_group_template_deployment_get_group_template_deployment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGroupTemplateDeploymentResult> getGroupTemplateDeployment(
  GetGroupTemplateDeploymentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:management/getGroupTemplateDeployment:getGroupTemplateDeployment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupTemplateDeploymentResult.fromMap(result);
}

pulumi.Output<GetGroupTemplateDeploymentResult> getGroupTemplateDeploymentOutput(
  GetGroupTemplateDeploymentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:management/getGroupTemplateDeployment:getGroupTemplateDeployment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGroupTemplateDeploymentResult.fromMap);
}
