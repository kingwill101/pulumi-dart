import 'package:pulumi/pulumi.dart' as pulumi;
import 'lke_node_pool_args.dart';
import 'lke_node_pool_autoscaler.dart';
import 'lke_node_pool_state.dart';

/// Manages an LKE Node Pool.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/post-lke-cluster-pools).
///
/// &gt; **Notice** To prevent LKE node pools managed by this resource from being
/// recreated by the linode.LkeCluster resource, the cluster's external_pool_tags
/// attribute must match the tags attribute of this resource. Please review the
/// Externally Managed Node Pools
/// section for more information.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const my_pool = new linode.LkeNodePool("my-pool", {
///     clusterId: 150003,
///     type: "g6-standard-2",
///     nodeCount: 3,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// my_pool = linode.LkeNodePool("my-pool",
///     cluster_id=150003,
///     type="g6-standard-2",
///     node_count=3)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_pool = new Linode.LkeNodePool("my-pool", new()
///     {
///         ClusterId = 150003,
///         Type = "g6-standard-2",
///         NodeCount = 3,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.NewLkeNodePool(ctx, "my-pool", &linode.LkeNodePoolArgs{
/// 			ClusterId: pulumi.Int(150003),
/// 			Type:      pulumi.String("g6-standard-2"),
/// 			NodeCount: pulumi.Int(3),
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
/// import com.pulumi.linode.LkeNodePool;
/// import com.pulumi.linode.LkeNodePoolArgs;
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
///         var my_pool = new LkeNodePool("my-pool", LkeNodePoolArgs.builder()
///             .clusterId(150003)
///             .type("g6-standard-2")
///             .nodeCount(3)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-pool:
///     type: linode:LkeNodePool
///     properties:
///       clusterId: 150003
///       type: g6-standard-2
///       nodeCount: 3
/// ```
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const my_pool = new linode.LkeNodePool("my-pool", {
///     clusterId: 150003,
///     type: "g6-standard-2",
///     nodeCount: 3,
///     label: "app-pool",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// my_pool = linode.LkeNodePool("my-pool",
///     cluster_id=150003,
///     type="g6-standard-2",
///     node_count=3,
///     label="app-pool")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_pool = new Linode.LkeNodePool("my-pool", new()
///     {
///         ClusterId = 150003,
///         Type = "g6-standard-2",
///         NodeCount = 3,
///         Label = "app-pool",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.NewLkeNodePool(ctx, "my-pool", &linode.LkeNodePoolArgs{
/// 			ClusterId: pulumi.Int(150003),
/// 			Type:      pulumi.String("g6-standard-2"),
/// 			NodeCount: pulumi.Int(3),
/// 			Label:     pulumi.String("app-pool"),
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
/// import com.pulumi.linode.LkeNodePool;
/// import com.pulumi.linode.LkeNodePoolArgs;
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
///         var my_pool = new LkeNodePool("my-pool", LkeNodePoolArgs.builder()
///             .clusterId(150003)
///             .type("g6-standard-2")
///             .nodeCount(3)
///             .label("app-pool")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-pool:
///     type: linode:LkeNodePool
///     properties:
///       clusterId: 150003
///       type: g6-standard-2
///       nodeCount: 3
///       label: app-pool
/// ```
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const my_pool = new linode.LkeNodePool("my-pool", {
///     clusterId: 150003,
///     type: "g6-standard-2",
///     firewallId: 12345,
///     nodeCount: 3,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// my_pool = linode.LkeNodePool("my-pool",
///     cluster_id=150003,
///     type="g6-standard-2",
///     firewall_id=12345,
///     node_count=3)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_pool = new Linode.LkeNodePool("my-pool", new()
///     {
///         ClusterId = 150003,
///         Type = "g6-standard-2",
///         FirewallId = 12345,
///         NodeCount = 3,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.NewLkeNodePool(ctx, "my-pool", &linode.LkeNodePoolArgs{
/// 			ClusterId:  pulumi.Int(150003),
/// 			Type:       pulumi.String("g6-standard-2"),
/// 			FirewallId: pulumi.Int(12345),
/// 			NodeCount:  pulumi.Int(3),
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
/// import com.pulumi.linode.LkeNodePool;
/// import com.pulumi.linode.LkeNodePoolArgs;
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
///         var my_pool = new LkeNodePool("my-pool", LkeNodePoolArgs.builder()
///             .clusterId(150003)
///             .type("g6-standard-2")
///             .firewallId(12345)
///             .nodeCount(3)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-pool:
///     type: linode:LkeNodePool
///     properties:
///       clusterId: 150003
///       type: g6-standard-2
///       firewallId: 12345
///       nodeCount: 3
/// ```
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const my_pool = new linode.LkeNodePool("my-pool", {
///     clusterId: 150003,
///     type: "g6-standard-2",
///     autoscaler: {
///         min: 3,
///         max: 10,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// my_pool = linode.LkeNodePool("my-pool",
///     cluster_id=150003,
///     type="g6-standard-2",
///     autoscaler={
///         "min": 3,
///         "max": 10,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_pool = new Linode.LkeNodePool("my-pool", new()
///     {
///         ClusterId = 150003,
///         Type = "g6-standard-2",
///         Autoscaler = new Linode.Inputs.LkeNodePoolAutoscalerArgs
///         {
///             Min = 3,
///             Max = 10,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.NewLkeNodePool(ctx, "my-pool", &linode.LkeNodePoolArgs{
/// 			ClusterId: pulumi.Int(150003),
/// 			Type:      pulumi.String("g6-standard-2"),
/// 			Autoscaler: &linode.LkeNodePoolAutoscalerArgs{
/// 				Min: pulumi.Int(3),
/// 				Max: pulumi.Int(10),
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
/// import com.pulumi.linode.LkeNodePool;
/// import com.pulumi.linode.LkeNodePoolArgs;
/// import com.pulumi.linode.inputs.LkeNodePoolAutoscalerArgs;
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
///         var my_pool = new LkeNodePool("my-pool", LkeNodePoolArgs.builder()
///             .clusterId(150003)
///             .type("g6-standard-2")
///             .autoscaler(LkeNodePoolAutoscalerArgs.builder()
///                 .min(3)
///                 .max(10)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-pool:
///     type: linode:LkeNodePool
///     properties:
///       clusterId: 150003
///       type: g6-standard-2
///       autoscaler:
///         min: 3
///         max: 10
/// ```
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const externalPoolTag = "external";
/// const my_cluster = new linode.LkeCluster("my-cluster", {
///     label: "my-cluster",
///     k8sVersion: "1.32",
///     region: "us-mia",
///     labels: {
///         key: "value",
///     },
///     externalPoolTags: [externalPoolTag],
///     pools: [{
///         type: "g6-standard-1",
///         count: 1,
///     }],
/// });
/// const my_pool = new linode.LkeNodePool("my-pool", {
///     clusterId: my_cluster.id,
///     type: "g6-standard-2",
///     nodeCount: 3,
///     tags: [externalPoolTag],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// external_pool_tag = "external"
/// my_cluster = linode.LkeCluster("my-cluster",
///     label="my-cluster",
///     k8s_version="1.32",
///     region="us-mia",
///     labels={
///         "key": "value",
///     },
///     external_pool_tags=[external_pool_tag],
///     pools=[{
///         "type": "g6-standard-1",
///         "count": 1,
///     }])
/// my_pool = linode.LkeNodePool("my-pool",
///     cluster_id=my_cluster.id,
///     type="g6-standard-2",
///     node_count=3,
///     tags=[external_pool_tag])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var externalPoolTag = "external";
///
///     var my_cluster = new Linode.LkeCluster("my-cluster", new()
///     {
///         Label = "my-cluster",
///         K8sVersion = "1.32",
///         Region = "us-mia",
///         Labels =
///         {
///             { "key", "value" },
///         },
///         ExternalPoolTags = new[]
///         {
///             externalPoolTag,
///         },
///         Pools = new[]
///         {
///             new Linode.Inputs.LkeClusterPoolArgs
///             {
///                 Type = "g6-standard-1",
///                 Count = 1,
///             },
///         },
///     });
///
///     var my_pool = new Linode.LkeNodePool("my-pool", new()
///     {
///         ClusterId = my_cluster.Id,
///         Type = "g6-standard-2",
///         NodeCount = 3,
///         Tags = new[]
///         {
///             externalPoolTag,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		externalPoolTag := "external"
/// 		my_cluster, err := linode.NewLkeCluster(ctx, "my-cluster", &linode.LkeClusterArgs{
/// 			Label:      pulumi.String("my-cluster"),
/// 			K8sVersion: pulumi.String("1.32"),
/// 			Region:     pulumi.String("us-mia"),
/// 			Labels: map[string]interface{}{
/// 				"key": "value",
/// 			},
/// 			ExternalPoolTags: pulumi.StringArray{
/// 				pulumi.String(externalPoolTag),
/// 			},
/// 			Pools: linode.LkeClusterPoolArray{
/// 				&linode.LkeClusterPoolArgs{
/// 					Type:  pulumi.String("g6-standard-1"),
/// 					Count: pulumi.Int(1),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = linode.NewLkeNodePool(ctx, "my-pool", &linode.LkeNodePoolArgs{
/// 			ClusterId: my_cluster.ID(),
/// 			Type:      pulumi.String("g6-standard-2"),
/// 			NodeCount: pulumi.Int(3),
/// 			Tags: pulumi.StringArray{
/// 				pulumi.String(externalPoolTag),
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
/// import com.pulumi.linode.LkeCluster;
/// import com.pulumi.linode.LkeClusterArgs;
/// import com.pulumi.linode.inputs.LkeClusterPoolArgs;
/// import com.pulumi.linode.LkeNodePool;
/// import com.pulumi.linode.LkeNodePoolArgs;
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
///         final var externalPoolTag = "external";
///
///         var my_cluster = new LkeCluster("my-cluster", LkeClusterArgs.builder()
///             .label("my-cluster")
///             .k8sVersion("1.32")
///             .region("us-mia")
///             .labels(Map.of("key", "value"))
///             .externalPoolTags(externalPoolTag)
///             .pools(LkeClusterPoolArgs.builder()
///                 .type("g6-standard-1")
///                 .count(1)
///                 .build())
///             .build());
///
///         var my_pool = new LkeNodePool("my-pool", LkeNodePoolArgs.builder()
///             .clusterId(my_cluster.id())
///             .type("g6-standard-2")
///             .nodeCount(3)
///             .tags(externalPoolTag)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-pool:
///     type: linode:LkeNodePool
///     properties:
///       clusterId: ${["my-cluster"].id}
///       type: g6-standard-2
///       nodeCount: 3
///       tags:
///         - ${externalPoolTag}
///   my-cluster:
///     type: linode:LkeCluster
///     properties:
///       label: my-cluster
///       k8sVersion: '1.32'
///       region: us-mia
///       labels:
///         key: value
///       externalPoolTags:
///         - ${externalPoolTag}
///       pools:
///         - type: g6-standard-1
///           count: 1
/// variables:
///   externalPoolTag: external
/// ```
///
///
/// ## Import
///
/// LKE Node Pools can be imported using the `cluster_id,id`, e.g.
///
/// ```sh
/// $ pulumi import linode:index/lkeNodePool:LkeNodePool my_pool 150003,12345
/// ```
class LkeNodePool extends pulumi.CustomResource {
  late final pulumi.Output<LkeNodePoolAutoscaler?> autoscaler;

  /// ID of the LKE Cluster where to create the current Node Pool.
  late final pulumi.Output<int> clusterId;

  /// The disk encryption policy for nodes in this pool.
  late final pulumi.Output<String> diskEncryption;

  /// The ID of the firewall to associate with this node pool. If not provided, default firewall will be associated.
  late final pulumi.Output<int> firewallId;

  /// The k8s version of the nodes in this node pool. For LKE enterprise only and may not currently available to all users even under v4beta.
  late final pulumi.Output<String> k8sVersion;

  /// A label for the Node Pool. If not provided, it defaults to empty string.
  late final pulumi.Output<String> label;

  /// A map attribute containing key-value pairs to be added as labels to nodes in the node pool. Labels help classify your nodes and to easily select subsets of objects. To learn more, review [Add Labels and Taints to your LKE Node Pools](https://www.linode.com/docs/products/compute/kubernetes/guides/deploy-and-manage-cluster-with-the-linode-api/#add-labels-and-taints-to-your-lke-node-pools).
  late final pulumi.Output<Map<String, String>> labels;

  /// The number of nodes in the Node Pool. If undefined with an autoscaler the initial node count will equal the autoscaler minimum.
  late final pulumi.Output<int> nodeCount;

  /// A list of nodes in the node pool.
  late final pulumi.Output<List<Map<String, dynamic>>> nodes;

  /// An array of tags applied to the Node Pool. Tags can be used to flag node pools as externally managed, see Externally Managed Node Pools for more details.
  late final pulumi.Output<List<String>> tags;

  /// Kubernetes taints to add to node pool nodes. Taints help control how pods are scheduled onto nodes, specifically allowing them to repel certain pods.
  late final pulumi.Output<List<Map<String, dynamic>>?> taints;

  /// A Linode Type for all nodes in the Node Pool. See all node types [here](https://api.linode.com/v4/linode/types).
  late final pulumi.Output<String> type;

  /// The strategy for updating the node pool k8s version. For LKE enterprise only and may not currently available to all users even under v4beta.
  ///
  /// * `autoscaler` - (Optional) If defined, an autoscaler will be enabled with the given configuration.
  ///
  /// * `taint` - (Optional) Kubernetes taints to add to node pool nodes. Taints help control how pods are scheduled onto nodes, specifically allowing them to repel certain pods. To learn more, review [Add Labels and Taints to your LKE Node Pools](https://www.linode.com/docs/products/compute/kubernetes/guides/deploy-and-manage-cluster-with-the-linode-api/#add-labels-and-taints-to-your-lke-node-pools).
  late final pulumi.Output<String> updateStrategy;

  /// Creates a new [LkeNodePool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LkeNodePool]. {@macro pulumi_index_lke_node_pool_lke_node_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LkeNodePool(
    String name, {
    LkeNodePoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'linode:index/lkeNodePool:LkeNodePool',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoscaler = registerOutput<LkeNodePoolAutoscaler?>(
      'autoscaler',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LkeNodePoolAutoscaler.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    clusterId = registerOutput<int>('clusterId');
    diskEncryption = registerOutput<String>('diskEncryption');
    firewallId = registerOutput<int>('firewallId');
    k8sVersion = registerOutput<String>('k8sVersion');
    label = registerOutput<String>('label');
    labels = registerOutput<Map<String, String>>('labels');
    nodeCount = registerOutput<int>('nodeCount');
    nodes = registerOutput<List<Map<String, dynamic>>>('nodes');
    tags = registerOutput<List<String>>('tags');
    taints = registerOutput<List<Map<String, dynamic>>?>('taints');
    type = registerOutput<String>('type');
    updateStrategy = registerOutput<String>('updateStrategy');
  }

  /// Gets an existing [LkeNodePool] resource's state with the given [name] and [id].
  static LkeNodePool get(
    String name,
    pulumi.Input<String> id, {
    LkeNodePoolState? state,
  }) {
    return LkeNodePool._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LkeNodePool._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'linode:index/lkeNodePool:LkeNodePool',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoscaler = registerOutput<LkeNodePoolAutoscaler?>(
      'autoscaler',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LkeNodePoolAutoscaler.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    clusterId = registerOutput<int>('clusterId');
    diskEncryption = registerOutput<String>('diskEncryption');
    firewallId = registerOutput<int>('firewallId');
    k8sVersion = registerOutput<String>('k8sVersion');
    label = registerOutput<String>('label');
    labels = registerOutput<Map<String, String>>('labels');
    nodeCount = registerOutput<int>('nodeCount');
    nodes = registerOutput<List<Map<String, dynamic>>>('nodes');
    tags = registerOutput<List<String>>('tags');
    taints = registerOutput<List<Map<String, dynamic>>?>('taints');
    type = registerOutput<String>('type');
    updateStrategy = registerOutput<String>('updateStrategy');
  }
}
