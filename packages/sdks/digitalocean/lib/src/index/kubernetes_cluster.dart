import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_cluster_amd_gpu_device_metrics_exporter_plugin.dart';
import 'kubernetes_cluster_amd_gpu_device_plugin.dart';
import 'kubernetes_cluster_args.dart';
import 'kubernetes_cluster_control_plane_firewall.dart';
import 'kubernetes_cluster_maintenance_policy.dart';
import 'kubernetes_cluster_node_pool.dart';
import 'kubernetes_cluster_nvidia_gpu_device_plugin.dart';
import 'kubernetes_cluster_rdma_shared_device_plugin.dart';
import 'kubernetes_cluster_routing_agent.dart';
import 'kubernetes_cluster_state.dart';

/// Provides a DigitalOcean Kubernetes cluster resource. This can be used to create, delete, and modify clusters. For more information see the [official documentation](https://www.digitalocean.com/docs/kubernetes/).
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
///     version: "latest",
///     nodePool: {
///         name: "worker-pool",
///         size: "s-2vcpu-2gb",
///         nodeCount: 3,
///         taints: [{
///             key: "workloadKind",
///             value: "database",
///             effect: "NoSchedule",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// foo = digitalocean.KubernetesCluster("foo",
///     name="foo",
///     region=digitalocean.Region.NYC1,
///     version="latest",
///     node_pool={
///         "name": "worker-pool",
///         "size": "s-2vcpu-2gb",
///         "node_count": 3,
///         "taints": [{
///             "key": "workloadKind",
///             "value": "database",
///             "effect": "NoSchedule",
///         }],
///     })
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
///         Version = "latest",
///         NodePool = new DigitalOcean.Inputs.KubernetesClusterNodePoolArgs
///         {
///             Name = "worker-pool",
///             Size = "s-2vcpu-2gb",
///             NodeCount = 3,
///             Taints = new[]
///             {
///                 new DigitalOcean.Inputs.KubernetesClusterNodePoolTaintArgs
///                 {
///                     Key = "workloadKind",
///                     Value = "database",
///                     Effect = "NoSchedule",
///                 },
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
/// 		_, err := digitalocean.NewKubernetesCluster(ctx, "foo", &digitalocean.KubernetesClusterArgs{
/// 			Name:    pulumi.String("foo"),
/// 			Region:  pulumi.String(digitalocean.RegionNYC1),
/// 			Version: pulumi.String("latest"),
/// 			NodePool: &digitalocean.KubernetesClusterNodePoolArgs{
/// 				Name:      pulumi.String("worker-pool"),
/// 				Size:      pulumi.String("s-2vcpu-2gb"),
/// 				NodeCount: pulumi.Int(3),
/// 				Taints: digitalocean.KubernetesClusterNodePoolTaintArray{
/// 					&digitalocean.KubernetesClusterNodePoolTaintArgs{
/// 						Key:    pulumi.String("workloadKind"),
/// 						Value:  pulumi.String("database"),
/// 						Effect: pulumi.String("NoSchedule"),
/// 					},
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
///             .version("latest")
///             .nodePool(KubernetesClusterNodePoolArgs.builder()
///                 .name("worker-pool")
///                 .size("s-2vcpu-2gb")
///                 .nodeCount(3)
///                 .taints(KubernetesClusterNodePoolTaintArgs.builder()
///                     .key("workloadKind")
///                     .value("database")
///                     .effect("NoSchedule")
///                     .build())
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
///       version: latest
///       nodePool:
///         name: worker-pool
///         size: s-2vcpu-2gb
///         nodeCount: 3
///         taints:
///           - key: workloadKind
///             value: database
///             effect: NoSchedule
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
/// const foo = new digitalocean.KubernetesCluster("foo", {
///     name: "foo",
///     region: digitalocean.Region.NYC1,
///     version: "1.22.8-do.1",
///     nodePool: {
///         name: "autoscale-worker-pool",
///         size: "s-2vcpu-2gb",
///         autoScale: true,
///         minNodes: 1,
///         maxNodes: 5,
///     },
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
///         "name": "autoscale-worker-pool",
///         "size": "s-2vcpu-2gb",
///         "auto_scale": True,
///         "min_nodes": 1,
///         "max_nodes": 5,
///     })
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
///             Name = "autoscale-worker-pool",
///             Size = "s-2vcpu-2gb",
///             AutoScale = true,
///             MinNodes = 1,
///             MaxNodes = 5,
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
/// 		_, err := digitalocean.NewKubernetesCluster(ctx, "foo", &digitalocean.KubernetesClusterArgs{
/// 			Name:    pulumi.String("foo"),
/// 			Region:  pulumi.String(digitalocean.RegionNYC1),
/// 			Version: pulumi.String("1.22.8-do.1"),
/// 			NodePool: &digitalocean.KubernetesClusterNodePoolArgs{
/// 				Name:      pulumi.String("autoscale-worker-pool"),
/// 				Size:      pulumi.String("s-2vcpu-2gb"),
/// 				AutoScale: pulumi.Bool(true),
/// 				MinNodes:  pulumi.Int(1),
/// 				MaxNodes:  pulumi.Int(5),
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
///                 .name("autoscale-worker-pool")
///                 .size("s-2vcpu-2gb")
///                 .autoScale(true)
///                 .minNodes(1)
///                 .maxNodes(5)
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
///         name: autoscale-worker-pool
///         size: s-2vcpu-2gb
///         autoScale: true
///         minNodes: 1
///         maxNodes: 5
/// ```
///
///
/// Note that, currently, each node pool must always have at least one node and when using autoscaling the min_nodes must be greater than or equal to 1.
/// &gt; Autoscaling to zero (`min_nodes=0`) is in [private preview](https://docs.digitalocean.com/release-notes/kubernetes/#2025-01-07) and not available for public use.
///
/// ### Auto Upgrade Example
///
/// DigitalOcean Kubernetes clusters may also be configured to [auto upgrade](https://www.digitalocean.com/docs/kubernetes/how-to/upgrade-cluster/#automatically) patch versions. You may explicitly specify the maintenance window policy.
/// For example:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = digitalocean.getKubernetesVersions({
///     versionPrefix: "1.22.",
/// });
/// const foo = new digitalocean.KubernetesCluster("foo", {
///     name: "foo",
///     region: digitalocean.Region.NYC1,
///     autoUpgrade: true,
///     version: example.then(example => example.latestVersion),
///     maintenancePolicy: {
///         startTime: "04:00",
///         day: "sunday",
///     },
///     nodePool: {
///         name: "default",
///         size: "s-1vcpu-2gb",
///         nodeCount: 3,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.get_kubernetes_versions(version_prefix="1.22.")
/// foo = digitalocean.KubernetesCluster("foo",
///     name="foo",
///     region=digitalocean.Region.NYC1,
///     auto_upgrade=True,
///     version=example.latest_version,
///     maintenance_policy={
///         "start_time": "04:00",
///         "day": "sunday",
///     },
///     node_pool={
///         "name": "default",
///         "size": "s-1vcpu-2gb",
///         "node_count": 3,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = DigitalOcean.GetKubernetesVersions.Invoke(new()
///     {
///         VersionPrefix = "1.22.",
///     });
///
///     var foo = new DigitalOcean.KubernetesCluster("foo", new()
///     {
///         Name = "foo",
///         Region = DigitalOcean.Region.NYC1,
///         AutoUpgrade = true,
///         Version = example.Apply(getKubernetesVersionsResult => getKubernetesVersionsResult.LatestVersion),
///         MaintenancePolicy = new DigitalOcean.Inputs.KubernetesClusterMaintenancePolicyArgs
///         {
///             StartTime = "04:00",
///             Day = "sunday",
///         },
///         NodePool = new DigitalOcean.Inputs.KubernetesClusterNodePoolArgs
///         {
///             Name = "default",
///             Size = "s-1vcpu-2gb",
///             NodeCount = 3,
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
/// 		example, err := digitalocean.GetKubernetesVersions(ctx, &digitalocean.GetKubernetesVersionsArgs{
/// 			VersionPrefix: pulumi.StringRef("1.22."),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewKubernetesCluster(ctx, "foo", &digitalocean.KubernetesClusterArgs{
/// 			Name:        pulumi.String("foo"),
/// 			Region:      pulumi.String(digitalocean.RegionNYC1),
/// 			AutoUpgrade: pulumi.Bool(true),
/// 			Version:     pulumi.String(example.LatestVersion),
/// 			MaintenancePolicy: &digitalocean.KubernetesClusterMaintenancePolicyArgs{
/// 				StartTime: pulumi.String("04:00"),
/// 				Day:       pulumi.String("sunday"),
/// 			},
/// 			NodePool: &digitalocean.KubernetesClusterNodePoolArgs{
/// 				Name:      pulumi.String("default"),
/// 				Size:      pulumi.String("s-1vcpu-2gb"),
/// 				NodeCount: pulumi.Int(3),
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
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetKubernetesVersionsArgs;
/// import com.pulumi.digitalocean.KubernetesCluster;
/// import com.pulumi.digitalocean.KubernetesClusterArgs;
/// import com.pulumi.digitalocean.inputs.KubernetesClusterMaintenancePolicyArgs;
/// import com.pulumi.digitalocean.inputs.KubernetesClusterNodePoolArgs;
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
///         final var example = DigitaloceanFunctions.getKubernetesVersions(GetKubernetesVersionsArgs.builder()
///             .versionPrefix("1.22.")
///             .build());
///
///         var foo = new KubernetesCluster("foo", KubernetesClusterArgs.builder()
///             .name("foo")
///             .region("nyc1")
///             .autoUpgrade(true)
///             .version(example.latestVersion())
///             .maintenancePolicy(KubernetesClusterMaintenancePolicyArgs.builder()
///                 .startTime("04:00")
///                 .day("sunday")
///                 .build())
///             .nodePool(KubernetesClusterNodePoolArgs.builder()
///                 .name("default")
///                 .size("s-1vcpu-2gb")
///                 .nodeCount(3)
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
///       autoUpgrade: true
///       version: ${example.latestVersion}
///       maintenancePolicy:
///         startTime: 04:00
///         day: sunday
///       nodePool:
///         name: default
///         size: s-1vcpu-2gb
///         nodeCount: 3
/// variables:
///   example:
///     fn::invoke:
///       function: digitalocean:getKubernetesVersions
///       arguments:
///         versionPrefix: 1.22.
/// ```
///
///
/// Note that a data source is used to supply the version. This is needed to prevent configuration diff whenever a cluster is upgraded.
///
/// ### Kubernetes Terraform Provider Example
///
/// The cluster's kubeconfig is exported as an attribute allowing you to use it with
/// the Kubernetes Terraform provider.
///
/// &gt; When using interpolation to pass credentials from a `digitalocean.KubernetesCluster`
/// resource to the Kubernetes provider, the cluster resource generally should not
/// be created in the same Terraform module where Kubernetes provider resources are
/// also used. This can lead to unpredictable errors which are hard to debug and
/// diagnose. The root issue lies with the order in which Terraform itself evaluates
/// the provider blocks vs. actual resources.
///
/// When using the Kubernetes provider with a cluster created in a separate Terraform
/// module or configuration, use the `digitalocean.KubernetesCluster` data-source
/// to access the cluster's credentials. See here for a full example.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const example = digitalocean.getKubernetesCluster({
///     name: "prod-cluster-01",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example = digitalocean.get_kubernetes_cluster(name="prod-cluster-01")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = DigitalOcean.GetKubernetesCluster.Invoke(new()
///     {
///         Name = "prod-cluster-01",
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
/// 		_, err := digitalocean.LookupKubernetesCluster(ctx, &digitalocean.LookupKubernetesClusterArgs{
/// 			Name: "prod-cluster-01",
/// 		}, nil)
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
/// import com.pulumi.digitalocean.DigitaloceanFunctions;
/// import com.pulumi.digitalocean.inputs.GetKubernetesClusterArgs;
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
///         final var example = DigitaloceanFunctions.getKubernetesCluster(GetKubernetesClusterArgs.builder()
///             .name("prod-cluster-01")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: digitalocean:getKubernetesCluster
///       arguments:
///         name: prod-cluster-01
/// ```
///
///
/// ### Exec credential plugin
///
/// Another method to ensure that the Kubernetes provider is receiving valid credentials
/// is to use an exec plugin. In order to use use this approach, the DigitalOcean
/// CLI (`doctl`) must be present. `doctl` will renew the token if needed before
/// initializing the provider.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// ```
/// ```python
/// import pulumi
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
///
/// return await Deployment.RunAsync(() =>
/// {
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
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
///     }
/// }
/// ```
/// ```yaml
/// {}
/// ```
///
///
/// ## Import
///
/// Before importing a Kubernetes cluster, the cluster's default node pool must be tagged with
/// the `terraform:default-node-pool` tag. The provider will automatically add this tag if
/// the cluster only has a single node pool. Clusters with more than one node pool, however, will require
/// that you manually add the `terraform:default-node-pool` tag to the node pool that you intend to be
/// the default node pool.
///
/// Then the Kubernetes cluster and its default node pool can be imported using the cluster's `id`, e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/kubernetesCluster:KubernetesCluster mycluster 1b8b2100-0e9f-4e8f-ad78-9eb578c2a0af
/// ```
///
/// Additional node pools must be imported separately as `digitalocean.KubernetesCluster`
/// resources, e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/kubernetesCluster:KubernetesCluster mynodepool 9d76f410-9284-4436-9633-4066852442c8
/// ```
class KubernetesCluster extends pulumi.CustomResource {
  /// Block containing options for the AMD GPU device metrics exporter component.
  late final pulumi.Output<KubernetesClusterAmdGpuDeviceMetricsExporterPlugin> amdGpuDeviceMetricsExporterPlugin;
  /// Block containing options for the AMD GPU device plugin component. If not specified, the component will be enabled by default for clusters with AMD GPU nodes.
  late final pulumi.Output<KubernetesClusterAmdGpuDevicePlugin> amdGpuDevicePlugin;
  /// A boolean value indicating whether the cluster will be automatically upgraded to new patch releases during its maintenance window.
  late final pulumi.Output<bool?> autoUpgrade;
  /// Block containing options for cluster auto-scaling.
  late final pulumi.Output<List<Map<String, dynamic>>?> clusterAutoscalerConfigurations;
  /// The range of IP addresses in the overlay network of the Kubernetes cluster. For more information, see [here](https://docs.digitalocean.com/products/kubernetes/how-to/create-clusters/#create-with-vpc-native).
  late final pulumi.Output<String> clusterSubnet;
  /// The uniform resource name (URN) for the Kubernetes cluster.
  late final pulumi.Output<String> clusterUrn;
  /// A block representing the cluster's control plane firewall
  late final pulumi.Output<KubernetesClusterControlPlaneFirewall> controlPlaneFirewall;
  /// The date and time when the node was created.
  late final pulumi.Output<String> createdAt;
  /// **Use with caution.** When set to true, all associated DigitalOcean resources created via the Kubernetes API (load balancers, volumes, and volume snapshots) will be destroyed along with the cluster when it is destroyed.
  late final pulumi.Output<bool?> destroyAllAssociatedResources;
  /// The base URL of the API server on the Kubernetes master node.
  late final pulumi.Output<String> endpoint;
  /// Enable/disable the high availability control plane for a cluster. Once enabled for a cluster, high availability cannot be disabled. Default: false
  late final pulumi.Output<bool?> ha;
  /// The public IPv4 address of the Kubernetes master node. This will not be set if high availability is configured on the cluster (v1.21+)
  late final pulumi.Output<String> ipv4Address;
  /// A representation of the Kubernetes cluster's kubeconfig with the following attributes:
  late final pulumi.Output<List<Map<String, dynamic>>> kubeConfigs;
  /// The duration in seconds that the returned Kubernetes credentials will be valid. If not set or 0, the credentials will have a 7 day expiry.
  late final pulumi.Output<int?> kubeconfigExpireSeconds;
  /// A block representing the cluster's maintenance window. Updates will be applied within this window. If not specified, a default maintenance window will be chosen. `auto_upgrade` must be set to `true` for this to have an effect.
  late final pulumi.Output<KubernetesClusterMaintenancePolicy> maintenancePolicy;
  /// A name for the Kubernetes cluster.
  late final pulumi.Output<String> name;
  /// A block representing the cluster's default node pool. Additional node pools may be added to the cluster using the `digitalocean.KubernetesNodePool` resource. The following arguments may be specified:
  late final pulumi.Output<KubernetesClusterNodePool> nodePool;
  /// Block containing options for the NVIDIA GPU device plugin component. If not specified, the component will be enabled by default for clusters with NVIDIA GPU nodes.
  late final pulumi.Output<KubernetesClusterNvidiaGpuDevicePlugin> nvidiaGpuDevicePlugin;
  late final pulumi.Output<KubernetesClusterRdmaSharedDevicePlugin> rdmaSharedDevicePlugin;
  /// The slug identifier for the region where the Kubernetes cluster will be created.
  late final pulumi.Output<String> region;
  /// Enables or disables the DigitalOcean container registry integration for the cluster. This requires that a container registry has first been created for the account. Default: false
  late final pulumi.Output<bool?> registryIntegration;
  /// Block containing options for the routing-agent component. If not specified, the routing-agent component will not be installed in the cluster.
  late final pulumi.Output<KubernetesClusterRoutingAgent> routingAgent;
  /// The range of assignable IP addresses for services running in the Kubernetes cluster. For more information, see [here](https://docs.digitalocean.com/products/kubernetes/how-to/create-clusters/#create-with-vpc-native).
  late final pulumi.Output<String> serviceSubnet;
  /// A string indicating the current status of the individual node.
  late final pulumi.Output<String> status;
  /// Enable/disable surge upgrades for a cluster. Default: true
  late final pulumi.Output<bool?> surgeUpgrade;
  /// A list of tag names to be applied to the Kubernetes cluster.
  late final pulumi.Output<List<String>?> tags;
  /// The date and time when the node was last updated.
  late final pulumi.Output<String> updatedAt;
  /// The slug identifier for the version of Kubernetes used for the cluster. Use [doctl](https://github.com/digitalocean/doctl) to find the available versions `doctl kubernetes options versions`. (**Note:** A cluster may only be upgraded to newer versions in-place. If the version is decreased, a new resource will be created.)
  late final pulumi.Output<String> version;
  /// The ID of the VPC where the Kubernetes cluster will be located.
  late final pulumi.Output<String> vpcUuid;

