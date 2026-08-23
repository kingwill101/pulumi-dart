import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hci_cluster_args.dart';
import 'get_hci_cluster_result.dart';
import 'get_hci_storage_path_args.dart';
import 'get_hci_storage_path_result.dart';

/// Use this data source to access information about an existing Azure Stack HCI Cluster instance.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.stack.getHciCluster({
///     name: "existing",
///     resourceGroupName: "existing",
/// });
/// export const id = example.then(example => example.id);
/// export const location = example.then(example => example.location);
/// export const clientId = example.then(example => example.clientId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.stack.get_hci_cluster(name="existing",
///     resource_group_name="existing")
/// pulumi.export("id", example.id)
/// pulumi.export("location", example.location)
/// pulumi.export("clientId", example.client_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Stack.GetHciCluster.Invoke(new()
///     {
///         Name = "existing",
///         ResourceGroupName = "existing",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getHciClusterResult => getHciClusterResult.Id),
///         ["location"] = example.Apply(getHciClusterResult => getHciClusterResult.Location),
///         ["clientId"] = example.Apply(getHciClusterResult => getHciClusterResult.ClientId),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/stack"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := stack.LookupHciCluster(ctx, &stack.LookupHciClusterArgs{
/// 			Name:              "existing",
/// 			ResourceGroupName: "existing",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("id", example.Id)
/// 		ctx.Export("location", example.Location)
/// 		ctx.Export("clientId", example.ClientId)
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
/// data "azure_stack_gethcicluster" "example" {
///   name                = "existing"
///   resource_group_name = "existing"
/// }
///
/// output "id" {
///   value = data.azure_stack_gethcicluster.example.id
/// }
/// output "location" {
///   value = data.azure_stack_gethcicluster.example.location
/// }
/// output "clientId" {
///   value = data.azure_stack_gethcicluster.example.client_id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.stack.StackFunctions;
/// import com.pulumi.azure.stack.inputs.GetHciClusterArgs;
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
///         final var example = StackFunctions.getHciCluster(GetHciClusterArgs.builder()
///             .name("existing")
///             .resourceGroupName("existing")
///             .build());
///
///         ctx.export("id", example.id());
///         ctx.export("location", example.location());
///         ctx.export("clientId", example.clientId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:stack:getHciCluster
///       arguments:
///         name: existing
///         resourceGroupName: existing
/// outputs:
///   id: ${example.id}
///   location: ${example.location}
///   clientId: ${example.clientId}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.AzureStackHCI` - 2024-01-01, 2022-05-04
/// [args] Arguments passed to this invoke. {@macro pulumi_stack_get_hci_cluster_get_hci_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHciClusterResult> getHciCluster(
  GetHciClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:stack/getHciCluster:getHciCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHciClusterResult.fromMap(result);
}

/// Use this data source to access information about an existing Stack HCI Storage Path.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.stack.getHciStoragePath({
///     name: "example-hci-storage-path-name",
///     resourceGroupName: "example-rg",
/// });
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.stack.get_hci_storage_path(name="example-hci-storage-path-name",
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
///     var example = Azure.Stack.GetHciStoragePath.Invoke(new()
///     {
///         Name = "example-hci-storage-path-name",
///         ResourceGroupName = "example-rg",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["id"] = example.Apply(getHciStoragePathResult => getHciStoragePathResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/stack"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := stack.LookupHciStoragePath(ctx, &stack.LookupHciStoragePathArgs{
/// 			Name:              "example-hci-storage-path-name",
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
/// data "azure_stack_gethcistoragepath" "example" {
///   name                = "example-hci-storage-path-name"
///   resource_group_name = "example-rg"
/// }
///
/// output "id" {
///   value = data.azure_stack_gethcistoragepath.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.stack.StackFunctions;
/// import com.pulumi.azure.stack.inputs.GetHciStoragePathArgs;
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
///         final var example = StackFunctions.getHciStoragePath(GetHciStoragePathArgs.builder()
///             .name("example-hci-storage-path-name")
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
///       function: azure:stack:getHciStoragePath
///       arguments:
///         name: example-hci-storage-path-name
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
/// * `Microsoft.AzureStackHCI` - 2024-01-01
/// [args] Arguments passed to this invoke. {@macro pulumi_stack_get_hci_storage_path_get_hci_storage_path_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHciStoragePathResult> getHciStoragePath(
  GetHciStoragePathArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:stack/getHciStoragePath:getHciStoragePath',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHciStoragePathResult.fromMap(result);
}
