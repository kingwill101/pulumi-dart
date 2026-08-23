import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_peering_routes_config_args.dart';
import 'network_peering_routes_config_state.dart';

/// Manage a network peering's route settings without managing the peering as
/// a whole. This resource is primarily intended for use with GCP-generated
/// peerings that shouldn't otherwise be managed by other tools. Deleting this
/// resource is a no-op and the peering will not be modified.
///
///
/// To get more information about NetworkPeeringRoutesConfig, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/networks/updatePeering)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/vpc/docs/vpc-peering)
///
/// ## Example Usage
///
/// ### Network Peering Routes Config Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const networkPrimary = new gcp.compute.Network("network_primary", {
///     name: "primary-network",
///     autoCreateSubnetworks: false,
/// });
/// const networkSecondary = new gcp.compute.Network("network_secondary", {
///     name: "secondary-network",
///     autoCreateSubnetworks: false,
/// });
/// const peeringPrimary = new gcp.compute.NetworkPeering("peering_primary", {
///     name: "primary-peering",
///     network: networkPrimary.id,
///     peerNetwork: networkSecondary.id,
///     importCustomRoutes: true,
///     exportCustomRoutes: true,
///     importSubnetRoutesWithPublicIp: true,
///     exportSubnetRoutesWithPublicIp: true,
/// });
/// const peeringPrimaryRoutes = new gcp.compute.NetworkPeeringRoutesConfig("peering_primary_routes", {
///     peering: peeringPrimary.name,
///     network: networkPrimary.name,
///     importCustomRoutes: true,
///     exportCustomRoutes: true,
///     importSubnetRoutesWithPublicIp: true,
///     exportSubnetRoutesWithPublicIp: true,
/// });
/// const peeringSecondary = new gcp.compute.NetworkPeering("peering_secondary", {
///     name: "secondary-peering",
///     network: networkSecondary.id,
///     peerNetwork: networkPrimary.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// network_primary = gcp.compute.Network("network_primary",
///     name="primary-network",
///     auto_create_subnetworks=False)
/// network_secondary = gcp.compute.Network("network_secondary",
///     name="secondary-network",
///     auto_create_subnetworks=False)
/// peering_primary = gcp.compute.NetworkPeering("peering_primary",
///     name="primary-peering",
///     network=network_primary.id,
///     peer_network=network_secondary.id,
///     import_custom_routes=True,
///     export_custom_routes=True,
///     import_subnet_routes_with_public_ip=True,
///     export_subnet_routes_with_public_ip=True)
/// peering_primary_routes = gcp.compute.NetworkPeeringRoutesConfig("peering_primary_routes",
///     peering=peering_primary.name,
///     network=network_primary.name,
///     import_custom_routes=True,
///     export_custom_routes=True,
///     import_subnet_routes_with_public_ip=True,
///     export_subnet_routes_with_public_ip=True)
/// peering_secondary = gcp.compute.NetworkPeering("peering_secondary",
///     name="secondary-peering",
///     network=network_secondary.id,
///     peer_network=network_primary.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var networkPrimary = new Gcp.Compute.Network("network_primary", new()
///     {
///         Name = "primary-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var networkSecondary = new Gcp.Compute.Network("network_secondary", new()
///     {
///         Name = "secondary-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var peeringPrimary = new Gcp.Compute.NetworkPeering("peering_primary", new()
///     {
///         Name = "primary-peering",
///         Network = networkPrimary.Id,
///         PeerNetwork = networkSecondary.Id,
///         ImportCustomRoutes = true,
///         ExportCustomRoutes = true,
///         ImportSubnetRoutesWithPublicIp = true,
///         ExportSubnetRoutesWithPublicIp = true,
///     });
///
///     var peeringPrimaryRoutes = new Gcp.Compute.NetworkPeeringRoutesConfig("peering_primary_routes", new()
///     {
///         Peering = peeringPrimary.Name,
///         Network = networkPrimary.Name,
///         ImportCustomRoutes = true,
///         ExportCustomRoutes = true,
///         ImportSubnetRoutesWithPublicIp = true,
///         ExportSubnetRoutesWithPublicIp = true,
///     });
///
///     var peeringSecondary = new Gcp.Compute.NetworkPeering("peering_secondary", new()
///     {
///         Name = "secondary-peering",
///         Network = networkSecondary.Id,
///         PeerNetwork = networkPrimary.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		networkPrimary, err := compute.NewNetwork(ctx, "network_primary", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("primary-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		networkSecondary, err := compute.NewNetwork(ctx, "network_secondary", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("secondary-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		peeringPrimary, err := compute.NewNetworkPeering(ctx, "peering_primary", &compute.NetworkPeeringArgs{
/// 			Name:                           pulumi.String("primary-peering"),
/// 			Network:                        networkPrimary.ID().ToIDOutput().ToStringOutput(),
/// 			PeerNetwork:                    networkSecondary.ID().ToIDOutput().ToStringOutput(),
/// 			ImportCustomRoutes:             pulumi.Bool(true),
/// 			ExportCustomRoutes:             pulumi.Bool(true),
/// 			ImportSubnetRoutesWithPublicIp: pulumi.Bool(true),
/// 			ExportSubnetRoutesWithPublicIp: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewNetworkPeeringRoutesConfig(ctx, "peering_primary_routes", &compute.NetworkPeeringRoutesConfigArgs{
/// 			Peering:                        peeringPrimary.Name,
/// 			Network:                        networkPrimary.Name,
/// 			ImportCustomRoutes:             pulumi.Bool(true),
/// 			ExportCustomRoutes:             pulumi.Bool(true),
/// 			ImportSubnetRoutesWithPublicIp: pulumi.Bool(true),
/// 			ExportSubnetRoutesWithPublicIp: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewNetworkPeering(ctx, "peering_secondary", &compute.NetworkPeeringArgs{
/// 			Name:        pulumi.String("secondary-peering"),
/// 			Network:     networkSecondary.ID().ToIDOutput().ToStringOutput(),
/// 			PeerNetwork: networkPrimary.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_compute_networkpeeringroutesconfig" "peering_primary_routes" {
///   peering                             = gcp_compute_networkpeering.peering_primary.name
///   network                             = gcp_compute_network.network_primary.name
///   import_custom_routes                = true
///   export_custom_routes                = true
///   import_subnet_routes_with_public_ip = true
///   export_subnet_routes_with_public_ip = true
/// }
/// resource "gcp_compute_networkpeering" "peering_primary" {
///   name                                = "primary-peering"
///   network                             = gcp_compute_network.network_primary.id
///   peer_network                        = gcp_compute_network.network_secondary.id
///   import_custom_routes                = true
///   export_custom_routes                = true
///   import_subnet_routes_with_public_ip = true
///   export_subnet_routes_with_public_ip = true
/// }
/// resource "gcp_compute_networkpeering" "peering_secondary" {
///   name         = "secondary-peering"
///   network      = gcp_compute_network.network_secondary.id
///   peer_network = gcp_compute_network.network_primary.id
/// }
/// resource "gcp_compute_network" "network_primary" {
///   name                    = "primary-network"
///   auto_create_subnetworks = "false"
/// }
/// resource "gcp_compute_network" "network_secondary" {
///   name                    = "secondary-network"
///   auto_create_subnetworks = "false"
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
/// import com.pulumi.gcp.compute.NetworkPeering;
/// import com.pulumi.gcp.compute.NetworkPeeringArgs;
/// import com.pulumi.gcp.compute.NetworkPeeringRoutesConfig;
/// import com.pulumi.gcp.compute.NetworkPeeringRoutesConfigArgs;
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
///         var networkPrimary = new Network("networkPrimary", NetworkArgs.builder()
///             .name("primary-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var networkSecondary = new Network("networkSecondary", NetworkArgs.builder()
///             .name("secondary-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var peeringPrimary = new NetworkPeering("peeringPrimary", NetworkPeeringArgs.builder()
///             .name("primary-peering")
///             .network(networkPrimary.id())
///             .peerNetwork(networkSecondary.id())
///             .importCustomRoutes(true)
///             .exportCustomRoutes(true)
///             .importSubnetRoutesWithPublicIp(true)
///             .exportSubnetRoutesWithPublicIp(true)
///             .build());
///
///         var peeringPrimaryRoutes = new NetworkPeeringRoutesConfig("peeringPrimaryRoutes", NetworkPeeringRoutesConfigArgs.builder()
///             .peering(peeringPrimary.name())
///             .network(networkPrimary.name())
///             .importCustomRoutes(true)
///             .exportCustomRoutes(true)
///             .importSubnetRoutesWithPublicIp(true)
///             .exportSubnetRoutesWithPublicIp(true)
///             .build());
///
///         var peeringSecondary = new NetworkPeering("peeringSecondary", NetworkPeeringArgs.builder()
///             .name("secondary-peering")
///             .network(networkSecondary.id())
///             .peerNetwork(networkPrimary.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   peeringPrimaryRoutes:
///     type: gcp:compute:NetworkPeeringRoutesConfig
///     name: peering_primary_routes
///     properties:
///       peering: ${peeringPrimary.name}
///       network: ${networkPrimary.name}
///       importCustomRoutes: true
///       exportCustomRoutes: true
///       importSubnetRoutesWithPublicIp: true
///       exportSubnetRoutesWithPublicIp: true
///   peeringPrimary:
///     type: gcp:compute:NetworkPeering
///     name: peering_primary
///     properties:
///       name: primary-peering
///       network: ${networkPrimary.id}
///       peerNetwork: ${networkSecondary.id}
///       importCustomRoutes: true
///       exportCustomRoutes: true
///       importSubnetRoutesWithPublicIp: true
///       exportSubnetRoutesWithPublicIp: true
///   peeringSecondary:
///     type: gcp:compute:NetworkPeering
///     name: peering_secondary
///     properties:
///       name: secondary-peering
///       network: ${networkSecondary.id}
///       peerNetwork: ${networkPrimary.id}
///   networkPrimary:
///     type: gcp:compute:Network
///     name: network_primary
///     properties:
///       name: primary-network
///       autoCreateSubnetworks: 'false'
///   networkSecondary:
///     type: gcp:compute:Network
///     name: network_secondary
///     properties:
///       name: secondary-network
///       autoCreateSubnetworks: 'false'
/// ```
///
/// ### Network Peering Routes Config Gke Peered Vpc
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const gkeNetwork = new gcp.compute.Network("gke_network", {
///     name: "gke-network",
///     autoCreateSubnetworks: false,
/// });
/// const workloadNetwork = new gcp.compute.Network("workload_network", {
///     name: "workload-network",
///     autoCreateSubnetworks: false,
/// });
/// const peeringGkeToWorkload = new gcp.compute.NetworkPeering("peering_gke_to_workload", {
///     name: "peering-gke-to-workload",
///     network: gkeNetwork.id,
///     peerNetwork: workloadNetwork.id,
///     importCustomRoutes: true,
///     exportCustomRoutes: true,
/// });
/// const peeringGkeRoutes = new gcp.compute.NetworkPeeringRoutesConfig("peering_gke_routes", {
///     peering: peeringGkeToWorkload.name,
///     network: gkeNetwork.name,
///     importCustomRoutes: true,
///     exportCustomRoutes: true,
/// });
/// const peeringWorkloadToGke = new gcp.compute.NetworkPeering("peering_workload_to_gke", {
///     name: "peering-workload-to-gke",
///     network: workloadNetwork.id,
///     peerNetwork: gkeNetwork.id,
/// });
/// const gkeSubnetwork = new gcp.compute.Subnetwork("gke_subnetwork", {
///     name: "gke-subnetwork",
///     region: "us-central1",
///     network: gkeNetwork.name,
///     ipCidrRange: "10.0.36.0/24",
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
/// const gkeCluster = new gcp.container.Cluster("gke_cluster", {
///     name: "gke-cluster",
///     location: "us-central1-a",
///     initialNodeCount: 1,
///     network: gkeNetwork.name,
///     subnetwork: gkeSubnetwork.name,
///     privateClusterConfig: {
///         enablePrivateNodes: true,
///         masterIpv4CidrBlock: "10.42.0.0/28",
///     },
///     ipAllocationPolicy: {
///         clusterSecondaryRangeName: gkeSubnetwork.secondaryIpRanges[0].rangeName,
///         servicesSecondaryRangeName: gkeSubnetwork.secondaryIpRanges[1].rangeName,
///     },
///     deletionProtection: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// gke_network = gcp.compute.Network("gke_network",
///     name="gke-network",
///     auto_create_subnetworks=False)
/// workload_network = gcp.compute.Network("workload_network",
///     name="workload-network",
///     auto_create_subnetworks=False)
/// peering_gke_to_workload = gcp.compute.NetworkPeering("peering_gke_to_workload",
///     name="peering-gke-to-workload",
///     network=gke_network.id,
///     peer_network=workload_network.id,
///     import_custom_routes=True,
///     export_custom_routes=True)
/// peering_gke_routes = gcp.compute.NetworkPeeringRoutesConfig("peering_gke_routes",
///     peering=peering_gke_to_workload.name,
///     network=gke_network.name,
///     import_custom_routes=True,
///     export_custom_routes=True)
/// peering_workload_to_gke = gcp.compute.NetworkPeering("peering_workload_to_gke",
///     name="peering-workload-to-gke",
///     network=workload_network.id,
///     peer_network=gke_network.id)
/// gke_subnetwork = gcp.compute.Subnetwork("gke_subnetwork",
///     name="gke-subnetwork",
///     region="us-central1",
///     network=gke_network.name,
///     ip_cidr_range="10.0.36.0/24",
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
/// gke_cluster = gcp.container.Cluster("gke_cluster",
///     name="gke-cluster",
///     location="us-central1-a",
///     initial_node_count=1,
///     network=gke_network.name,
///     subnetwork=gke_subnetwork.name,
///     private_cluster_config={
///         "enable_private_nodes": True,
///         "master_ipv4_cidr_block": "10.42.0.0/28",
///     },
///     ip_allocation_policy={
///         "cluster_secondary_range_name": gke_subnetwork.secondary_ip_ranges[0].range_name,
///         "services_secondary_range_name": gke_subnetwork.secondary_ip_ranges[1].range_name,
///     },
///     deletion_protection=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var gkeNetwork = new Gcp.Compute.Network("gke_network", new()
///     {
///         Name = "gke-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var workloadNetwork = new Gcp.Compute.Network("workload_network", new()
///     {
///         Name = "workload-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var peeringGkeToWorkload = new Gcp.Compute.NetworkPeering("peering_gke_to_workload", new()
///     {
///         Name = "peering-gke-to-workload",
///         Network = gkeNetwork.Id,
///         PeerNetwork = workloadNetwork.Id,
///         ImportCustomRoutes = true,
///         ExportCustomRoutes = true,
///     });
///
///     var peeringGkeRoutes = new Gcp.Compute.NetworkPeeringRoutesConfig("peering_gke_routes", new()
///     {
///         Peering = peeringGkeToWorkload.Name,
///         Network = gkeNetwork.Name,
///         ImportCustomRoutes = true,
///         ExportCustomRoutes = true,
///     });
///
///     var peeringWorkloadToGke = new Gcp.Compute.NetworkPeering("peering_workload_to_gke", new()
///     {
///         Name = "peering-workload-to-gke",
///         Network = workloadNetwork.Id,
///         PeerNetwork = gkeNetwork.Id,
///     });
///
///     var gkeSubnetwork = new Gcp.Compute.Subnetwork("gke_subnetwork", new()
///     {
///         Name = "gke-subnetwork",
///         Region = "us-central1",
///         Network = gkeNetwork.Name,
///         IpCidrRange = "10.0.36.0/24",
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
///     var gkeCluster = new Gcp.Container.Cluster("gke_cluster", new()
///     {
///         Name = "gke-cluster",
///         Location = "us-central1-a",
///         InitialNodeCount = 1,
///         Network = gkeNetwork.Name,
///         Subnetwork = gkeSubnetwork.Name,
///         PrivateClusterConfig = new Gcp.Container.Inputs.ClusterPrivateClusterConfigArgs
///         {
///             EnablePrivateNodes = true,
///             MasterIpv4CidrBlock = "10.42.0.0/28",
///         },
///         IpAllocationPolicy = new Gcp.Container.Inputs.ClusterIpAllocationPolicyArgs
///         {
///             ClusterSecondaryRangeName = gkeSubnetwork.SecondaryIpRanges.Apply(secondaryIpRanges => secondaryIpRanges[0].RangeName),
///             ServicesSecondaryRangeName = gkeSubnetwork.SecondaryIpRanges.Apply(secondaryIpRanges => secondaryIpRanges[1].RangeName),
///         },
///         DeletionProtection = true,
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		gkeNetwork, err := compute.NewNetwork(ctx, "gke_network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("gke-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		workloadNetwork, err := compute.NewNetwork(ctx, "workload_network", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("workload-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		peeringGkeToWorkload, err := compute.NewNetworkPeering(ctx, "peering_gke_to_workload", &compute.NetworkPeeringArgs{
/// 			Name:               pulumi.String("peering-gke-to-workload"),
/// 			Network:            gkeNetwork.ID().ToIDOutput().ToStringOutput(),
/// 			PeerNetwork:        workloadNetwork.ID().ToIDOutput().ToStringOutput(),
/// 			ImportCustomRoutes: pulumi.Bool(true),
/// 			ExportCustomRoutes: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewNetworkPeeringRoutesConfig(ctx, "peering_gke_routes", &compute.NetworkPeeringRoutesConfigArgs{
/// 			Peering:            peeringGkeToWorkload.Name,
/// 			Network:            gkeNetwork.Name,
/// 			ImportCustomRoutes: pulumi.Bool(true),
/// 			ExportCustomRoutes: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewNetworkPeering(ctx, "peering_workload_to_gke", &compute.NetworkPeeringArgs{
/// 			Name:        pulumi.String("peering-workload-to-gke"),
/// 			Network:     workloadNetwork.ID().ToIDOutput().ToStringOutput(),
/// 			PeerNetwork: gkeNetwork.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		gkeSubnetwork, err := compute.NewSubnetwork(ctx, "gke_subnetwork", &compute.SubnetworkArgs{
/// 			Name:                  pulumi.String("gke-subnetwork"),
/// 			Region:                pulumi.String("us-central1"),
/// 			Network:               gkeNetwork.Name,
/// 			IpCidrRange:           pulumi.String("10.0.36.0/24"),
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
/// 		_, err = container.NewCluster(ctx, "gke_cluster", &container.ClusterArgs{
/// 			Name:             pulumi.String("gke-cluster"),
/// 			Location:         pulumi.String("us-central1-a"),
/// 			InitialNodeCount: pulumi.Int(1),
/// 			Network:          gkeNetwork.Name,
/// 			Subnetwork:       gkeSubnetwork.Name,
/// 			PrivateClusterConfig: &container.ClusterPrivateClusterConfigArgs{
/// 				EnablePrivateNodes:  pulumi.Bool(true),
/// 				MasterIpv4CidrBlock: pulumi.String("10.42.0.0/28"),
/// 			},
/// 			IpAllocationPolicy: &container.ClusterIpAllocationPolicyArgs{
/// 				ClusterSecondaryRangeName: gkeSubnetwork.SecondaryIpRanges.ApplyT(func(secondaryIpRanges []compute.SubnetworkSecondaryIpRange) (*string, error) {
/// 					return secondaryIpRanges[0].RangeName, nil
/// 				}).(pulumi.StringPtrOutput),
/// 				ServicesSecondaryRangeName: gkeSubnetwork.SecondaryIpRanges.ApplyT(func(secondaryIpRanges []compute.SubnetworkSecondaryIpRange) (*string, error) {
/// 					return secondaryIpRanges[1].RangeName, nil
/// 				}).(pulumi.StringPtrOutput),
/// 			},
/// 			DeletionProtection: pulumi.Bool(true),
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
/// resource "gcp_compute_networkpeeringroutesconfig" "peering_gke_routes" {
///   peering              = gcp_compute_networkpeering.peering_gke_to_workload.name
///   network              = gcp_compute_network.gke_network.name
///   import_custom_routes = true
///   export_custom_routes = true
/// }
/// resource "gcp_compute_networkpeering" "peering_gke_to_workload" {
///   name                 = "peering-gke-to-workload"
///   network              = gcp_compute_network.gke_network.id
///   peer_network         = gcp_compute_network.workload_network.id
///   import_custom_routes = true
///   export_custom_routes = true
/// }
/// resource "gcp_compute_networkpeering" "peering_workload_to_gke" {
///   name         = "peering-workload-to-gke"
///   network      = gcp_compute_network.workload_network.id
///   peer_network = gcp_compute_network.gke_network.id
/// }
/// resource "gcp_compute_network" "gke_network" {
///   name                    = "gke-network"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_network" "workload_network" {
///   name                    = "workload-network"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "gke_subnetwork" {
///   name                     = "gke-subnetwork"
///   region                   = "us-central1"
///   network                  = gcp_compute_network.gke_network.name
///   ip_cidr_range            = "10.0.36.0/24"
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
/// resource "gcp_container_cluster" "gke_cluster" {
///   name               = "gke-cluster"
///   location           = "us-central1-a"
///   initial_node_count = 1
///   network            = gcp_compute_network.gke_network.name
///   subnetwork         = gcp_compute_subnetwork.gke_subnetwork.name
///   private_cluster_config = {
///     enable_private_nodes   = true
///     master_ipv4_cidr_block = "10.42.0.0/28"
///   }
///   ip_allocation_policy = {
///     cluster_secondary_range_name  = gcp_compute_subnetwork.gke_subnetwork.secondary_ip_ranges[0].range_name
///     services_secondary_range_name = gcp_compute_subnetwork.gke_subnetwork.secondary_ip_ranges[1].range_name
///   }
///   deletion_protection = true
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
/// import com.pulumi.gcp.compute.NetworkPeering;
/// import com.pulumi.gcp.compute.NetworkPeeringArgs;
/// import com.pulumi.gcp.compute.NetworkPeeringRoutesConfig;
/// import com.pulumi.gcp.compute.NetworkPeeringRoutesConfigArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.inputs.SubnetworkSecondaryIpRangeArgs;
/// import com.pulumi.gcp.container.Cluster;
/// import com.pulumi.gcp.container.ClusterArgs;
/// import com.pulumi.gcp.container.inputs.ClusterPrivateClusterConfigArgs;
/// import com.pulumi.gcp.container.inputs.ClusterIpAllocationPolicyArgs;
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
///         var gkeNetwork = new Network("gkeNetwork", NetworkArgs.builder()
///             .name("gke-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var workloadNetwork = new Network("workloadNetwork", NetworkArgs.builder()
///             .name("workload-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var peeringGkeToWorkload = new NetworkPeering("peeringGkeToWorkload", NetworkPeeringArgs.builder()
///             .name("peering-gke-to-workload")
///             .network(gkeNetwork.id())
///             .peerNetwork(workloadNetwork.id())
///             .importCustomRoutes(true)
///             .exportCustomRoutes(true)
///             .build());
///
///         var peeringGkeRoutes = new NetworkPeeringRoutesConfig("peeringGkeRoutes", NetworkPeeringRoutesConfigArgs.builder()
///             .peering(peeringGkeToWorkload.name())
///             .network(gkeNetwork.name())
///             .importCustomRoutes(true)
///             .exportCustomRoutes(true)
///             .build());
///
///         var peeringWorkloadToGke = new NetworkPeering("peeringWorkloadToGke", NetworkPeeringArgs.builder()
///             .name("peering-workload-to-gke")
///             .network(workloadNetwork.id())
///             .peerNetwork(gkeNetwork.id())
///             .build());
///
///         var gkeSubnetwork = new Subnetwork("gkeSubnetwork", SubnetworkArgs.builder()
///             .name("gke-subnetwork")
///             .region("us-central1")
///             .network(gkeNetwork.name())
///             .ipCidrRange("10.0.36.0/24")
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
///         var gkeCluster = new Cluster("gkeCluster", ClusterArgs.builder()
///             .name("gke-cluster")
///             .location("us-central1-a")
///             .initialNodeCount(1)
///             .network(gkeNetwork.name())
///             .subnetwork(gkeSubnetwork.name())
///             .privateClusterConfig(ClusterPrivateClusterConfigArgs.builder()
///                 .enablePrivateNodes(true)
///                 .masterIpv4CidrBlock("10.42.0.0/28")
///                 .build())
///             .ipAllocationPolicy(ClusterIpAllocationPolicyArgs.builder()
///                 .clusterSecondaryRangeName(gkeSubnetwork.secondaryIpRanges().applyValue(_secondaryIpRanges -> _secondaryIpRanges.get(0).rangeName()))
///                 .servicesSecondaryRangeName(gkeSubnetwork.secondaryIpRanges().applyValue(_secondaryIpRanges -> _secondaryIpRanges.get(1).rangeName()))
///                 .build())
///             .deletionProtection(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   peeringGkeRoutes:
///     type: gcp:compute:NetworkPeeringRoutesConfig
///     name: peering_gke_routes
///     properties:
///       peering: ${peeringGkeToWorkload.name}
///       network: ${gkeNetwork.name}
///       importCustomRoutes: true
///       exportCustomRoutes: true
///   peeringGkeToWorkload:
///     type: gcp:compute:NetworkPeering
///     name: peering_gke_to_workload
///     properties:
///       name: peering-gke-to-workload
///       network: ${gkeNetwork.id}
///       peerNetwork: ${workloadNetwork.id}
///       importCustomRoutes: true
///       exportCustomRoutes: true
///   peeringWorkloadToGke:
///     type: gcp:compute:NetworkPeering
///     name: peering_workload_to_gke
///     properties:
///       name: peering-workload-to-gke
///       network: ${workloadNetwork.id}
///       peerNetwork: ${gkeNetwork.id}
///   gkeNetwork:
///     type: gcp:compute:Network
///     name: gke_network
///     properties:
///       name: gke-network
///       autoCreateSubnetworks: false
///   workloadNetwork:
///     type: gcp:compute:Network
///     name: workload_network
///     properties:
///       name: workload-network
///       autoCreateSubnetworks: false
///   gkeSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: gke_subnetwork
///     properties:
///       name: gke-subnetwork
///       region: us-central1
///       network: ${gkeNetwork.name}
///       ipCidrRange: 10.0.36.0/24
///       privateIpGoogleAccess: true
///       secondaryIpRanges:
///         - rangeName: pod
///           ipCidrRange: 10.0.0.0/19
///         - rangeName: svc
///           ipCidrRange: 10.0.32.0/22
///   gkeCluster:
///     type: gcp:container:Cluster
///     name: gke_cluster
///     properties:
///       name: gke-cluster
///       location: us-central1-a
///       initialNodeCount: 1
///       network: ${gkeNetwork.name}
///       subnetwork: ${gkeSubnetwork.name}
///       privateClusterConfig:
///         enablePrivateNodes: true
///         masterIpv4CidrBlock: 10.42.0.0/28
///       ipAllocationPolicy:
///         clusterSecondaryRangeName: ${gkeSubnetwork.secondaryIpRanges[0].rangeName}
///         servicesSecondaryRangeName: ${gkeSubnetwork.secondaryIpRanges[1].rangeName}
///       deletionProtection: true
/// ```
///
///
/// ## Import
///
/// NetworkPeeringRoutesConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/networks/{{network}}/networkPeerings/{{peering}}`
/// * `{{project}}/{{network}}/{{peering}}`
/// * `{{network}}/{{peering}}`
///
///
/// When using the `pulumi import` command, NetworkPeeringRoutesConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/networkPeeringRoutesConfig:NetworkPeeringRoutesConfig default projects/{{project}}/global/networks/{{network}}/networkPeerings/{{peering}}
/// $ pulumi import gcp:compute/networkPeeringRoutesConfig:NetworkPeeringRoutesConfig default {{project}}/{{network}}/{{peering}}
/// $ pulumi import gcp:compute/networkPeeringRoutesConfig:NetworkPeeringRoutesConfig default {{network}}/{{peering}}
/// ```
class NetworkPeeringRoutesConfig extends pulumi.CustomResource {
  /// Whether to export the custom routes to the peer network.
  late final pulumi.Output<bool> exportCustomRoutes;
  /// Whether subnet routes with public IP range are exported.
  /// IPv4 special-use ranges are always exported to peers and
  /// are not controlled by this field.
  late final pulumi.Output<bool> exportSubnetRoutesWithPublicIp;
  /// Whether to import the custom routes to the peer network.
  late final pulumi.Output<bool> importCustomRoutes;
  /// Whether subnet routes with public IP range are imported.
  /// IPv4 special-use ranges are always imported from peers and
  /// are not controlled by this field.
  late final pulumi.Output<bool> importSubnetRoutesWithPublicIp;
  /// The name of the primary network for the peering.
  late final pulumi.Output<String> network;
  /// Name of the peering.
  late final pulumi.Output<String> peering;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [NetworkPeeringRoutesConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkPeeringRoutesConfig]. {@macro pulumi_compute_network_peering_routes_config_network_peering_routes_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkPeeringRoutesConfig(
    String name, {
    NetworkPeeringRoutesConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/networkPeeringRoutesConfig:NetworkPeeringRoutesConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    exportCustomRoutes = registerOutput<bool>('exportCustomRoutes');
    exportSubnetRoutesWithPublicIp = registerOutput<bool>('exportSubnetRoutesWithPublicIp');
    importCustomRoutes = registerOutput<bool>('importCustomRoutes');
    importSubnetRoutesWithPublicIp = registerOutput<bool>('importSubnetRoutesWithPublicIp');
    network = registerOutput<String>('network');
    peering = registerOutput<String>('peering');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [NetworkPeeringRoutesConfig] resource's state with the given [name] and [id].
  static NetworkPeeringRoutesConfig get(
    String name,
    pulumi.Input<String> id, {
    NetworkPeeringRoutesConfigState? state,
  }) {
    return NetworkPeeringRoutesConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkPeeringRoutesConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/networkPeeringRoutesConfig:NetworkPeeringRoutesConfig',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    exportCustomRoutes = registerOutput<bool>('exportCustomRoutes');
    exportSubnetRoutesWithPublicIp = registerOutput<bool>('exportSubnetRoutesWithPublicIp');
    importCustomRoutes = registerOutput<bool>('importCustomRoutes');
    importSubnetRoutesWithPublicIp = registerOutput<bool>('importSubnetRoutesWithPublicIp');
    network = registerOutput<String>('network');
    peering = registerOutput<String>('peering');
    project = registerOutput<String>('project');
  }
}