  /// Creates a new [KubernetesCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KubernetesCluster]. {@macro pulumi_index_kubernetes_cluster_kubernetes_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KubernetesCluster(
    String name, {
    KubernetesClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/kubernetesCluster:KubernetesCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    amdGpuDeviceMetricsExporterPlugin = registerOutput<KubernetesClusterAmdGpuDeviceMetricsExporterPlugin>('amdGpuDeviceMetricsExporterPlugin', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KubernetesClusterAmdGpuDeviceMetricsExporterPlugin.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    amdGpuDevicePlugin = registerOutput<KubernetesClusterAmdGpuDevicePlugin>('amdGpuDevicePlugin', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KubernetesClusterAmdGpuDevicePlugin.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    autoUpgrade = registerOutput<bool?>('autoUpgrade');
    clusterAutoscalerConfigurations = registerOutput<List<Map<String, dynamic>>?>('clusterAutoscalerConfigurations');
    clusterSubnet = registerOutput<String>('clusterSubnet');
    clusterUrn = registerOutput<String>('clusterUrn');
    controlPlaneFirewall = registerOutput<KubernetesClusterControlPlaneFirewall>('controlPlaneFirewall', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KubernetesClusterControlPlaneFirewall.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    destroyAllAssociatedResources = registerOutput<bool?>('destroyAllAssociatedResources');
    endpoint = registerOutput<String>('endpoint');
    ha = registerOutput<bool?>('ha');
    ipv4Address = registerOutput<String>('ipv4Address');
    kubeConfigs = registerOutput<List<Map<String, dynamic>>>('kubeConfigs');
    kubeconfigExpireSeconds = registerOutput<int?>('kubeconfigExpireSeconds');
    maintenancePolicy = registerOutput<KubernetesClusterMaintenancePolicy>('maintenancePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KubernetesClusterMaintenancePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    nodePool = registerOutput<KubernetesClusterNodePool>('nodePool', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KubernetesClusterNodePool.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nvidiaGpuDevicePlugin = registerOutput<KubernetesClusterNvidiaGpuDevicePlugin>('nvidiaGpuDevicePlugin', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KubernetesClusterNvidiaGpuDevicePlugin.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    rdmaSharedDevicePlugin = registerOutput<KubernetesClusterRdmaSharedDevicePlugin>('rdmaSharedDevicePlugin', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KubernetesClusterRdmaSharedDevicePlugin.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    registryIntegration = registerOutput<bool?>('registryIntegration');
    routingAgent = registerOutput<KubernetesClusterRoutingAgent>('routingAgent', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KubernetesClusterRoutingAgent.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    serviceSubnet = registerOutput<String>('serviceSubnet');
    status = registerOutput<String>('status');
    surgeUpgrade = registerOutput<bool?>('surgeUpgrade');
    tags = registerOutput<List<String>?>('tags');
    updatedAt = registerOutput<String>('updatedAt');
    version = registerOutput<String>('version');
    vpcUuid = registerOutput<String>('vpcUuid');
  }

  /// Gets an existing [KubernetesCluster] resource's state with the given [name] and [id].
  static KubernetesCluster get(
    String name,
    pulumi.Input<String> id, {
    KubernetesClusterState? state,
  }) {
    return KubernetesCluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  KubernetesCluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/kubernetesCluster:KubernetesCluster',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    amdGpuDeviceMetricsExporterPlugin = registerOutput<KubernetesClusterAmdGpuDeviceMetricsExporterPlugin>('amdGpuDeviceMetricsExporterPlugin', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KubernetesClusterAmdGpuDeviceMetricsExporterPlugin.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    amdGpuDevicePlugin = registerOutput<KubernetesClusterAmdGpuDevicePlugin>('amdGpuDevicePlugin', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KubernetesClusterAmdGpuDevicePlugin.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    autoUpgrade = registerOutput<bool?>('autoUpgrade');
    clusterAutoscalerConfigurations = registerOutput<List<Map<String, dynamic>>?>('clusterAutoscalerConfigurations');
    clusterSubnet = registerOutput<String>('clusterSubnet');
    clusterUrn = registerOutput<String>('clusterUrn');
    controlPlaneFirewall = registerOutput<KubernetesClusterControlPlaneFirewall>('controlPlaneFirewall', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KubernetesClusterControlPlaneFirewall.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    destroyAllAssociatedResources = registerOutput<bool?>('destroyAllAssociatedResources');
    endpoint = registerOutput<String>('endpoint');
    ha = registerOutput<bool?>('ha');
    ipv4Address = registerOutput<String>('ipv4Address');
    kubeConfigs = registerOutput<List<Map<String, dynamic>>>('kubeConfigs');
    kubeconfigExpireSeconds = registerOutput<int?>('kubeconfigExpireSeconds');
    maintenancePolicy = registerOutput<KubernetesClusterMaintenancePolicy>('maintenancePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KubernetesClusterMaintenancePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    nodePool = registerOutput<KubernetesClusterNodePool>('nodePool', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KubernetesClusterNodePool.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nvidiaGpuDevicePlugin = registerOutput<KubernetesClusterNvidiaGpuDevicePlugin>('nvidiaGpuDevicePlugin', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KubernetesClusterNvidiaGpuDevicePlugin.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    rdmaSharedDevicePlugin = registerOutput<KubernetesClusterRdmaSharedDevicePlugin>('rdmaSharedDevicePlugin', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KubernetesClusterRdmaSharedDevicePlugin.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    registryIntegration = registerOutput<bool?>('registryIntegration');
    routingAgent = registerOutput<KubernetesClusterRoutingAgent>('routingAgent', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KubernetesClusterRoutingAgent.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    serviceSubnet = registerOutput<String>('serviceSubnet');
    status = registerOutput<String>('status');
    surgeUpgrade = registerOutput<bool?>('surgeUpgrade');
    tags = registerOutput<List<String>?>('tags');
    updatedAt = registerOutput<String>('updatedAt');
    version = registerOutput<String>('version');
    vpcUuid = registerOutput<String>('vpcUuid');
  }
}
