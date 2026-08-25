import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_args.dart';
import 'cluster_compute_resource.dart';
import 'cluster_network_resource.dart';
import 'cluster_orchestrator.dart';
import 'cluster_state.dart';
import 'cluster_storage_resource.dart';

/// A collection of virtual machines and connected resources forming a high-performance computing cluster capable of running large-scale, tightly coupled workloads. A cluster combines a set a compute resources that perform computations, storage resources that contain inputs and store outputs, an orchestrator that is responsible for assigning jobs to compute resources, and network resources that connect everything together.
///
///
///
/// ## Example Usage
///
/// ### Hypercomputecluster Cluster Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const projectId = project.then(project => project.name);
/// const cluster = new gcp.hypercomputecluster.Cluster("cluster", {
///     clusterId: "mycluster1",
///     location: "us-central1",
///     description: "Cluster Director instance created through Terraform",
///     networkResources: [{
///         id: "network1",
///         config: {
///             newNetwork: {
///                 description: "Network one",
///                 network: projectId.then(projectId => `projects/${projectId}/global/networks/cluster-net1`),
///             },
///         },
///     }],
///     computeResources: [{
///         id: "compute1",
///         config: {
///             newOnDemandInstances: {
///                 machineType: "n2-standard-2",
///                 zone: "us-central1-a",
///             },
///         },
///     }],
///     orchestrator: {
///         slurm: {
///             loginNodes: {
///                 machineType: "n2-standard-2",
///                 count: "1",
///                 zone: "us-central1-a",
///                 bootDisk: {
///                     sizeGb: "100",
///                     type: "pd-balanced",
///                 },
///             },
///             nodeSets: [{
///                 id: "nodeset1",
///                 computeId: "compute1",
///                 staticNodeCount: "1",
///                 computeInstance: {
///                     bootDisk: {
///                         sizeGb: "100",
///                         type: "pd-balanced",
///                     },
///                 },
///             }],
///             partitions: [{
///                 id: "partition1",
///                 nodeSetIds: ["nodeset1"],
///             }],
///             defaultPartition: "partition1",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// project_id = project.name
/// cluster = gcp.hypercomputecluster.Cluster("cluster",
///     cluster_id="mycluster1",
///     location="us-central1",
///     description="Cluster Director instance created through Terraform",
///     network_resources=[{
///         "id": "network1",
///         "config": {
///             "new_network": {
///                 "description": "Network one",
///                 "network": f"projects/{project_id}/global/networks/cluster-net1",
///             },
///         },
///     }],
///     compute_resources=[{
///         "id": "compute1",
///         "config": {
///             "new_on_demand_instances": {
///                 "machine_type": "n2-standard-2",
///                 "zone": "us-central1-a",
///             },
///         },
///     }],
///     orchestrator={
///         "slurm": {
///             "login_nodes": {
///                 "machine_type": "n2-standard-2",
///                 "count": "1",
///                 "zone": "us-central1-a",
///                 "boot_disk": {
///                     "size_gb": "100",
///                     "type": "pd-balanced",
///                 },
///             },
///             "node_sets": [{
///                 "id": "nodeset1",
///                 "compute_id": "compute1",
///                 "static_node_count": "1",
///                 "compute_instance": {
///                     "boot_disk": {
///                         "size_gb": "100",
///                         "type": "pd-balanced",
///                     },
///                 },
///             }],
///             "partitions": [{
///                 "id": "partition1",
///                 "node_set_ids": ["nodeset1"],
///             }],
///             "default_partition": "partition1",
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
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var projectId = project.Apply(getProjectResult => getProjectResult.Name);
///
///     var cluster = new Gcp.HyperComputeCluster.Cluster("cluster", new()
///     {
///         ClusterId = "mycluster1",
///         Location = "us-central1",
///         Description = "Cluster Director instance created through Terraform",
///         NetworkResources = new[]
///         {
///             new Gcp.HyperComputeCluster.Inputs.ClusterNetworkResourceArgs
///             {
///                 Id = "network1",
///                 Config = new Gcp.HyperComputeCluster.Inputs.ClusterNetworkResourceConfigArgs
///                 {
///                     NewNetwork = new Gcp.HyperComputeCluster.Inputs.ClusterNetworkResourceConfigNewNetworkArgs
///                     {
///                         Description = "Network one",
///                         Network = projectId.Apply(projectId => $"projects/{projectId}/global/networks/cluster-net1"),
///                     },
///                 },
///             },
///         },
///         ComputeResources = new[]
///         {
///             new Gcp.HyperComputeCluster.Inputs.ClusterComputeResourceArgs
///             {
///                 Id = "compute1",
///                 Config = new Gcp.HyperComputeCluster.Inputs.ClusterComputeResourceConfigArgs
///                 {
///                     NewOnDemandInstances = new Gcp.HyperComputeCluster.Inputs.ClusterComputeResourceConfigNewOnDemandInstancesArgs
///                     {
///                         MachineType = "n2-standard-2",
///                         Zone = "us-central1-a",
///                     },
///                 },
///             },
///         },
///         Orchestrator = new Gcp.HyperComputeCluster.Inputs.ClusterOrchestratorArgs
///         {
///             Slurm = new Gcp.HyperComputeCluster.Inputs.ClusterOrchestratorSlurmArgs
///             {
///                 LoginNodes = new Gcp.HyperComputeCluster.Inputs.ClusterOrchestratorSlurmLoginNodesArgs
///                 {
///                     MachineType = "n2-standard-2",
///                     Count = "1",
///                     Zone = "us-central1-a",
///                     BootDisk = new Gcp.HyperComputeCluster.Inputs.ClusterOrchestratorSlurmLoginNodesBootDiskArgs
///                     {
///                         SizeGb = "100",
///                         Type = "pd-balanced",
///                     },
///                 },
///                 NodeSets = new[]
///                 {
///                     new Gcp.HyperComputeCluster.Inputs.ClusterOrchestratorSlurmNodeSetArgs
///                     {
///                         Id = "nodeset1",
///                         ComputeId = "compute1",
///                         StaticNodeCount = "1",
///                         ComputeInstance = new Gcp.HyperComputeCluster.Inputs.ClusterOrchestratorSlurmNodeSetComputeInstanceArgs
///                         {
///                             BootDisk = new Gcp.HyperComputeCluster.Inputs.ClusterOrchestratorSlurmNodeSetComputeInstanceBootDiskArgs
///                             {
///                                 SizeGb = "100",
///                                 Type = "pd-balanced",
///                             },
///                         },
///                     },
///                 },
///                 Partitions = new[]
///                 {
///                     new Gcp.HyperComputeCluster.Inputs.ClusterOrchestratorSlurmPartitionArgs
///                     {
///                         Id = "partition1",
///                         NodeSetIds = new[]
///                         {
///                             "nodeset1",
///                         },
///                     },
///                 },
///                 DefaultPartition = "partition1",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/hypercomputecluster"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		projectId := project.Name
/// 		_, err = hypercomputecluster.NewCluster(ctx, "cluster", &hypercomputecluster.ClusterArgs{
/// 			ClusterId:   pulumi.String("mycluster1"),
/// 			Location:    pulumi.String("us-central1"),
/// 			Description: pulumi.String("Cluster Director instance created through Terraform"),
/// 			NetworkResources: hypercomputecluster.ClusterNetworkResourceArray{
/// 				&hypercomputecluster.ClusterNetworkResourceArgs{
/// 					Id: pulumi.String("network1"),
/// 					Config: &hypercomputecluster.ClusterNetworkResourceConfigArgs{
/// 						NewNetwork: &hypercomputecluster.ClusterNetworkResourceConfigNewNetworkArgs{
/// 							Description: pulumi.String("Network one"),
/// 							Network:     pulumi.Sprintf("projects/%v/global/networks/cluster-net1", projectId),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ComputeResources: hypercomputecluster.ClusterComputeResourceArray{
/// 				&hypercomputecluster.ClusterComputeResourceArgs{
/// 					Id: pulumi.String("compute1"),
/// 					Config: &hypercomputecluster.ClusterComputeResourceConfigArgs{
/// 						NewOnDemandInstances: &hypercomputecluster.ClusterComputeResourceConfigNewOnDemandInstancesArgs{
/// 							MachineType: pulumi.String("n2-standard-2"),
/// 							Zone:        pulumi.String("us-central1-a"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Orchestrator: &hypercomputecluster.ClusterOrchestratorArgs{
/// 				Slurm: &hypercomputecluster.ClusterOrchestratorSlurmArgs{
/// 					LoginNodes: &hypercomputecluster.ClusterOrchestratorSlurmLoginNodesArgs{
/// 						MachineType: pulumi.String("n2-standard-2"),
/// 						Count:       pulumi.String("1"),
/// 						Zone:        pulumi.String("us-central1-a"),
/// 						BootDisk: &hypercomputecluster.ClusterOrchestratorSlurmLoginNodesBootDiskArgs{
/// 							SizeGb: pulumi.String("100"),
/// 							Type:   pulumi.String("pd-balanced"),
/// 						},
/// 					},
/// 					NodeSets: hypercomputecluster.ClusterOrchestratorSlurmNodeSetArray{
/// 						&hypercomputecluster.ClusterOrchestratorSlurmNodeSetArgs{
/// 							Id:              pulumi.String("nodeset1"),
/// 							ComputeId:       pulumi.String("compute1"),
/// 							StaticNodeCount: pulumi.String("1"),
/// 							ComputeInstance: &hypercomputecluster.ClusterOrchestratorSlurmNodeSetComputeInstanceArgs{
/// 								BootDisk: &hypercomputecluster.ClusterOrchestratorSlurmNodeSetComputeInstanceBootDiskArgs{
/// 									SizeGb: pulumi.String("100"),
/// 									Type:   pulumi.String("pd-balanced"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					Partitions: hypercomputecluster.ClusterOrchestratorSlurmPartitionArray{
/// 						&hypercomputecluster.ClusterOrchestratorSlurmPartitionArgs{
/// 							Id: pulumi.String("partition1"),
/// 							NodeSetIds: pulumi.StringArray{
/// 								pulumi.String("nodeset1"),
/// 							},
/// 						},
/// 					},
/// 					DefaultPartition: pulumi.String("partition1"),
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
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// resource "gcp_hypercomputecluster_cluster" "cluster" {
///   cluster_id  = "mycluster1"
///   location    = "us-central1"
///   description = "Cluster Director instance created through Terraform"
///   network_resources {
///     id = "network1"
///     config = {
///       new_network = {
///         description = "Network one"
///         network     ="projects/${local.projectId}/global/networks/cluster-net1"
///       }
///     }
///   }
///   compute_resources {
///     id = "compute1"
///     config = {
///       new_on_demand_instances = {
///         machine_type = "n2-standard-2"
///         zone         = "us-central1-a"
///       }
///     }
///   }
///   orchestrator = {
///     slurm = {
///       login_nodes = {
///         machine_type = "n2-standard-2"
///         count        = 1
///         zone         = "us-central1-a"
///         boot_disk = {
///           size_gb = "100"
///           type    = "pd-balanced"
///         }
///       }
///       node_sets = [{
///         "id"              = "nodeset1"
///         "computeId"       = "compute1"
///         "staticNodeCount" = 1
///         "computeInstance" = {
///           "bootDisk" = {
///             "sizeGb" = "100"
///             "type"   = "pd-balanced"
///           }
///         }
///       }]
///       partitions = [{
///         "id"         = "partition1"
///         "nodeSetIds" = ["nodeset1"]
///       }]
///       default_partition = "partition1"
///     }
///   }
/// }
/// locals {
///   projectId = data.gcp_organizations_getproject.project.name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.hypercomputecluster.Cluster;
/// import com.pulumi.gcp.hypercomputecluster.ClusterArgs;
/// import com.pulumi.gcp.hypercomputecluster.inputs.ClusterNetworkResourceArgs;
/// import com.pulumi.gcp.hypercomputecluster.inputs.ClusterNetworkResourceConfigArgs;
/// import com.pulumi.gcp.hypercomputecluster.inputs.ClusterNetworkResourceConfigNewNetworkArgs;
/// import com.pulumi.gcp.hypercomputecluster.inputs.ClusterComputeResourceArgs;
/// import com.pulumi.gcp.hypercomputecluster.inputs.ClusterComputeResourceConfigArgs;
/// import com.pulumi.gcp.hypercomputecluster.inputs.ClusterComputeResourceConfigNewOnDemandInstancesArgs;
/// import com.pulumi.gcp.hypercomputecluster.inputs.ClusterOrchestratorArgs;
/// import com.pulumi.gcp.hypercomputecluster.inputs.ClusterOrchestratorSlurmArgs;
/// import com.pulumi.gcp.hypercomputecluster.inputs.ClusterOrchestratorSlurmLoginNodesArgs;
/// import com.pulumi.gcp.hypercomputecluster.inputs.ClusterOrchestratorSlurmLoginNodesBootDiskArgs;
/// import com.pulumi.gcp.hypercomputecluster.inputs.ClusterOrchestratorSlurmNodeSetArgs;
/// import com.pulumi.gcp.hypercomputecluster.inputs.ClusterOrchestratorSlurmNodeSetComputeInstanceArgs;
/// import com.pulumi.gcp.hypercomputecluster.inputs.ClusterOrchestratorSlurmNodeSetComputeInstanceBootDiskArgs;
/// import com.pulumi.gcp.hypercomputecluster.inputs.ClusterOrchestratorSlurmPartitionArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         final var projectId = project.name();
///
///         var cluster = new Cluster("cluster", ClusterArgs.builder()
///             .clusterId("mycluster1")
///             .location("us-central1")
///             .description("Cluster Director instance created through Terraform")
///             .networkResources(ClusterNetworkResourceArgs.builder()
///                 .id("network1")
///                 .config(ClusterNetworkResourceConfigArgs.builder()
///                     .newNetwork(ClusterNetworkResourceConfigNewNetworkArgs.builder()
///                         .description("Network one")
///                         .network(String.format("projects/%s/global/networks/cluster-net1", projectId))
///                         .build())
///                     .build())
///                 .build())
///             .computeResources(ClusterComputeResourceArgs.builder()
///                 .id("compute1")
///                 .config(ClusterComputeResourceConfigArgs.builder()
///                     .newOnDemandInstances(ClusterComputeResourceConfigNewOnDemandInstancesArgs.builder()
///                         .machineType("n2-standard-2")
///                         .zone("us-central1-a")
///                         .build())
///                     .build())
///                 .build())
///             .orchestrator(ClusterOrchestratorArgs.builder()
///                 .slurm(ClusterOrchestratorSlurmArgs.builder()
///                     .loginNodes(ClusterOrchestratorSlurmLoginNodesArgs.builder()
///                         .machineType("n2-standard-2")
///                         .count("1")
///                         .zone("us-central1-a")
///                         .bootDisk(ClusterOrchestratorSlurmLoginNodesBootDiskArgs.builder()
///                             .sizeGb("100")
///                             .type("pd-balanced")
///                             .build())
///                         .build())
///                     .nodeSets(ClusterOrchestratorSlurmNodeSetArgs.builder()
///                         .id("nodeset1")
///                         .computeId("compute1")
///                         .staticNodeCount("1")
///                         .computeInstance(ClusterOrchestratorSlurmNodeSetComputeInstanceArgs.builder()
///                             .bootDisk(ClusterOrchestratorSlurmNodeSetComputeInstanceBootDiskArgs.builder()
///                                 .sizeGb("100")
///                                 .type("pd-balanced")
///                                 .build())
///                             .build())
///                         .build())
///                     .partitions(ClusterOrchestratorSlurmPartitionArgs.builder()
///                         .id("partition1")
///                         .nodeSetIds("nodeset1")
///                         .build())
///                     .defaultPartition("partition1")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cluster:
///     type: gcp:hypercomputecluster:Cluster
///     properties:
///       clusterId: mycluster1
///       location: us-central1
///       description: Cluster Director instance created through Terraform
///       networkResources:
///         - id: network1
///           config:
///             newNetwork:
///               description: Network one
///               network: projects/${projectId}/global/networks/cluster-net1
///       computeResources:
///         - id: compute1
///           config:
///             newOnDemandInstances:
///               machineType: n2-standard-2
///               zone: us-central1-a
///       orchestrator:
///         slurm:
///           loginNodes:
///             machineType: n2-standard-2
///             count: 1
///             zone: us-central1-a
///             bootDisk:
///               sizeGb: '100'
///               type: pd-balanced
///           nodeSets:
///             - id: nodeset1
///               computeId: compute1
///               staticNodeCount: 1
///               computeInstance:
///                 bootDisk:
///                   sizeGb: '100'
///                   type: pd-balanced
///           partitions:
///             - id: partition1
///               nodeSetIds:
///                 - nodeset1
///           defaultPartition: partition1
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
///   projectId: ${project.name}
/// ```
///
///
/// ## Import
///
/// Cluster can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/clusters/{{cluster_id}}`
/// * `{{project}}/{{location}}/{{cluster_id}}`
/// * `{{location}}/{{cluster_id}}`
///
///
/// When using the `pulumi import` command, Cluster can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:hypercomputecluster/cluster:Cluster default projects/{{project}}/locations/{{location}}/clusters/{{cluster_id}}
/// $ pulumi import gcp:hypercomputecluster/cluster:Cluster default {{project}}/{{location}}/{{cluster_id}}
/// $ pulumi import gcp:hypercomputecluster/cluster:Cluster default {{location}}/{{cluster_id}}
/// ```
class Cluster extends pulumi.CustomResource {
  /// ID of the cluster to create. Must start with a lowercase letter,
  /// use only lowercase letters and numbers, and be at most 10 characters long.
  late final pulumi.Output<String> clusterId;
  /// Compute resources available to the cluster. Keys specify the ID of the
  /// compute resource by which it can be referenced elsewhere, and must conform
  /// to [RFC-1034](https://datatracker.ietf.org/doc/html/rfc1034) (lower-case,
  /// alphanumeric, and at most 63 characters).
  /// Structure is documented below.
  late final pulumi.Output<List<ClusterComputeResource>?> computeResources;
  /// Time that the cluster was originally created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// User-provided description of the cluster.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// [Labels](https://cloud.google.com/compute/docs/labeling-resources) applied
  /// to the cluster. Labels can be used to organize clusters and to filter them
  /// in queries.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;
  /// Identifier. [Relative resource name](https://google.aip.dev/122) of the cluster, in the
  /// format `projects/{project}/locations/{location}/clusters/{cluster}`.
  late final pulumi.Output<String> name;
  /// Network resources available to the cluster. Must contain at most one value.
  /// Keys specify the ID of the network resource by which it can be referenced
  /// elsewhere, and must conform to
  /// [RFC-1034](https://datatracker.ietf.org/doc/html/rfc1034) (lower-case,
  /// alphanumeric, and at most 63 characters).
  /// Structure is documented below.
  late final pulumi.Output<List<ClusterNetworkResource>> networkResources;
  /// The component responsible for scheduling and running workloads on the
  /// cluster as well as providing the user interface for interacting with the
  /// cluster at runtime.
  /// Structure is documented below.
  late final pulumi.Output<ClusterOrchestrator?> orchestrator;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Indicates whether changes to the cluster are currently in flight. If this
  /// is `true`, then the current state might not match the cluster's intended
  /// state.
  late final pulumi.Output<bool> reconciling;
  /// Storage resources available to the cluster. Keys specify the ID of the
  /// storage resource by which it can be referenced elsewhere, and must conform
  /// to [RFC-1034](https://datatracker.ietf.org/doc/html/rfc1034) (lower-case,
  /// alphanumeric, and at most 63 characters).
  /// Structure is documented below.
  late final pulumi.Output<List<ClusterStorageResource>?> storageResources;
  /// Time that the cluster was most recently updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Cluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cluster]. {@macro pulumi_hypercomputecluster_cluster_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:hypercomputecluster/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    clusterId = registerOutput<String>('clusterId');
    computeResources = registerOutput<List<ClusterComputeResource>?>('computeResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ClusterComputeResource>(guardedValue, (value) => ClusterComputeResource.fromMap((value as Map).cast<String, dynamic>())); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkResources = registerOutput<List<ClusterNetworkResource>>('networkResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ClusterNetworkResource>(guardedValue, (value) => ClusterNetworkResource.fromMap((value as Map).cast<String, dynamic>())); });
    orchestrator = registerOutput<ClusterOrchestrator?>('orchestrator', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterOrchestrator.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    reconciling = registerOutput<bool>('reconciling');
    storageResources = registerOutput<List<ClusterStorageResource>?>('storageResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ClusterStorageResource>(guardedValue, (value) => ClusterStorageResource.fromMap((value as Map).cast<String, dynamic>())); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [Cluster] resource's state with the given [name] and [id].
  static Cluster get(
    String name,
    pulumi.Input<String> id, {
    ClusterState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Cluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Cluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:hypercomputecluster/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    clusterId = registerOutput<String>('clusterId');
    computeResources = registerOutput<List<ClusterComputeResource>?>('computeResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ClusterComputeResource>(guardedValue, (value) => ClusterComputeResource.fromMap((value as Map).cast<String, dynamic>())); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkResources = registerOutput<List<ClusterNetworkResource>>('networkResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ClusterNetworkResource>(guardedValue, (value) => ClusterNetworkResource.fromMap((value as Map).cast<String, dynamic>())); });
    orchestrator = registerOutput<ClusterOrchestrator?>('orchestrator', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterOrchestrator.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    reconciling = registerOutput<bool>('reconciling');
    storageResources = registerOutput<List<ClusterStorageResource>?>('storageResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ClusterStorageResource>(guardedValue, (value) => ClusterStorageResource.fromMap((value as Map).cast<String, dynamic>())); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [Cluster] resource.
  Cluster.reference(String urn)
    : super(
        'gcp:hypercomputecluster/cluster:Cluster',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    clusterId = registerOutput<String>('clusterId');
    computeResources = registerOutput<List<ClusterComputeResource>?>('computeResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ClusterComputeResource>(guardedValue, (value) => ClusterComputeResource.fromMap((value as Map).cast<String, dynamic>())); });
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkResources = registerOutput<List<ClusterNetworkResource>>('networkResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ClusterNetworkResource>(guardedValue, (value) => ClusterNetworkResource.fromMap((value as Map).cast<String, dynamic>())); });
    orchestrator = registerOutput<ClusterOrchestrator?>('orchestrator', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterOrchestrator.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    reconciling = registerOutput<bool>('reconciling');
    storageResources = registerOutput<List<ClusterStorageResource>?>('storageResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ClusterStorageResource>(guardedValue, (value) => ClusterStorageResource.fromMap((value as Map).cast<String, dynamic>())); });
    updateTime = registerOutput<String>('updateTime');
  }
}
