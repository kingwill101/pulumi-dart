import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_connection_args.dart';
import 'vpn_connection_detail.dart';
import 'vpn_connection_state.dart';
import 'vpn_connection_vpc_project.dart';

/// A VPN connection
///
///
/// To get more information about VpnConnection, see:
///
/// * [API documentation](https://cloud.google.com/distributed-cloud/edge/latest/docs/reference/container/rest/v1/projects.locations.vpnConnections)
/// * How-to Guides
/// * [Google Distributed Cloud Edge](https://cloud.google.com/distributed-cloud/edge/latest/docs)
///
/// ## Example Usage
///
/// ### Edgecontainer Vpn Connection
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const cluster = new gcp.edgecontainer.Cluster("cluster", {
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
/// });
/// const nodePool = new gcp.edgecontainer.NodePool("node_pool", {
///     name: "nodepool-1",
///     cluster: cluster.name,
///     location: "us-central1",
///     nodeLocation: "us-central1-edge-example-edgesite",
///     nodeCount: 3,
/// });
/// const vpc = new gcp.compute.Network("vpc", {name: "example-vpc"});
/// const _default = new gcp.edgecontainer.VpnConnection("default", {
///     name: "vpn-connection-1",
///     location: "us-central1",
///     cluster: pulumi.all([project, cluster.name]).apply(([project, name]) => `projects/${project.number}/locations/us-east1/clusters/${name}`),
///     vpc: vpc.name,
///     enableHighAvailability: true,
///     labels: {
///         my_key: "my_val",
///         other_key: "other_val",
///     },
/// }, {
///     dependsOn: [nodePool],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// cluster = gcp.edgecontainer.Cluster("cluster",
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
///     })
/// node_pool = gcp.edgecontainer.NodePool("node_pool",
///     name="nodepool-1",
///     cluster=cluster.name,
///     location="us-central1",
///     node_location="us-central1-edge-example-edgesite",
///     node_count=3)
/// vpc = gcp.compute.Network("vpc", name="example-vpc")
/// default = gcp.edgecontainer.VpnConnection("default",
///     name="vpn-connection-1",
///     location="us-central1",
///     cluster=cluster.name.apply(lambda name: f"projects/{project.number}/locations/us-east1/clusters/{name}"),
///     vpc=vpc.name,
///     enable_high_availability=True,
///     labels={
///         "my_key": "my_val",
///         "other_key": "other_val",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[node_pool]))
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
///     var cluster = new Gcp.EdgeContainer.Cluster("cluster", new()
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
///     });
///
///     var nodePool = new Gcp.EdgeContainer.NodePool("node_pool", new()
///     {
///         Name = "nodepool-1",
///         Cluster = cluster.Name,
///         Location = "us-central1",
///         NodeLocation = "us-central1-edge-example-edgesite",
///         NodeCount = 3,
///     });
///
///     var vpc = new Gcp.Compute.Network("vpc", new()
///     {
///         Name = "example-vpc",
///     });
///
///     var @default = new Gcp.EdgeContainer.VpnConnection("default", new()
///     {
///         Name = "vpn-connection-1",
///         Location = "us-central1",
///         Cluster = Output.Tuple(project, cluster.Name).Apply(values =>
///         {
///             var project = values.Item1;
///             var name = values.Item2;
///             return $"projects/{project.Apply(getProjectResult => getProjectResult.Number)}/locations/us-east1/clusters/{name}";
///         }),
///         Vpc = vpc.Name,
///         EnableHighAvailability = true,
///         Labels =
///         {
///             { "my_key", "my_val" },
///             { "other_key", "other_val" },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             nodePool,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
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
/// 		cluster, err := edgecontainer.NewCluster(ctx, "cluster", &edgecontainer.ClusterArgs{
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
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		nodePool, err := edgecontainer.NewNodePool(ctx, "node_pool", &edgecontainer.NodePoolArgs{
/// 			Name:         pulumi.String("nodepool-1"),
/// 			Cluster:      cluster.Name,
/// 			Location:     pulumi.String("us-central1"),
/// 			NodeLocation: pulumi.String("us-central1-edge-example-edgesite"),
/// 			NodeCount:    pulumi.Int(3),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vpc, err := compute.NewNetwork(ctx, "vpc", &compute.NetworkArgs{
/// 			Name: pulumi.String("example-vpc"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = edgecontainer.NewVpnConnection(ctx, "default", &edgecontainer.VpnConnectionArgs{
/// 			Name:     pulumi.String("vpn-connection-1"),
/// 			Location: pulumi.String("us-central1"),
/// 			Cluster: cluster.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("projects/%v/locations/us-east1/clusters/%v", project.Number, name), nil
/// 			}).(pulumi.StringOutput),
/// 			Vpc:                    vpc.Name,
/// 			EnableHighAvailability: pulumi.Bool(true),
/// 			Labels: pulumi.StringMap{
/// 				"my_key":    pulumi.String("my_val"),
/// 				"other_key": pulumi.String("other_val"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			nodePool,
/// 		}))
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
/// resource "gcp_edgecontainer_cluster" "cluster" {
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
/// }
/// resource "gcp_edgecontainer_nodepool" "node_pool" {
///   name          = "nodepool-1"
///   cluster       = gcp_edgecontainer_cluster.cluster.name
///   location      = "us-central1"
///   node_location = "us-central1-edge-example-edgesite"
///   node_count    = 3
/// }
/// resource "gcp_edgecontainer_vpnconnection" "default" {
///   depends_on               = [gcp_edgecontainer_nodepool.node_pool]
///   name                     = "vpn-connection-1"
///   location                 = "us-central1"
///   cluster                  ="projects/${data.gcp_organizations_getproject.project.number}/locations/us-east1/clusters/${gcp_edgecontainer_cluster.cluster.name}"
///   vpc                      = gcp_compute_network.vpc.name
///   enable_high_availability = true
///   labels = {
///     "my_key"    = "my_val"
///     "other_key" = "other_val"
///   }
/// }
/// resource "gcp_compute_network" "vpc" {
///   name = "example-vpc"
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
/// import com.pulumi.gcp.edgecontainer.NodePool;
/// import com.pulumi.gcp.edgecontainer.NodePoolArgs;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.edgecontainer.VpnConnection;
/// import com.pulumi.gcp.edgecontainer.VpnConnectionArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var cluster = new Cluster("cluster", ClusterArgs.builder()
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
///             .build());
///
///         var nodePool = new NodePool("nodePool", NodePoolArgs.builder()
///             .name("nodepool-1")
///             .cluster(cluster.name())
///             .location("us-central1")
///             .nodeLocation("us-central1-edge-example-edgesite")
///             .nodeCount(3)
///             .build());
///
///         var vpc = new Network("vpc", NetworkArgs.builder()
///             .name("example-vpc")
///             .build());
///
///         var default_ = new VpnConnection("default", VpnConnectionArgs.builder()
///             .name("vpn-connection-1")
///             .location("us-central1")
///             .cluster(cluster.name().applyValue(_name -> String.format("projects/%s/locations/us-east1/clusters/%s", project.number(),_name)))
///             .vpc(vpc.name())
///             .enableHighAvailability(true)
///             .labels(Map.ofEntries(
///                 Map.entry("my_key", "my_val"),
///                 Map.entry("other_key", "other_val")
///             ))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(nodePool)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cluster:
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
///   nodePool:
///     type: gcp:edgecontainer:NodePool
///     name: node_pool
///     properties:
///       name: nodepool-1
///       cluster: ${cluster.name}
///       location: us-central1
///       nodeLocation: us-central1-edge-example-edgesite
///       nodeCount: 3
///   default:
///     type: gcp:edgecontainer:VpnConnection
///     properties:
///       name: vpn-connection-1
///       location: us-central1
///       cluster: projects/${project.number}/locations/us-east1/clusters/${cluster.name}
///       vpc: ${vpc.name}
///       enableHighAvailability: true
///       labels:
///         my_key: my_val
///         other_key: other_val
///     options:
///       dependsOn:
///         - ${nodePool}
///   vpc:
///     type: gcp:compute:Network
///     properties:
///       name: example-vpc
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
/// VpnConnection can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/vpnConnections/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, VpnConnection can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:edgecontainer/vpnConnection:VpnConnection default projects/{{project}}/locations/{{location}}/vpnConnections/{{name}}
/// $ pulumi import gcp:edgecontainer/vpnConnection:VpnConnection default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:edgecontainer/vpnConnection:VpnConnection default {{location}}/{{name}}
/// ```
class VpnConnection extends pulumi.CustomResource {
  /// The canonical Cluster name to connect to. It is in the form of projects/{project}/locations/{location}/clusters/{cluster}.
  late final pulumi.Output<String> cluster;
  /// The time when the VPN connection was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A nested object resource.
  /// Structure is documented below.
  late final pulumi.Output<List<VpnConnectionDetail>> details;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Whether this VPN connection has HA enabled on cluster side. If enabled, when creating VPN connection we will attempt to use 2 ANG floating IPs.
  late final pulumi.Output<bool> enableHighAvailability;
  /// Labels associated with this resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// Google Cloud Platform location.
  late final pulumi.Output<String> location;
  /// The resource name of VPN connection
  late final pulumi.Output<String> name;
  /// NAT gateway IP, or WAN IP address. If a customer has multiple NAT IPs, the customer needs to configure NAT such that only one external IP maps to the GMEC Anthos cluster.
  /// This is empty if NAT is not used.
  late final pulumi.Output<String?> natGatewayIp;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The VPN connection Cloud Router name.
  late final pulumi.Output<String?> router;
  /// The time when the VPN connection was last updated.
  late final pulumi.Output<String> updateTime;
  /// The network ID of VPC to connect to.
  late final pulumi.Output<String?> vpc;
  /// Project detail of the VPC network. Required if VPC is in a different project than the cluster project.
  /// Structure is documented below.
  late final pulumi.Output<VpnConnectionVpcProject?> vpcProject;

  /// Creates a new [VpnConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpnConnection]. {@macro pulumi_edgecontainer_vpn_connection_vpn_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpnConnection(
    String name, {
    VpnConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:edgecontainer/vpnConnection:VpnConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    cluster = registerOutput<String>('cluster');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    details = registerOutput<List<VpnConnectionDetail>>('details', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<VpnConnectionDetail>(guardedValue, (value) => VpnConnectionDetail.fromMap((value as Map).cast<String, dynamic>())); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    enableHighAvailability = registerOutput<bool>('enableHighAvailability');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    natGatewayIp = registerOutput<String?>('natGatewayIp');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    router = registerOutput<String?>('router');
    updateTime = registerOutput<String>('updateTime');
    vpc = registerOutput<String?>('vpc');
    vpcProject = registerOutput<VpnConnectionVpcProject?>('vpcProject', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VpnConnectionVpcProject.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [VpnConnection] resource's state with the given [name] and [id].
  static VpnConnection get(
    String name,
    pulumi.Input<String> id, {
    VpnConnectionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return VpnConnection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  VpnConnection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:edgecontainer/vpnConnection:VpnConnection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cluster = registerOutput<String>('cluster');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    details = registerOutput<List<VpnConnectionDetail>>('details', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<VpnConnectionDetail>(guardedValue, (value) => VpnConnectionDetail.fromMap((value as Map).cast<String, dynamic>())); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    enableHighAvailability = registerOutput<bool>('enableHighAvailability');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    natGatewayIp = registerOutput<String?>('natGatewayIp');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    router = registerOutput<String?>('router');
    updateTime = registerOutput<String>('updateTime');
    vpc = registerOutput<String?>('vpc');
    vpcProject = registerOutput<VpnConnectionVpcProject?>('vpcProject', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VpnConnectionVpcProject.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [VpnConnection] resource.
  VpnConnection.reference(String urn)
    : super(
        'gcp:edgecontainer/vpnConnection:VpnConnection',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    cluster = registerOutput<String>('cluster');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    details = registerOutput<List<VpnConnectionDetail>>('details', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<VpnConnectionDetail>(guardedValue, (value) => VpnConnectionDetail.fromMap((value as Map).cast<String, dynamic>())); });
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    enableHighAvailability = registerOutput<bool>('enableHighAvailability');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    natGatewayIp = registerOutput<String?>('natGatewayIp');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    router = registerOutput<String?>('router');
    updateTime = registerOutput<String>('updateTime');
    vpc = registerOutput<String?>('vpc');
    vpcProject = registerOutput<VpnConnectionVpcProject?>('vpcProject', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VpnConnectionVpcProject.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
