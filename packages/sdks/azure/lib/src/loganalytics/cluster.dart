import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_args.dart';
import 'cluster_identity.dart';
import 'cluster_state.dart';

/// &gt; **Note:** Log Analytics Clusters are subject to 14-day soft delete policy. Clusters created with the same resource group & name as a previously deleted cluster will be recovered rather than creating anew.
///
/// Manages a Log Analytics Cluster.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleCluster = new azure.loganalytics.Cluster("example", {
///     name: "example-cluster",
///     resourceGroupName: example.name,
///     location: example.location,
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_cluster = azure.loganalytics.Cluster("example",
///     name="example-cluster",
///     resource_group_name=example.name,
///     location=example.location,
///     identity={
///         "type": "SystemAssigned",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleCluster = new Azure.LogAnalytics.Cluster("example", new()
///     {
///         Name = "example-cluster",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Identity = new Azure.LogAnalytics.Inputs.ClusterIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/loganalytics"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = loganalytics.NewCluster(ctx, "example", &loganalytics.ClusterArgs{
/// 			Name:              pulumi.String("example-cluster"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Identity: &loganalytics.ClusterIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.loganalytics.Cluster;
/// import com.pulumi.azure.loganalytics.ClusterArgs;
/// import com.pulumi.azure.loganalytics.inputs.ClusterIdentityArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleCluster = new Cluster("exampleCluster", ClusterArgs.builder()
///             .name("example-cluster")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .identity(ClusterIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleCluster:
///     type: azure:loganalytics:Cluster
///     name: example
///     properties:
///       name: example-cluster
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       identity:
///         type: SystemAssigned
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.OperationalInsights` - 2022-10-01
///
/// ## Import
///
/// Log Analytics Clusters can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:loganalytics/cluster:Cluster example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.OperationalInsights/clusters/cluster1
/// ```
class Cluster extends pulumi.CustomResource {
  /// The GUID of the cluster.
  late final pulumi.Output<String> clusterId;

  /// An `identity` block as defined below. Changing this forces a new Log Analytics Cluster to be created.
  late final pulumi.Output<ClusterIdentity> identity;

  /// The Azure Region where the Log Analytics Cluster should exist. Changing this forces a new Log Analytics Cluster to be created.
  late final pulumi.Output<String> location;

  /// The name which should be used for this Log Analytics Cluster. Changing this forces a new Log Analytics Cluster to be created.
  late final pulumi.Output<String> name;

  /// The name of the Resource Group where the Log Analytics Cluster should exist. Changing this forces a new Log Analytics Cluster to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// The capacity of the Log Analytics Cluster is specified in GB/day. Possible values include `100`, `200`, `300`, `400`, `500`, `1000`, `2000`, `5000`, `10000`, `25000`, or `50000`. Defaults to `100`.
  ///
  /// &gt; **Note:** The cluster capacity must start at 100 GB and can be set to 500, 1000, 2000 or 5000 GB/day. For more information on cluster costs, see [Dedicated clusters](https://docs.microsoft.com/en-us/azure/azure-monitor/logs/cost-logs#dedicated-clusters).
  late final pulumi.Output<int?> sizeGb;

  /// A mapping of tags which should be assigned to the Log Analytics Cluster.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Cluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cluster]. {@macro pulumi_loganalytics_cluster_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:loganalytics/cluster:Cluster',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    clusterId = registerOutput<String>('clusterId');
    identity = registerOutput<ClusterIdentity>('identity');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sizeGb = registerOutput<int?>('sizeGb');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Cluster] resource's state with the given [name] and [id].
  static Cluster get(
    String name,
    pulumi.Input<String> id, {
    ClusterState? state,
  }) {
    return Cluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Cluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:loganalytics/cluster:Cluster',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    clusterId = registerOutput<String>('clusterId');
    identity = registerOutput<ClusterIdentity>('identity');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sizeGb = registerOutput<int?>('sizeGb');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
