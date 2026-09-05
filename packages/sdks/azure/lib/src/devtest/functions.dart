import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_lab_args.dart';
import 'get_lab_result.dart';
import 'get_virtual_network_args.dart';
import 'get_virtual_network_result.dart';

/// Use this data source to access information about an existing Dev Test Lab.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.devtest.getLab({
///     name: "example-lab",
///     resourceGroupName: "example-resources",
/// });
/// export const uniqueIdentifier = example.then(example => example.uniqueIdentifier);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.devtest.get_lab(name="example-lab",
///     resource_group_name="example-resources")
/// pulumi.export("uniqueIdentifier", example.unique_identifier)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.DevTest.GetLab.Invoke(new()
///     {
///         Name = "example-lab",
///         ResourceGroupName = "example-resources",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["uniqueIdentifier"] = example.Apply(getLabResult => getLabResult.UniqueIdentifier),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/devtest"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := devtest.LookupLab(ctx, &devtest.LookupLabArgs{
/// 			Name:              "example-lab",
/// 			ResourceGroupName: "example-resources",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("uniqueIdentifier", example.UniqueIdentifier)
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
/// data "azure_devtest_getlab" "example" {
///   name                = "example-lab"
///   resource_group_name = "example-resources"
/// }
///
/// output "uniqueIdentifier" {
///   value = data.azure_devtest_getlab.example.unique_identifier
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.devtest.DevtestFunctions;
/// import com.pulumi.azure.devtest.inputs.GetLabArgs;
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
///         final var example = DevtestFunctions.getLab(GetLabArgs.builder()
///             .name("example-lab")
///             .resourceGroupName("example-resources")
///             .build());
///
///         ctx.export("uniqueIdentifier", example.uniqueIdentifier());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:devtest:getLab
///       arguments:
///         name: example-lab
///         resourceGroupName: example-resources
/// outputs:
///   uniqueIdentifier: ${example.uniqueIdentifier}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.DevTestLab` - 2018-09-15
/// [args] Arguments passed to this invoke. {@macro pulumi_devtest_get_lab_get_lab_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLabResult> getLab(
  GetLabArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:devtest/getLab:getLab',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLabResult.fromMap(result);
}

pulumi.Output<GetLabResult> getLabOutput(
  GetLabArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:devtest/getLab:getLab',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLabResult.fromMap);
}

/// Use this data source to access information about an existing Dev Test Lab Virtual Network.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.devtest.getVirtualNetwork({
///     name: "example-network",
///     labName: "examplelab",
///     resourceGroupName: "example-resource",
/// });
/// export const labSubnetName = example.then(example => example.allowedSubnets?.[0]?.labSubnetName);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.devtest.get_virtual_network(name="example-network",
///     lab_name="examplelab",
///     resource_group_name="example-resource")
/// pulumi.export("labSubnetName", example.allowed_subnets[0].lab_subnet_name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.DevTest.GetVirtualNetwork.Invoke(new()
///     {
///         Name = "example-network",
///         LabName = "examplelab",
///         ResourceGroupName = "example-resource",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["labSubnetName"] = example.Apply(getVirtualNetworkResult => getVirtualNetworkResult.AllowedSubnets[0]?.LabSubnetName),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/devtest"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := devtest.LookupVirtualNetwork(ctx, &devtest.LookupVirtualNetworkArgs{
/// 			Name:              "example-network",
/// 			LabName:           "examplelab",
/// 			ResourceGroupName: "example-resource",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("labSubnetName", example.AllowedSubnets[0].LabSubnetName)
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
/// data "azure_devtest_getvirtualnetwork" "example" {
///   name                = "example-network"
///   lab_name            = "examplelab"
///   resource_group_name = "example-resource"
/// }
///
/// output "labSubnetName" {
///   value = data.azure_devtest_getvirtualnetwork.example.allowed_subnets[0].lab_subnet_name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.devtest.DevtestFunctions;
/// import com.pulumi.azure.devtest.inputs.GetVirtualNetworkArgs;
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
///         final var example = DevtestFunctions.getVirtualNetwork(GetVirtualNetworkArgs.builder()
///             .name("example-network")
///             .labName("examplelab")
///             .resourceGroupName("example-resource")
///             .build());
///
///         ctx.export("labSubnetName", example.allowedSubnets()[0].labSubnetName());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:devtest:getVirtualNetwork
///       arguments:
///         name: example-network
///         labName: examplelab
///         resourceGroupName: example-resource
/// outputs:
///   labSubnetName: ${example.allowedSubnets[0].labSubnetName}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.DevTestLab` - 2018-09-15
/// [args] Arguments passed to this invoke. {@macro pulumi_devtest_get_virtual_network_get_virtual_network_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualNetworkResult> getVirtualNetwork(
  GetVirtualNetworkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:devtest/getVirtualNetwork:getVirtualNetwork',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualNetworkResult.fromMap(result);
}

pulumi.Output<GetVirtualNetworkResult> getVirtualNetworkOutput(
  GetVirtualNetworkArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure:devtest/getVirtualNetwork:getVirtualNetwork',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualNetworkResult.fromMap);
}
