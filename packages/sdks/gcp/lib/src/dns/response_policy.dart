import 'package:pulumi/pulumi.dart' as pulumi;
import 'response_policy_args.dart';
import 'response_policy_gke_cluster.dart';
import 'response_policy_network.dart';
import 'response_policy_state.dart';

/// A Response Policy is a collection of selectors that apply to queries
/// made against one or more Virtual Private Cloud networks.
///
///
///
/// ## Example Usage
///
/// ### Dns Response Policy Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const network_1 = new gcp.compute.Network("network-1", {
///     name: "network-1",
///     autoCreateSubnetworks: false,
/// });
/// const network_2 = new gcp.compute.Network("network-2", {
///     name: "network-2",
///     autoCreateSubnetworks: false,
/// });
/// const subnetwork_1 = new gcp.compute.Subnetwork("subnetwork-1", {
///     name: network_1.name,
///     network: network_1.name,
///     ipCidrRange: "10.0.36.0/24",
///     region: "us-central1",
///     privateIpGoogleAccess: true,
///     secondaryIpRanges: [
///         {
///             rangeName: "pod",
///             ipCidrRange: "10.0.0.0/19",
///         },
///         {
///             rangeName: "svc",
///             ipCidrRange: "10.0.32.0/22",
///         },
///     ],
/// });
/// const cluster_1 = new gcp.container.Cluster("cluster-1", {
///     name: "cluster-1",
///     location: "us-central1-c",
///     initialNodeCount: 1,
///     networkingMode: "VPC_NATIVE",
///     defaultSnatStatus: {
///         disabled: true,
///     },
///     network: network_1.name,
///     subnetwork: subnetwork_1.name,
///     privateClusterConfig: {
///         enablePrivateEndpoint: true,
///         enablePrivateNodes: true,
///         masterIpv4CidrBlock: "10.42.0.0/28",
///         masterGlobalAccessConfig: {
///             enabled: true,
///         },
///     },
///     masterAuthorizedNetworksConfig: {},
///     ipAllocationPolicy: {
///         clusterSecondaryRangeName: subnetwork_1.secondaryIpRanges[0].rangeName,
///         servicesSecondaryRangeName: subnetwork_1.secondaryIpRanges[1].rangeName,
///     },
///     deletionProtection: true,
/// });
/// const example_response_policy = new gcp.dns.ResponsePolicy("example-response-policy", {
///     responsePolicyName: "example-response-policy",
///     networks: [
///         {
///             networkUrl: network_1.id,
///         },
///         {
///             networkUrl: network_2.id,
///         },
///     ],
///     gkeClusters: [{
///         gkeClusterName: cluster_1.id,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network_1 = gcp.compute.Network("network-1",
///     name="network-1",
///     auto_create_subnetworks=False)
/// network_2 = gcp.compute.Network("network-2",
///     name="network-2",
///     auto_create_subnetworks=False)
/// subnetwork_1 = gcp.compute.Subnetwork("subnetwork-1",
///     name=network_1.name,
///     network=network_1.name,
///     ip_cidr_range="10.0.36.0/24",
///     region="us-central1",
///     private_ip_google_access=True,
///     secondary_ip_ranges=[
///         {
///             "range_name": "pod",
///             "ip_cidr_range": "10.0.0.0/19",
///         },
///         {
///             "range_name": "svc",
///             "ip_cidr_range": "10.0.32.0/22",
///         },
///     ])
/// cluster_1 = gcp.container.Cluster("cluster-1",
///     name="cluster-1",
///     location="us-central1-c",
///     initial_node_count=1,
///     networking_mode="VPC_NATIVE",
///     default_snat_status={
///         "disabled": True,
///     },
///     network=network_1.name,
///     subnetwork=subnetwork_1.name,
///     private_cluster_config={
///         "enable_private_endpoint": True,
///         "enable_private_nodes": True,
///         "master_ipv4_cidr_block": "10.42.0.0/28",
///         "master_global_access_config": {
///             "enabled": True,
///         },
///     },
///     master_authorized_networks_config={},
///     ip_allocation_policy={
///         "cluster_secondary_range_name": subnetwork_1.secondary_ip_ranges[0].range_name,
///         "services_secondary_range_name": subnetwork_1.secondary_ip_ranges[1].range_name,
///     },
///     deletion_protection=True)
/// example_response_policy = gcp.dns.ResponsePolicy("example-response-policy",
///     response_policy_name="example-response-policy",
///     networks=[
///         {
///             "network_url": network_1.id,
///         },
///         {
///             "network_url": network_2.id,
///         },
///     ],
///     gke_clusters=[{
///         "gke_cluster_name": cluster_1.id,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var network_1 = new Gcp.Compute.Network("network-1", new()
///     {
///         Name = "network-1",
///         AutoCreateSubnetworks = false,
///     });
///
///     var network_2 = new Gcp.Compute.Network("network-2", new()
///     {
///         Name = "network-2",
///         AutoCreateSubnetworks = false,
///     });
///
///     var subnetwork_1 = new Gcp.Compute.Subnetwork("subnetwork-1", new()
///     {
///         Name = network_1.Name,
///         Network = network_1.Name,
///         IpCidrRange = "10.0.36.0/24",
///         Region = "us-central1",
///         PrivateIpGoogleAccess = true,
///         SecondaryIpRanges = new[]
///         {
///             new Gcp.Compute.Inputs.SubnetworkSecondaryIpRangeArgs
///             {
///                 RangeName = "pod",
///                 IpCidrRange = "10.0.0.0/19",
///             },
///             new Gcp.Compute.Inputs.SubnetworkSecondaryIpRangeArgs
///             {
///                 RangeName = "svc",
///                 IpCidrRange = "10.0.32.0/22",
///             },
///         },
///     });
///
///     var cluster_1 = new Gcp.Container.Cluster("cluster-1", new()
///     {
///         Name = "cluster-1",
///         Location = "us-central1-c",
///         InitialNodeCount = 1,
///         NetworkingMode = "VPC_NATIVE",
///         DefaultSnatStatus = new Gcp.Container.Inputs.ClusterDefaultSnatStatusArgs
///         {
///             Disabled = true,
///         },
///         Network = network_1.Name,
///         Subnetwork = subnetwork_1.Name,
///         PrivateClusterConfig = new Gcp.Container.Inputs.ClusterPrivateClusterConfigArgs
///         {
///             EnablePrivateEndpoint = true,
///             EnablePrivateNodes = true,
///             MasterIpv4CidrBlock = "10.42.0.0/28",
///             MasterGlobalAccessConfig = new Gcp.Container.Inputs.ClusterPrivateClusterConfigMasterGlobalAccessConfigArgs
///             {
///                 Enabled = true,
///             },
///         },
///         MasterAuthorizedNetworksConfig = new() { },
///         IpAllocationPolicy = new Gcp.Container.Inputs.ClusterIpAllocationPolicyArgs
///         {
///             ClusterSecondaryRangeName = subnetwork_1.SecondaryIpRanges.Apply(secondaryIpRanges => secondaryIpRanges[0].RangeName),
///             ServicesSecondaryRangeName = subnetwork_1.SecondaryIpRanges.Apply(secondaryIpRanges => secondaryIpRanges[1].RangeName),
///         },
///         DeletionProtection = true,
///     });
///
///     var example_response_policy = new Gcp.Dns.ResponsePolicy("example-response-policy", new()
///     {
///         ResponsePolicyName = "example-response-policy",
///         Networks = new[]
///         {
///             new Gcp.Dns.Inputs.ResponsePolicyNetworkArgs
///             {
///                 NetworkUrl = network_1.Id,
///             },
///             new Gcp.Dns.Inputs.ResponsePolicyNetworkArgs
///             {
///                 NetworkUrl = network_2.Id,
///             },
///         },
///         GkeClusters = new[]
///         {
///             new Gcp.Dns.Inputs.ResponsePolicyGkeClusterArgs
///             {
///                 GkeClusterName = cluster_1.Id,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		network_1, err := compute.NewNetwork(ctx, "network-1", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("network-1"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		network_2, err := compute.NewNetwork(ctx, "network-2", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("network-2"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		subnetwork_1, err := compute.NewSubnetwork(ctx, "subnetwork-1", &compute.SubnetworkArgs{
/// 			Name:                  network_1.Name,
/// 			Network:               network_1.Name,
/// 			IpCidrRange:           pulumi.String("10.0.36.0/24"),
/// 			Region:                pulumi.String("us-central1"),
/// 			PrivateIpGoogleAccess: pulumi.Bool(true),
/// 			SecondaryIpRanges: compute.SubnetworkSecondaryIpRangeArray{
/// 				&compute.SubnetworkSecondaryIpRangeArgs{
/// 					RangeName:   pulumi.String("pod"),
/// 					IpCidrRange: pulumi.String("10.0.0.0/19"),
/// 				},
/// 				&compute.SubnetworkSecondaryIpRangeArgs{
/// 					RangeName:   pulumi.String("svc"),
/// 					IpCidrRange: pulumi.String("10.0.32.0/22"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cluster_1, err := container.NewCluster(ctx, "cluster-1", &container.ClusterArgs{
/// 			Name:             pulumi.String("cluster-1"),
/// 			Location:         pulumi.String("us-central1-c"),
/// 			InitialNodeCount: pulumi.Int(1),
/// 			NetworkingMode:   pulumi.String("VPC_NATIVE"),
/// 			DefaultSnatStatus: &container.ClusterDefaultSnatStatusArgs{
/// 				Disabled: pulumi.Bool(true),
/// 			},
/// 			Network:    network_1.Name,
/// 			Subnetwork: subnetwork_1.Name,
/// 			PrivateClusterConfig: &container.ClusterPrivateClusterConfigArgs{
/// 				EnablePrivateEndpoint: pulumi.Bool(true),
/// 				EnablePrivateNodes:    pulumi.Bool(true),
/// 				MasterIpv4CidrBlock:   pulumi.String("10.42.0.0/28"),
/// 				MasterGlobalAccessConfig: &container.ClusterPrivateClusterConfigMasterGlobalAccessConfigArgs{
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 			MasterAuthorizedNetworksConfig: &container.ClusterMasterAuthorizedNetworksConfigArgs{},
/// 			IpAllocationPolicy: &container.ClusterIpAllocationPolicyArgs{
/// 				ClusterSecondaryRangeName: subnetwork_1.SecondaryIpRanges.ApplyT(func(secondaryIpRanges []compute.SubnetworkSecondaryIpRange) (*string, error) {
/// 					return secondaryIpRanges[0].RangeName, nil
/// 				}).(pulumi.StringPtrOutput),
/// 				ServicesSecondaryRangeName: subnetwork_1.SecondaryIpRanges.ApplyT(func(secondaryIpRanges []compute.SubnetworkSecondaryIpRange) (*string, error) {
/// 					return secondaryIpRanges[1].RangeName, nil
/// 				}).(pulumi.StringPtrOutput),
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dns.NewResponsePolicy(ctx, "example-response-policy", &dns.ResponsePolicyArgs{
/// 			ResponsePolicyName: pulumi.String("example-response-policy"),
/// 			Networks: dns.ResponsePolicyNetworkArray{
/// 				&dns.ResponsePolicyNetworkArgs{
/// 					NetworkUrl: network_1.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 				&dns.ResponsePolicyNetworkArgs{
/// 					NetworkUrl: network_2.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 			},
/// 			GkeClusters: dns.ResponsePolicyGkeClusterArray{
/// 				&dns.ResponsePolicyGkeClusterArgs{
/// 					GkeClusterName: cluster_1.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_compute_network" "network-1" {
///   name                    = "network-1"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_network" "network-2" {
///   name                    = "network-2"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "subnetwork-1" {
///   name                     = gcp_compute_network.network-1.name
///   network                  = gcp_compute_network.network-1.name
///   ip_cidr_range            = "10.0.36.0/24"
///   region                   = "us-central1"
///   private_ip_google_access = true
///   secondary_ip_ranges {
///     range_name    = "pod"
///     ip_cidr_range = "10.0.0.0/19"
///   }
///   secondary_ip_ranges {
///     range_name    = "svc"
///     ip_cidr_range = "10.0.32.0/22"
///   }
/// }
/// resource "gcp_container_cluster" "cluster-1" {
///   name               = "cluster-1"
///   location           = "us-central1-c"
///   initial_node_count = 1
///   networking_mode    = "VPC_NATIVE"
///   default_snat_status = {
///     disabled = true
///   }
///   network    = gcp_compute_network.network-1.name
///   subnetwork = gcp_compute_subnetwork.subnetwork-1.name
///   private_cluster_config = {
///     enable_private_endpoint = true
///     enable_private_nodes    = true
///     master_ipv4_cidr_block  = "10.42.0.0/28"
///     master_global_access_config = {
///       enabled = true
///     }
///   }
///   master_authorized_networks_config = {}
///   ip_allocation_policy = {
///     cluster_secondary_range_name  = gcp_compute_subnetwork.subnetwork-1.secondary_ip_ranges[0].range_name
///     services_secondary_range_name = gcp_compute_subnetwork.subnetwork-1.secondary_ip_ranges[1].range_name
///   }
///   deletion_protection = true
/// }
/// resource "gcp_dns_responsepolicy" "example-response-policy" {
///   response_policy_name = "example-response-policy"
///   networks {
///     network_url = gcp_compute_network.network-1.id
///   }
///   networks {
///     network_url = gcp_compute_network.network-2.id
///   }
///   gke_clusters {
///     gke_cluster_name = gcp_container_cluster.cluster-1.id
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.inputs.SubnetworkSecondaryIpRangeArgs;
/// import com.pulumi.gcp.container.Cluster;
/// import com.pulumi.gcp.container.ClusterArgs;
/// import com.pulumi.gcp.container.inputs.ClusterDefaultSnatStatusArgs;
/// import com.pulumi.gcp.container.inputs.ClusterPrivateClusterConfigArgs;
/// import com.pulumi.gcp.container.inputs.ClusterPrivateClusterConfigMasterGlobalAccessConfigArgs;
/// import com.pulumi.gcp.container.inputs.ClusterMasterAuthorizedNetworksConfigArgs;
/// import com.pulumi.gcp.container.inputs.ClusterIpAllocationPolicyArgs;
/// import com.pulumi.gcp.dns.ResponsePolicy;
/// import com.pulumi.gcp.dns.ResponsePolicyArgs;
/// import com.pulumi.gcp.dns.inputs.ResponsePolicyNetworkArgs;
/// import com.pulumi.gcp.dns.inputs.ResponsePolicyGkeClusterArgs;
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
///         var network_1 = new Network("network-1", NetworkArgs.builder()
///             .name("network-1")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var network_2 = new Network("network-2", NetworkArgs.builder()
///             .name("network-2")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var subnetwork_1 = new Subnetwork("subnetwork-1", SubnetworkArgs.builder()
///             .name(network_1.name())
///             .network(network_1.name())
///             .ipCidrRange("10.0.36.0/24")
///             .region("us-central1")
///             .privateIpGoogleAccess(true)
///             .secondaryIpRanges(
///                 SubnetworkSecondaryIpRangeArgs.builder()
///                     .rangeName("pod")
///                     .ipCidrRange("10.0.0.0/19")
///                     .build(),
///                 SubnetworkSecondaryIpRangeArgs.builder()
///                     .rangeName("svc")
///                     .ipCidrRange("10.0.32.0/22")
///                     .build())
///             .build());
///
///         var cluster_1 = new Cluster("cluster-1", ClusterArgs.builder()
///             .name("cluster-1")
///             .location("us-central1-c")
///             .initialNodeCount(1)
///             .networkingMode("VPC_NATIVE")
///             .defaultSnatStatus(ClusterDefaultSnatStatusArgs.builder()
///                 .disabled(true)
///                 .build())
///             .network(network_1.name())
///             .subnetwork(subnetwork_1.name())
///             .privateClusterConfig(ClusterPrivateClusterConfigArgs.builder()
///                 .enablePrivateEndpoint(true)
///                 .enablePrivateNodes(true)
///                 .masterIpv4CidrBlock("10.42.0.0/28")
///                 .masterGlobalAccessConfig(ClusterPrivateClusterConfigMasterGlobalAccessConfigArgs.builder()
///                     .enabled(true)
///                     .build())
///                 .build())
///             .masterAuthorizedNetworksConfig(ClusterMasterAuthorizedNetworksConfigArgs.builder()
///                 .build())
///             .ipAllocationPolicy(ClusterIpAllocationPolicyArgs.builder()
///                 .clusterSecondaryRangeName(subnetwork_1.secondaryIpRanges().applyValue(_secondaryIpRanges -> _secondaryIpRanges.get(0).rangeName()))
///                 .servicesSecondaryRangeName(subnetwork_1.secondaryIpRanges().applyValue(_secondaryIpRanges -> _secondaryIpRanges.get(1).rangeName()))
///                 .build())
///             .deletionProtection(true)
///             .build());
///
///         var example_response_policy = new ResponsePolicy("example-response-policy", ResponsePolicyArgs.builder()
///             .responsePolicyName("example-response-policy")
///             .networks(
///                 ResponsePolicyNetworkArgs.builder()
///                     .networkUrl(network_1.id())
///                     .build(),
///                 ResponsePolicyNetworkArgs.builder()
///                     .networkUrl(network_2.id())
///                     .build())
///             .gkeClusters(ResponsePolicyGkeClusterArgs.builder()
///                 .gkeClusterName(cluster_1.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   network-1:
///     type: gcp:compute:Network
///     properties:
///       name: network-1
///       autoCreateSubnetworks: false
///   network-2:
///     type: gcp:compute:Network
///     properties:
///       name: network-2
///       autoCreateSubnetworks: false
///   subnetwork-1:
///     type: gcp:compute:Subnetwork
///     properties:
///       name: ${["network-1"].name}
///       network: ${["network-1"].name}
///       ipCidrRange: 10.0.36.0/24
///       region: us-central1
///       privateIpGoogleAccess: true
///       secondaryIpRanges:
///         - rangeName: pod
///           ipCidrRange: 10.0.0.0/19
///         - rangeName: svc
///           ipCidrRange: 10.0.32.0/22
///   cluster-1:
///     type: gcp:container:Cluster
///     properties:
///       name: cluster-1
///       location: us-central1-c
///       initialNodeCount: 1
///       networkingMode: VPC_NATIVE
///       defaultSnatStatus:
///         disabled: true
///       network: ${["network-1"].name}
///       subnetwork: ${["subnetwork-1"].name}
///       privateClusterConfig:
///         enablePrivateEndpoint: true
///         enablePrivateNodes: true
///         masterIpv4CidrBlock: 10.42.0.0/28
///         masterGlobalAccessConfig:
///           enabled: true
///       masterAuthorizedNetworksConfig: {}
///       ipAllocationPolicy:
///         clusterSecondaryRangeName: ${["subnetwork-1"].secondaryIpRanges[0].rangeName}
///         servicesSecondaryRangeName: ${["subnetwork-1"].secondaryIpRanges[1].rangeName}
///       deletionProtection: true
///   example-response-policy:
///     type: gcp:dns:ResponsePolicy
///     properties:
///       responsePolicyName: example-response-policy
///       networks:
///         - networkUrl: ${["network-1"].id}
///         - networkUrl: ${["network-2"].id}
///       gkeClusters:
///         - gkeClusterName: ${["cluster-1"].id}
/// ```
///
///
/// ## Import
///
/// ResponsePolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/responsePolicies/{{response_policy_name}}`
/// * `{{project}}/{{response_policy_name}}`
/// * `{{response_policy_name}}`
///
///
/// When using the `pulumi import` command, ResponsePolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dns/responsePolicy:ResponsePolicy default projects/{{project}}/responsePolicies/{{response_policy_name}}
/// $ pulumi import gcp:dns/responsePolicy:ResponsePolicy default {{project}}/{{response_policy_name}}
/// $ pulumi import gcp:dns/responsePolicy:ResponsePolicy default {{response_policy_name}}
/// ```
class ResponsePolicy extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The description of the response policy, such as `My new response policy`.
  late final pulumi.Output<String?> description;
  /// The list of Google Kubernetes Engine clusters that can see this zone.
  /// Structure is documented below.
  late final pulumi.Output<List<ResponsePolicyGkeCluster>?> gkeClusters;
  /// The list of network names specifying networks to which this policy is applied.
  /// Structure is documented below.
  late final pulumi.Output<List<ResponsePolicyNetwork>?> networks;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The user assigned name for this Response Policy, such as `myresponsepolicy`.
  late final pulumi.Output<String> responsePolicyName;

  /// Creates a new [ResponsePolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResponsePolicy]. {@macro pulumi_dns_response_policy_response_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResponsePolicy(
    String name, {
    ResponsePolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dns/responsePolicy:ResponsePolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    gkeClusters = registerOutput<List<ResponsePolicyGkeCluster>?>('gkeClusters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResponsePolicyGkeCluster>(guardedValue, (value) => ResponsePolicyGkeCluster.fromMap((value as Map).cast<String, dynamic>())); });
    networks = registerOutput<List<ResponsePolicyNetwork>?>('networks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResponsePolicyNetwork>(guardedValue, (value) => ResponsePolicyNetwork.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
    responsePolicyName = registerOutput<String>('responsePolicyName');
  }

  /// Gets an existing [ResponsePolicy] resource's state with the given [name] and [id].
  static ResponsePolicy get(
    String name,
    pulumi.Input<String> id, {
    ResponsePolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ResponsePolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ResponsePolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dns/responsePolicy:ResponsePolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    gkeClusters = registerOutput<List<ResponsePolicyGkeCluster>?>('gkeClusters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResponsePolicyGkeCluster>(guardedValue, (value) => ResponsePolicyGkeCluster.fromMap((value as Map).cast<String, dynamic>())); });
    networks = registerOutput<List<ResponsePolicyNetwork>?>('networks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResponsePolicyNetwork>(guardedValue, (value) => ResponsePolicyNetwork.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
    responsePolicyName = registerOutput<String>('responsePolicyName');
  }

  /// Creates a typed reference to an existing [ResponsePolicy] resource.
  ResponsePolicy.reference(String urn)
    : super(
        'gcp:dns/responsePolicy:ResponsePolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    gkeClusters = registerOutput<List<ResponsePolicyGkeCluster>?>('gkeClusters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResponsePolicyGkeCluster>(guardedValue, (value) => ResponsePolicyGkeCluster.fromMap((value as Map).cast<String, dynamic>())); });
    networks = registerOutput<List<ResponsePolicyNetwork>?>('networks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResponsePolicyNetwork>(guardedValue, (value) => ResponsePolicyNetwork.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
    responsePolicyName = registerOutput<String>('responsePolicyName');
  }
}
