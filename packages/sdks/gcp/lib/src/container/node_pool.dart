import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_pool_args.dart';
import 'node_pool_autoscaling.dart';
import 'node_pool_management.dart';
import 'node_pool_network_config.dart';
import 'node_pool_node_config.dart';
import 'node_pool_placement_policy.dart';
import 'node_pool_queued_provisioning.dart';
import 'node_pool_state.dart';
import 'node_pool_upgrade_settings.dart';

/// Manages a node pool in a Google Kubernetes Engine (GKE) cluster separately from
/// the cluster control plane. For more information see [the official documentation](https://cloud.google.com/container-engine/docs/node-pools)
/// and [the API reference](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1beta1/projects.locations.clusters.nodePools).
///
/// ## Example Usage
///
/// ### Using A Separately Managed Node Pool (Recommended)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.serviceaccount.Account("default", {
///     accountId: "service-account-id",
///     displayName: "Service Account",
/// });
/// const primary = new gcp.container.Cluster("primary", {
///     name: "my-gke-cluster",
///     location: "us-central1",
///     removeDefaultNodePool: true,
///     initialNodeCount: 1,
/// });
/// const primaryPreemptibleNodes = new gcp.container.NodePool("primary_preemptible_nodes", {
///     name: "my-node-pool",
///     cluster: primary.id,
///     nodeCount: 1,
///     nodeConfig: {
///         preemptible: true,
///         machineType: "e2-medium",
///         serviceAccount: _default.email,
///         oauthScopes: ["https://www.googleapis.com/auth/cloud-platform"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.serviceaccount.Account("default",
///     account_id="service-account-id",
///     display_name="Service Account")
/// primary = gcp.container.Cluster("primary",
///     name="my-gke-cluster",
///     location="us-central1",
///     remove_default_node_pool=True,
///     initial_node_count=1)
/// primary_preemptible_nodes = gcp.container.NodePool("primary_preemptible_nodes",
///     name="my-node-pool",
///     cluster=primary.id,
///     node_count=1,
///     node_config={
///         "preemptible": True,
///         "machine_type": "e2-medium",
///         "service_account": default.email,
///         "oauth_scopes": ["https://www.googleapis.com/auth/cloud-platform"],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.ServiceAccount.Account("default", new()
///     {
///         AccountId = "service-account-id",
///         DisplayName = "Service Account",
///     });
///
///     var primary = new Gcp.Container.Cluster("primary", new()
///     {
///         Name = "my-gke-cluster",
///         Location = "us-central1",
///         RemoveDefaultNodePool = true,
///         InitialNodeCount = 1,
///     });
///
///     var primaryPreemptibleNodes = new Gcp.Container.NodePool("primary_preemptible_nodes", new()
///     {
///         Name = "my-node-pool",
///         Cluster = primary.Id,
///         NodeCount = 1,
///         NodeConfig = new Gcp.Container.Inputs.NodePoolNodeConfigArgs
///         {
///             Preemptible = true,
///             MachineType = "e2-medium",
///             ServiceAccount = @default.Email,
///             OauthScopes = new[]
///             {
///                 "https://www.googleapis.com/auth/cloud-platform",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := serviceaccount.NewAccount(ctx, "default", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("service-account-id"),
/// 			DisplayName: pulumi.String("Service Account"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		primary, err := container.NewCluster(ctx, "primary", &container.ClusterArgs{
/// 			Name:                  pulumi.String("my-gke-cluster"),
/// 			Location:              pulumi.String("us-central1"),
/// 			RemoveDefaultNodePool: pulumi.Bool(true),
/// 			InitialNodeCount:      pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = container.NewNodePool(ctx, "primary_preemptible_nodes", &container.NodePoolArgs{
/// 			Name:      pulumi.String("my-node-pool"),
/// 			Cluster:   primary.ID().ToIDOutput().ToStringOutput(),
/// 			NodeCount: pulumi.Int(1),
/// 			NodeConfig: &container.NodePoolNodeConfigArgs{
/// 				Preemptible:    pulumi.Bool(true),
/// 				MachineType:    pulumi.String("e2-medium"),
/// 				ServiceAccount: _default.Email,
/// 				OauthScopes: pulumi.StringArray{
/// 					pulumi.String("https://www.googleapis.com/auth/cloud-platform"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_serviceaccount_account" "default" {
///   account_id   = "service-account-id"
///   display_name = "Service Account"
/// }
/// resource "gcp_container_cluster" "primary" {
///   name                     = "my-gke-cluster"
///   location                 = "us-central1"
///   remove_default_node_pool = true
///   initial_node_count       = 1
/// }
/// resource "gcp_container_nodepool" "primary_preemptible_nodes" {
///   name       = "my-node-pool"
///   cluster    = gcp_container_cluster.primary.id
///   node_count = 1
///   node_config = {
///     preemptible     = true
///     machine_type    = "e2-medium"
///     service_account = gcp_serviceaccount_account.default.email
///     oauth_scopes    = ["https://www.googleapis.com/auth/cloud-platform"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.container.Cluster;
/// import com.pulumi.gcp.container.ClusterArgs;
/// import com.pulumi.gcp.container.NodePool;
/// import com.pulumi.gcp.container.NodePoolArgs;
/// import com.pulumi.gcp.container.inputs.NodePoolNodeConfigArgs;
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
///         var default_ = new Account("default", AccountArgs.builder()
///             .accountId("service-account-id")
///             .displayName("Service Account")
///             .build());
///
///         var primary = new Cluster("primary", ClusterArgs.builder()
///             .name("my-gke-cluster")
///             .location("us-central1")
///             .removeDefaultNodePool(true)
///             .initialNodeCount(1)
///             .build());
///
///         var primaryPreemptibleNodes = new NodePool("primaryPreemptibleNodes", NodePoolArgs.builder()
///             .name("my-node-pool")
///             .cluster(primary.id())
///             .nodeCount(1)
///             .nodeConfig(NodePoolNodeConfigArgs.builder()
///                 .preemptible(true)
///                 .machineType("e2-medium")
///                 .serviceAccount(default_.email())
///                 .oauthScopes("https://www.googleapis.com/auth/cloud-platform")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:serviceaccount:Account
///     properties:
///       accountId: service-account-id
///       displayName: Service Account
///   primary:
///     type: gcp:container:Cluster
///     properties:
///       name: my-gke-cluster
///       location: us-central1
///       removeDefaultNodePool: true
///       initialNodeCount: 1
///   primaryPreemptibleNodes:
///     type: gcp:container:NodePool
///     name: primary_preemptible_nodes
///     properties:
///       name: my-node-pool
///       cluster: ${primary.id}
///       nodeCount: 1
///       nodeConfig:
///         preemptible: true
///         machineType: e2-medium
///         serviceAccount: ${default.email}
///         oauthScopes:
///           - https://www.googleapis.com/auth/cloud-platform
/// ```
///
///
/// ### 2 Node Pools, 1 Separately Managed + The Default Node Pool
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.serviceaccount.Account("default", {
///     accountId: "service-account-id",
///     displayName: "Service Account",
/// });
/// const primary = new gcp.container.Cluster("primary", {
///     name: "marcellus-wallace",
///     location: "us-central1-a",
///     initialNodeCount: 3,
///     nodeLocations: ["us-central1-c"],
///     nodeConfig: {
///         serviceAccount: _default.email,
///         oauthScopes: ["https://www.googleapis.com/auth/cloud-platform"],
///         guestAccelerators: [{
///             type: "nvidia-tesla-k80",
///             count: 1,
///         }],
///     },
/// });
/// const np = new gcp.container.NodePool("np", {
///     name: "my-node-pool",
///     cluster: primary.id,
///     nodeConfig: {
///         machineType: "e2-medium",
///         serviceAccount: _default.email,
///         oauthScopes: ["https://www.googleapis.com/auth/cloud-platform"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.serviceaccount.Account("default",
///     account_id="service-account-id",
///     display_name="Service Account")
/// primary = gcp.container.Cluster("primary",
///     name="marcellus-wallace",
///     location="us-central1-a",
///     initial_node_count=3,
///     node_locations=["us-central1-c"],
///     node_config={
///         "service_account": default.email,
///         "oauth_scopes": ["https://www.googleapis.com/auth/cloud-platform"],
///         "guest_accelerators": [{
///             "type": "nvidia-tesla-k80",
///             "count": 1,
///         }],
///     })
/// np = gcp.container.NodePool("np",
///     name="my-node-pool",
///     cluster=primary.id,
///     node_config={
///         "machine_type": "e2-medium",
///         "service_account": default.email,
///         "oauth_scopes": ["https://www.googleapis.com/auth/cloud-platform"],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.ServiceAccount.Account("default", new()
///     {
///         AccountId = "service-account-id",
///         DisplayName = "Service Account",
///     });
///
///     var primary = new Gcp.Container.Cluster("primary", new()
///     {
///         Name = "marcellus-wallace",
///         Location = "us-central1-a",
///         InitialNodeCount = 3,
///         NodeLocations = new[]
///         {
///             "us-central1-c",
///         },
///         NodeConfig = new Gcp.Container.Inputs.ClusterNodeConfigArgs
///         {
///             ServiceAccount = @default.Email,
///             OauthScopes = new[]
///             {
///                 "https://www.googleapis.com/auth/cloud-platform",
///             },
///             GuestAccelerators = new[]
///             {
///                 new Gcp.Container.Inputs.ClusterNodeConfigGuestAcceleratorArgs
///                 {
///                     Type = "nvidia-tesla-k80",
///                     Count = 1,
///                 },
///             },
///         },
///     });
///
///     var np = new Gcp.Container.NodePool("np", new()
///     {
///         Name = "my-node-pool",
///         Cluster = primary.Id,
///         NodeConfig = new Gcp.Container.Inputs.NodePoolNodeConfigArgs
///         {
///             MachineType = "e2-medium",
///             ServiceAccount = @default.Email,
///             OauthScopes = new[]
///             {
///                 "https://www.googleapis.com/auth/cloud-platform",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := serviceaccount.NewAccount(ctx, "default", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("service-account-id"),
/// 			DisplayName: pulumi.String("Service Account"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		primary, err := container.NewCluster(ctx, "primary", &container.ClusterArgs{
/// 			Name:             pulumi.String("marcellus-wallace"),
/// 			Location:         pulumi.String("us-central1-a"),
/// 			InitialNodeCount: pulumi.Int(3),
/// 			NodeLocations: pulumi.StringArray{
/// 				pulumi.String("us-central1-c"),
/// 			},
/// 			NodeConfig: &container.ClusterNodeConfigArgs{
/// 				ServiceAccount: _default.Email,
/// 				OauthScopes: pulumi.StringArray{
/// 					pulumi.String("https://www.googleapis.com/auth/cloud-platform"),
/// 				},
/// 				GuestAccelerators: container.ClusterNodeConfigGuestAcceleratorArray{
/// 					&container.ClusterNodeConfigGuestAcceleratorArgs{
/// 						Type:  pulumi.String("nvidia-tesla-k80"),
/// 						Count: pulumi.Int(1),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = container.NewNodePool(ctx, "np", &container.NodePoolArgs{
/// 			Name:    pulumi.String("my-node-pool"),
/// 			Cluster: primary.ID().ToIDOutput().ToStringOutput(),
/// 			NodeConfig: &container.NodePoolNodeConfigArgs{
/// 				MachineType:    pulumi.String("e2-medium"),
/// 				ServiceAccount: _default.Email,
/// 				OauthScopes: pulumi.StringArray{
/// 					pulumi.String("https://www.googleapis.com/auth/cloud-platform"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_serviceaccount_account" "default" {
///   account_id   = "service-account-id"
///   display_name = "Service Account"
/// }
/// resource "gcp_container_nodepool" "np" {
///   name    = "my-node-pool"
///   cluster = gcp_container_cluster.primary.id
///   node_config = {
///     machine_type    = "e2-medium"
///     service_account = gcp_serviceaccount_account.default.email
///     oauth_scopes    = ["https://www.googleapis.com/auth/cloud-platform"]
///   }
/// }
/// resource "gcp_container_cluster" "primary" {
///   name               = "marcellus-wallace"
///   location           = "us-central1-a"
///   initial_node_count = 3
///   node_locations     = ["us-central1-c"]
///   node_config = {
///     service_account = gcp_serviceaccount_account.default.email
///     oauth_scopes    = ["https://www.googleapis.com/auth/cloud-platform"]
///     guest_accelerators = [{
///       "type"  = "nvidia-tesla-k80"
///       "count" = 1
///     }]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.container.Cluster;
/// import com.pulumi.gcp.container.ClusterArgs;
/// import com.pulumi.gcp.container.inputs.ClusterNodeConfigArgs;
/// import com.pulumi.gcp.container.inputs.ClusterNodeConfigGuestAcceleratorArgs;
/// import com.pulumi.gcp.container.NodePool;
/// import com.pulumi.gcp.container.NodePoolArgs;
/// import com.pulumi.gcp.container.inputs.NodePoolNodeConfigArgs;
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
///         var default_ = new Account("default", AccountArgs.builder()
///             .accountId("service-account-id")
///             .displayName("Service Account")
///             .build());
///
///         var primary = new Cluster("primary", ClusterArgs.builder()
///             .name("marcellus-wallace")
///             .location("us-central1-a")
///             .initialNodeCount(3)
///             .nodeLocations("us-central1-c")
///             .nodeConfig(ClusterNodeConfigArgs.builder()
///                 .serviceAccount(default_.email())
///                 .oauthScopes("https://www.googleapis.com/auth/cloud-platform")
///                 .guestAccelerators(ClusterNodeConfigGuestAcceleratorArgs.builder()
///                     .type("nvidia-tesla-k80")
///                     .count(1)
///                     .build())
///                 .build())
///             .build());
///
///         var np = new NodePool("np", NodePoolArgs.builder()
///             .name("my-node-pool")
///             .cluster(primary.id())
///             .nodeConfig(NodePoolNodeConfigArgs.builder()
///                 .machineType("e2-medium")
///                 .serviceAccount(default_.email())
///                 .oauthScopes("https://www.googleapis.com/auth/cloud-platform")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:serviceaccount:Account
///     properties:
///       accountId: service-account-id
///       displayName: Service Account
///   np:
///     type: gcp:container:NodePool
///     properties:
///       name: my-node-pool
///       cluster: ${primary.id}
///       nodeConfig:
///         machineType: e2-medium
///         serviceAccount: ${default.email}
///         oauthScopes:
///           - https://www.googleapis.com/auth/cloud-platform
///   primary:
///     type: gcp:container:Cluster
///     properties:
///       name: marcellus-wallace
///       location: us-central1-a
///       initialNodeCount: 3
///       nodeLocations:
///         - us-central1-c
///       nodeConfig:
///         serviceAccount: ${default.email}
///         oauthScopes:
///           - https://www.googleapis.com/auth/cloud-platform
///         guestAccelerators:
///           - type: nvidia-tesla-k80
///             count: 1
/// ```
///
///
/// ## Import
///
/// Node pools can be imported using the `project`, `location`, `cluster` and `name`. If
/// the project is omitted, the project value in the provider configuration will be used. Examples:
///
/// * `{{project_id}}/{{location}}/{{cluster_id}}/{{pool_id}}`
/// * `{{location}}/{{cluster_id}}/{{pool_id}}`
///
///
/// When using the `pulumi import` command, node pools can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:container/nodePool:NodePool default {{project_id}}/{{location}}/{{cluster_id}}/{{pool_id}}
///
/// $ pulumi import gcp:container/nodePool:NodePool default {{location}}/{{cluster_id}}/{{pool_id}}
/// ```
class NodePool extends pulumi.CustomResource {
  /// Configuration required by cluster autoscaler to adjust
  /// the size of the node pool to the current cluster usage. Structure is documented below.
  late final pulumi.Output<NodePoolAutoscaling?> autoscaling;
  /// The cluster to create the node pool for. Cluster must be present in `location` provided for clusters. May be specified in the format `projects/{{project}}/locations/{{location}}/clusters/{{cluster}}` or as just the name of the cluster.
  ///
  /// - - -
  late final pulumi.Output<String> cluster;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  ///
  /// &lt;a name="nestedAutoscaling"&gt;&lt;/a&gt;The `autoscaling` block supports (either total or per zone limits are required):
  late final pulumi.Output<String> deletionPolicy;
  /// Whether to ignore external changes (drift) to the node count (e.g. from GKE autoscaling). Setting this to `true` skips querying Compute Engine Instance Group Managers (IGMs) to determine the current node count on read, which can save API quota and speed up plans on large clusters. Unlike Terraform core's `lifecycle { ignoreChanges = [nodeCount] }`, this allows configuration-driven scaling updates in your HCL while still ignoring runtime autoscaling drift.
  late final pulumi.Output<bool?> ignoreNodeCountChanges;
  /// The initial number of nodes for the pool. In
  /// regional or multi-zonal clusters, this is the number of nodes per zone. Changing
  /// this will force recreation of the resource. WARNING: Resizing your node pool manually
  /// may change this value in your existing cluster, which will trigger destruction
  /// and recreation on the next provider run (to rectify the discrepancy).  If you don't
  /// need this value, don't set it.  If you do need it, you can use a lifecycle block to
  /// ignore subsequent changes to this field.
  late final pulumi.Output<int> initialNodeCount;
  /// The resource URLs of the managed instance groups associated with this node pool.
  late final pulumi.Output<List<String>> instanceGroupUrls;
  /// The location (region or zone) of the cluster.
  ///
  /// - - -
  late final pulumi.Output<String> location;
  /// The maintenance policy of the pool. Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> maintenancePolicies;
  /// List of instance group URLs which have been assigned to this node pool.
  late final pulumi.Output<List<String>> managedInstanceGroupUrls;
  /// Node management configuration, wherein auto-repair and
  /// auto-upgrade is configured. Structure is documented below.
  late final pulumi.Output<NodePoolManagement> management;
  /// The maximum number of pods per node in this node pool.
  /// Note that this does not work on node pools which are "route-based" - that is, node
  /// pools belonging to clusters that do not have IP Aliasing enabled.
  /// See the [official documentation](https://cloud.google.com/kubernetes-engine/docs/how-to/flexible-pod-cidr)
  /// for more information.
  late final pulumi.Output<int> maxPodsPerNode;
  /// The name of the node pool. If left blank, the provider will
  /// auto-generate a unique name.
  late final pulumi.Output<String> name;
  /// Creates a unique name for the node pool beginning
  /// with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;
  /// The network configuration of the pool. Such as
  /// configuration for [Adding Pod IP address ranges](https://cloud.google.com/kubernetes-engine/docs/how-to/multi-pod-cidr)) to the node pool. Or enabling private nodes. Structure is
  /// documented below
  late final pulumi.Output<NodePoolNetworkConfig> networkConfig;
  /// Parameters used in creating the node pool. Structure is documented below. See gcp.container.Cluster for exact schema.
  late final pulumi.Output<NodePoolNodeConfig> nodeConfig;
  /// The number of nodes per instance group. This field can be used to
  /// update the number of nodes per instance group but should not be used alongside `autoscaling`.
  late final pulumi.Output<int> nodeCount;
  /// The node drain configuration of the pool. Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> nodeDrainConfigs;
  /// The list of zones in which the node pool's nodes should be located. Nodes must
  /// be in the region of their regional cluster or in the same region as their
  /// cluster's zone for zonal clusters. If unspecified, the cluster-level
  /// `nodeLocations` will be used.
  ///
  /// &gt; Note: `nodeLocations` will not revert to the cluster's default set of zones
  /// upon being unset. You must manually reconcile the list of zones with your
  /// cluster.
  late final pulumi.Output<List<String>> nodeLocations;
  late final pulumi.Output<String> operation;
  /// Specifies a custom placement policy for the
  /// nodes.
  late final pulumi.Output<NodePoolPlacementPolicy?> placementPolicy;
  /// The ID of the project in which to create the node pool. If blank,
  /// the provider-configured project will be used.
  late final pulumi.Output<String> project;
  /// Specifies node pool-level settings of queued provisioning.
  /// Structure is documented below.
  late final pulumi.Output<NodePoolQueuedProvisioning?> queuedProvisioning;
  /// Specify node upgrade settings to change how GKE upgrades nodes.
  /// The maximum number of nodes upgraded simultaneously is limited to 20. Structure is documented below.
  late final pulumi.Output<NodePoolUpgradeSettings> upgradeSettings;
  /// The Kubernetes version for the nodes in this pool. Note that if this field
  /// and `autoUpgrade` are both specified, they will fight each other for what the node version should
  /// be, so setting both is highly discouraged. While a fuzzy version can be specified, it's
  /// recommended that you specify explicit versions as the provider will see spurious diffs
  /// when fuzzy versions are used. See the `gcp.container.getEngineVersions` data source's
  /// `versionPrefix` field to approximate fuzzy versions in a provider-compatible way.
  late final pulumi.Output<String> version;

  /// Creates a new [NodePool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NodePool]. {@macro pulumi_container_node_pool_node_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NodePool(
    String name, {
    NodePoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:container/nodePool:NodePool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoscaling = registerOutput<NodePoolAutoscaling?>('autoscaling', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodePoolAutoscaling.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cluster = registerOutput<String>('cluster');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    ignoreNodeCountChanges = registerOutput<bool?>('ignoreNodeCountChanges');
    initialNodeCount = registerOutput<int>('initialNodeCount');
    instanceGroupUrls = registerOutput<List<String>>('instanceGroupUrls');
    location = registerOutput<String>('location');
    maintenancePolicies = registerOutput<List<Map<String, dynamic>>?>('maintenancePolicies');
    managedInstanceGroupUrls = registerOutput<List<String>>('managedInstanceGroupUrls');
    management = registerOutput<NodePoolManagement>('management', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodePoolManagement.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    maxPodsPerNode = registerOutput<int>('maxPodsPerNode');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    networkConfig = registerOutput<NodePoolNetworkConfig>('networkConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodePoolNetworkConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nodeConfig = registerOutput<NodePoolNodeConfig>('nodeConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodePoolNodeConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nodeCount = registerOutput<int>('nodeCount');
    nodeDrainConfigs = registerOutput<List<Map<String, dynamic>>>('nodeDrainConfigs');
    nodeLocations = registerOutput<List<String>>('nodeLocations');
    operation = registerOutput<String>('operation');
    placementPolicy = registerOutput<NodePoolPlacementPolicy?>('placementPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodePoolPlacementPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    queuedProvisioning = registerOutput<NodePoolQueuedProvisioning?>('queuedProvisioning', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodePoolQueuedProvisioning.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    upgradeSettings = registerOutput<NodePoolUpgradeSettings>('upgradeSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodePoolUpgradeSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    version = registerOutput<String>('version');
  }

  /// Gets an existing [NodePool] resource's state with the given [name] and [id].
  static NodePool get(
    String name,
    pulumi.Input<String> id, {
    NodePoolState? state,
  }) {
    return NodePool._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NodePool._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:container/nodePool:NodePool',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoscaling = registerOutput<NodePoolAutoscaling?>('autoscaling', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodePoolAutoscaling.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cluster = registerOutput<String>('cluster');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    ignoreNodeCountChanges = registerOutput<bool?>('ignoreNodeCountChanges');
    initialNodeCount = registerOutput<int>('initialNodeCount');
    instanceGroupUrls = registerOutput<List<String>>('instanceGroupUrls');
    location = registerOutput<String>('location');
    maintenancePolicies = registerOutput<List<Map<String, dynamic>>?>('maintenancePolicies');
    managedInstanceGroupUrls = registerOutput<List<String>>('managedInstanceGroupUrls');
    management = registerOutput<NodePoolManagement>('management', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodePoolManagement.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    maxPodsPerNode = registerOutput<int>('maxPodsPerNode');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    networkConfig = registerOutput<NodePoolNetworkConfig>('networkConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodePoolNetworkConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nodeConfig = registerOutput<NodePoolNodeConfig>('nodeConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodePoolNodeConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nodeCount = registerOutput<int>('nodeCount');
    nodeDrainConfigs = registerOutput<List<Map<String, dynamic>>>('nodeDrainConfigs');
    nodeLocations = registerOutput<List<String>>('nodeLocations');
    operation = registerOutput<String>('operation');
    placementPolicy = registerOutput<NodePoolPlacementPolicy?>('placementPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodePoolPlacementPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    queuedProvisioning = registerOutput<NodePoolQueuedProvisioning?>('queuedProvisioning', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodePoolQueuedProvisioning.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    upgradeSettings = registerOutput<NodePoolUpgradeSettings>('upgradeSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodePoolUpgradeSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    version = registerOutput<String>('version');
  }
}
