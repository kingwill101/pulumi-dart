import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_args.dart';
import 'get_cluster_result.dart';
import 'get_database_args.dart';
import 'get_database_result.dart';

/// Use this data source to access information about an existing Kusto (also known as Azure Data Explorer) Cluster
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.kusto.getCluster({
///     name: "kustocluster",
///     resourceGroupName: "test_resource_group",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.kusto.get_cluster(name="kustocluster",
///     resource_group_name="test_resource_group")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Kusto.GetCluster.Invoke(new()
///     {
///         Name = "kustocluster",
///         ResourceGroupName = "test_resource_group",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/kusto"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kusto.LookupCluster(ctx, &kusto.LookupClusterArgs{
/// 			Name:              "kustocluster",
/// 			ResourceGroupName: "test_resource_group",
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
/// data "azure_kusto_getcluster" "example" {
///   name                = "kustocluster"
///   resource_group_name = "test_resource_group"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.kusto.KustoFunctions;
/// import com.pulumi.azure.kusto.inputs.GetClusterArgs;
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
///         final var example = KustoFunctions.getCluster(GetClusterArgs.builder()
///             .name("kustocluster")
///             .resourceGroupName("test_resource_group")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:kusto:getCluster
///       arguments:
///         name: kustocluster
///         resourceGroupName: test_resource_group
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Kusto` - 2024-04-13
/// [args] Arguments passed to this invoke. {@macro pulumi_kusto_get_cluster_get_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterResult> getCluster(
  GetClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:kusto/getCluster:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterResult.fromMap(result);
}

/// Use this data source to access information about an existing Kusto Database
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.kusto.getDatabase({
///     name: "my-kusto-database",
///     resourceGroupName: "test_resource_group",
///     clusterName: "test_cluster",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.kusto.get_database(name="my-kusto-database",
///     resource_group_name="test_resource_group",
///     cluster_name="test_cluster")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.Kusto.GetDatabase.Invoke(new()
///     {
///         Name = "my-kusto-database",
///         ResourceGroupName = "test_resource_group",
///         ClusterName = "test_cluster",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/kusto"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kusto.LookupDatabase(ctx, &kusto.LookupDatabaseArgs{
/// 			Name:              "my-kusto-database",
/// 			ResourceGroupName: "test_resource_group",
/// 			ClusterName:       "test_cluster",
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
/// data "azure_kusto_getdatabase" "example" {
///   name                = "my-kusto-database"
///   resource_group_name = "test_resource_group"
///   cluster_name        = "test_cluster"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.kusto.KustoFunctions;
/// import com.pulumi.azure.kusto.inputs.GetDatabaseArgs;
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
///         final var example = KustoFunctions.getDatabase(GetDatabaseArgs.builder()
///             .name("my-kusto-database")
///             .resourceGroupName("test_resource_group")
///             .clusterName("test_cluster")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:kusto:getDatabase
///       arguments:
///         name: my-kusto-database
///         resourceGroupName: test_resource_group
///         clusterName: test_cluster
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.Kusto` - 2024-04-13
/// [args] Arguments passed to this invoke. {@macro pulumi_kusto_get_database_get_database_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatabaseResult> getDatabase(
  GetDatabaseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:kusto/getDatabase:getDatabase',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatabaseResult.fromMap(result);
}
