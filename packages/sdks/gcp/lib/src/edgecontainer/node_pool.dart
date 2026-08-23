import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_pool_args.dart';
import 'node_pool_local_disk_encryption.dart';
import 'node_pool_node_config.dart';
import 'node_pool_state.dart';

/// "A set of Kubernetes nodes in a cluster with common configuration and specification."
///
///
/// To get more information about NodePool, see:
///
/// * [API documentation](https://cloud.google.com/distributed-cloud/edge/latest/docs/reference/container/rest/v1/projects.locations.clusters.nodePools)
/// * How-to Guides
/// * [Google Distributed Cloud Edge](https://cloud.google.com/distributed-cloud/edge/latest/docs)
///
/// ## Example Usage
///
/// ### Edgecontainer Local Control Plane Node Pool
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const _default = new gcp.edgecontainer.Cluster("default", {
///     name: "default",
///     location: "us-central1",
///     authorization: {
///         adminUsers: {
///             username: "admin@hashicorptest.com",
///         },
///     },
///     networking: {
///         clusterIpv4CidrBlocks: ["10.0.0.0/16"],
///         servicesIpv4CidrBlocks: ["10.1.0.0/16"],
///     },
///     fleet: {
///         project: project.then(project => `projects/${project.number}`),
///     },
///     externalLoadBalancerIpv4AddressPools: ["10.100.0.0-10.100.0.10"],
///     controlPlane: {
///         local: {
///             nodeLocation: "us-central1-edge-example-edgesite",
///             nodeCount: 1,
///             machineFilter: "machine-name",
///             sharedDeploymentPolicy: "ALLOWED",
///         },
///     },
/// });
/// const defaultNodePool = new gcp.edgecontainer.NodePool("default", {
///     name: "nodepool-1",
///     cluster: cluster.name,
///     location: "us-central1",
///     nodeLocation: "us-central1-edge-example-edgesite",
///     nodeCount: 3,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// default = gcp.edgecontainer.Cluster("default",
///     name="default",
///     location="us-central1",
///     authorization={
///         "admin_users": {
///             "username": "admin@hashicorptest.com",
///         },
///     },
///     networking={
///         "cluster_ipv4_cidr_blocks": ["10.0.0.0/16"],
///         "services_ipv4_cidr_blocks": ["10.1.0.0/16"],
///     },
///     fleet={
///         "project": f"projects/{project.number}",
///     },
///     external_load_balancer_ipv4_address_pools=["10.100.0.0-10.100.0.10"],
///     control_plane={
///         "local": {
///             "node_location": "us-central1-edge-example-edgesite",
///             "node_count": 1,
///             "machine_filter": "machine-name",
///             "shared_deployment_policy": "ALLOWED",
///         },
///     })
/// default_node_pool = gcp.edgecontainer.NodePool("default",
///     name="nodepool-1",
///     cluster=cluster["name"],
///     location="us-central1",
///     node_location="us-central1-edge-example-edgesite",
///     node_count=3)
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
///     var @default = new Gcp.EdgeContainer.Cluster("default", new()
///     {
///         Name = "default",
///         Location = "us-central1",
///         Authorization = new Gcp.EdgeContainer.Inputs.ClusterAuthorizationArgs
///         {
///             AdminUsers = new Gcp.EdgeContainer.Inputs.ClusterAuthorizationAdminUsersArgs
///             {
///                 Username = "admin@hashicorptest.com",
///             },
///         },
///         Networking = new Gcp.EdgeContainer.Inputs.ClusterNetworkingArgs
///         {
///             ClusterIpv4CidrBlocks = new[]
///             {
///                 "10.0.0.0/16",
///             },
///             ServicesIpv4CidrBlocks = new[]
///             {
///                 "10.1.0.0/16",
///             },
///         },
///         Fleet = new Gcp.EdgeContainer.Inputs.ClusterFleetArgs
///         {
///             Project = $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}",
///         },
///         ExternalLoadBalancerIpv4AddressPools = new[]
///         {
///             "10.100.0.0-10.100.0.10",
///         },
///         ControlPlane = new Gcp.EdgeContainer.Inputs.ClusterControlPlaneArgs
///         {
///             Local = new Gcp.EdgeContainer.Inputs.ClusterControlPlaneLocalArgs
///             {
///                 NodeLocation = "us-central1-edge-example-edgesite",
///                 NodeCount = 1,
///                 MachineFilter = "machine-name",
///                 SharedDeploymentPolicy = "ALLOWED",
///             },
///         },
///     });
///
///     var defaultNodePool = new Gcp.EdgeContainer.NodePool("default", new()
///     {
///         Name = "nodepool-1",
///         Cluster = cluster.Name,
///         Location = "us-central1",
///         NodeLocation = "us-central1-edge-example-edgesite",
///         NodeCount = 3,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/edgecontainer"
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
/// 		_, err = edgecontainer.NewCluster(ctx, "default", &edgecontainer.ClusterArgs{
/// 			Name:     pulumi.String("default"),
/// 			Location: pulumi.String("us-central1"),
/// 			Authorization: &edgecontainer.ClusterAuthorizationArgs{
/// 				AdminUsers: &edgecontainer.ClusterAuthorizationAdminUsersArgs{
/// 					Username: pulumi.String("admin@hashicorptest.com"),
/// 				},
/// 			},
/// 			Networking: &edgecontainer.ClusterNetworkingArgs{
/// 				ClusterIpv4CidrBlocks: pulumi.StringArray{
/// 					pulumi.String("10.0.0.0/16"),
/// 				},
/// 				ServicesIpv4CidrBlocks: pulumi.StringArray{
/// 					pulumi.String("10.1.0.0/16"),
/// 				},
/// 			},
/// 			Fleet: &edgecontainer.ClusterFleetArgs{
/// 				Project: pulumi.Sprintf("projects/%v", project.Number),
/// 			},
/// 			ExternalLoadBalancerIpv4AddressPools: pulumi.StringArray{
/// 				pulumi.String("10.100.0.0-10.100.0.10"),
/// 			},
/// 			ControlPlane: &edgecontainer.ClusterControlPlaneArgs{
/// 				Local: &edgecontainer.ClusterControlPlaneLocalArgs{
/// 					NodeLocation:           pulumi.String("us-central1-edge-example-edgesite"),
/// 					NodeCount:              pulumi.Int(1),
/// 					MachineFilter:          pulumi.String("machine-name"),
/// 					SharedDeploymentPolicy: pulumi.String("ALLOWED"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = edgecontainer.NewNodePool(ctx, "default", &edgecontainer.NodePoolArgs{
/// 			Name:         pulumi.String("nodepool-1"),
/// 			Cluster:      pulumi.Any(cluster.Name),
/// 			Location:     pulumi.String("us-central1"),
/// 			NodeLocation: pulumi.String("us-central1-edge-example-edgesite"),
/// 			NodeCount:    pulumi.Int(3),
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
/// resource "gcp_edgecontainer_cluster" "default" {
///   name     = "default"
///   location = "us-central1"
///   authorization = {
///     admin_users = {
///       username = "admin@hashicorptest.com"
///     }
///   }
///   networking = {
///     cluster_ipv4_cidr_blocks  = ["10.0.0.0/16"]
///     services_ipv4_cidr_blocks = ["10.1.0.0/16"]
///   }
///   fleet = {
///     project ="projects/${data.gcp_organizations_getproject.project.number}"
///   }
///   external_load_balancer_ipv4_address_pools = ["10.100.0.0-10.100.0.10"]
///   control_plane = {
///     local = {
///       node_location            = "us-central1-edge-example-edgesite"
///       node_count               = 1
///       machine_filter           = "machine-name"
///       shared_deployment_policy = "ALLOWED"
///     }
///   }
/// }
/// resource "gcp_edgecontainer_nodepool" "default" {
///   name          = "nodepool-1"
///   cluster       = cluster.name
///   location      = "us-central1"
///   node_location = "us-central1-edge-example-edgesite"
///   node_count    = 3
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
/// import com.pulumi.gcp.edgecontainer.Cluster;
/// import com.pulumi.gcp.edgecontainer.ClusterArgs;
/// import com.pulumi.gcp.edgecontainer.inputs.ClusterAuthorizationArgs;
/// import com.pulumi.gcp.edgecontainer.inputs.ClusterAuthorizationAdminUsersArgs;
/// import com.pulumi.gcp.edgecontainer.inputs.ClusterNetworkingArgs;
/// import com.pulumi.gcp.edgecontainer.inputs.ClusterFleetArgs;
/// import com.pulumi.gcp.edgecontainer.inputs.ClusterControlPlaneArgs;
/// import com.pulumi.gcp.edgecontainer.inputs.ClusterControlPlaneLocalArgs;
/// import com.pulumi.gcp.edgecontainer.NodePool;
/// import com.pulumi.gcp.edgecontainer.NodePoolArgs;
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
///         var default_ = new Cluster("default", ClusterArgs.builder()
///             .name("default")
///             .location("us-central1")
///             .authorization(ClusterAuthorizationArgs.builder()
///                 .adminUsers(ClusterAuthorizationAdminUsersArgs.builder()
///                     .username("admin@hashicorptest.com")
///                     .build())
///                 .build())
///             .networking(ClusterNetworkingArgs.builder()
///                 .clusterIpv4CidrBlocks("10.0.0.0/16")
///                 .servicesIpv4CidrBlocks("10.1.0.0/16")
///                 .build())
///             .fleet(ClusterFleetArgs.builder()
///                 .project(String.format("projects/%s", project.number()))
///                 .build())
///             .externalLoadBalancerIpv4AddressPools("10.100.0.0-10.100.0.10")
///             .controlPlane(ClusterControlPlaneArgs.builder()
///                 .local(ClusterControlPlaneLocalArgs.builder()
///                     .nodeLocation("us-central1-edge-example-edgesite")
///                     .nodeCount(1)
///                     .machineFilter("machine-name")
///                     .sharedDeploymentPolicy("ALLOWED")
///                     .build())
///                 .build())
///             .build());
///
///         var defaultNodePool = new NodePool("defaultNodePool", NodePoolArgs.builder()
///             .name("nodepool-1")
///             .cluster(cluster.get("name"))
///             .location("us-central1")
///             .nodeLocation("us-central1-edge-example-edgesite")
///             .nodeCount(3)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:edgecontainer:Cluster
///     properties:
///       name: default
///       location: us-central1
///       authorization:
///         adminUsers:
///           username: admin@hashicorptest.com
///       networking:
///         clusterIpv4CidrBlocks:
///           - 10.0.0.0/16
///         servicesIpv4CidrBlocks:
///           - 10.1.0.0/16
///       fleet:
///         project: projects/${project.number}
///       externalLoadBalancerIpv4AddressPools:
///         - 10.100.0.0-10.100.0.10
///       controlPlane:
///         local:
///           nodeLocation: us-central1-edge-example-edgesite
///           nodeCount: 1
///           machineFilter: machine-name
///           sharedDeploymentPolicy: ALLOWED
///   defaultNodePool:
///     type: gcp:edgecontainer:NodePool
///     name: default
///     properties:
///       name: nodepool-1
///       cluster: ${cluster.name}
///       location: us-central1
///       nodeLocation: us-central1-edge-example-edgesite
///       nodeCount: 3
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// NodePool can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/clusters/{{cluster}}/nodePools/{{name}}`
/// * `{{project}}/{{location}}/{{cluster}}/{{name}}`
/// * `{{location}}/{{cluster}}/{{name}}`
///
///
/// When using the `pulumi import` command, NodePool can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:edgecontainer/nodePool:NodePool default projects/{{project}}/locations/{{location}}/clusters/{{cluster}}/nodePools/{{name}}
/// $ pulumi import gcp:edgecontainer/nodePool:NodePool default {{project}}/{{location}}/{{cluster}}/{{name}}
/// $ pulumi import gcp:edgecontainer/nodePool:NodePool default {{location}}/{{cluster}}/{{name}}
/// ```
class NodePool extends pulumi.CustomResource {
  /// The name of the target Distributed Cloud Edge Cluster.
  late final pulumi.Output<String> cluster;
  /// The time when the node pool was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Labels associated with this resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Local disk encryption options. This field is only used when enabling CMEK support.
  /// Structure is documented below.
  late final pulumi.Output<NodePoolLocalDiskEncryption?> localDiskEncryption;
  /// The location of the resource.
  late final pulumi.Output<String> location;
  /// Only machines matching this filter will be allowed to join the node pool.
  /// The filtering language accepts strings like "name=&lt;name&gt;", and is
  /// documented in more detail in [AIP-160](https://google.aip.dev/160).
  late final pulumi.Output<String> machineFilter;
  /// The resource name of the node pool.
  late final pulumi.Output<String> name;
  /// Configuration for each node in the NodePool
  /// Structure is documented below.
  late final pulumi.Output<NodePoolNodeConfig> nodeConfig;
  /// The number of nodes in the pool.
  late final pulumi.Output<int> nodeCount;
  /// Name of the Google Distributed Cloud Edge zone where this node pool will be created. For example: `us-central1-edge-customer-a`.
  late final pulumi.Output<String> nodeLocation;
  /// The lowest release version among all worker nodes.
  late final pulumi.Output<String> nodeVersion;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The time when the node pool was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [NodePool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NodePool]. {@macro pulumi_edgecontainer_node_pool_node_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NodePool(
    String name, {
    NodePoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:edgecontainer/nodePool:NodePool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cluster = registerOutput<String>('cluster');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    localDiskEncryption = registerOutput<NodePoolLocalDiskEncryption?>('localDiskEncryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodePoolLocalDiskEncryption.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    machineFilter = registerOutput<String>('machineFilter');
    this.name = registerOutput<String>('name');
    nodeConfig = registerOutput<NodePoolNodeConfig>('nodeConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodePoolNodeConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nodeCount = registerOutput<int>('nodeCount');
    nodeLocation = registerOutput<String>('nodeLocation');
    nodeVersion = registerOutput<String>('nodeVersion');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    updateTime = registerOutput<String>('updateTime');
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
          'gcp:edgecontainer/nodePool:NodePool',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cluster = registerOutput<String>('cluster');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    localDiskEncryption = registerOutput<NodePoolLocalDiskEncryption?>('localDiskEncryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodePoolLocalDiskEncryption.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    machineFilter = registerOutput<String>('machineFilter');
    this.name = registerOutput<String>('name');
    nodeConfig = registerOutput<NodePoolNodeConfig>('nodeConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NodePoolNodeConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nodeCount = registerOutput<int>('nodeCount');
    nodeLocation = registerOutput<String>('nodeLocation');
    nodeVersion = registerOutput<String>('nodeVersion');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    updateTime = registerOutput<String>('updateTime');
  }
}
