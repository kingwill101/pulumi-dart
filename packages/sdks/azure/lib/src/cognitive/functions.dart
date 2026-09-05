import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_args.dart';
import 'get_account_project_args.dart';
import 'get_account_project_result.dart';
import 'get_account_result.dart';

/// Use this data source to access information about an existing Cognitive Services Account.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const test = azure.cognitive.getAccount({
///     name: "example-account",
///     resourceGroupName: "cognitive_account_rg",
/// });
/// export const primaryAccessKey = test.then(test => test.primaryAccessKey);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// test = azure.cognitive.get_account(name="example-account",
///     resource_group_name="cognitive_account_rg")
/// pulumi.export("primaryAccessKey", test.primary_access_key)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Azure.Cognitive.GetAccount.Invoke(new()
///     {
///         Name = "example-account",
///         ResourceGroupName = "cognitive_account_rg",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["primaryAccessKey"] = test.Apply(getAccountResult => getAccountResult.PrimaryAccessKey),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cognitive"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		test, err := cognitive.LookupAccount(ctx, &cognitive.LookupAccountArgs{
/// 			Name:              "example-account",
/// 			ResourceGroupName: "cognitive_account_rg",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("primaryAccessKey", test.PrimaryAccessKey)
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
/// data "azure_cognitive_getaccount" "test" {
///   name                = "example-account"
///   resource_group_name = "cognitive_account_rg"
/// }
///
/// output "primaryAccessKey" {
///   value = data.azure_cognitive_getaccount.test.primary_access_key
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.cognitive.CognitiveFunctions;
/// import com.pulumi.azure.cognitive.inputs.GetAccountArgs;
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
///         final var test = CognitiveFunctions.getAccount(GetAccountArgs.builder()
///             .name("example-account")
///             .resourceGroupName("cognitive_account_rg")
///             .build());
///
///         ctx.export("primaryAccessKey", test.primaryAccessKey());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: azure:cognitive:getAccount
///       arguments:
///         name: example-account
///         resourceGroupName: cognitive_account_rg
/// outputs:
///   primaryAccessKey: ${test.primaryAccessKey}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.CognitiveServices` - 2026-03-01
/// [args] Arguments passed to this invoke. {@macro pulumi_cognitive_get_account_get_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountResult> getAccount(
  GetAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:cognitive/getAccount:getAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountResult.fromMap(result);
}

pulumi.Output<GetAccountResult> getAccountOutput(
  GetAccountArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:cognitive/getAccount:getAccount',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAccountResult.fromMap);
}

/// Use this data source to access information about an existing Cognitive Services Account Project.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.cognitive.getAccountProject({
///     name: "example-project",
///     cognitiveAccountName: "example-account",
///     resourceGroupName: "example-resources",
/// });
/// export const id = example.then(example => example.id);
/// export const location = example.then(example => example.location);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.cognitive.get_account_project(name="example-project",
///     cognitive_account_name="example-account",
///     resource_group_name="example-resources")
/// pulumi.export("id", example.id)
/// pulumi.export("location", example.location)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Cognitive.GetAccountProject.Invoke(new()
///     {
///         Name = "example-project",
///         CognitiveAccountName = "example-account",
///         ResourceGroupName = "example-resources",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getAccountProjectResult => getAccountProjectResult.Id),
///         ["location"] = example.Apply(getAccountProjectResult => getAccountProjectResult.Location),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cognitive"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cognitive.LookupAccountProject(ctx, &cognitive.LookupAccountProjectArgs{
/// 			Name:                 "example-project",
/// 			CognitiveAccountName: "example-account",
/// 			ResourceGroupName:    "example-resources",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
/// 		ctx.Export("location", example.Location)
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
/// data "azure_cognitive_getaccountproject" "example" {
///   name                   = "example-project"
///   cognitive_account_name = "example-account"
///   resource_group_name    = "example-resources"
/// }
///
/// output "id" {
///   value = data.azure_cognitive_getaccountproject.example.id
/// }
/// output "location" {
///   value = data.azure_cognitive_getaccountproject.example.location
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.cognitive.CognitiveFunctions;
/// import com.pulumi.azure.cognitive.inputs.GetAccountProjectArgs;
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
///         final var example = CognitiveFunctions.getAccountProject(GetAccountProjectArgs.builder()
///             .name("example-project")
///             .cognitiveAccountName("example-account")
///             .resourceGroupName("example-resources")
///             .build());
///
///         ctx.export("id", example.id());
///         ctx.export("location", example.location());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:cognitive:getAccountProject
///       arguments:
///         name: example-project
///         cognitiveAccountName: example-account
///         resourceGroupName: example-resources
/// outputs:
///   id: ${example.id}
///   location: ${example.location}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.CognitiveServices` - 2026-03-01
/// [args] Arguments passed to this invoke. {@macro pulumi_cognitive_get_account_project_get_account_project_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountProjectResult> getAccountProject(
  GetAccountProjectArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:cognitive/getAccountProject:getAccountProject',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountProjectResult.fromMap(result);
}

pulumi.Output<GetAccountProjectResult> getAccountProjectOutput(
  GetAccountProjectArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:cognitive/getAccountProject:getAccountProject',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAccountProjectResult.fromMap);
}
