import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_management_group_args.dart';
import 'get_management_group_result.dart';

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
/// [args] Arguments passed to this invoke. {@macro pulumi_managementgroups_get_management_group_get_management_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagementGroupResult> getManagementGroup(
  GetManagementGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:managementgroups/getManagementGroup:getManagementGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagementGroupResult.fromMap(result);
}

pulumi.Output<GetManagementGroupResult> getManagementGroupOutput(
  GetManagementGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:managementgroups/getManagementGroup:getManagementGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetManagementGroupResult.fromMap);
}
