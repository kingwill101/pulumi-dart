import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_args.dart';
import 'get_cluster_result.dart';

/// Use this data source to access information about an existing HDInsight Cluster.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.hdinsight.getCluster({
///     name: "example",
///     resourceGroupName: "example-resources",
/// });
/// export const httpsEndpoint = example.then(example => example.httpsEndpoint);
/// export const clusterId = example.then(example => example.clusterId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.hdinsight.get_cluster(name="example",
///     resource_group_name="example-resources")
/// pulumi.export("httpsEndpoint", example.https_endpoint)
/// pulumi.export("clusterId", example.cluster_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Azure.HDInsight.GetCluster.Invoke(new()
///     {
///         Name = "example",
///         ResourceGroupName = "example-resources",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["httpsEndpoint"] = example.Apply(getClusterResult => getClusterResult.HttpsEndpoint),
///         ["clusterId"] = example.Apply(getClusterResult => getClusterResult.ClusterId),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/hdinsight"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := hdinsight.GetCluster(ctx, &hdinsight.GetClusterArgs{
/// 			Name:              "example",
/// 			ResourceGroupName: "example-resources",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("httpsEndpoint", example.HttpsEndpoint)
/// 		ctx.Export("clusterId", example.ClusterId)
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
/// data "azure_hdinsight_getcluster" "example" {
///   name                = "example"
///   resource_group_name = "example-resources"
/// }
///
/// output "httpsEndpoint" {
///   value = data.azure_hdinsight_getcluster.example.https_endpoint
/// }
/// output "clusterId" {
///   value = data.azure_hdinsight_getcluster.example.cluster_id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.hdinsight.HdinsightFunctions;
/// import com.pulumi.azure.hdinsight.inputs.GetClusterArgs;
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
///         final var example = HdinsightFunctions.getCluster(GetClusterArgs.builder()
///             .name("example")
///             .resourceGroupName("example-resources")
///             .build());
///
///         ctx.export("httpsEndpoint", example.httpsEndpoint());
///         ctx.export("clusterId", example.clusterId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: azure:hdinsight:getCluster
///       arguments:
///         name: example
///         resourceGroupName: example-resources
/// outputs:
///   httpsEndpoint: ${example.httpsEndpoint}
///   clusterId: ${example.clusterId}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This data source uses the following Azure API Providers:
///
/// * `Microsoft.HDInsight` - 2021-06-01
/// [args] Arguments passed to this invoke. {@macro pulumi_hdinsight_get_cluster_get_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterResult> getCluster(
  GetClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure:hdinsight/getCluster:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterResult.fromMap(result);
}
