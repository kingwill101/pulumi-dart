import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_args.dart';
import 'cluster_cluster_config.dart';
import 'cluster_state.dart';
import 'cluster_virtual_cluster_config.dart';

/// Manages a Cloud Dataproc cluster resource within GCP.
///
/// * [API documentation](https://cloud.google.com/dataproc/docs/reference/rest/v1/projects.regions.clusters)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dataproc/docs)
///
///
/// !&gt; **Warning:** Due to limitations of the API, all arguments except
/// `labels`,`cluster_config.worker_config.num_instances` and `cluster_config.preemptible_worker_config.num_instances` are non-updatable. Changing `cluster_config.worker_config.min_num_instances` will be ignored. Changing others will cause recreation of the
/// whole cluster!
///
/// ## Example Usage
///
/// ### Basic
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const simplecluster = new gcp.dataproc.Cluster("simplecluster", {
///     name: "simplecluster",
///     region: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// simplecluster = gcp.dataproc.Cluster("simplecluster",
///     name="simplecluster",
///     region="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var simplecluster = new Gcp.Dataproc.Cluster("simplecluster", new()
///     {
///         Name = "simplecluster",
///         Region = "us-central1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataproc.NewCluster(ctx, "simplecluster", &dataproc.ClusterArgs{
/// 			Name:   pulumi.String("simplecluster"),
/// 			Region: pulumi.String("us-central1"),
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
/// import com.pulumi.gcp.dataproc.Cluster;
/// import com.pulumi.gcp.dataproc.ClusterArgs;
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
///         var simplecluster = new Cluster("simplecluster", ClusterArgs.builder()
///             .name("simplecluster")
///             .region("us-central1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   simplecluster:
///     type: gcp:dataproc:Cluster
///     properties:
///       name: simplecluster
///       region: us-central1
/// ```
///
///
/// ### Advanced
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
/// const mycluster = new gcp.dataproc.Cluster("mycluster", {
///     name: "mycluster",
///     region: "us-central1",
///     gracefulDecommissionTimeout: "120s",
///     labels: {
///         foo: "bar",
///     },
///     clusterConfig: {
///         stagingBucket: "dataproc-staging-bucket",
///         clusterTier: "CLUSTER_TIER_STANDARD",
///         masterConfig: {
///             numInstances: 1,
///             machineType: "e2-medium",
///             diskConfig: {
///                 bootDiskType: "pd-ssd",
///                 bootDiskSizeGb: 30,
///             },
///         },
///         workerConfig: {
///             numInstances: 2,
///             machineType: "e2-medium",
///             minCpuPlatform: "Intel Skylake",
///             diskConfig: {
///                 bootDiskSizeGb: 30,
///                 numLocalSsds: 1,
///             },
///         },
///         preemptibleWorkerConfig: {
///             numInstances: 0,
///         },
///         softwareConfig: {
///             imageVersion: "2.0.35-debian10",
///             overrideProperties: {
///                 "dataproc:dataproc.allow.zero.workers": "true",
///             },
///         },
///         gceClusterConfig: {
///             tags: [
///                 "foo",
///                 "bar",
///             ],
///             serviceAccount: _default.email,
///             serviceAccountScopes: ["cloud-platform"],
///         },
///         initializationActions: [{
///             script: "gs://dataproc-initialization-actions/stackdriver/stackdriver.sh",
///             timeoutSec: 500,
///         }],
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
/// mycluster = gcp.dataproc.Cluster("mycluster",
///     name="mycluster",
///     region="us-central1",
///     graceful_decommission_timeout="120s",
///     labels={
///         "foo": "bar",
///     },
///     cluster_config={
///         "staging_bucket": "dataproc-staging-bucket",
///         "cluster_tier": "CLUSTER_TIER_STANDARD",
///         "master_config": {
///             "num_instances": 1,
///             "machine_type": "e2-medium",
///             "disk_config": {
///                 "boot_disk_type": "pd-ssd",
///                 "boot_disk_size_gb": 30,
///             },
///         },
///         "worker_config": {
///             "num_instances": 2,
///             "machine_type": "e2-medium",
///             "min_cpu_platform": "Intel Skylake",
///             "disk_config": {
///                 "boot_disk_size_gb": 30,
///                 "num_local_ssds": 1,
///             },
///         },
///         "preemptible_worker_config": {
///             "num_instances": 0,
///         },
///         "software_config": {
///             "image_version": "2.0.35-debian10",
///             "override_properties": {
///                 "dataproc:dataproc.allow.zero.workers": "true",
///             },
///         },
///         "gce_cluster_config": {
///             "tags": [
///                 "foo",
///                 "bar",
///             ],
///             "service_account": default.email,
///             "service_account_scopes": ["cloud-platform"],
///         },
///         "initialization_actions": [{
///             "script": "gs://dataproc-initialization-actions/stackdriver/stackdriver.sh",
///             "timeout_sec": 500,
///         }],
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
///     var mycluster = new Gcp.Dataproc.Cluster("mycluster", new()
///     {
///         Name = "mycluster",
///         Region = "us-central1",
///         GracefulDecommissionTimeout = "120s",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         ClusterConfig = new Gcp.Dataproc.Inputs.ClusterClusterConfigArgs
///         {
///             StagingBucket = "dataproc-staging-bucket",
///             ClusterTier = "CLUSTER_TIER_STANDARD",
///             MasterConfig = new Gcp.Dataproc.Inputs.ClusterClusterConfigMasterConfigArgs
///             {
///                 NumInstances = 1,
///                 MachineType = "e2-medium",
///                 DiskConfig = new Gcp.Dataproc.Inputs.ClusterClusterConfigMasterConfigDiskConfigArgs
///                 {
///                     BootDiskType = "pd-ssd",
///                     BootDiskSizeGb = 30,
///                 },
///             },
///             WorkerConfig = new Gcp.Dataproc.Inputs.ClusterClusterConfigWorkerConfigArgs
///             {
///                 NumInstances = 2,
///                 MachineType = "e2-medium",
///                 MinCpuPlatform = "Intel Skylake",
///                 DiskConfig = new Gcp.Dataproc.Inputs.ClusterClusterConfigWorkerConfigDiskConfigArgs
///                 {
///                     BootDiskSizeGb = 30,
///                     NumLocalSsds = 1,
///                 },
///             },
///             PreemptibleWorkerConfig = new Gcp.Dataproc.Inputs.ClusterClusterConfigPreemptibleWorkerConfigArgs
///             {
///                 NumInstances = 0,
///             },
///             SoftwareConfig = new Gcp.Dataproc.Inputs.ClusterClusterConfigSoftwareConfigArgs
///             {
///                 ImageVersion = "2.0.35-debian10",
///                 OverrideProperties =
///                 {
///                     { "dataproc:dataproc.allow.zero.workers", "true" },
///                 },
///             },
///             GceClusterConfig = new Gcp.Dataproc.Inputs.ClusterClusterConfigGceClusterConfigArgs
///             {
///                 Tags = new[]
///                 {
///                     "foo",
///                     "bar",
///                 },
///                 ServiceAccount = @default.Email,
///                 ServiceAccountScopes = new[]
///                 {
///                     "cloud-platform",
///                 },
///             },
///             InitializationActions = new[]
///             {
///                 new Gcp.Dataproc.Inputs.ClusterClusterConfigInitializationActionArgs
///                 {
///                     Script = "gs://dataproc-initialization-actions/stackdriver/stackdriver.sh",
///                     TimeoutSec = 500,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
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
/// 		_, err = dataproc.NewCluster(ctx, "mycluster", &dataproc.ClusterArgs{
/// 			Name:                        pulumi.String("mycluster"),
/// 			Region:                      pulumi.String("us-central1"),
/// 			GracefulDecommissionTimeout: pulumi.String("120s"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			ClusterConfig: &dataproc.ClusterClusterConfigArgs{
/// 				StagingBucket: pulumi.String("dataproc-staging-bucket"),
/// 				ClusterTier:   pulumi.String("CLUSTER_TIER_STANDARD"),
/// 				MasterConfig: &dataproc.ClusterClusterConfigMasterConfigArgs{
/// 					NumInstances: pulumi.Int(1),
/// 					MachineType:  pulumi.String("e2-medium"),
/// 					DiskConfig: &dataproc.ClusterClusterConfigMasterConfigDiskConfigArgs{
/// 						BootDiskType:   pulumi.String("pd-ssd"),
/// 						BootDiskSizeGb: pulumi.Int(30),
/// 					},
/// 				},
/// 				WorkerConfig: &dataproc.ClusterClusterConfigWorkerConfigArgs{
/// 					NumInstances:   pulumi.Int(2),
/// 					MachineType:    pulumi.String("e2-medium"),
/// 					MinCpuPlatform: pulumi.String("Intel Skylake"),
/// 					DiskConfig: &dataproc.ClusterClusterConfigWorkerConfigDiskConfigArgs{
/// 						BootDiskSizeGb: pulumi.Int(30),
/// 						NumLocalSsds:   pulumi.Int(1),
/// 					},
/// 				},
/// 				PreemptibleWorkerConfig: &dataproc.ClusterClusterConfigPreemptibleWorkerConfigArgs{
/// 					NumInstances: pulumi.Int(0),
/// 				},
/// 				SoftwareConfig: &dataproc.ClusterClusterConfigSoftwareConfigArgs{
/// 					ImageVersion: pulumi.String("2.0.35-debian10"),
/// 					OverrideProperties: pulumi.StringMap{
/// 						"dataproc:dataproc.allow.zero.workers": pulumi.String("true"),
/// 					},
/// 				},
/// 				GceClusterConfig: &dataproc.ClusterClusterConfigGceClusterConfigArgs{
/// 					Tags: pulumi.StringArray{
/// 						pulumi.String("foo"),
/// 						pulumi.String("bar"),
/// 					},
/// 					ServiceAccount: _default.Email,
/// 					ServiceAccountScopes: pulumi.StringArray{
/// 						pulumi.String("cloud-platform"),
/// 					},
/// 				},
/// 				InitializationActions: dataproc.ClusterClusterConfigInitializationActionArray{
/// 					&dataproc.ClusterClusterConfigInitializationActionArgs{
/// 						Script:     pulumi.String("gs://dataproc-initialization-actions/stackdriver/stackdriver.sh"),
/// 						TimeoutSec: pulumi.Int(500),
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
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.dataproc.Cluster;
/// import com.pulumi.gcp.dataproc.ClusterArgs;
/// import com.pulumi.gcp.dataproc.inputs.ClusterClusterConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.ClusterClusterConfigMasterConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.ClusterClusterConfigMasterConfigDiskConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.ClusterClusterConfigWorkerConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.ClusterClusterConfigWorkerConfigDiskConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.ClusterClusterConfigPreemptibleWorkerConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.ClusterClusterConfigSoftwareConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.ClusterClusterConfigGceClusterConfigArgs;
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
///         var default_ = new Account("default", AccountArgs.builder()
///             .accountId("service-account-id")
///             .displayName("Service Account")
///             .build());
///
///         var mycluster = new Cluster("mycluster", ClusterArgs.builder()
///             .name("mycluster")
///             .region("us-central1")
///             .gracefulDecommissionTimeout("120s")
///             .labels(Map.of("foo", "bar"))
///             .clusterConfig(ClusterClusterConfigArgs.builder()
///                 .stagingBucket("dataproc-staging-bucket")
///                 .clusterTier("CLUSTER_TIER_STANDARD")
///                 .masterConfig(ClusterClusterConfigMasterConfigArgs.builder()
///                     .numInstances(1)
///                     .machineType("e2-medium")
///                     .diskConfig(ClusterClusterConfigMasterConfigDiskConfigArgs.builder()
///                         .bootDiskType("pd-ssd")
///                         .bootDiskSizeGb(30)
///                         .build())
///                     .build())
///                 .workerConfig(ClusterClusterConfigWorkerConfigArgs.builder()
///                     .numInstances(2)
///                     .machineType("e2-medium")
///                     .minCpuPlatform("Intel Skylake")
///                     .diskConfig(ClusterClusterConfigWorkerConfigDiskConfigArgs.builder()
///                         .bootDiskSizeGb(30)
///                         .numLocalSsds(1)
///                         .build())
///                     .build())
///                 .preemptibleWorkerConfig(ClusterClusterConfigPreemptibleWorkerConfigArgs.builder()
///                     .numInstances(0)
///                     .build())
///                 .softwareConfig(ClusterClusterConfigSoftwareConfigArgs.builder()
///                     .imageVersion("2.0.35-debian10")
///                     .overrideProperties(Map.of("dataproc:dataproc.allow.zero.workers", "true"))
///                     .build())
///                 .gceClusterConfig(ClusterClusterConfigGceClusterConfigArgs.builder()
///                     .tags(
///                         "foo",
///                         "bar")
///                     .serviceAccount(default_.email())
///                     .serviceAccountScopes("cloud-platform")
///                     .build())
///                 .initializationActions(ClusterClusterConfigInitializationActionArgs.builder()
///                     .script("gs://dataproc-initialization-actions/stackdriver/stackdriver.sh")
///                     .timeoutSec(500)
///                     .build())
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
///   mycluster:
///     type: gcp:dataproc:Cluster
///     properties:
///       name: mycluster
///       region: us-central1
///       gracefulDecommissionTimeout: 120s
///       labels:
///         foo: bar
///       clusterConfig:
///         stagingBucket: dataproc-staging-bucket
///         clusterTier: CLUSTER_TIER_STANDARD
///         masterConfig:
///           numInstances: 1
///           machineType: e2-medium
///           diskConfig:
///             bootDiskType: pd-ssd
///             bootDiskSizeGb: 30
///         workerConfig:
///           numInstances: 2
///           machineType: e2-medium
///           minCpuPlatform: Intel Skylake
///           diskConfig:
///             bootDiskSizeGb: 30
///             numLocalSsds: 1
///         preemptibleWorkerConfig:
///           numInstances: 0
///         softwareConfig:
///           imageVersion: 2.0.35-debian10
///           overrideProperties:
///             dataproc:dataproc.allow.zero.workers: 'true'
///         gceClusterConfig:
///           tags:
///             - foo
///             - bar
///           serviceAccount: ${default.email}
///           serviceAccountScopes:
///             - cloud-platform
///         initializationActions:
///           - script: gs://dataproc-initialization-actions/stackdriver/stackdriver.sh
///             timeoutSec: 500
/// ```
///
///
/// ### Using A GPU Accelerator
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const acceleratedCluster = new gcp.dataproc.Cluster("accelerated_cluster", {
///     name: "my-cluster-with-gpu",
///     region: "us-central1",
///     clusterConfig: {
///         gceClusterConfig: {
///             zone: "us-central1-a",
///         },
///         masterConfig: {
///             accelerators: [{
///                 acceleratorType: "nvidia-tesla-k80",
///                 acceleratorCount: 1,
///             }],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// accelerated_cluster = gcp.dataproc.Cluster("accelerated_cluster",
///     name="my-cluster-with-gpu",
///     region="us-central1",
///     cluster_config={
///         "gce_cluster_config": {
///             "zone": "us-central1-a",
///         },
///         "master_config": {
///             "accelerators": [{
///                 "accelerator_type": "nvidia-tesla-k80",
///                 "accelerator_count": 1,
///             }],
///         },
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
///     var acceleratedCluster = new Gcp.Dataproc.Cluster("accelerated_cluster", new()
///     {
///         Name = "my-cluster-with-gpu",
///         Region = "us-central1",
///         ClusterConfig = new Gcp.Dataproc.Inputs.ClusterClusterConfigArgs
///         {
///             GceClusterConfig = new Gcp.Dataproc.Inputs.ClusterClusterConfigGceClusterConfigArgs
///             {
///                 Zone = "us-central1-a",
///             },
///             MasterConfig = new Gcp.Dataproc.Inputs.ClusterClusterConfigMasterConfigArgs
///             {
///                 Accelerators = new[]
///                 {
///                     new Gcp.Dataproc.Inputs.ClusterClusterConfigMasterConfigAcceleratorArgs
///                     {
///                         AcceleratorType = "nvidia-tesla-k80",
///                         AcceleratorCount = 1,
///                     },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataproc.NewCluster(ctx, "accelerated_cluster", &dataproc.ClusterArgs{
/// 			Name:   pulumi.String("my-cluster-with-gpu"),
/// 			Region: pulumi.String("us-central1"),
/// 			ClusterConfig: &dataproc.ClusterClusterConfigArgs{
/// 				GceClusterConfig: &dataproc.ClusterClusterConfigGceClusterConfigArgs{
/// 					Zone: pulumi.String("us-central1-a"),
/// 				},
/// 				MasterConfig: &dataproc.ClusterClusterConfigMasterConfigArgs{
/// 					Accelerators: dataproc.ClusterClusterConfigMasterConfigAcceleratorArray{
/// 						&dataproc.ClusterClusterConfigMasterConfigAcceleratorArgs{
/// 							AcceleratorType:  pulumi.String("nvidia-tesla-k80"),
/// 							AcceleratorCount: pulumi.Int(1),
/// 						},
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
/// import com.pulumi.gcp.dataproc.Cluster;
/// import com.pulumi.gcp.dataproc.ClusterArgs;
/// import com.pulumi.gcp.dataproc.inputs.ClusterClusterConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.ClusterClusterConfigGceClusterConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.ClusterClusterConfigMasterConfigArgs;
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
///         var acceleratedCluster = new Cluster("acceleratedCluster", ClusterArgs.builder()
///             .name("my-cluster-with-gpu")
///             .region("us-central1")
///             .clusterConfig(ClusterClusterConfigArgs.builder()
///                 .gceClusterConfig(ClusterClusterConfigGceClusterConfigArgs.builder()
///                     .zone("us-central1-a")
///                     .build())
///                 .masterConfig(ClusterClusterConfigMasterConfigArgs.builder()
///                     .accelerators(ClusterClusterConfigMasterConfigAcceleratorArgs.builder()
///                         .acceleratorType("nvidia-tesla-k80")
///                         .acceleratorCount(1)
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   acceleratedCluster:
///     type: gcp:dataproc:Cluster
///     name: accelerated_cluster
///     properties:
///       name: my-cluster-with-gpu
///       region: us-central1
///       clusterConfig:
///         gceClusterConfig:
///           zone: us-central1-a
///         masterConfig:
///           accelerators:
///             - acceleratorType: nvidia-tesla-k80
///               acceleratorCount: '1'
/// ```
///
///
/// ## Import
///
/// This resource does not support import.
class Cluster extends pulumi.CustomResource {
  /// Allows you to configure various aspects of the cluster.
  /// Structure defined below.
  late final pulumi.Output<ClusterClusterConfig> clusterConfig;
  /// The list of labels (key/value pairs) to be applied to
  /// instances in the cluster. GCP generates some itself including `goog-dataproc-cluster-name`
  /// which is the name of the cluster.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  late final pulumi.Output<String?> gracefulDecommissionTimeout;
  /// The list of the labels (key/value pairs) configured on the resource and to be applied to instances in the cluster.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The name of the cluster, unique within the project and
  /// zone.
  ///
  /// - - -
  late final pulumi.Output<String> name;
  /// The ID of the project in which the `cluster` will exist. If it
  /// is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The region in which the cluster and associated nodes will be created in.
  /// Defaults to `global`.
  late final pulumi.Output<String?> region;
  /// Allows you to configure a virtual Dataproc on GKE cluster.
  /// Structure defined below.
  late final pulumi.Output<ClusterVirtualClusterConfig> virtualClusterConfig;

  /// Creates a new [Cluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cluster]. {@macro pulumi_dataproc_cluster_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataproc/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    clusterConfig = registerOutput<ClusterClusterConfig>('clusterConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterClusterConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    gracefulDecommissionTimeout = registerOutput<String?>('gracefulDecommissionTimeout');
    labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    region = registerOutput<String?>('region');
    virtualClusterConfig = registerOutput<ClusterVirtualClusterConfig>('virtualClusterConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterVirtualClusterConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
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
          'gcp:dataproc/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    clusterConfig = registerOutput<ClusterClusterConfig>('clusterConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterClusterConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    gracefulDecommissionTimeout = registerOutput<String?>('gracefulDecommissionTimeout');
    labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    region = registerOutput<String?>('region');
    virtualClusterConfig = registerOutput<ClusterVirtualClusterConfig>('virtualClusterConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterVirtualClusterConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
