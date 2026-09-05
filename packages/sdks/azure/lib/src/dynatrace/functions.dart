import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_monitor_args.dart';
import 'get_monitor_result.dart';

/// Use this data source to access information about an existing Dynatrace Monitor.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.dynatrace.getMonitor({
///     name: "example-dynatracemonitor",
///     resourceGroupName: "example-resources",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.dynatrace.get_monitor(name="example-dynatracemonitor",
///     resource_group_name="example-resources")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Dynatrace.GetMonitor.Invoke(new()
///     {
///         Name = "example-dynatracemonitor",
///         ResourceGroupName = "example-resources",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/dynatrace"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dynatrace.LookupMonitor(ctx, &dynatrace.LookupMonitorArgs{
/// 			Name:              "example-dynatracemonitor",
/// 			ResourceGroupName: "example-resources",
/// 		}, nil)
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
/// data "azure_dynatrace_getmonitor" "example" {
///   name                = "example-dynatracemonitor"
///   resource_group_name = "example-resources"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.dynatrace.DynatraceFunctions;
/// import com.pulumi.azure.dynatrace.inputs.GetMonitorArgs;
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
///         final var example = DynatraceFunctions.getMonitor(GetMonitorArgs.builder()
///             .name("example-dynatracemonitor")
///             .resourceGroupName("example-resources")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:dynatrace:getMonitor
///       arguments:
///         name: example-dynatracemonitor
///         resourceGroupName: example-resources
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Dynatrace.Observability` - 2023-04-27
/// [args] Arguments passed to this invoke. {@macro pulumi_dynatrace_get_monitor_get_monitor_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMonitorResult> getMonitor(
  GetMonitorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:dynatrace/getMonitor:getMonitor',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMonitorResult.fromMap(result);
}

pulumi.Output<GetMonitorResult> getMonitorOutput(
  GetMonitorArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:dynatrace/getMonitor:getMonitor',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMonitorResult.fromMap);
}
