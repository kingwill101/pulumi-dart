import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_addons_config.dart';
import 'cluster_anonymous_authentication_config.dart';
import 'cluster_args.dart';
import 'cluster_authenticator_groups_config.dart';
import 'cluster_autopilot_cluster_policy_config.dart';
import 'cluster_binary_authorization.dart';
import 'cluster_cluster_autoscaling.dart';
import 'cluster_cluster_telemetry.dart';
import 'cluster_confidential_nodes.dart';
import 'cluster_control_plane_endpoints_config.dart';
import 'cluster_cost_management_config.dart';
import 'cluster_database_encryption.dart';
import 'cluster_default_snat_status.dart';
import 'cluster_dns_config.dart';
import 'cluster_enable_k8s_beta_apis.dart';
import 'cluster_enterprise_config.dart';
import 'cluster_fleet.dart';
import 'cluster_gateway_api_config.dart';
import 'cluster_gke_auto_upgrade_config.dart';
import 'cluster_identity_service_config.dart';
import 'cluster_ip_allocation_policy.dart';
import 'cluster_logging_config.dart';
import 'cluster_maintenance_policy.dart';
import 'cluster_managed_machine_learning_diagnostics_config.dart';
import 'cluster_managed_opentelemetry_config.dart';
import 'cluster_master_auth.dart';
import 'cluster_master_authorized_networks_config.dart';
import 'cluster_mesh_certificates.dart';
import 'cluster_monitoring_config.dart';
import 'cluster_network_performance_config.dart';
import 'cluster_network_policy.dart';
import 'cluster_node_config.dart';
import 'cluster_node_creation_config.dart';
import 'cluster_node_pool_auto_config.dart';
import 'cluster_node_pool_defaults.dart';
import 'cluster_notification_config.dart';
import 'cluster_pod_autoscaling.dart';
import 'cluster_pod_security_policy_config.dart';
import 'cluster_private_cluster_config.dart';
import 'cluster_protect_config.dart';
import 'cluster_rbac_binding_config.dart';
import 'cluster_release_channel.dart';
import 'cluster_resource_usage_export_config.dart';
import 'cluster_rollback_safe_upgrade.dart';
import 'cluster_secret_manager_config.dart';
import 'cluster_secret_sync_config.dart';
import 'cluster_security_posture_config.dart';
import 'cluster_service_external_ips_config.dart';
import 'cluster_state.dart';
import 'cluster_tpu_config.dart';
import 'cluster_user_managed_keys_config.dart';
import 'cluster_vertical_pod_autoscaling.dart';
import 'cluster_workload_alts_config.dart';
import 'cluster_workload_identity_config.dart';

