import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_integration_account_args.dart';
import 'get_integration_account_result.dart';
import 'get_standard_args.dart';
import 'get_standard_result.dart';
import 'get_workflow_args.dart';
import 'get_workflow_result.dart';

/// Use this data source to access information about an existing Logic App Integration Account.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.logicapps.getIntegrationAccount({
///     name: "example-account",
///     resourceGroupName: "example-resource-group",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.logicapps.get_integration_account(name="example-account",
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
///     var example = Azure.LogicApps.GetIntegrationAccount.Invoke(new()
///     {
///         Name = "example-account",
///         ResourceGroupName = "example-resource-group",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getIntegrationAccountResult => getIntegrationAccountResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/logicapps"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := logicapps.LookupIntegrationAccount(ctx, &logicapps.LookupIntegrationAccountArgs{
/// 			Name:              "example-account",
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
/// data "azure_logicapps_getintegrationaccount" "example" {
///   name                = "example-account"
///   resource_group_name = "example-resource-group"
/// }
///
/// output "id" {
///   value = data.azure_logicapps_getintegrationaccount.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.logicapps.LogicappsFunctions;
/// import com.pulumi.azure.logicapps.inputs.GetIntegrationAccountArgs;
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
///         final var example = LogicappsFunctions.getIntegrationAccount(GetIntegrationAccountArgs.builder()
///             .name("example-account")
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
///       function: azure:logicapps:getIntegrationAccount
///       arguments:
///         name: example-account
///         resourceGroupName: example-resource-group
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Logic` - 2019-05-01
/// [args] Arguments passed to this invoke. {@macro pulumi_logicapps_get_integration_account_get_integration_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIntegrationAccountResult> getIntegrationAccount(
  GetIntegrationAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:logicapps/getIntegrationAccount:getIntegrationAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIntegrationAccountResult.fromMap(result);
}

pulumi.Output<GetIntegrationAccountResult> getIntegrationAccountOutput(
  GetIntegrationAccountArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:logicapps/getIntegrationAccount:getIntegrationAccount',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIntegrationAccountResult.fromMap);
}

/// Use this data source to access information about an existing Logic App Standard instance.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.logicapps.getStandard({
///     name: "example-logic-app",
///     resourceGroupName: "example-rg",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.logicapps.get_standard(name="example-logic-app",
///     resource_group_name="example-rg")
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
///     var example = Azure.LogicApps.GetStandard.Invoke(new()
///     {
///         Name = "example-logic-app",
///         ResourceGroupName = "example-rg",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getStandardResult => getStandardResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/logicapps"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := logicapps.LookupStandard(ctx, &logicapps.LookupStandardArgs{
/// 			Name:              "example-logic-app",
/// 			ResourceGroupName: "example-rg",
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
/// data "azure_logicapps_getstandard" "example" {
///   name                = "example-logic-app"
///   resource_group_name = "example-rg"
/// }
///
/// output "id" {
///   value = data.azure_logicapps_getstandard.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.logicapps.LogicappsFunctions;
/// import com.pulumi.azure.logicapps.inputs.GetStandardArgs;
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
///         final var example = LogicappsFunctions.getStandard(GetStandardArgs.builder()
///             .name("example-logic-app")
///             .resourceGroupName("example-rg")
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
///       function: azure:logicapps:getStandard
///       arguments:
///         name: example-logic-app
///         resourceGroupName: example-rg
/// outputs:
///   id: ${example.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Web` - 2023-12-01
/// [args] Arguments passed to this invoke. {@macro pulumi_logicapps_get_standard_get_standard_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStandardResult> getStandard(
  GetStandardArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:logicapps/getStandard:getStandard',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStandardResult.fromMap(result);
}

pulumi.Output<GetStandardResult> getStandardOutput(
  GetStandardArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:logicapps/getStandard:getStandard',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetStandardResult.fromMap);
}

/// Use this data source to access information about an existing Logic App Workflow.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.logicapps.getWorkflow({
///     name: "workflow1",
///     resourceGroupName: "my-resource-group",
/// });
/// export const accessEndpoint = example.then(example => example.accessEndpoint);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.logicapps.get_workflow(name="workflow1",
///     resource_group_name="my-resource-group")
/// pulumi.export("accessEndpoint", example.access_endpoint)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.LogicApps.GetWorkflow.Invoke(new()
///     {
///         Name = "workflow1",
///         ResourceGroupName = "my-resource-group",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["accessEndpoint"] = example.Apply(getWorkflowResult => getWorkflowResult.AccessEndpoint),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/logicapps"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := logicapps.LookupWorkflow(ctx, &logicapps.LookupWorkflowArgs{
/// 			Name:              "workflow1",
/// 			ResourceGroupName: "my-resource-group",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("accessEndpoint", example.AccessEndpoint)
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
/// data "azure_logicapps_getworkflow" "example" {
///   name                = "workflow1"
///   resource_group_name = "my-resource-group"
/// }
///
/// output "accessEndpoint" {
///   value = data.azure_logicapps_getworkflow.example.access_endpoint
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.logicapps.LogicappsFunctions;
/// import com.pulumi.azure.logicapps.inputs.GetWorkflowArgs;
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
///         final var example = LogicappsFunctions.getWorkflow(GetWorkflowArgs.builder()
///             .name("workflow1")
///             .resourceGroupName("my-resource-group")
///             .build());
///
///         ctx.export("accessEndpoint", example.accessEndpoint());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:logicapps:getWorkflow
///       arguments:
///         name: workflow1
///         resourceGroupName: my-resource-group
/// outputs:
///   accessEndpoint: ${example.accessEndpoint}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Logic` - 2019-05-01
/// [args] Arguments passed to this invoke. {@macro pulumi_logicapps_get_workflow_get_workflow_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkflowResult> getWorkflow(
  GetWorkflowArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:logicapps/getWorkflow:getWorkflow',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkflowResult.fromMap(result);
}

pulumi.Output<GetWorkflowResult> getWorkflowOutput(
  GetWorkflowArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:logicapps/getWorkflow:getWorkflow',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkflowResult.fromMap);
}
