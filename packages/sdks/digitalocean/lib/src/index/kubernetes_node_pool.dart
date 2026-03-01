import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_node_pool_args.dart';
import 'kubernetes_node_pool_node.dart';
import 'kubernetes_node_pool_state.dart';
import 'kubernetes_node_pool_taint.dart';

/// Provides a DigitalOcean Kubernetes node pool resource. While the default node pool must be defined in the `digitalocean.KubernetesCluster` resource, this resource can be used to add additional ones to a cluster.
///
/// ## Example Usage
///
/// ### Basic Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const foo = new digitalocean.KubernetesCluster("foo", {
///     name: "foo",
///     region: digitalocean.Region.NYC1,
///     version: "1.22.8-do.1",
///     nodePool: {
///         name: "front-end-pool",
///         size: "s-2vcpu-2gb",
///         nodeCount: 3,
///     },
/// });
/// const bar = new digitalocean.KubernetesNodePool("bar", {
///     clusterId: foo.id,
///     name: "backend-pool",
///     size: digitalocean.DropletSlug.DropletC2,
///     nodeCount: 2,
///     tags: ["backend"],
///     labels: {
///         service: "backend",
///         priority: "high",
///     },
///     taints: [{
///         key: "workloadKind",
///         value: "database",
///         effect: "NoSchedule",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// foo = digitalocean.KubernetesCluster("foo",
///     name="foo",
///     region=digitalocean.Region.NYC1,
///     version="1.22.8-do.1",
///     node_pool={
///         "name": "front-end-pool",
///         "size": "s-2vcpu-2gb",
///         "node_count": 3,
///     })
/// bar = digitalocean.KubernetesNodePool("bar",
///     cluster_id=foo.id,
///     name="backend-pool",
///     size=digitalocean.DropletSlug.DROPLET_C2,
///     node_count=2,
///     tags=["backend"],
///     labels={
///         "service": "backend",
///         "priority": "high",
///     },
///     taints=[{
///         "key": "workloadKind",
///         "value": "database",
///         "effect": "NoSchedule",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new DigitalOcean.KubernetesCluster("foo", new()
///     {
///         Name = "foo",
///         Region = DigitalOcean.Region.NYC1,
///         Version = "1.22.8-do.1",
///         NodePool = new DigitalOcean.Inputs.KubernetesClusterNodePoolArgs
///         {
///             Name = "front-end-pool",
///             Size = "s-2vcpu-2gb",
///             NodeCount = 3,
///         },
///     });
///
///     var bar = new DigitalOcean.KubernetesNodePool("bar", new()
///     {
///         ClusterId = foo.Id,
///         Name = "backend-pool",
///         Size = DigitalOcean.DropletSlug.DropletC2,
///         NodeCount = 2,
///         Tags = new[]
///         {
///             "backend",
///         },
///         Labels =
///         {
///             { "service", "backend" },
///             { "priority", "high" },
///         },
///         Taints = new[]
///         {
///             new DigitalOcean.Inputs.KubernetesNodePoolTaintArgs
///             {
///                 Key = "workloadKind",
///                 Value = "database",
///                 Effect = "NoSchedule",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		foo, err := digitalocean.NewKubernetesCluster(ctx, "foo", &digitalocean.KubernetesClusterArgs{
/// 			Name:    pulumi.String("foo"),
/// 			Region:  pulumi.String(digitalocean.RegionNYC1),
/// 			Version: pulumi.String("1.22.8-do.1"),
/// 			NodePool: &digitalocean.KubernetesClusterNodePoolArgs{
/// 				Name:      pulumi.String("front-end-pool"),
/// 				Size:      pulumi.String("s-2vcpu-2gb"),
/// 				NodeCount: pulumi.Int(3),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewKubernetesNodePool(ctx, "bar", &digitalocean.KubernetesNodePoolArgs{
/// 			ClusterId: foo.ID(),
/// 			Name:      pulumi.String("backend-pool"),
/// 			Size:      pulumi.String(digitalocean.DropletSlugDropletC2),
/// 			NodeCount: pulumi.Int(2),
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String("backend"),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"service":  pulumi.String("backend"),
/// 				"priority": pulumi.String("high"),
/// 			},
/// 			Taints: digitalocean.KubernetesNodePoolTaintArray{
/// 				&digitalocean.KubernetesNodePoolTaintArgs{
/// 					Key:    pulumi.String("workloadKind"),
/// 					Value:  pulumi.String("database"),
/// 					Effect: pulumi.String("NoSchedule"),
/// 				},
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
/// import com.pulumi.digitalocean.KubernetesCluster;
/// import com.pulumi.digitalocean.KubernetesClusterArgs;
/// import com.pulumi.digitalocean.inputs.KubernetesClusterNodePoolArgs;
/// import com.pulumi.digitalocean.KubernetesNodePool;
/// import com.pulumi.digitalocean.KubernetesNodePoolArgs;
/// import com.pulumi.digitalocean.inputs.KubernetesNodePoolTaintArgs;
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
///         var foo = new KubernetesCluster("foo", KubernetesClusterArgs.builder()
///             .name("foo")
///             .region("nyc1")
///             .version("1.22.8-do.1")
///             .nodePool(KubernetesClusterNodePoolArgs.builder()
///                 .name("front-end-pool")
///                 .size("s-2vcpu-2gb")
///                 .nodeCount(3)
///                 .build())
///             .build());
///
///         var bar = new KubernetesNodePool("bar", KubernetesNodePoolArgs.builder()
///             .clusterId(foo.id())
///             .name("backend-pool")
///             .size("c-2")
///             .nodeCount(2)
///             .tags("backend")
///             .labels(Map.ofEntries(
///                 Map.entry("service", "backend"),
///                 Map.entry("priority", "high")
///             ))
///             .taints(KubernetesNodePoolTaintArgs.builder()
///                 .key("workloadKind")
///                 .value("database")
///                 .effect("NoSchedule")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: digitalocean:KubernetesCluster
///     properties:
///       name: foo
///       region: nyc1
///       version: 1.22.8-do.1
///       nodePool:
///         name: front-end-pool
///         size: s-2vcpu-2gb
///         nodeCount: 3
///   bar:
///     type: digitalocean:KubernetesNodePool
///     properties:
///       clusterId: ${foo.id}
///       name: backend-pool
///       size: c-2
///       nodeCount: 2
///       tags:
///         - backend
///       labels:
///         service: backend
///         priority: high
///       taints:
///         - key: workloadKind
///           value: database
///           effect: NoSchedule
/// ```
///
///
/// ### Autoscaling Example
///
/// Node pools may also be configured to [autoscale](https://www.digitalocean.com/docs/kubernetes/how-to/autoscale/).
/// For example:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const autoscale_pool_01 = new digitalocean.KubernetesNodePool("autoscale-pool-01", {
///     clusterId: foo.id,
///     name: "autoscale-pool-01",
///     size: digitalocean.DropletSlug.DropletS1VCPU2GB,
///     autoScale: true,
///     minNodes: 1,
///     maxNodes: 5,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// autoscale_pool_01 = digitalocean.KubernetesNodePool("autoscale-pool-01",
///     cluster_id=foo["id"],
///     name="autoscale-pool-01",
///     size=digitalocean.DropletSlug.DROPLET_S1_VCPU2_GB,
///     auto_scale=True,
///     min_nodes=1,
///     max_nodes=5)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var autoscale_pool_01 = new DigitalOcean.KubernetesNodePool("autoscale-pool-01", new()
///     {
///         ClusterId = foo.Id,
///         Name = "autoscale-pool-01",
///         Size = DigitalOcean.DropletSlug.DropletS1VCPU2GB,
///         AutoScale = true,
///         MinNodes = 1,
///         MaxNodes = 5,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := digitalocean.NewKubernetesNodePool(ctx, "autoscale-pool-01", &digitalocean.KubernetesNodePoolArgs{
/// 			ClusterId: pulumi.Any(foo.Id),
/// 			Name:      pulumi.String("autoscale-pool-01"),
/// 			Size:      pulumi.String(digitalocean.DropletSlugDropletS1VCPU2GB),
/// 			AutoScale: pulumi.Bool(true),
/// 			MinNodes:  pulumi.Int(1),
/// 			MaxNodes:  pulumi.Int(5),
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
/// import com.pulumi.digitalocean.KubernetesNodePool;
/// import com.pulumi.digitalocean.KubernetesNodePoolArgs;
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
///         var autoscale_pool_01 = new KubernetesNodePool("autoscale-pool-01", KubernetesNodePoolArgs.builder()
///             .clusterId(foo.id())
///             .name("autoscale-pool-01")
///             .size("s-1vcpu-2gb")
///             .autoScale(true)
///             .minNodes(1)
///             .maxNodes(5)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   autoscale-pool-01:
///     type: digitalocean:KubernetesNodePool
///     properties:
///       clusterId: ${foo.id}
///       name: autoscale-pool-01
///       size: s-1vcpu-2gb
///       autoScale: true
///       minNodes: 1
///       maxNodes: 5
/// ```
///
///
/// ## Import
///
/// If you are importing an existing Kubernetes cluster with a single node pool, just
/// import the cluster. Additional node pools can be imported by using their `id`, e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/kubernetesNodePool:KubernetesNodePool mynodepool 9d76f410-9284-4436-9633-4066852442c8
/// ```
///
/// Note: If the node pool has the `terraform:default-node-pool` tag, then it is a default node pool for an
/// existing cluster. The provider will refuse to import the node pool in that case because the node pool
/// is managed by the `digitalocean.KubernetesCluster` resource and not by this
/// `digitalocean.KubernetesNodePool` resource.
class KubernetesNodePool extends pulumi.CustomResource {
  /// A computed field representing the actual number of nodes in the node pool, which is especially useful when auto-scaling is enabled.
  late final pulumi.Output<int> actualNodeCount;
  /// Enable auto-scaling of the number of nodes in the node pool within the given min/max range.
  late final pulumi.Output<bool?> autoScale;
  /// The ID of the Kubernetes cluster to which the node pool is associated.
  late final pulumi.Output<String> clusterId;
  /// A map of key/value pairs to apply to nodes in the pool. The labels are exposed in the Kubernetes API as labels in the metadata of the corresponding [Node resources](https://kubernetes.io/docs/concepts/architecture/nodes/).
  late final pulumi.Output<Map<String, String>?> labels;
  /// If auto-scaling is enabled, this represents the maximum number of nodes that the node pool can be scaled up to.
  late final pulumi.Output<int?> maxNodes;
  /// If auto-scaling is enabled, this represents the minimum number of nodes that the node pool can be scaled down to.
  late final pulumi.Output<int?> minNodes;
  /// A name for the node pool.
  late final pulumi.Output<String> name;
  /// The number of Droplet instances in the node pool. If auto-scaling is enabled, this should only be set if the desired result is to explicitly reset the number of nodes to this value. If auto-scaling is enabled, and the node count is outside of the given min/max range, it will use the min nodes value.
  late final pulumi.Output<int?> nodeCount;
  /// A list of nodes in the pool. Each node exports the following attributes:
  late final pulumi.Output<List<KubernetesNodePoolNode>> nodes;
  /// The slug identifier for the type of Droplet to be used as workers in the node pool.
  late final pulumi.Output<String> size;
  /// A list of tag names to be applied to the Kubernetes cluster.
  late final pulumi.Output<List<String>?> tags;
  /// A list of taints applied to all nodes in the pool.
  ///
  /// This resource supports customized create timeouts. The default timeout is 30 minutes.
  late final pulumi.Output<List<KubernetesNodePoolTaint>?> taints;