/// Manages a Google Kubernetes Engine (GKE) cluster.
///
/// To get more information about GKE clusters, see:
/// * [The API reference](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1beta1/projects.locations.clusters)
/// * How-to guides
/// * [GKE overview](https://cloud.google.com/kubernetes-engine/docs/concepts/kubernetes-engine-overview)
/// * [About cluster configuration choices](https://cloud.google.com/kubernetes-engine/docs/concepts/types-of-clusters)
///
///
/// &gt; On version 5.0.0+ of the provider, you must explicitly set `deletionProtection = false`
/// and run `pulumi up` to write the field to state in order to destroy a cluster.
///
/// &gt; All arguments and attributes (including certificate outputs) will be stored in the raw state as
/// plaintext. Read more about sensitive data in state.
///
/// ## Example Usage
///
/// ### With A Separately Managed Node Pool (Recommended)
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
///     location: "us-central1",
///     cluster: primary.name,
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
///     location="us-central1",
///     cluster=primary.name,
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
///         Location = "us-central1",
///         Cluster = primary.Name,
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
/// 			Location:  pulumi.String("us-central1"),
/// 			Cluster:   primary.Name,
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
///   location   = "us-central1"
///   cluster    = gcp_container_cluster.primary.name
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
///             .location("us-central1")
///             .cluster(primary.name())
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
///       location: us-central1
///       cluster: ${primary.name}
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
/// &gt; **Note:** It is recommended that node pools be created and managed as separate resources as in the example above.
/// This allows node pools to be added and removed without recreating the cluster.  Node pools defined directly in the
/// `gcp.container.Cluster` resource cannot be removed without re-creating the cluster.
///
/// ### With The Default Node Pool
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
///     nodeConfig: {
///         serviceAccount: _default.email,
///         oauthScopes: ["https://www.googleapis.com/auth/cloud-platform"],
///         labels: {
///             foo: "bar",
///         },
///         tags: [
///             "foo",
///             "bar",
///         ],
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
///     node_config={
///         "service_account": default.email,
///         "oauth_scopes": ["https://www.googleapis.com/auth/cloud-platform"],
///         "labels": {
///             "foo": "bar",
///         },
///         "tags": [
///             "foo",
///             "bar",
///         ],
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
///         NodeConfig = new Gcp.Container.Inputs.ClusterNodeConfigArgs
///         {
///             ServiceAccount = @default.Email,
///             OauthScopes = new[]
///             {
///                 "https://www.googleapis.com/auth/cloud-platform",
///             },
///             Labels =
///             {
///                 { "foo", "bar" },
///             },
///             Tags = new[]
///             {
///                 "foo",
///                 "bar",
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
/// 		_, err = container.NewCluster(ctx, "primary", &container.ClusterArgs{
/// 			Name:             pulumi.String("marcellus-wallace"),
/// 			Location:         pulumi.String("us-central1-a"),
/// 			InitialNodeCount: pulumi.Int(3),
/// 			NodeConfig: &container.ClusterNodeConfigArgs{
/// 				ServiceAccount: _default.Email,
/// 				OauthScopes: pulumi.StringArray{
/// 					pulumi.String("https://www.googleapis.com/auth/cloud-platform"),
/// 				},
/// 				Labels: pulumi.StringMap{
/// 					"foo": pulumi.String("bar"),
/// 				},
/// 				Tags: pulumi.StringArray{
/// 					pulumi.String("foo"),
/// 					pulumi.String("bar"),
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
///   name               = "marcellus-wallace"
///   location           = "us-central1-a"
///   initial_node_count = 3
///   node_config = {
///     service_account = gcp_serviceaccount_account.default.email
///     oauth_scopes    = ["https://www.googleapis.com/auth/cloud-platform"]
///     labels = {
///       "foo" = "bar"
///     }
///     tags = ["foo", "bar"]
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
///             .nodeConfig(ClusterNodeConfigArgs.builder()
///                 .serviceAccount(default_.email())
///                 .oauthScopes("https://www.googleapis.com/auth/cloud-platform")
///                 .labels(Map.of("foo", "bar"))
///                 .tags(
///                     "foo",
///                     "bar")
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
///       name: marcellus-wallace
///       location: us-central1-a
///       initialNodeCount: 3
///       nodeConfig:
///         serviceAccount: ${default.email}
///         oauthScopes:
///           - https://www.googleapis.com/auth/cloud-platform
///         labels:
///           foo: bar
///         tags:
///           - foo
///           - bar
/// ```
///
///
/// ### Rollback-Safe (Two-Step) Upgrades
///
/// To perform a rollback-safe (two-step) control plane upgrade, you first specify a soak duration in the `rollbackSafeUpgrade` block when changing the `minMasterVersion`. This upgrades the master but keeps the control plane emulating the older version.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.container.Cluster("primary", {
///     name: "my-gke-cluster",
///     location: "us-central1",
///     initialNodeCount: 1,
///     minMasterVersion: "1.32.4-gke.200",
///     rollbackSafeUpgrade: {
///         controlPlaneSoakDuration: "604800s",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.container.Cluster("primary",
///     name="my-gke-cluster",
///     location="us-central1",
///     initial_node_count=1,
///     min_master_version="1.32.4-gke.200",
///     rollback_safe_upgrade={
///         "control_plane_soak_duration": "604800s",
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
///     var primary = new Gcp.Container.Cluster("primary", new()
///     {
///         Name = "my-gke-cluster",
///         Location = "us-central1",
///         InitialNodeCount = 1,
///         MinMasterVersion = "1.32.4-gke.200",
///         RollbackSafeUpgrade = new Gcp.Container.Inputs.ClusterRollbackSafeUpgradeArgs
///         {
///             ControlPlaneSoakDuration = "604800s",
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := container.NewCluster(ctx, "primary", &container.ClusterArgs{
/// 			Name:             pulumi.String("my-gke-cluster"),
/// 			Location:         pulumi.String("us-central1"),
/// 			InitialNodeCount: pulumi.Int(1),
/// 			MinMasterVersion: pulumi.String("1.32.4-gke.200"),
/// 			RollbackSafeUpgrade: &container.ClusterRollbackSafeUpgradeArgs{
/// 				ControlPlaneSoakDuration: pulumi.String("604800s"),
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
/// resource "gcp_container_cluster" "primary" {
///   name               = "my-gke-cluster"
///   location           = "us-central1"
///   initial_node_count = 1
///   min_master_version = "1.32.4-gke.200"
///   rollback_safe_upgrade = {
///     control_plane_soak_duration = "604800s"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.container.Cluster;
/// import com.pulumi.gcp.container.ClusterArgs;
/// import com.pulumi.gcp.container.inputs.ClusterRollbackSafeUpgradeArgs;
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
///         var primary = new Cluster("primary", ClusterArgs.builder()
///             .name("my-gke-cluster")
///             .location("us-central1")
///             .initialNodeCount(1)
///             .minMasterVersion("1.32.4-gke.200")
///             .rollbackSafeUpgrade(ClusterRollbackSafeUpgradeArgs.builder()
///                 .controlPlaneSoakDuration("604800s")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:container:Cluster
///     properties:
///       name: my-gke-cluster
///       location: us-central1
///       initialNodeCount: 1
///       minMasterVersion: 1.32.4-gke.200
///       rollbackSafeUpgrade:
///         controlPlaneSoakDuration: 604800s
/// ```
///
///
/// After the soak period concludes, you can declaratively complete the upgrade by specifying the target `desiredEmulatedVersion`.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.container.Cluster("primary", {
///     name: "my-gke-cluster",
///     location: "us-central1",
///     initialNodeCount: 1,
///     minMasterVersion: "1.32.4-gke.200",
///     rollbackSafeUpgrade: {
///         controlPlaneSoakDuration: "604800s",
///     },
///     desiredEmulatedVersion: "1.32",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.container.Cluster("primary",
///     name="my-gke-cluster",
///     location="us-central1",
///     initial_node_count=1,
///     min_master_version="1.32.4-gke.200",
///     rollback_safe_upgrade={
///         "control_plane_soak_duration": "604800s",
///     },
///     desired_emulated_version="1.32")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Gcp.Container.Cluster("primary", new()
///     {
///         Name = "my-gke-cluster",
///         Location = "us-central1",
///         InitialNodeCount = 1,
///         MinMasterVersion = "1.32.4-gke.200",
///         RollbackSafeUpgrade = new Gcp.Container.Inputs.ClusterRollbackSafeUpgradeArgs
///         {
///             ControlPlaneSoakDuration = "604800s",
///         },
///         DesiredEmulatedVersion = "1.32",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := container.NewCluster(ctx, "primary", &container.ClusterArgs{
/// 			Name:             pulumi.String("my-gke-cluster"),
/// 			Location:         pulumi.String("us-central1"),
/// 			InitialNodeCount: pulumi.Int(1),
/// 			MinMasterVersion: pulumi.String("1.32.4-gke.200"),
/// 			RollbackSafeUpgrade: &container.ClusterRollbackSafeUpgradeArgs{
/// 				ControlPlaneSoakDuration: pulumi.String("604800s"),
/// 			},
/// 			DesiredEmulatedVersion: pulumi.String("1.32"),
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
/// resource "gcp_container_cluster" "primary" {
///   name               = "my-gke-cluster"
///   location           = "us-central1"
///   initial_node_count = 1
///   min_master_version = "1.32.4-gke.200"
///   rollback_safe_upgrade = {
///     control_plane_soak_duration = "604800s"
///   }
///   desired_emulated_version = "1.32"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.container.Cluster;
/// import com.pulumi.gcp.container.ClusterArgs;
/// import com.pulumi.gcp.container.inputs.ClusterRollbackSafeUpgradeArgs;
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
///         var primary = new Cluster("primary", ClusterArgs.builder()
///             .name("my-gke-cluster")
///             .location("us-central1")
///             .initialNodeCount(1)
///             .minMasterVersion("1.32.4-gke.200")
///             .rollbackSafeUpgrade(ClusterRollbackSafeUpgradeArgs.builder()
///                 .controlPlaneSoakDuration("604800s")
///                 .build())
///             .desiredEmulatedVersion("1.32")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:container:Cluster
///     properties:
///       name: my-gke-cluster
///       location: us-central1
///       initialNodeCount: 1
///       minMasterVersion: 1.32.4-gke.200
///       rollbackSafeUpgrade:
///         controlPlaneSoakDuration: 604800s
///       desiredEmulatedVersion: '1.32'
/// ```
///
///
/// &gt; **Note:** If you omit the `controlPlaneSoakDuration` field completely, GKE bypasses the two-step feature and performs a standard one-step upgrade. You must specify a duration between 6 hours and 7 days.
///
/// ### Autopilot
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
///     enableAutopilot: true,
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
///     enable_autopilot=True)
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
///         EnableAutopilot = true,
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
/// 		_, err := serviceaccount.NewAccount(ctx, "default", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("service-account-id"),
/// 			DisplayName: pulumi.String("Service Account"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = container.NewCluster(ctx, "primary", &container.ClusterArgs{
/// 			Name:            pulumi.String("marcellus-wallace"),
/// 			Location:        pulumi.String("us-central1-a"),
/// 			EnableAutopilot: pulumi.Bool(true),
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
///   name             = "marcellus-wallace"
///   location         = "us-central1-a"
///   enable_autopilot = true
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
///             .enableAutopilot(true)
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
///       name: marcellus-wallace
///       location: us-central1-a
///       enableAutopilot: true
/// ```
///
///
/// ## Import
///
/// GKE clusters can be imported using the `project` , `location`, and `name`. If the project is omitted, the default
/// provider value will be used. Examples:
///
/// * `projects/{{project_id}}/locations/{{location}}/clusters/{{cluster_id}}`
/// * `{{project_id}}/{{location}}/{{cluster_id}}`
/// * `{{location}}/{{cluster_id}}`
///
///
/// When using the `pulumi import` command, GKE clusters can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:container/cluster:Cluster default projects/{{project_id}}/locations/{{location}}/clusters/{{cluster_id}}
///
/// $ pulumi import gcp:container/cluster:Cluster default {{project_id}}/{{location}}/{{cluster_id}}
///
/// $ pulumi import gcp:container/cluster:Cluster default {{location}}/{{cluster_id}}
/// ```
///
/// &gt; **Note:** This resource has several fields that control Terraform-specific behavior and aren't present in the API. If they are set in config and you import a cluster, Terraform may need to perform an update immediately after import. Most of these updates should be no-ops but some may modify your cluster if the imported state differs.
///
/// For example, the following fields will show diffs if set in config:
///
/// - `minMasterVersion`
/// - `removeDefaultNodePool`
class Cluster extends pulumi.CustomResource {
  /// The configuration for addons supported by GKE.
  /// Structure is documented below.
  late final pulumi.Output<ClusterAddonsConfig> addonsConfig;
  /// Enable NET_ADMIN for the cluster. Defaults to
  /// `false`. This field should only be enabled for Autopilot clusters (`enableAutopilot`
  /// set to `true`).
  late final pulumi.Output<bool?> allowNetAdmin;
  /// Configuration for [anonymous authentication restrictions](https://cloud.google.com/kubernetes-engine/docs/how-to/hardening-your-cluster#restrict-anon-access). Structure is documented below.
  late final pulumi.Output<ClusterAnonymousAuthenticationConfig> anonymousAuthenticationConfig;
  /// Configuration for the
  /// [Google Groups for GKE](https://cloud.google.com/kubernetes-engine/docs/how-to/role-based-access-control#groups-setup-gsuite) feature.
  /// Structure is documented below.
  late final pulumi.Output<ClusterAuthenticatorGroupsConfig> authenticatorGroupsConfig;
  /// Per-cluster configuration of Autopilot cluster policies in GKE clusters. This field can only be configured in non Autopilot clusters. Structure is documented below.
  late final pulumi.Output<ClusterAutopilotClusterPolicyConfig> autopilotClusterPolicyConfig;
  /// The customer
  /// allowlist Cloud Storage paths for the cluster. These paths are used with the
  /// `--autopilot-privileged-admission` flag to authorize privileged workloads in
  /// Autopilot clusters. See the Cluster API's
  /// [PrivilegedAdmissionConfig](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters#privilegedadmissionconfig)
  /// documentation for more details.
  late final pulumi.Output<List<String>> autopilotPrivilegedAdmissions;
  /// Configuration options for the Binary
  /// Authorization feature. Structure is documented below.
  late final pulumi.Output<ClusterBinaryAuthorization?> binaryAuthorization;
  /// Per-cluster configuration of Node Auto-Provisioning with Cluster Autoscaler to
  /// automatically adjust the size of the cluster and create/delete node pools based
  /// on the current needs of the cluster's workload. See the
  /// [guide to using Node Auto-Provisioning](https://cloud.google.com/kubernetes-engine/docs/how-to/node-auto-provisioning)
  /// for more details. Structure is documented below.
  late final pulumi.Output<ClusterClusterAutoscaling> clusterAutoscaling;
  /// The IP address range of the Kubernetes pods
  /// in this cluster in CIDR notation (e.g. `10.96.0.0/14`). Leave blank to have one
  /// automatically chosen or specify a `/14` block in `10.0.0.0/8`. This field will
  /// default a new cluster to routes-based, where `ipAllocationPolicy` is not defined.
  late final pulumi.Output<String> clusterIpv4Cidr;
  /// ) Configuration for
  /// [ClusterTelemetry](https://cloud.google.com/monitoring/kubernetes-engine/installing#controlling_the_collection_of_application_logs) feature,
  /// Structure is documented below.
  late final pulumi.Output<ClusterClusterTelemetry> clusterTelemetry;
  /// Configuration for [Confidential Nodes](https://cloud.google.com/kubernetes-engine/docs/how-to/confidential-gke-nodes) feature. Structure is documented below documented below.
  late final pulumi.Output<ClusterConfidentialNodes> confidentialNodes;
  /// Configuration for all of the cluster's control plane endpoints.
  /// Structure is documented below.
  late final pulumi.Output<ClusterControlPlaneEndpointsConfig> controlPlaneEndpointsConfig;
  /// Configuration for the
  /// [Cost Allocation](https://cloud.google.com/kubernetes-engine/docs/how-to/cost-allocations) feature.
  /// Structure is documented below.
  late final pulumi.Output<ClusterCostManagementConfig> costManagementConfig;
  /// Structure is documented below.
  late final pulumi.Output<ClusterDatabaseEncryption> databaseEncryption;
  /// The desired datapath provider for this cluster. This is set to `LEGACY_DATAPATH` by default, which uses the IPTables-based kube-proxy implementation. Set to `ADVANCED_DATAPATH` to enable Dataplane v2.
  late final pulumi.Output<String> datapathProvider;
  /// The dataplane optimization mode for the cluster. Possible values: `SCALE_OPTIMIZED`.
  late final pulumi.Output<String?> dataplaneOptimizationMode;
  /// The default maximum number of pods
  /// per node in this cluster. This doesn't work on "routes-based" clusters, clusters
  /// that don't have IP Aliasing enabled. See the [official documentation](https://cloud.google.com/kubernetes-engine/docs/how-to/flexible-pod-cidr)
  /// for more information.
  late final pulumi.Output<int> defaultMaxPodsPerNode;
  /// [GKE SNAT](https://cloud.google.com/kubernetes-engine/docs/how-to/ip-masquerade-agent#how_ipmasq_works) DefaultSnatStatus contains the desired state of whether default sNAT should be disabled on the cluster, [API doc](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1beta1/projects.locations.clusters#networkconfig). Structure is documented below
  late final pulumi.Output<ClusterDefaultSnatStatus> defaultSnatStatus;
  /// (Optional) Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  ///
  /// &lt;a name="nestedDefaultSnatStatus"&gt;&lt;/a&gt;The `defaultSnatStatus` block supports
  late final pulumi.Output<String> deletionPolicy;
  /// Whether Terraform will be prevented from
  /// destroying the cluster.  Deleting this cluster via `terraform destroy` or
  /// `pulumi up` will only succeed if this field is `false` in the Terraform
  /// state.
  late final pulumi.Output<bool?> deletionProtection;
  /// Description of the cluster.
  late final pulumi.Output<String?> description;
  /// The desired emulated version for the cluster. Used to complete a rollback-safe upgrade after a soak period. Must be in major.minor format (e.g., "1.31"). To complete the upgrade declaratively, set this field to the target minor version. Removing this field from your configuration will not trigger completion.
  late final pulumi.Output<String?> desiredEmulatedVersion;
  /// Disable L4 load balancer VPC firewalls to enable firewall policies.
  late final pulumi.Output<bool?> disableL4LbFirewallReconciliation;
  /// Configuration for [Using Cloud DNS for GKE](https://cloud.google.com/kubernetes-engine/docs/how-to/cloud-dns). Structure is documented below.
  late final pulumi.Output<ClusterDnsConfig?> dnsConfig;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// The current emulated Kubernetes version running on the GKE cluster control plane.
  late final pulumi.Output<String> emulatedVersion;
  /// Enable Autopilot for this cluster. Defaults to `false`.
  /// Note that when this option is enabled, certain features of Standard GKE are not available.
  /// See the [official documentation](https://cloud.google.com/kubernetes-engine/docs/concepts/autopilot-overview#comparison)
  /// for available features.
  late final pulumi.Output<bool?> enableAutopilot;
  /// Whether CiliumClusterWideNetworkPolicy is enabled on this cluster. Defaults to false.
  late final pulumi.Output<bool?> enableCiliumClusterwideNetworkPolicy;
  /// Whether FQDN Network Policy is enabled on this cluster. Users who enable this feature for existing Standard clusters must restart the GKE Dataplane V2 `anetd` DaemonSet after enabling it. See the [Enable FQDN Network Policy in an existing cluster](https://cloud.google.com/kubernetes-engine/docs/how-to/fqdn-network-policies#enable_fqdn_network_policy_in_an_existing_cluster) for more information.
  late final pulumi.Output<bool?> enableFqdnNetworkPolicy;
  /// Whether Intra-node visibility is enabled for this cluster. This makes same node pod to pod traffic visible for VPC network.
  late final pulumi.Output<bool> enableIntranodeVisibility;
  /// Configuration for Kubernetes Beta APIs.
  /// Structure is documented below.
  late final pulumi.Output<ClusterEnableK8sBetaApis?> enableK8sBetaApis;
  /// Whether to enable Kubernetes Alpha features for
  /// this cluster. Note that when this option is enabled, the cluster cannot be upgraded
  /// and will be automatically deleted after 30 days.
  late final pulumi.Output<bool?> enableKubernetesAlpha;
  /// Whether L4ILB Subsetting is enabled for this cluster.
  late final pulumi.Output<bool> enableL4IlbSubsetting;
  /// Whether the ABAC authorizer is enabled for this cluster.
  /// When enabled, identities in the system, including service accounts, nodes, and controllers,
  /// will have statically granted permissions beyond those provided by the RBAC configuration or IAM.
  /// Defaults to `false`
  late final pulumi.Output<bool?> enableLegacyAbac;
  /// Whether multi-networking is enabled for this cluster.
  late final pulumi.Output<bool?> enableMultiNetworking;
  /// Enable Shielded Nodes features on all nodes in this cluster.  Defaults to `true`.
  late final pulumi.Output<bool?> enableShieldedNodes;
  /// Whether to enable Cloud TPU resources in this cluster.
  /// See the [official documentation](https://cloud.google.com/tpu/docs/kubernetes-engine-setup).
  late final pulumi.Output<bool> enableTpu;
  /// The IP address of this cluster's Kubernetes master.
  late final pulumi.Output<String> endpoint;
  /// (DEPRECATED) Configuration for [Enterprise edition].(https://cloud.google.com/kubernetes-engine/enterprise/docs/concepts/gke-editions). Structure is documented below. Deprecated as GKE Enterprise features are now available without an Enterprise tier. See https://cloud.google.com/blog/products/containers-kubernetes/gke-gets-new-pricing-and-capabilities-on-10th-birthday for the announcement of this change.
  late final pulumi.Output<ClusterEnterpriseConfig> enterpriseConfig;
  /// Fleet configuration for the cluster. Structure is documented below.
  late final pulumi.Output<ClusterFleet?> fleet;
  /// Configuration for [GKE Gateway API controller](https://cloud.google.com/kubernetes-engine/docs/concepts/gateway-api). Structure is documented below.
  late final pulumi.Output<ClusterGatewayApiConfig> gatewayApiConfig;
  /// Configuration options for the auto-upgrade patch type feature, which provide more control over the speed of automatic upgrades of your GKE clusters.
  /// Structure is documented below.
  late final pulumi.Output<ClusterGkeAutoUpgradeConfig> gkeAutoUpgradeConfig;
  /// . Structure is documented below.
  late final pulumi.Output<ClusterIdentityServiceConfig> identityServiceConfig;
  /// Whether to ignore external changes (drift) to the GKE node count (e.g. from GKE autoscaling). Setting this to `true` skips querying Compute Engine Instance Group Managers (IGMs) to determine the current node count on read, which can save API quota and speed up plans on large clusters. Unlike Terraform core's `lifecycle { ignoreChanges = [nodeCount] }`, this allows configuration-driven scaling updates in your HCL while still ignoring runtime autoscaling drift.
  late final pulumi.Output<bool?> ignoreNodeCountChanges;
  /// Defines the config of in-transit encryption. Valid values are `IN_TRANSIT_ENCRYPTION_DISABLED` and `IN_TRANSIT_ENCRYPTION_INTER_NODE_TRANSPARENT`.
  late final pulumi.Output<String?> inTransitEncryptionConfig;
  /// The number of nodes to create in this
  /// cluster's default node pool. In regional or multi-zonal clusters, this is the
  /// number of nodes per zone. Must be set if `nodePool` is not set. If you're using
  /// `gcp.container.NodePool` objects with no default node pool, you'll need to
  /// set this to a value of at least `1`, alongside setting
  /// `removeDefaultNodePool` to `true`.
  late final pulumi.Output<int?> initialNodeCount;
  /// Configuration of cluster IP allocation for
  /// VPC-native clusters. If this block is unset during creation, it will be set by the GKE backend.
  /// Structure is documented below.
  late final pulumi.Output<ClusterIpAllocationPolicy> ipAllocationPolicy;
  /// The fingerprint of the set of labels for this cluster.
  late final pulumi.Output<String> labelFingerprint;
  /// The location (region or zone) in which the cluster
  /// master will be created, as well as the default node location. If you specify a
  /// zone (such as `us-central1-a`), the cluster will be a zonal cluster with a
  /// single cluster master. If you specify a region (such as `us-west1`), the
  /// cluster will be a regional cluster with multiple masters spread across zones in
  /// the region, and with default node locations in those zones as well
  late final pulumi.Output<String> location;
  /// Logging configuration for the cluster.
  /// Structure is documented below.
  late final pulumi.Output<ClusterLoggingConfig> loggingConfig;
  /// The logging service that the cluster should
  /// write logs to. Available options include `logging.googleapis.com`(Legacy Stackdriver),
  /// `logging.googleapis.com/kubernetes`(Stackdriver Kubernetes Engine Logging), and `none`. Defaults to `logging.googleapis.com/kubernetes`
  late final pulumi.Output<String> loggingService;
  /// The maintenance policy to use for the cluster. Structure is
  /// documented below.
  late final pulumi.Output<ClusterMaintenancePolicy?> maintenancePolicy;
  /// ) Configuration for the [GKE Managed ML Diagnostics](https://docs.cloud.google.com/kubernetes-engine/docs/concepts/TODO) feature. Structure is documented below.
  late final pulumi.Output<ClusterManagedMachineLearningDiagnosticsConfig> managedMachineLearningDiagnosticsConfig;
  /// ) Configuration for the [GKE Managed OpenTelemetry](https://docs.cloud.google.com/kubernetes-engine/docs/concepts/managed-otel-gke) feature. Structure is documented below.
  late final pulumi.Output<ClusterManagedOpentelemetryConfig> managedOpentelemetryConfig;
  /// The authentication information for accessing the
  /// Kubernetes master. Some values in this block are only returned by the API if
  /// your service account has permission to get credentials for your GKE cluster. If
  /// you see an unexpected diff unsetting your client cert, ensure you have the
  /// `container.clusters.getCredentials` permission.
  /// Structure is documented below.
  late final pulumi.Output<ClusterMasterAuth> masterAuth;
  /// The desired
  /// configuration options for master authorized networks. Omit the
  /// nested `cidrBlocks` attribute to disallow external access (except
  /// the cluster node IPs, which GKE automatically whitelists).
  /// Structure is documented below.
  late final pulumi.Output<ClusterMasterAuthorizedNetworksConfig> masterAuthorizedNetworksConfig;
  /// The current version of the master in the cluster. This may
  /// be different than the `minMasterVersion` set in the config if the master
  /// has been updated by GKE.
  late final pulumi.Output<String> masterVersion;
  /// Structure is documented below.
  late final pulumi.Output<ClusterMeshCertificates> meshCertificates;
  /// The minimum version of the master. GKE
  /// will auto-update the master to new versions, so this does not guarantee the
  /// current master version--use the read-only `masterVersion` field to obtain that.
  /// If unset, the cluster's version will be set by GKE to the version of the most recent
  /// official release (which is not necessarily the latest version).  Most users will find
  /// the `gcp.container.getEngineVersions` data source useful - it indicates which versions
  /// are available. If you intend to specify versions manually,
  /// [the docs](https://cloud.google.com/kubernetes-engine/versioning-and-upgrades#specifying_cluster_version)
  /// describe the various acceptable formats for this field.
  ///
  /// &gt; If you are using the `gcp.container.getEngineVersions` datasource with a regional cluster, ensure that you have provided a `location`
  /// to the datasource. A region can have a different set of supported versions than its corresponding zones, and not all zones in a
  /// region are guaranteed to support the same version.
  late final pulumi.Output<String?> minMasterVersion;
  /// Monitoring configuration for the cluster.
  /// Structure is documented below.
  late final pulumi.Output<ClusterMonitoringConfig> monitoringConfig;
  /// The monitoring service that the cluster
  /// should write metrics to.
  /// Automatically send metrics from pods in the cluster to the Google Cloud Monitoring API.
  /// VM metrics will be collected by Google Compute Engine regardless of this setting
  /// Available options include
  /// `monitoring.googleapis.com`(Legacy Stackdriver), `monitoring.googleapis.com/kubernetes`(Stackdriver Kubernetes Engine Monitoring), and `none`.
  /// Defaults to `monitoring.googleapis.com/kubernetes`
  late final pulumi.Output<String> monitoringService;
  /// The name of the cluster, unique within the project and
  /// location.
  ///
  /// - - -
  late final pulumi.Output<String> name;
  /// The name or selfLink of the Google Compute Engine
  /// network to which the cluster is connected. For Shared VPC, set this to the self link of the
  /// shared network.
  late final pulumi.Output<String?> network;
  /// Network bandwidth tier configuration.
  late final pulumi.Output<ClusterNetworkPerformanceConfig?> networkPerformanceConfig;
  /// Configuration options for the
  /// [NetworkPolicy](https://kubernetes.io/docs/concepts/services-networking/networkpolicies/)
  /// feature. Structure is documented below.
  late final pulumi.Output<ClusterNetworkPolicy?> networkPolicy;
  /// Determines whether alias IPs or routes will be used for pod IPs in the cluster.
  /// Options are `VPC_NATIVE` or `ROUTES`. `VPC_NATIVE` enables [IP aliasing](https://cloud.google.com/kubernetes-engine/docs/how-to/ip-aliases). Newly created clusters will default to `VPC_NATIVE`.
  late final pulumi.Output<String> networkingMode;
  /// Parameters used in creating the default node pool.
  /// Generally, this field should not be used at the same time as a
  /// `gcp.container.NodePool` or a `nodePool` block; this configuration
  /// manages the default node pool, which isn't recommended to be used.
  /// Structure is documented below.
  late final pulumi.Output<ClusterNodeConfig> nodeConfig;
  /// Configuration for [node creation config](https://clouddocs.devsite.corp.google.com/kubernetes-engine/security/control-plane-node-creation). Structure is documented below.
  late final pulumi.Output<ClusterNodeCreationConfig> nodeCreationConfig;
  /// The list of zones in which the cluster's nodes
  /// are located. Nodes must be in the region of their regional cluster or in the
  /// same region as their cluster's zone for zonal clusters. If this is specified for
  /// a zonal cluster, omit the cluster's zone.
  ///
  /// &gt; A "multi-zonal" cluster is a zonal cluster with at least one additional zone
  /// defined; in a multi-zonal cluster, the cluster master is only present in a
  /// single zone while nodes are present in each of the primary zone and the node
  /// locations. In contrast, in a regional cluster, cluster master nodes are present
  /// in multiple zones in the region. For that reason, regional clusters should be
  /// preferred.
  late final pulumi.Output<List<String>> nodeLocations;
  /// Node pool configs that apply to auto-provisioned node pools in
  /// [autopilot](https://cloud.google.com/kubernetes-engine/docs/concepts/autopilot-overview#comparison) clusters and
  /// [node auto-provisioning](https://cloud.google.com/kubernetes-engine/docs/how-to/node-auto-provisioning)-enabled clusters. Structure is documented below.
  late final pulumi.Output<ClusterNodePoolAutoConfig> nodePoolAutoConfig;
  /// Default NodePool settings for the entire cluster. These settings are overridden if specified on the specific NodePool object. Structure is documented below.
  late final pulumi.Output<ClusterNodePoolDefaults> nodePoolDefaults;
  /// List of node pools associated with this cluster. Structure is documented below. See gcp.container.NodePool for exact schema.
  /// **Warning:** node pools defined inside a cluster can't be changed (or added/removed) after
  /// cluster creation without deleting and recreating the entire cluster. Unless you absolutely need the ability
  /// to say "these are the _only_ node pools associated with this cluster", use the
  /// gcp.container.NodePool resource instead of this property.
  late final pulumi.Output<List<Map<String, dynamic>>> nodePools;
  /// The Kubernetes version on the nodes. Must either be unset
  /// or set to the same value as `minMasterVersion` on create. Defaults to the default
  /// version set by GKE which is not necessarily the latest version. This only affects
  /// nodes in the default node pool. While a fuzzy version can be specified, it's
  /// recommended that you specify explicit versions as the provider will see spurious diffs
  /// when fuzzy versions are used. See the `gcp.container.getEngineVersions` data source's
  /// `versionPrefix` field to approximate fuzzy versions.
  /// To update nodes in other node pools, use the `version` attribute on the node pool.
  late final pulumi.Output<String> nodeVersion;
  /// Configuration for the [cluster upgrade notifications](https://cloud.google.com/kubernetes-engine/docs/how-to/cluster-upgrade-notifications) feature. Structure is documented below.
  late final pulumi.Output<ClusterNotificationConfig> notificationConfig;
  late final pulumi.Output<String> operation;
  /// Configuration for the
  /// Structure is documented below.
  late final pulumi.Output<ClusterPodAutoscaling> podAutoscaling;
  /// ) Configuration for the
  /// [PodSecurityPolicy](https://cloud.google.com/kubernetes-engine/docs/how-to/pod-security-policies) feature.
  /// Structure is documented below.
  late final pulumi.Output<ClusterPodSecurityPolicyConfig?> podSecurityPolicyConfig;
  /// Configuration for [private clusters](https://cloud.google.com/kubernetes-engine/docs/how-to/private-clusters),
  /// clusters with private nodes. Structure is documented below.
  late final pulumi.Output<ClusterPrivateClusterConfig> privateClusterConfig;
  /// The desired state of IPv6 connectivity to Google Services. By default, no private IPv6 access to or from Google Services (all access will be via IPv4).
  late final pulumi.Output<String> privateIpv6GoogleAccess;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// )
  /// Enable/Disable Protect API features for the cluster. Structure is documented below.
  late final pulumi.Output<ClusterProtectConfig> protectConfig;
  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// RBACBindingConfig allows user to restrict ClusterRoleBindings an RoleBindings that can be created. Structure is documented below.
  late final pulumi.Output<ClusterRbacBindingConfig> rbacBindingConfig;
  /// Configuration options for the [Release channel](https://cloud.google.com/kubernetes-engine/docs/concepts/release-channels)
  /// feature, which provide more control over automatic upgrades of your GKE clusters.
  /// When updating this field, GKE imposes specific version requirements. See
  /// [Selecting a new release channel](https://cloud.google.com/kubernetes-engine/docs/concepts/release-channels#selecting_a_new_release_channel)
  /// for more details; the `gcp.container.getEngineVersions` datasource can provide
  /// the default version for a channel. Note that removing the `releaseChannel`
  /// field from your config will cause the provider to stop managing your cluster's
  /// release channel, but will not unenroll it. Instead, use the `"UNSPECIFIED"`
  /// channel. Structure is documented below.
  late final pulumi.Output<ClusterReleaseChannel> releaseChannel;
  /// If `true`, deletes the default node
  /// pool upon cluster creation. If you're using `gcp.container.NodePool`
  /// resources with no default node pool, this should be set to `true`, alongside
  /// setting `initialNodeCount` to at least `1`.
  late final pulumi.Output<bool?> removeDefaultNodePool;
  /// The GCE resource labels (a map of key/value pairs) to be applied to the cluster.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> resourceLabels;
  /// Configuration for the
  /// [ResourceUsageExportConfig](https://cloud.google.com/kubernetes-engine/docs/how-to/cluster-usage-metering) feature.
  /// Structure is documented below.
  late final pulumi.Output<ClusterResourceUsageExportConfig?> resourceUsageExportConfig;
  /// Configuration for rollback-safe (two-step) upgrades. Structure is documented below.
  late final pulumi.Output<ClusterRollbackSafeUpgrade?> rollbackSafeUpgrade;
  /// Configuration for the
  /// [SecretManagerConfig](https://cloud.google.com/secret-manager/docs/secret-manager-managed-csi-component) feature.
  /// Structure is documented below.
  late final pulumi.Output<ClusterSecretManagerConfig?> secretManagerConfig;
  /// Configuration for the
  /// [SecretSyncConfig](https://cloud.google.com/secret-manager/docs/sync-k8-secrets) feature.
  /// Structure is documented below.
  late final pulumi.Output<ClusterSecretSyncConfig?> secretSyncConfig;
  /// Enable/Disable Security Posture API features for the cluster. Structure is documented below.
  late final pulumi.Output<ClusterSecurityPostureConfig> securityPostureConfig;
  /// The server-defined URL for the resource.
  late final pulumi.Output<String> selfLink;
  /// Structure is documented below.
  late final pulumi.Output<ClusterServiceExternalIpsConfig> serviceExternalIpsConfig;
  /// The IP address range of the Kubernetes services in this
  /// cluster, in [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing)
  /// notation (e.g. `1.2.3.4/29`). Service addresses are typically put in the last
  /// `/16` from the container CIDR.
  late final pulumi.Output<String> servicesIpv4Cidr;
  /// Whether to skip refreshing the GKE cluster's inline node pool list during read operations. Setting this to `true` prevents the provider from querying GKE API for node pools, resolving long plan times on clusters with a large number of node pools. **Warning:** When enabled, the cluster's `nodePool` attribute in the Terraform state will remain empty (`[]`), even if node pools exist externally. This flag cannot be set to `true` if you define inline `nodePool` blocks in your configuration; doing so will result in a validation error during plan.
  late final pulumi.Output<bool?> skipNodePoolRefresh;
  /// The name or selfLink of the Google Compute Engine
  /// subnetwork in which the cluster's instances are launched.
  late final pulumi.Output<String> subnetwork;
  /// TPU configuration for the cluster.
  late final pulumi.Output<ClusterTpuConfig> tpuConfig;
  /// The IP address range of the Cloud TPUs in this cluster, in
  /// [CIDR](http://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing)
  /// notation (e.g. `1.2.3.4/29`).
  late final pulumi.Output<String> tpuIpv4CidrBlock;
  /// The custom keys configuration of the cluster Structure is documented below.
  late final pulumi.Output<ClusterUserManagedKeysConfig?> userManagedKeysConfig;
  /// Vertical Pod Autoscaling automatically adjusts the resources of pods controlled by it.
  /// Structure is documented below.
  late final pulumi.Output<ClusterVerticalPodAutoscaling> verticalPodAutoscaling;
  /// )
  /// Configuration for [direct-path (via ALTS) with workload identity.](https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1beta1/projects.locations.clusters#workloadaltsconfig). Structure is documented below.
  late final pulumi.Output<ClusterWorkloadAltsConfig> workloadAltsConfig;
  /// Workload Identity allows Kubernetes service accounts to act as a user-managed
  /// [Google IAM Service Account](https://cloud.google.com/iam/docs/service-accounts#user-managed_service_accounts).
  /// Structure is documented below.
  late final pulumi.Output<ClusterWorkloadIdentityConfig> workloadIdentityConfig;

  /// Creates a new [Cluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cluster]. {@macro pulumi_container_cluster_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:container/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addonsConfig = registerOutput<ClusterAddonsConfig>('addonsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterAddonsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    allowNetAdmin = registerOutput<bool?>('allowNetAdmin');
    anonymousAuthenticationConfig = registerOutput<ClusterAnonymousAuthenticationConfig>('anonymousAuthenticationConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterAnonymousAuthenticationConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    authenticatorGroupsConfig = registerOutput<ClusterAuthenticatorGroupsConfig>('authenticatorGroupsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterAuthenticatorGroupsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    autopilotClusterPolicyConfig = registerOutput<ClusterAutopilotClusterPolicyConfig>('autopilotClusterPolicyConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterAutopilotClusterPolicyConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    autopilotPrivilegedAdmissions = registerOutput<List<String>>('autopilotPrivilegedAdmissions');
    binaryAuthorization = registerOutput<ClusterBinaryAuthorization?>('binaryAuthorization', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterBinaryAuthorization.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clusterAutoscaling = registerOutput<ClusterClusterAutoscaling>('clusterAutoscaling', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterClusterAutoscaling.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clusterIpv4Cidr = registerOutput<String>('clusterIpv4Cidr');
    clusterTelemetry = registerOutput<ClusterClusterTelemetry>('clusterTelemetry', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterClusterTelemetry.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    confidentialNodes = registerOutput<ClusterConfidentialNodes>('confidentialNodes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterConfidentialNodes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    controlPlaneEndpointsConfig = registerOutput<ClusterControlPlaneEndpointsConfig>('controlPlaneEndpointsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterControlPlaneEndpointsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    costManagementConfig = registerOutput<ClusterCostManagementConfig>('costManagementConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterCostManagementConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    databaseEncryption = registerOutput<ClusterDatabaseEncryption>('databaseEncryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterDatabaseEncryption.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    datapathProvider = registerOutput<String>('datapathProvider');
    dataplaneOptimizationMode = registerOutput<String?>('dataplaneOptimizationMode');
    defaultMaxPodsPerNode = registerOutput<int>('defaultMaxPodsPerNode');
    defaultSnatStatus = registerOutput<ClusterDefaultSnatStatus>('defaultSnatStatus', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterDefaultSnatStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    description = registerOutput<String?>('description');
    desiredEmulatedVersion = registerOutput<String?>('desiredEmulatedVersion');
    disableL4LbFirewallReconciliation = registerOutput<bool?>('disableL4LbFirewallReconciliation');
    dnsConfig = registerOutput<ClusterDnsConfig?>('dnsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterDnsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    emulatedVersion = registerOutput<String>('emulatedVersion');
    enableAutopilot = registerOutput<bool?>('enableAutopilot');
    enableCiliumClusterwideNetworkPolicy = registerOutput<bool?>('enableCiliumClusterwideNetworkPolicy');
    enableFqdnNetworkPolicy = registerOutput<bool?>('enableFqdnNetworkPolicy');
    enableIntranodeVisibility = registerOutput<bool>('enableIntranodeVisibility');
    enableK8sBetaApis = registerOutput<ClusterEnableK8sBetaApis?>('enableK8sBetaApis', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterEnableK8sBetaApis.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    enableKubernetesAlpha = registerOutput<bool?>('enableKubernetesAlpha');
    enableL4IlbSubsetting = registerOutput<bool>('enableL4IlbSubsetting');
    enableLegacyAbac = registerOutput<bool?>('enableLegacyAbac');
    enableMultiNetworking = registerOutput<bool?>('enableMultiNetworking');
    enableShieldedNodes = registerOutput<bool?>('enableShieldedNodes');
    enableTpu = registerOutput<bool>('enableTpu');
    endpoint = registerOutput<String>('endpoint');
    enterpriseConfig = registerOutput<ClusterEnterpriseConfig>('enterpriseConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterEnterpriseConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    fleet = registerOutput<ClusterFleet?>('fleet', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterFleet.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    gatewayApiConfig = registerOutput<ClusterGatewayApiConfig>('gatewayApiConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterGatewayApiConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    gkeAutoUpgradeConfig = registerOutput<ClusterGkeAutoUpgradeConfig>('gkeAutoUpgradeConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterGkeAutoUpgradeConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identityServiceConfig = registerOutput<ClusterIdentityServiceConfig>('identityServiceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterIdentityServiceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ignoreNodeCountChanges = registerOutput<bool?>('ignoreNodeCountChanges');
    inTransitEncryptionConfig = registerOutput<String?>('inTransitEncryptionConfig');
    initialNodeCount = registerOutput<int?>('initialNodeCount');
    ipAllocationPolicy = registerOutput<ClusterIpAllocationPolicy>('ipAllocationPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterIpAllocationPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labelFingerprint = registerOutput<String>('labelFingerprint');
    location = registerOutput<String>('location');
    loggingConfig = registerOutput<ClusterLoggingConfig>('loggingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    loggingService = registerOutput<String>('loggingService');
    maintenancePolicy = registerOutput<ClusterMaintenancePolicy?>('maintenancePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterMaintenancePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    managedMachineLearningDiagnosticsConfig = registerOutput<ClusterManagedMachineLearningDiagnosticsConfig>('managedMachineLearningDiagnosticsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterManagedMachineLearningDiagnosticsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    managedOpentelemetryConfig = registerOutput<ClusterManagedOpentelemetryConfig>('managedOpentelemetryConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterManagedOpentelemetryConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    masterAuth = registerOutput<ClusterMasterAuth>('masterAuth', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterMasterAuth.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    masterAuthorizedNetworksConfig = registerOutput<ClusterMasterAuthorizedNetworksConfig>('masterAuthorizedNetworksConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterMasterAuthorizedNetworksConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    masterVersion = registerOutput<String>('masterVersion');
    meshCertificates = registerOutput<ClusterMeshCertificates>('meshCertificates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterMeshCertificates.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    minMasterVersion = registerOutput<String?>('minMasterVersion');
    monitoringConfig = registerOutput<ClusterMonitoringConfig>('monitoringConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterMonitoringConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    monitoringService = registerOutput<String>('monitoringService');
    this.name = registerOutput<String>('name');
    network = registerOutput<String?>('network');
    networkPerformanceConfig = registerOutput<ClusterNetworkPerformanceConfig?>('networkPerformanceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterNetworkPerformanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    networkPolicy = registerOutput<ClusterNetworkPolicy?>('networkPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterNetworkPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    networkingMode = registerOutput<String>('networkingMode');
    nodeConfig = registerOutput<ClusterNodeConfig>('nodeConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterNodeConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nodeCreationConfig = registerOutput<ClusterNodeCreationConfig>('nodeCreationConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterNodeCreationConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nodeLocations = registerOutput<List<String>>('nodeLocations');
    nodePoolAutoConfig = registerOutput<ClusterNodePoolAutoConfig>('nodePoolAutoConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterNodePoolAutoConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nodePoolDefaults = registerOutput<ClusterNodePoolDefaults>('nodePoolDefaults', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterNodePoolDefaults.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nodePools = registerOutput<List<Map<String, dynamic>>>('nodePools');
    nodeVersion = registerOutput<String>('nodeVersion');
    notificationConfig = registerOutput<ClusterNotificationConfig>('notificationConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterNotificationConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    operation = registerOutput<String>('operation');
    podAutoscaling = registerOutput<ClusterPodAutoscaling>('podAutoscaling', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterPodAutoscaling.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    podSecurityPolicyConfig = registerOutput<ClusterPodSecurityPolicyConfig?>('podSecurityPolicyConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterPodSecurityPolicyConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateClusterConfig = registerOutput<ClusterPrivateClusterConfig>('privateClusterConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterPrivateClusterConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateIpv6GoogleAccess = registerOutput<String>('privateIpv6GoogleAccess');
    project = registerOutput<String>('project');
    protectConfig = registerOutput<ClusterProtectConfig>('protectConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterProtectConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    rbacBindingConfig = registerOutput<ClusterRbacBindingConfig>('rbacBindingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterRbacBindingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    releaseChannel = registerOutput<ClusterReleaseChannel>('releaseChannel', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterReleaseChannel.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    removeDefaultNodePool = registerOutput<bool?>('removeDefaultNodePool');
    resourceLabels = registerOutput<Map<String, String>?>('resourceLabels');
    resourceUsageExportConfig = registerOutput<ClusterResourceUsageExportConfig?>('resourceUsageExportConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterResourceUsageExportConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    rollbackSafeUpgrade = registerOutput<ClusterRollbackSafeUpgrade?>('rollbackSafeUpgrade', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterRollbackSafeUpgrade.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    secretManagerConfig = registerOutput<ClusterSecretManagerConfig?>('secretManagerConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterSecretManagerConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    secretSyncConfig = registerOutput<ClusterSecretSyncConfig?>('secretSyncConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterSecretSyncConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    securityPostureConfig = registerOutput<ClusterSecurityPostureConfig>('securityPostureConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterSecurityPostureConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    selfLink = registerOutput<String>('selfLink');
    serviceExternalIpsConfig = registerOutput<ClusterServiceExternalIpsConfig>('serviceExternalIpsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterServiceExternalIpsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    servicesIpv4Cidr = registerOutput<String>('servicesIpv4Cidr');
    skipNodePoolRefresh = registerOutput<bool?>('skipNodePoolRefresh');
    subnetwork = registerOutput<String>('subnetwork');
    tpuConfig = registerOutput<ClusterTpuConfig>('tpuConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterTpuConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tpuIpv4CidrBlock = registerOutput<String>('tpuIpv4CidrBlock');
    userManagedKeysConfig = registerOutput<ClusterUserManagedKeysConfig?>('userManagedKeysConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterUserManagedKeysConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    verticalPodAutoscaling = registerOutput<ClusterVerticalPodAutoscaling>('verticalPodAutoscaling', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterVerticalPodAutoscaling.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    workloadAltsConfig = registerOutput<ClusterWorkloadAltsConfig>('workloadAltsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterWorkloadAltsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    workloadIdentityConfig = registerOutput<ClusterWorkloadIdentityConfig>('workloadIdentityConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterWorkloadIdentityConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
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
          'gcp:container/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addonsConfig = registerOutput<ClusterAddonsConfig>('addonsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterAddonsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    allowNetAdmin = registerOutput<bool?>('allowNetAdmin');
    anonymousAuthenticationConfig = registerOutput<ClusterAnonymousAuthenticationConfig>('anonymousAuthenticationConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterAnonymousAuthenticationConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    authenticatorGroupsConfig = registerOutput<ClusterAuthenticatorGroupsConfig>('authenticatorGroupsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterAuthenticatorGroupsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    autopilotClusterPolicyConfig = registerOutput<ClusterAutopilotClusterPolicyConfig>('autopilotClusterPolicyConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterAutopilotClusterPolicyConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    autopilotPrivilegedAdmissions = registerOutput<List<String>>('autopilotPrivilegedAdmissions');
    binaryAuthorization = registerOutput<ClusterBinaryAuthorization?>('binaryAuthorization', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterBinaryAuthorization.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clusterAutoscaling = registerOutput<ClusterClusterAutoscaling>('clusterAutoscaling', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterClusterAutoscaling.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clusterIpv4Cidr = registerOutput<String>('clusterIpv4Cidr');
    clusterTelemetry = registerOutput<ClusterClusterTelemetry>('clusterTelemetry', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterClusterTelemetry.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    confidentialNodes = registerOutput<ClusterConfidentialNodes>('confidentialNodes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterConfidentialNodes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    controlPlaneEndpointsConfig = registerOutput<ClusterControlPlaneEndpointsConfig>('controlPlaneEndpointsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterControlPlaneEndpointsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    costManagementConfig = registerOutput<ClusterCostManagementConfig>('costManagementConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterCostManagementConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    databaseEncryption = registerOutput<ClusterDatabaseEncryption>('databaseEncryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterDatabaseEncryption.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    datapathProvider = registerOutput<String>('datapathProvider');
    dataplaneOptimizationMode = registerOutput<String?>('dataplaneOptimizationMode');
    defaultMaxPodsPerNode = registerOutput<int>('defaultMaxPodsPerNode');
    defaultSnatStatus = registerOutput<ClusterDefaultSnatStatus>('defaultSnatStatus', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterDefaultSnatStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deletionProtection = registerOutput<bool?>('deletionProtection');
    description = registerOutput<String?>('description');
    desiredEmulatedVersion = registerOutput<String?>('desiredEmulatedVersion');
    disableL4LbFirewallReconciliation = registerOutput<bool?>('disableL4LbFirewallReconciliation');
    dnsConfig = registerOutput<ClusterDnsConfig?>('dnsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterDnsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    emulatedVersion = registerOutput<String>('emulatedVersion');
    enableAutopilot = registerOutput<bool?>('enableAutopilot');
    enableCiliumClusterwideNetworkPolicy = registerOutput<bool?>('enableCiliumClusterwideNetworkPolicy');
    enableFqdnNetworkPolicy = registerOutput<bool?>('enableFqdnNetworkPolicy');
    enableIntranodeVisibility = registerOutput<bool>('enableIntranodeVisibility');
    enableK8sBetaApis = registerOutput<ClusterEnableK8sBetaApis?>('enableK8sBetaApis', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterEnableK8sBetaApis.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    enableKubernetesAlpha = registerOutput<bool?>('enableKubernetesAlpha');
    enableL4IlbSubsetting = registerOutput<bool>('enableL4IlbSubsetting');
    enableLegacyAbac = registerOutput<bool?>('enableLegacyAbac');
    enableMultiNetworking = registerOutput<bool?>('enableMultiNetworking');
    enableShieldedNodes = registerOutput<bool?>('enableShieldedNodes');
    enableTpu = registerOutput<bool>('enableTpu');
    endpoint = registerOutput<String>('endpoint');
    enterpriseConfig = registerOutput<ClusterEnterpriseConfig>('enterpriseConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterEnterpriseConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    fleet = registerOutput<ClusterFleet?>('fleet', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterFleet.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    gatewayApiConfig = registerOutput<ClusterGatewayApiConfig>('gatewayApiConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterGatewayApiConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    gkeAutoUpgradeConfig = registerOutput<ClusterGkeAutoUpgradeConfig>('gkeAutoUpgradeConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterGkeAutoUpgradeConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identityServiceConfig = registerOutput<ClusterIdentityServiceConfig>('identityServiceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterIdentityServiceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ignoreNodeCountChanges = registerOutput<bool?>('ignoreNodeCountChanges');
    inTransitEncryptionConfig = registerOutput<String?>('inTransitEncryptionConfig');
    initialNodeCount = registerOutput<int?>('initialNodeCount');
    ipAllocationPolicy = registerOutput<ClusterIpAllocationPolicy>('ipAllocationPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterIpAllocationPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labelFingerprint = registerOutput<String>('labelFingerprint');
    location = registerOutput<String>('location');
    loggingConfig = registerOutput<ClusterLoggingConfig>('loggingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    loggingService = registerOutput<String>('loggingService');
    maintenancePolicy = registerOutput<ClusterMaintenancePolicy?>('maintenancePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterMaintenancePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    managedMachineLearningDiagnosticsConfig = registerOutput<ClusterManagedMachineLearningDiagnosticsConfig>('managedMachineLearningDiagnosticsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterManagedMachineLearningDiagnosticsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    managedOpentelemetryConfig = registerOutput<ClusterManagedOpentelemetryConfig>('managedOpentelemetryConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterManagedOpentelemetryConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    masterAuth = registerOutput<ClusterMasterAuth>('masterAuth', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterMasterAuth.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    masterAuthorizedNetworksConfig = registerOutput<ClusterMasterAuthorizedNetworksConfig>('masterAuthorizedNetworksConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterMasterAuthorizedNetworksConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    masterVersion = registerOutput<String>('masterVersion');
    meshCertificates = registerOutput<ClusterMeshCertificates>('meshCertificates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterMeshCertificates.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    minMasterVersion = registerOutput<String?>('minMasterVersion');
    monitoringConfig = registerOutput<ClusterMonitoringConfig>('monitoringConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterMonitoringConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    monitoringService = registerOutput<String>('monitoringService');
    this.name = registerOutput<String>('name');
    network = registerOutput<String?>('network');
    networkPerformanceConfig = registerOutput<ClusterNetworkPerformanceConfig?>('networkPerformanceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterNetworkPerformanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    networkPolicy = registerOutput<ClusterNetworkPolicy?>('networkPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterNetworkPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    networkingMode = registerOutput<String>('networkingMode');
    nodeConfig = registerOutput<ClusterNodeConfig>('nodeConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterNodeConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nodeCreationConfig = registerOutput<ClusterNodeCreationConfig>('nodeCreationConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterNodeCreationConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nodeLocations = registerOutput<List<String>>('nodeLocations');
    nodePoolAutoConfig = registerOutput<ClusterNodePoolAutoConfig>('nodePoolAutoConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterNodePoolAutoConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nodePoolDefaults = registerOutput<ClusterNodePoolDefaults>('nodePoolDefaults', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterNodePoolDefaults.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nodePools = registerOutput<List<Map<String, dynamic>>>('nodePools');
    nodeVersion = registerOutput<String>('nodeVersion');
    notificationConfig = registerOutput<ClusterNotificationConfig>('notificationConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterNotificationConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    operation = registerOutput<String>('operation');
    podAutoscaling = registerOutput<ClusterPodAutoscaling>('podAutoscaling', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterPodAutoscaling.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    podSecurityPolicyConfig = registerOutput<ClusterPodSecurityPolicyConfig?>('podSecurityPolicyConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterPodSecurityPolicyConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateClusterConfig = registerOutput<ClusterPrivateClusterConfig>('privateClusterConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterPrivateClusterConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateIpv6GoogleAccess = registerOutput<String>('privateIpv6GoogleAccess');
    project = registerOutput<String>('project');
    protectConfig = registerOutput<ClusterProtectConfig>('protectConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterProtectConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    rbacBindingConfig = registerOutput<ClusterRbacBindingConfig>('rbacBindingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterRbacBindingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    releaseChannel = registerOutput<ClusterReleaseChannel>('releaseChannel', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterReleaseChannel.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    removeDefaultNodePool = registerOutput<bool?>('removeDefaultNodePool');
    resourceLabels = registerOutput<Map<String, String>?>('resourceLabels');
    resourceUsageExportConfig = registerOutput<ClusterResourceUsageExportConfig?>('resourceUsageExportConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterResourceUsageExportConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    rollbackSafeUpgrade = registerOutput<ClusterRollbackSafeUpgrade?>('rollbackSafeUpgrade', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterRollbackSafeUpgrade.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    secretManagerConfig = registerOutput<ClusterSecretManagerConfig?>('secretManagerConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterSecretManagerConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    secretSyncConfig = registerOutput<ClusterSecretSyncConfig?>('secretSyncConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterSecretSyncConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    securityPostureConfig = registerOutput<ClusterSecurityPostureConfig>('securityPostureConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterSecurityPostureConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    selfLink = registerOutput<String>('selfLink');
    serviceExternalIpsConfig = registerOutput<ClusterServiceExternalIpsConfig>('serviceExternalIpsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterServiceExternalIpsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    servicesIpv4Cidr = registerOutput<String>('servicesIpv4Cidr');
    skipNodePoolRefresh = registerOutput<bool?>('skipNodePoolRefresh');
    subnetwork = registerOutput<String>('subnetwork');
    tpuConfig = registerOutput<ClusterTpuConfig>('tpuConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterTpuConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tpuIpv4CidrBlock = registerOutput<String>('tpuIpv4CidrBlock');
    userManagedKeysConfig = registerOutput<ClusterUserManagedKeysConfig?>('userManagedKeysConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterUserManagedKeysConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    verticalPodAutoscaling = registerOutput<ClusterVerticalPodAutoscaling>('verticalPodAutoscaling', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterVerticalPodAutoscaling.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    workloadAltsConfig = registerOutput<ClusterWorkloadAltsConfig>('workloadAltsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterWorkloadAltsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    workloadIdentityConfig = registerOutput<ClusterWorkloadIdentityConfig>('workloadIdentityConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterWorkloadIdentityConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