  /// Creates a new [KubernetesNodePool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KubernetesNodePool]. {@macro pulumi_index_kubernetes_node_pool_kubernetes_node_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KubernetesNodePool(
    String name, {
    KubernetesNodePoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/kubernetesNodePool:KubernetesNodePool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.actualNodeCount = registerOutput<int>('actualNodeCount');
    this.autoScale = registerOutput<bool?>('autoScale');
    this.clusterId = registerOutput<String>('clusterId');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.maxNodes = registerOutput<int?>('maxNodes');
    this.minNodes = registerOutput<int?>('minNodes');
    this.name = registerOutput<String>('name');
    this.nodeCount = registerOutput<int?>('nodeCount');
    this.nodes = registerOutput<List<KubernetesNodePoolNode>>('nodes');
    this.size = registerOutput<String>('size');
    this.tags = registerOutput<List<String>?>('tags');
    this.taints = registerOutput<List<KubernetesNodePoolTaint>?>('taints');
  }

  /// Gets an existing [KubernetesNodePool] resource's state with the given [name] and [id].
  static KubernetesNodePool get(
    String name,
    pulumi.Input<String> id, {
    KubernetesNodePoolState? state,
  }) {
    return KubernetesNodePool._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  KubernetesNodePool._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/kubernetesNodePool:KubernetesNodePool',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.actualNodeCount = registerOutput<int>('actualNodeCount');
    this.autoScale = registerOutput<bool?>('autoScale');
    this.clusterId = registerOutput<String>('clusterId');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.maxNodes = registerOutput<int?>('maxNodes');
    this.minNodes = registerOutput<int?>('minNodes');
    this.name = registerOutput<String>('name');
    this.nodeCount = registerOutput<int?>('nodeCount');
    this.nodes = registerOutput<List<KubernetesNodePoolNode>>('nodes');
    this.size = registerOutput<String>('size');
    this.tags = registerOutput<List<String>?>('tags');
    this.taints = registerOutput<List<KubernetesNodePoolTaint>?>('taints');
  }
}
