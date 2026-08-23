import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_node_pool_args.dart';
import 'bare_metal_node_pool_node_pool_config.dart';
import 'bare_metal_node_pool_state.dart';

/// A Google Bare Metal Node Pool.
///
///
/// To get more information about BareMetalNodePool, see:
///
/// * [API documentation](https://cloud.google.com/kubernetes-engine/distributed-cloud/reference/on-prem-api/rest/v1/projects.locations.bareMetalClusters.bareMetalNodePools)
///
/// ## Example Usage
///
/// ### Gkeonprem Bare Metal Node Pool Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const default_basic = new gcp.gkeonprem.BareMetalCluster("default-basic", {
///     name: "my-cluster",
///     location: "us-west1",
///     adminClusterMembership: "projects/870316890899/locations/global/memberships/gkeonprem-terraform-test",
///     bareMetalVersion: "1.12.3",
///     networkConfig: {
///         islandModeCidr: {
///             serviceAddressCidrBlocks: ["172.26.0.0/16"],
///             podAddressCidrBlocks: ["10.240.0.0/13"],
///         },
///     },
///     controlPlane: {
///         controlPlaneNodePoolConfig: {
///             nodePoolConfig: {
///                 labels: {},
///                 operatingSystem: "LINUX",
///                 nodeConfigs: [{
///                     labels: {},
///                     nodeIp: "10.200.0.9",
///                 }],
///             },
///         },
///     },
///     loadBalancer: {
///         portConfig: {
///             controlPlaneLoadBalancerPort: 443,
///         },
///         vipConfig: {
///             controlPlaneVip: "10.200.0.13",
///             ingressVip: "10.200.0.14",
///         },
///         metalLbConfig: {
///             addressPools: [{
///                 pool: "pool1",
///                 addresses: [
///                     "10.200.0.14/32",
///                     "10.200.0.15/32",
///                     "10.200.0.16/32",
///                     "10.200.0.17/32",
///                     "10.200.0.18/32",
///                     "fd00:1::f/128",
///                     "fd00:1::10/128",
///                     "fd00:1::11/128",
///                     "fd00:1::12/128",
///                 ],
///             }],
///         },
///     },
///     storage: {
///         lvpShareConfig: {
///             lvpConfig: {
///                 path: "/mnt/localpv-share",
///                 storageClass: "local-shared",
///             },
///             sharedPathPvCount: 5,
///         },
///         lvpNodeMountsConfig: {
///             path: "/mnt/localpv-disk",
///             storageClass: "local-disks",
///         },
///     },
///     securityConfig: {
///         authorization: {
///             adminUsers: [{
///                 username: "admin@hashicorptest.com",
///             }],
///         },
///     },
/// });
/// const nodepool_basic = new gcp.gkeonprem.BareMetalNodePool("nodepool-basic", {
///     name: "my-nodepool",
///     bareMetalCluster: default_basic.name,
///     location: "us-west1",
///     nodePoolConfig: {
///         operatingSystem: "LINUX",
///         nodeConfigs: [{
///             nodeIp: "10.200.0.11",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_basic = gcp.gkeonprem.BareMetalCluster("default-basic",
///     name="my-cluster",
///     location="us-west1",
///     admin_cluster_membership="projects/870316890899/locations/global/memberships/gkeonprem-terraform-test",
///     bare_metal_version="1.12.3",
///     network_config={
///         "island_mode_cidr": {
///             "service_address_cidr_blocks": ["172.26.0.0/16"],
///             "pod_address_cidr_blocks": ["10.240.0.0/13"],
///         },
///     },
///     control_plane={
///         "control_plane_node_pool_config": {
///             "node_pool_config": {
///                 "labels": {},
///                 "operating_system": "LINUX",
///                 "node_configs": [{
///                     "labels": {},
///                     "node_ip": "10.200.0.9",
///                 }],
///             },
///         },
///     },
///     load_balancer={
///         "port_config": {
///             "control_plane_load_balancer_port": 443,
///         },
///         "vip_config": {
///             "control_plane_vip": "10.200.0.13",
///             "ingress_vip": "10.200.0.14",
///         },
///         "metal_lb_config": {
///             "address_pools": [{
///                 "pool": "pool1",
///                 "addresses": [
///                     "10.200.0.14/32",
///                     "10.200.0.15/32",
///                     "10.200.0.16/32",
///                     "10.200.0.17/32",
///                     "10.200.0.18/32",
///                     "fd00:1::f/128",
///                     "fd00:1::10/128",
///                     "fd00:1::11/128",
///                     "fd00:1::12/128",
///                 ],
///             }],
///         },
///     },
///     storage={
///         "lvp_share_config": {
///             "lvp_config": {
///                 "path": "/mnt/localpv-share",
///                 "storage_class": "local-shared",
///             },
///             "shared_path_pv_count": 5,
///         },
///         "lvp_node_mounts_config": {
///             "path": "/mnt/localpv-disk",
///             "storage_class": "local-disks",
///         },
///     },
///     security_config={
///         "authorization": {
///             "admin_users": [{
///                 "username": "admin@hashicorptest.com",
///             }],
///         },
///     })
/// nodepool_basic = gcp.gkeonprem.BareMetalNodePool("nodepool-basic",
///     name="my-nodepool",
///     bare_metal_cluster=default_basic.name,
///     location="us-west1",
///     node_pool_config={
///         "operating_system": "LINUX",
///         "node_configs": [{
///             "node_ip": "10.200.0.11",
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
///     var default_basic = new Gcp.GkeOnPrem.BareMetalCluster("default-basic", new()
///     {
///         Name = "my-cluster",
///         Location = "us-west1",
///         AdminClusterMembership = "projects/870316890899/locations/global/memberships/gkeonprem-terraform-test",
///         BareMetalVersion = "1.12.3",
///         NetworkConfig = new Gcp.GkeOnPrem.Inputs.BareMetalClusterNetworkConfigArgs
///         {
///             IslandModeCidr = new Gcp.GkeOnPrem.Inputs.BareMetalClusterNetworkConfigIslandModeCidrArgs
///             {
///                 ServiceAddressCidrBlocks = new[]
///                 {
///                     "172.26.0.0/16",
///                 },
///                 PodAddressCidrBlocks = new[]
///                 {
///                     "10.240.0.0/13",
///                 },
///             },
///         },
///         ControlPlane = new Gcp.GkeOnPrem.Inputs.BareMetalClusterControlPlaneArgs
///         {
///             ControlPlaneNodePoolConfig = new Gcp.GkeOnPrem.Inputs.BareMetalClusterControlPlaneControlPlaneNodePoolConfigArgs
///             {
///                 NodePoolConfig = new Gcp.GkeOnPrem.Inputs.BareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigArgs
///                 {
///                     Labels = null,
///                     OperatingSystem = "LINUX",
///                     NodeConfigs = new[]
///                     {
///                         new Gcp.GkeOnPrem.Inputs.BareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfigArgs
///                         {
///                             Labels = null,
///                             NodeIp = "10.200.0.9",
///                         },
///                     },
///                 },
///             },
///         },
///         LoadBalancer = new Gcp.GkeOnPrem.Inputs.BareMetalClusterLoadBalancerArgs
///         {
///             PortConfig = new Gcp.GkeOnPrem.Inputs.BareMetalClusterLoadBalancerPortConfigArgs
///             {
///                 ControlPlaneLoadBalancerPort = 443,
///             },
///             VipConfig = new Gcp.GkeOnPrem.Inputs.BareMetalClusterLoadBalancerVipConfigArgs
///             {
///                 ControlPlaneVip = "10.200.0.13",
///                 IngressVip = "10.200.0.14",
///             },
///             MetalLbConfig = new Gcp.GkeOnPrem.Inputs.BareMetalClusterLoadBalancerMetalLbConfigArgs
///             {
///                 AddressPools = new[]
///                 {
///                     new Gcp.GkeOnPrem.Inputs.BareMetalClusterLoadBalancerMetalLbConfigAddressPoolArgs
///                     {
///                         Pool = "pool1",
///                         Addresses = new[]
///                         {
///                             "10.200.0.14/32",
///                             "10.200.0.15/32",
///                             "10.200.0.16/32",
///                             "10.200.0.17/32",
///                             "10.200.0.18/32",
///                             "fd00:1::f/128",
///                             "fd00:1::10/128",
///                             "fd00:1::11/128",
///                             "fd00:1::12/128",
///                         },
///                     },
///                 },
///             },
///         },
///         Storage = new Gcp.GkeOnPrem.Inputs.BareMetalClusterStorageArgs
///         {
///             LvpShareConfig = new Gcp.GkeOnPrem.Inputs.BareMetalClusterStorageLvpShareConfigArgs
///             {
///                 LvpConfig = new Gcp.GkeOnPrem.Inputs.BareMetalClusterStorageLvpShareConfigLvpConfigArgs
///                 {
///                     Path = "/mnt/localpv-share",
///                     StorageClass = "local-shared",
///                 },
///                 SharedPathPvCount = 5,
///             },
///             LvpNodeMountsConfig = new Gcp.GkeOnPrem.Inputs.BareMetalClusterStorageLvpNodeMountsConfigArgs
///             {
///                 Path = "/mnt/localpv-disk",
///                 StorageClass = "local-disks",
///             },
///         },
///         SecurityConfig = new Gcp.GkeOnPrem.Inputs.BareMetalClusterSecurityConfigArgs
///         {
///             Authorization = new Gcp.GkeOnPrem.Inputs.BareMetalClusterSecurityConfigAuthorizationArgs
///             {
///                 AdminUsers = new[]
///                 {
///                     new Gcp.GkeOnPrem.Inputs.BareMetalClusterSecurityConfigAuthorizationAdminUserArgs
///                     {
///                         Username = "admin@hashicorptest.com",
///                     },
///                 },
///             },
///         },
///     });
///
///     var nodepool_basic = new Gcp.GkeOnPrem.BareMetalNodePool("nodepool-basic", new()
///     {
///         Name = "my-nodepool",
///         BareMetalCluster = default_basic.Name,
///         Location = "us-west1",
///         NodePoolConfig = new Gcp.GkeOnPrem.Inputs.BareMetalNodePoolNodePoolConfigArgs
///         {
///             OperatingSystem = "LINUX",
///             NodeConfigs = new[]
///             {
///                 new Gcp.GkeOnPrem.Inputs.BareMetalNodePoolNodePoolConfigNodeConfigArgs
///                 {
///                     NodeIp = "10.200.0.11",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkeonprem"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		default_basic, err := gkeonprem.NewBareMetalCluster(ctx, "default-basic", &gkeonprem.BareMetalClusterArgs{
/// 			Name:                   pulumi.String("my-cluster"),
/// 			Location:               pulumi.String("us-west1"),
/// 			AdminClusterMembership: pulumi.String("projects/870316890899/locations/global/memberships/gkeonprem-terraform-test"),
/// 			BareMetalVersion:       pulumi.String("1.12.3"),
/// 			NetworkConfig: &gkeonprem.BareMetalClusterNetworkConfigArgs{
/// 				IslandModeCidr: &gkeonprem.BareMetalClusterNetworkConfigIslandModeCidrArgs{
/// 					ServiceAddressCidrBlocks: pulumi.StringArray{
/// 						pulumi.String("172.26.0.0/16"),
/// 					},
/// 					PodAddressCidrBlocks: pulumi.StringArray{
/// 						pulumi.String("10.240.0.0/13"),
/// 					},
/// 				},
/// 			},
/// 			ControlPlane: &gkeonprem.BareMetalClusterControlPlaneArgs{
/// 				ControlPlaneNodePoolConfig: &gkeonprem.BareMetalClusterControlPlaneControlPlaneNodePoolConfigArgs{
/// 					NodePoolConfig: &gkeonprem.BareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigArgs{
/// 						Labels:          pulumi.StringMap{},
/// 						OperatingSystem: pulumi.String("LINUX"),
/// 						NodeConfigs: gkeonprem.BareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfigArray{
/// 							&gkeonprem.BareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfigArgs{
/// 								Labels: pulumi.StringMap{},
/// 								NodeIp: pulumi.String("10.200.0.9"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			LoadBalancer: &gkeonprem.BareMetalClusterLoadBalancerArgs{
/// 				PortConfig: &gkeonprem.BareMetalClusterLoadBalancerPortConfigArgs{
/// 					ControlPlaneLoadBalancerPort: pulumi.Int(443),
/// 				},
/// 				VipConfig: &gkeonprem.BareMetalClusterLoadBalancerVipConfigArgs{
/// 					ControlPlaneVip: pulumi.String("10.200.0.13"),
/// 					IngressVip:      pulumi.String("10.200.0.14"),
/// 				},
/// 				MetalLbConfig: &gkeonprem.BareMetalClusterLoadBalancerMetalLbConfigArgs{
/// 					AddressPools: gkeonprem.BareMetalClusterLoadBalancerMetalLbConfigAddressPoolArray{
/// 						&gkeonprem.BareMetalClusterLoadBalancerMetalLbConfigAddressPoolArgs{
/// 							Pool: pulumi.String("pool1"),
/// 							Addresses: pulumi.StringArray{
/// 								pulumi.String("10.200.0.14/32"),
/// 								pulumi.String("10.200.0.15/32"),
/// 								pulumi.String("10.200.0.16/32"),
/// 								pulumi.String("10.200.0.17/32"),
/// 								pulumi.String("10.200.0.18/32"),
/// 								pulumi.String("fd00:1::f/128"),
/// 								pulumi.String("fd00:1::10/128"),
/// 								pulumi.String("fd00:1::11/128"),
/// 								pulumi.String("fd00:1::12/128"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Storage: &gkeonprem.BareMetalClusterStorageArgs{
/// 				LvpShareConfig: &gkeonprem.BareMetalClusterStorageLvpShareConfigArgs{
/// 					LvpConfig: &gkeonprem.BareMetalClusterStorageLvpShareConfigLvpConfigArgs{
/// 						Path:         pulumi.String("/mnt/localpv-share"),
/// 						StorageClass: pulumi.String("local-shared"),
/// 					},
/// 					SharedPathPvCount: pulumi.Int(5),
/// 				},
/// 				LvpNodeMountsConfig: &gkeonprem.BareMetalClusterStorageLvpNodeMountsConfigArgs{
/// 					Path:         pulumi.String("/mnt/localpv-disk"),
/// 					StorageClass: pulumi.String("local-disks"),
/// 				},
/// 			},
/// 			SecurityConfig: &gkeonprem.BareMetalClusterSecurityConfigArgs{
/// 				Authorization: &gkeonprem.BareMetalClusterSecurityConfigAuthorizationArgs{
/// 					AdminUsers: gkeonprem.BareMetalClusterSecurityConfigAuthorizationAdminUserArray{
/// 						&gkeonprem.BareMetalClusterSecurityConfigAuthorizationAdminUserArgs{
/// 							Username: pulumi.String("admin@hashicorptest.com"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gkeonprem.NewBareMetalNodePool(ctx, "nodepool-basic", &gkeonprem.BareMetalNodePoolArgs{
/// 			Name:             pulumi.String("my-nodepool"),
/// 			BareMetalCluster: default_basic.Name,
/// 			Location:         pulumi.String("us-west1"),
/// 			NodePoolConfig: &gkeonprem.BareMetalNodePoolNodePoolConfigArgs{
/// 				OperatingSystem: pulumi.String("LINUX"),
/// 				NodeConfigs: gkeonprem.BareMetalNodePoolNodePoolConfigNodeConfigArray{
/// 					&gkeonprem.BareMetalNodePoolNodePoolConfigNodeConfigArgs{
/// 						NodeIp: pulumi.String("10.200.0.11"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_gkeonprem_baremetalcluster" "default-basic" {
///   name                     = "my-cluster"
///   location                 = "us-west1"
///   admin_cluster_membership = "projects/870316890899/locations/global/memberships/gkeonprem-terraform-test"
///   bare_metal_version       = "1.12.3"
///   network_config = {
///     island_mode_cidr = {
///       service_address_cidr_blocks = ["172.26.0.0/16"]
///       pod_address_cidr_blocks     = ["10.240.0.0/13"]
///     }
///   }
///   control_plane = {
///     control_plane_node_pool_config = {
///       node_pool_config = {
///         labels           = {}
///         operating_system = "LINUX"
///         node_configs = [{
///           "labels" = {}
///           "nodeIp" = "10.200.0.9"
///         }]
///       }
///     }
///   }
///   load_balancer = {
///     port_config = {
///       control_plane_load_balancer_port = 443
///     }
///     vip_config = {
///       control_plane_vip = "10.200.0.13"
///       ingress_vip       = "10.200.0.14"
///     }
///     metal_lb_config = {
///       address_pools = [{
///         "pool"      = "pool1"
///         "addresses" = ["10.200.0.14/32", "10.200.0.15/32", "10.200.0.16/32", "10.200.0.17/32", "10.200.0.18/32", "fd00:1::f/128", "fd00:1::10/128", "fd00:1::11/128", "fd00:1::12/128"]
///       }]
///     }
///   }
///   storage = {
///     lvp_share_config = {
///       lvp_config = {
///         path          = "/mnt/localpv-share"
///         storage_class = "local-shared"
///       }
///       shared_path_pv_count = 5
///     }
///     lvp_node_mounts_config = {
///       path          = "/mnt/localpv-disk"
///       storage_class = "local-disks"
///     }
///   }
///   security_config = {
///     authorization = {
///       admin_users = [{
///         "username" = "admin@hashicorptest.com"
///       }]
///     }
///   }
/// }
/// resource "gcp_gkeonprem_baremetalnodepool" "nodepool-basic" {
///   name               = "my-nodepool"
///   bare_metal_cluster = gcp_gkeonprem_baremetalcluster.default-basic.name
///   location           = "us-west1"
///   node_pool_config = {
///     operating_system = "LINUX"
///     node_configs = [{
///       "nodeIp" = "10.200.0.11"
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
/// import com.pulumi.gcp.gkeonprem.BareMetalCluster;
/// import com.pulumi.gcp.gkeonprem.BareMetalClusterArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterNetworkConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterNetworkConfigIslandModeCidrArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterControlPlaneArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterControlPlaneControlPlaneNodePoolConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterLoadBalancerArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterLoadBalancerPortConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterLoadBalancerVipConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterLoadBalancerMetalLbConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterLoadBalancerMetalLbConfigAddressPoolArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterStorageArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterStorageLvpShareConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterStorageLvpShareConfigLvpConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterStorageLvpNodeMountsConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterSecurityConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterSecurityConfigAuthorizationArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterSecurityConfigAuthorizationAdminUserArgs;
/// import com.pulumi.gcp.gkeonprem.BareMetalNodePool;
/// import com.pulumi.gcp.gkeonprem.BareMetalNodePoolArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalNodePoolNodePoolConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalNodePoolNodePoolConfigNodeConfigArgs;
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
///         var default_basic = new BareMetalCluster("default-basic", BareMetalClusterArgs.builder()
///             .name("my-cluster")
///             .location("us-west1")
///             .adminClusterMembership("projects/870316890899/locations/global/memberships/gkeonprem-terraform-test")
///             .bareMetalVersion("1.12.3")
///             .networkConfig(BareMetalClusterNetworkConfigArgs.builder()
///                 .islandModeCidr(BareMetalClusterNetworkConfigIslandModeCidrArgs.builder()
///                     .serviceAddressCidrBlocks("172.26.0.0/16")
///                     .podAddressCidrBlocks("10.240.0.0/13")
///                     .build())
///                 .build())
///             .controlPlane(BareMetalClusterControlPlaneArgs.builder()
///                 .controlPlaneNodePoolConfig(BareMetalClusterControlPlaneControlPlaneNodePoolConfigArgs.builder()
///                     .nodePoolConfig(BareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigArgs.builder()
///                         .labels(Map.ofEntries(
///                         ))
///                         .operatingSystem("LINUX")
///                         .nodeConfigs(BareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfigArgs.builder()
///                             .labels(Map.ofEntries(
///                             ))
///                             .nodeIp("10.200.0.9")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .loadBalancer(BareMetalClusterLoadBalancerArgs.builder()
///                 .portConfig(BareMetalClusterLoadBalancerPortConfigArgs.builder()
///                     .controlPlaneLoadBalancerPort(443)
///                     .build())
///                 .vipConfig(BareMetalClusterLoadBalancerVipConfigArgs.builder()
///                     .controlPlaneVip("10.200.0.13")
///                     .ingressVip("10.200.0.14")
///                     .build())
///                 .metalLbConfig(BareMetalClusterLoadBalancerMetalLbConfigArgs.builder()
///                     .addressPools(BareMetalClusterLoadBalancerMetalLbConfigAddressPoolArgs.builder()
///                         .pool("pool1")
///                         .addresses(
///                             "10.200.0.14/32",
///                             "10.200.0.15/32",
///                             "10.200.0.16/32",
///                             "10.200.0.17/32",
///                             "10.200.0.18/32",
///                             "fd00:1::f/128",
///                             "fd00:1::10/128",
///                             "fd00:1::11/128",
///                             "fd00:1::12/128")
///                         .build())
///                     .build())
///                 .build())
///             .storage(BareMetalClusterStorageArgs.builder()
///                 .lvpShareConfig(BareMetalClusterStorageLvpShareConfigArgs.builder()
///                     .lvpConfig(BareMetalClusterStorageLvpShareConfigLvpConfigArgs.builder()
///                         .path("/mnt/localpv-share")
///                         .storageClass("local-shared")
///                         .build())
///                     .sharedPathPvCount(5)
///                     .build())
///                 .lvpNodeMountsConfig(BareMetalClusterStorageLvpNodeMountsConfigArgs.builder()
///                     .path("/mnt/localpv-disk")
///                     .storageClass("local-disks")
///                     .build())
///                 .build())
///             .securityConfig(BareMetalClusterSecurityConfigArgs.builder()
///                 .authorization(BareMetalClusterSecurityConfigAuthorizationArgs.builder()
///                     .adminUsers(BareMetalClusterSecurityConfigAuthorizationAdminUserArgs.builder()
///                         .username("admin@hashicorptest.com")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         var nodepool_basic = new BareMetalNodePool("nodepool-basic", BareMetalNodePoolArgs.builder()
///             .name("my-nodepool")
///             .bareMetalCluster(default_basic.name())
///             .location("us-west1")
///             .nodePoolConfig(BareMetalNodePoolNodePoolConfigArgs.builder()
///                 .operatingSystem("LINUX")
///                 .nodeConfigs(BareMetalNodePoolNodePoolConfigNodeConfigArgs.builder()
///                     .nodeIp("10.200.0.11")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default-basic:
///     type: gcp:gkeonprem:BareMetalCluster
///     properties:
///       name: my-cluster
///       location: us-west1
///       adminClusterMembership: projects/870316890899/locations/global/memberships/gkeonprem-terraform-test
///       bareMetalVersion: 1.12.3
///       networkConfig:
///         islandModeCidr:
///           serviceAddressCidrBlocks:
///             - 172.26.0.0/16
///           podAddressCidrBlocks:
///             - 10.240.0.0/13
///       controlPlane:
///         controlPlaneNodePoolConfig:
///           nodePoolConfig:
///             labels: {}
///             operatingSystem: LINUX
///             nodeConfigs:
///               - labels: {}
///                 nodeIp: 10.200.0.9
///       loadBalancer:
///         portConfig:
///           controlPlaneLoadBalancerPort: 443
///         vipConfig:
///           controlPlaneVip: 10.200.0.13
///           ingressVip: 10.200.0.14
///         metalLbConfig:
///           addressPools:
///             - pool: pool1
///               addresses:
///                 - 10.200.0.14/32
///                 - 10.200.0.15/32
///                 - 10.200.0.16/32
///                 - 10.200.0.17/32
///                 - 10.200.0.18/32
///                 - fd00:1::f/128
///                 - fd00:1::10/128
///                 - fd00:1::11/128
///                 - fd00:1::12/128
///       storage:
///         lvpShareConfig:
///           lvpConfig:
///             path: /mnt/localpv-share
///             storageClass: local-shared
///           sharedPathPvCount: 5
///         lvpNodeMountsConfig:
///           path: /mnt/localpv-disk
///           storageClass: local-disks
///       securityConfig:
///         authorization:
///           adminUsers:
///             - username: admin@hashicorptest.com
///   nodepool-basic:
///     type: gcp:gkeonprem:BareMetalNodePool
///     properties:
///       name: my-nodepool
///       bareMetalCluster: ${["default-basic"].name}
///       location: us-west1
///       nodePoolConfig:
///         operatingSystem: LINUX
///         nodeConfigs:
///           - nodeIp: 10.200.0.11
/// ```
///
/// ### Gkeonprem Bare Metal Node Pool Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const default_full = new gcp.gkeonprem.BareMetalCluster("default-full", {
///     name: "my-cluster",
///     location: "us-west1",
///     adminClusterMembership: "projects/870316890899/locations/global/memberships/gkeonprem-terraform-test",
///     bareMetalVersion: "1.12.3",
///     networkConfig: {
///         islandModeCidr: {
///             serviceAddressCidrBlocks: ["172.26.0.0/16"],
///             podAddressCidrBlocks: ["10.240.0.0/13"],
///         },
///     },
///     controlPlane: {
///         controlPlaneNodePoolConfig: {
///             nodePoolConfig: {
///                 labels: {},
///                 operatingSystem: "LINUX",
///                 nodeConfigs: [{
///                     labels: {},
///                     nodeIp: "10.200.0.9",
///                 }],
///             },
///         },
///     },
///     loadBalancer: {
///         portConfig: {
///             controlPlaneLoadBalancerPort: 443,
///         },
///         vipConfig: {
///             controlPlaneVip: "10.200.0.13",
///             ingressVip: "10.200.0.14",
///         },
///         metalLbConfig: {
///             addressPools: [{
///                 pool: "pool1",
///                 addresses: [
///                     "10.200.0.14/32",
///                     "10.200.0.15/32",
///                     "10.200.0.16/32",
///                     "10.200.0.17/32",
///                     "10.200.0.18/32",
///                     "fd00:1::f/128",
///                     "fd00:1::10/128",
///                     "fd00:1::11/128",
///                     "fd00:1::12/128",
///                 ],
///             }],
///         },
///     },
///     storage: {
///         lvpShareConfig: {
///             lvpConfig: {
///                 path: "/mnt/localpv-share",
///                 storageClass: "local-shared",
///             },
///             sharedPathPvCount: 5,
///         },
///         lvpNodeMountsConfig: {
///             path: "/mnt/localpv-disk",
///             storageClass: "local-disks",
///         },
///     },
///     securityConfig: {
///         authorization: {
///             adminUsers: [{
///                 username: "admin@hashicorptest.com",
///             }],
///         },
///     },
/// });
/// const nodepool_full = new gcp.gkeonprem.BareMetalNodePool("nodepool-full", {
///     name: "my-nodepool",
///     displayName: "test-name",
///     bareMetalCluster: default_full.name,
///     location: "us-west1",
///     annotations: {},
///     nodePoolConfig: {
///         operatingSystem: "LINUX",
///         labels: {},
///         nodeConfigs: [{
///             nodeIp: "10.200.0.11",
///             labels: {},
///         }],
///         taints: [{
///             key: "test-key",
///             value: "test-value",
///             effect: "NO_EXECUTE",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_full = gcp.gkeonprem.BareMetalCluster("default-full",
///     name="my-cluster",
///     location="us-west1",
///     admin_cluster_membership="projects/870316890899/locations/global/memberships/gkeonprem-terraform-test",
///     bare_metal_version="1.12.3",
///     network_config={
///         "island_mode_cidr": {
///             "service_address_cidr_blocks": ["172.26.0.0/16"],
///             "pod_address_cidr_blocks": ["10.240.0.0/13"],
///         },
///     },
///     control_plane={
///         "control_plane_node_pool_config": {
///             "node_pool_config": {
///                 "labels": {},
///                 "operating_system": "LINUX",
///                 "node_configs": [{
///                     "labels": {},
///                     "node_ip": "10.200.0.9",
///                 }],
///             },
///         },
///     },
///     load_balancer={
///         "port_config": {
///             "control_plane_load_balancer_port": 443,
///         },
///         "vip_config": {
///             "control_plane_vip": "10.200.0.13",
///             "ingress_vip": "10.200.0.14",
///         },
///         "metal_lb_config": {
///             "address_pools": [{
///                 "pool": "pool1",
///                 "addresses": [
///                     "10.200.0.14/32",
///                     "10.200.0.15/32",
///                     "10.200.0.16/32",
///                     "10.200.0.17/32",
///                     "10.200.0.18/32",
///                     "fd00:1::f/128",
///                     "fd00:1::10/128",
///                     "fd00:1::11/128",
///                     "fd00:1::12/128",
///                 ],
///             }],
///         },
///     },
///     storage={
///         "lvp_share_config": {
///             "lvp_config": {
///                 "path": "/mnt/localpv-share",
///                 "storage_class": "local-shared",
///             },
///             "shared_path_pv_count": 5,
///         },
///         "lvp_node_mounts_config": {
///             "path": "/mnt/localpv-disk",
///             "storage_class": "local-disks",
///         },
///     },
///     security_config={
///         "authorization": {
///             "admin_users": [{
///                 "username": "admin@hashicorptest.com",
///             }],
///         },
///     })
/// nodepool_full = gcp.gkeonprem.BareMetalNodePool("nodepool-full",
///     name="my-nodepool",
///     display_name="test-name",
///     bare_metal_cluster=default_full.name,
///     location="us-west1",
///     annotations={},
///     node_pool_config={
///         "operating_system": "LINUX",
///         "labels": {},
///         "node_configs": [{
///             "node_ip": "10.200.0.11",
///             "labels": {},
///         }],
///         "taints": [{
///             "key": "test-key",
///             "value": "test-value",
///             "effect": "NO_EXECUTE",
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
///     var default_full = new Gcp.GkeOnPrem.BareMetalCluster("default-full", new()
///     {
///         Name = "my-cluster",
///         Location = "us-west1",
///         AdminClusterMembership = "projects/870316890899/locations/global/memberships/gkeonprem-terraform-test",
///         BareMetalVersion = "1.12.3",
///         NetworkConfig = new Gcp.GkeOnPrem.Inputs.BareMetalClusterNetworkConfigArgs
///         {
///             IslandModeCidr = new Gcp.GkeOnPrem.Inputs.BareMetalClusterNetworkConfigIslandModeCidrArgs
///             {
///                 ServiceAddressCidrBlocks = new[]
///                 {
///                     "172.26.0.0/16",
///                 },
///                 PodAddressCidrBlocks = new[]
///                 {
///                     "10.240.0.0/13",
///                 },
///             },
///         },
///         ControlPlane = new Gcp.GkeOnPrem.Inputs.BareMetalClusterControlPlaneArgs
///         {
///             ControlPlaneNodePoolConfig = new Gcp.GkeOnPrem.Inputs.BareMetalClusterControlPlaneControlPlaneNodePoolConfigArgs
///             {
///                 NodePoolConfig = new Gcp.GkeOnPrem.Inputs.BareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigArgs
///                 {
///                     Labels = null,
///                     OperatingSystem = "LINUX",
///                     NodeConfigs = new[]
///                     {
///                         new Gcp.GkeOnPrem.Inputs.BareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfigArgs
///                         {
///                             Labels = null,
///                             NodeIp = "10.200.0.9",
///                         },
///                     },
///                 },
///             },
///         },
///         LoadBalancer = new Gcp.GkeOnPrem.Inputs.BareMetalClusterLoadBalancerArgs
///         {
///             PortConfig = new Gcp.GkeOnPrem.Inputs.BareMetalClusterLoadBalancerPortConfigArgs
///             {
///                 ControlPlaneLoadBalancerPort = 443,
///             },
///             VipConfig = new Gcp.GkeOnPrem.Inputs.BareMetalClusterLoadBalancerVipConfigArgs
///             {
///                 ControlPlaneVip = "10.200.0.13",
///                 IngressVip = "10.200.0.14",
///             },
///             MetalLbConfig = new Gcp.GkeOnPrem.Inputs.BareMetalClusterLoadBalancerMetalLbConfigArgs
///             {
///                 AddressPools = new[]
///                 {
///                     new Gcp.GkeOnPrem.Inputs.BareMetalClusterLoadBalancerMetalLbConfigAddressPoolArgs
///                     {
///                         Pool = "pool1",
///                         Addresses = new[]
///                         {
///                             "10.200.0.14/32",
///                             "10.200.0.15/32",
///                             "10.200.0.16/32",
///                             "10.200.0.17/32",
///                             "10.200.0.18/32",
///                             "fd00:1::f/128",
///                             "fd00:1::10/128",
///                             "fd00:1::11/128",
///                             "fd00:1::12/128",
///                         },
///                     },
///                 },
///             },
///         },
///         Storage = new Gcp.GkeOnPrem.Inputs.BareMetalClusterStorageArgs
///         {
///             LvpShareConfig = new Gcp.GkeOnPrem.Inputs.BareMetalClusterStorageLvpShareConfigArgs
///             {
///                 LvpConfig = new Gcp.GkeOnPrem.Inputs.BareMetalClusterStorageLvpShareConfigLvpConfigArgs
///                 {
///                     Path = "/mnt/localpv-share",
///                     StorageClass = "local-shared",
///                 },
///                 SharedPathPvCount = 5,
///             },
///             LvpNodeMountsConfig = new Gcp.GkeOnPrem.Inputs.BareMetalClusterStorageLvpNodeMountsConfigArgs
///             {
///                 Path = "/mnt/localpv-disk",
///                 StorageClass = "local-disks",
///             },
///         },
///         SecurityConfig = new Gcp.GkeOnPrem.Inputs.BareMetalClusterSecurityConfigArgs
///         {
///             Authorization = new Gcp.GkeOnPrem.Inputs.BareMetalClusterSecurityConfigAuthorizationArgs
///             {
///                 AdminUsers = new[]
///                 {
///                     new Gcp.GkeOnPrem.Inputs.BareMetalClusterSecurityConfigAuthorizationAdminUserArgs
///                     {
///                         Username = "admin@hashicorptest.com",
///                     },
///                 },
///             },
///         },
///     });
///
///     var nodepool_full = new Gcp.GkeOnPrem.BareMetalNodePool("nodepool-full", new()
///     {
///         Name = "my-nodepool",
///         DisplayName = "test-name",
///         BareMetalCluster = default_full.Name,
///         Location = "us-west1",
///         Annotations = null,
///         NodePoolConfig = new Gcp.GkeOnPrem.Inputs.BareMetalNodePoolNodePoolConfigArgs
///         {
///             OperatingSystem = "LINUX",
///             Labels = null,
///             NodeConfigs = new[]
///             {
///                 new Gcp.GkeOnPrem.Inputs.BareMetalNodePoolNodePoolConfigNodeConfigArgs
///                 {
///                     NodeIp = "10.200.0.11",
///                     Labels = null,
///                 },
///             },
///             Taints = new[]
///             {
///                 new Gcp.GkeOnPrem.Inputs.BareMetalNodePoolNodePoolConfigTaintArgs
///                 {
///                     Key = "test-key",
///                     Value = "test-value",
///                     Effect = "NO_EXECUTE",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/gkeonprem"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		default_full, err := gkeonprem.NewBareMetalCluster(ctx, "default-full", &gkeonprem.BareMetalClusterArgs{
/// 			Name:                   pulumi.String("my-cluster"),
/// 			Location:               pulumi.String("us-west1"),
/// 			AdminClusterMembership: pulumi.String("projects/870316890899/locations/global/memberships/gkeonprem-terraform-test"),
/// 			BareMetalVersion:       pulumi.String("1.12.3"),
/// 			NetworkConfig: &gkeonprem.BareMetalClusterNetworkConfigArgs{
/// 				IslandModeCidr: &gkeonprem.BareMetalClusterNetworkConfigIslandModeCidrArgs{
/// 					ServiceAddressCidrBlocks: pulumi.StringArray{
/// 						pulumi.String("172.26.0.0/16"),
/// 					},
/// 					PodAddressCidrBlocks: pulumi.StringArray{
/// 						pulumi.String("10.240.0.0/13"),
/// 					},
/// 				},
/// 			},
/// 			ControlPlane: &gkeonprem.BareMetalClusterControlPlaneArgs{
/// 				ControlPlaneNodePoolConfig: &gkeonprem.BareMetalClusterControlPlaneControlPlaneNodePoolConfigArgs{
/// 					NodePoolConfig: &gkeonprem.BareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigArgs{
/// 						Labels:          pulumi.StringMap{},
/// 						OperatingSystem: pulumi.String("LINUX"),
/// 						NodeConfigs: gkeonprem.BareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfigArray{
/// 							&gkeonprem.BareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfigArgs{
/// 								Labels: pulumi.StringMap{},
/// 								NodeIp: pulumi.String("10.200.0.9"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			LoadBalancer: &gkeonprem.BareMetalClusterLoadBalancerArgs{
/// 				PortConfig: &gkeonprem.BareMetalClusterLoadBalancerPortConfigArgs{
/// 					ControlPlaneLoadBalancerPort: pulumi.Int(443),
/// 				},
/// 				VipConfig: &gkeonprem.BareMetalClusterLoadBalancerVipConfigArgs{
/// 					ControlPlaneVip: pulumi.String("10.200.0.13"),
/// 					IngressVip:      pulumi.String("10.200.0.14"),
/// 				},
/// 				MetalLbConfig: &gkeonprem.BareMetalClusterLoadBalancerMetalLbConfigArgs{
/// 					AddressPools: gkeonprem.BareMetalClusterLoadBalancerMetalLbConfigAddressPoolArray{
/// 						&gkeonprem.BareMetalClusterLoadBalancerMetalLbConfigAddressPoolArgs{
/// 							Pool: pulumi.String("pool1"),
/// 							Addresses: pulumi.StringArray{
/// 								pulumi.String("10.200.0.14/32"),
/// 								pulumi.String("10.200.0.15/32"),
/// 								pulumi.String("10.200.0.16/32"),
/// 								pulumi.String("10.200.0.17/32"),
/// 								pulumi.String("10.200.0.18/32"),
/// 								pulumi.String("fd00:1::f/128"),
/// 								pulumi.String("fd00:1::10/128"),
/// 								pulumi.String("fd00:1::11/128"),
/// 								pulumi.String("fd00:1::12/128"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Storage: &gkeonprem.BareMetalClusterStorageArgs{
/// 				LvpShareConfig: &gkeonprem.BareMetalClusterStorageLvpShareConfigArgs{
/// 					LvpConfig: &gkeonprem.BareMetalClusterStorageLvpShareConfigLvpConfigArgs{
/// 						Path:         pulumi.String("/mnt/localpv-share"),
/// 						StorageClass: pulumi.String("local-shared"),
/// 					},
/// 					SharedPathPvCount: pulumi.Int(5),
/// 				},
/// 				LvpNodeMountsConfig: &gkeonprem.BareMetalClusterStorageLvpNodeMountsConfigArgs{
/// 					Path:         pulumi.String("/mnt/localpv-disk"),
/// 					StorageClass: pulumi.String("local-disks"),
/// 				},
/// 			},
/// 			SecurityConfig: &gkeonprem.BareMetalClusterSecurityConfigArgs{
/// 				Authorization: &gkeonprem.BareMetalClusterSecurityConfigAuthorizationArgs{
/// 					AdminUsers: gkeonprem.BareMetalClusterSecurityConfigAuthorizationAdminUserArray{
/// 						&gkeonprem.BareMetalClusterSecurityConfigAuthorizationAdminUserArgs{
/// 							Username: pulumi.String("admin@hashicorptest.com"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gkeonprem.NewBareMetalNodePool(ctx, "nodepool-full", &gkeonprem.BareMetalNodePoolArgs{
/// 			Name:             pulumi.String("my-nodepool"),
/// 			DisplayName:      pulumi.String("test-name"),
/// 			BareMetalCluster: default_full.Name,
/// 			Location:         pulumi.String("us-west1"),
/// 			Annotations:      pulumi.StringMap{},
/// 			NodePoolConfig: &gkeonprem.BareMetalNodePoolNodePoolConfigArgs{
/// 				OperatingSystem: pulumi.String("LINUX"),
/// 				Labels:          pulumi.StringMap{},
/// 				NodeConfigs: gkeonprem.BareMetalNodePoolNodePoolConfigNodeConfigArray{
/// 					&gkeonprem.BareMetalNodePoolNodePoolConfigNodeConfigArgs{
/// 						NodeIp: pulumi.String("10.200.0.11"),
/// 						Labels: pulumi.StringMap{},
/// 					},
/// 				},
/// 				Taints: gkeonprem.BareMetalNodePoolNodePoolConfigTaintArray{
/// 					&gkeonprem.BareMetalNodePoolNodePoolConfigTaintArgs{
/// 						Key:    pulumi.String("test-key"),
/// 						Value:  pulumi.String("test-value"),
/// 						Effect: pulumi.String("NO_EXECUTE"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_gkeonprem_baremetalcluster" "default-full" {
///   name                     = "my-cluster"
///   location                 = "us-west1"
///   admin_cluster_membership = "projects/870316890899/locations/global/memberships/gkeonprem-terraform-test"
///   bare_metal_version       = "1.12.3"
///   network_config = {
///     island_mode_cidr = {
///       service_address_cidr_blocks = ["172.26.0.0/16"]
///       pod_address_cidr_blocks     = ["10.240.0.0/13"]
///     }
///   }
///   control_plane = {
///     control_plane_node_pool_config = {
///       node_pool_config = {
///         labels           = {}
///         operating_system = "LINUX"
///         node_configs = [{
///           "labels" = {}
///           "nodeIp" = "10.200.0.9"
///         }]
///       }
///     }
///   }
///   load_balancer = {
///     port_config = {
///       control_plane_load_balancer_port = 443
///     }
///     vip_config = {
///       control_plane_vip = "10.200.0.13"
///       ingress_vip       = "10.200.0.14"
///     }
///     metal_lb_config = {
///       address_pools = [{
///         "pool"      = "pool1"
///         "addresses" = ["10.200.0.14/32", "10.200.0.15/32", "10.200.0.16/32", "10.200.0.17/32", "10.200.0.18/32", "fd00:1::f/128", "fd00:1::10/128", "fd00:1::11/128", "fd00:1::12/128"]
///       }]
///     }
///   }
///   storage = {
///     lvp_share_config = {
///       lvp_config = {
///         path          = "/mnt/localpv-share"
///         storage_class = "local-shared"
///       }
///       shared_path_pv_count = 5
///     }
///     lvp_node_mounts_config = {
///       path          = "/mnt/localpv-disk"
///       storage_class = "local-disks"
///     }
///   }
///   security_config = {
///     authorization = {
///       admin_users = [{
///         "username" = "admin@hashicorptest.com"
///       }]
///     }
///   }
/// }
/// resource "gcp_gkeonprem_baremetalnodepool" "nodepool-full" {
///   name               = "my-nodepool"
///   display_name       = "test-name"
///   bare_metal_cluster = gcp_gkeonprem_baremetalcluster.default-full.name
///   location           = "us-west1"
///   annotations        = {}
///   node_pool_config = {
///     operating_system = "LINUX"
///     labels           = {}
///     node_configs = [{
///       "nodeIp" = "10.200.0.11"
///       "labels" = {}
///     }]
///     taints = [{
///       "key"    = "test-key"
///       "value"  = "test-value"
///       "effect" = "NO_EXECUTE"
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
/// import com.pulumi.gcp.gkeonprem.BareMetalCluster;
/// import com.pulumi.gcp.gkeonprem.BareMetalClusterArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterNetworkConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterNetworkConfigIslandModeCidrArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterControlPlaneArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterControlPlaneControlPlaneNodePoolConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterLoadBalancerArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterLoadBalancerPortConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterLoadBalancerVipConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterLoadBalancerMetalLbConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterLoadBalancerMetalLbConfigAddressPoolArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterStorageArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterStorageLvpShareConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterStorageLvpShareConfigLvpConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterStorageLvpNodeMountsConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterSecurityConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterSecurityConfigAuthorizationArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterSecurityConfigAuthorizationAdminUserArgs;
/// import com.pulumi.gcp.gkeonprem.BareMetalNodePool;
/// import com.pulumi.gcp.gkeonprem.BareMetalNodePoolArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalNodePoolNodePoolConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalNodePoolNodePoolConfigNodeConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalNodePoolNodePoolConfigTaintArgs;
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
///         var default_full = new BareMetalCluster("default-full", BareMetalClusterArgs.builder()
///             .name("my-cluster")
///             .location("us-west1")
///             .adminClusterMembership("projects/870316890899/locations/global/memberships/gkeonprem-terraform-test")
///             .bareMetalVersion("1.12.3")
///             .networkConfig(BareMetalClusterNetworkConfigArgs.builder()
///                 .islandModeCidr(BareMetalClusterNetworkConfigIslandModeCidrArgs.builder()
///                     .serviceAddressCidrBlocks("172.26.0.0/16")
///                     .podAddressCidrBlocks("10.240.0.0/13")
///                     .build())
///                 .build())
///             .controlPlane(BareMetalClusterControlPlaneArgs.builder()
///                 .controlPlaneNodePoolConfig(BareMetalClusterControlPlaneControlPlaneNodePoolConfigArgs.builder()
///                     .nodePoolConfig(BareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigArgs.builder()
///                         .labels(Map.ofEntries(
///                         ))
///                         .operatingSystem("LINUX")
///                         .nodeConfigs(BareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfigArgs.builder()
///                             .labels(Map.ofEntries(
///                             ))
///                             .nodeIp("10.200.0.9")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .loadBalancer(BareMetalClusterLoadBalancerArgs.builder()
///                 .portConfig(BareMetalClusterLoadBalancerPortConfigArgs.builder()
///                     .controlPlaneLoadBalancerPort(443)
///                     .build())
///                 .vipConfig(BareMetalClusterLoadBalancerVipConfigArgs.builder()
///                     .controlPlaneVip("10.200.0.13")
///                     .ingressVip("10.200.0.14")
///                     .build())
///                 .metalLbConfig(BareMetalClusterLoadBalancerMetalLbConfigArgs.builder()
///                     .addressPools(BareMetalClusterLoadBalancerMetalLbConfigAddressPoolArgs.builder()
///                         .pool("pool1")
///                         .addresses(
///                             "10.200.0.14/32",
///                             "10.200.0.15/32",
///                             "10.200.0.16/32",
///                             "10.200.0.17/32",
///                             "10.200.0.18/32",
///                             "fd00:1::f/128",
///                             "fd00:1::10/128",
///                             "fd00:1::11/128",
///                             "fd00:1::12/128")
///                         .build())
///                     .build())
///                 .build())
///             .storage(BareMetalClusterStorageArgs.builder()
///                 .lvpShareConfig(BareMetalClusterStorageLvpShareConfigArgs.builder()
///                     .lvpConfig(BareMetalClusterStorageLvpShareConfigLvpConfigArgs.builder()
///                         .path("/mnt/localpv-share")
///                         .storageClass("local-shared")
///                         .build())
///                     .sharedPathPvCount(5)
///                     .build())
///                 .lvpNodeMountsConfig(BareMetalClusterStorageLvpNodeMountsConfigArgs.builder()
///                     .path("/mnt/localpv-disk")
///                     .storageClass("local-disks")
///                     .build())
///                 .build())
///             .securityConfig(BareMetalClusterSecurityConfigArgs.builder()
///                 .authorization(BareMetalClusterSecurityConfigAuthorizationArgs.builder()
///                     .adminUsers(BareMetalClusterSecurityConfigAuthorizationAdminUserArgs.builder()
///                         .username("admin@hashicorptest.com")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         var nodepool_full = new BareMetalNodePool("nodepool-full", BareMetalNodePoolArgs.builder()
///             .name("my-nodepool")
///             .displayName("test-name")
///             .bareMetalCluster(default_full.name())
///             .location("us-west1")
///             .annotations(Map.ofEntries(
///             ))
///             .nodePoolConfig(BareMetalNodePoolNodePoolConfigArgs.builder()
///                 .operatingSystem("LINUX")
///                 .labels(Map.ofEntries(
///                 ))
///                 .nodeConfigs(BareMetalNodePoolNodePoolConfigNodeConfigArgs.builder()
///                     .nodeIp("10.200.0.11")
///                     .labels(Map.ofEntries(
///                     ))
///                     .build())
///                 .taints(BareMetalNodePoolNodePoolConfigTaintArgs.builder()
///                     .key("test-key")
///                     .value("test-value")
///                     .effect("NO_EXECUTE")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default-full:
///     type: gcp:gkeonprem:BareMetalCluster
///     properties:
///       name: my-cluster
///       location: us-west1
///       adminClusterMembership: projects/870316890899/locations/global/memberships/gkeonprem-terraform-test
///       bareMetalVersion: 1.12.3
///       networkConfig:
///         islandModeCidr:
///           serviceAddressCidrBlocks:
///             - 172.26.0.0/16
///           podAddressCidrBlocks:
///             - 10.240.0.0/13
///       controlPlane:
///         controlPlaneNodePoolConfig:
///           nodePoolConfig:
///             labels: {}
///             operatingSystem: LINUX
///             nodeConfigs:
///               - labels: {}
///                 nodeIp: 10.200.0.9
///       loadBalancer:
///         portConfig:
///           controlPlaneLoadBalancerPort: 443
///         vipConfig:
///           controlPlaneVip: 10.200.0.13
///           ingressVip: 10.200.0.14
///         metalLbConfig:
///           addressPools:
///             - pool: pool1
///               addresses:
///                 - 10.200.0.14/32
///                 - 10.200.0.15/32
///                 - 10.200.0.16/32
///                 - 10.200.0.17/32
///                 - 10.200.0.18/32
///                 - fd00:1::f/128
///                 - fd00:1::10/128
///                 - fd00:1::11/128
///                 - fd00:1::12/128
///       storage:
///         lvpShareConfig:
///           lvpConfig:
///             path: /mnt/localpv-share
///             storageClass: local-shared
///           sharedPathPvCount: 5
///         lvpNodeMountsConfig:
///           path: /mnt/localpv-disk
///           storageClass: local-disks
///       securityConfig:
///         authorization:
///           adminUsers:
///             - username: admin@hashicorptest.com
///   nodepool-full:
///     type: gcp:gkeonprem:BareMetalNodePool
///     properties:
///       name: my-nodepool
///       displayName: test-name
///       bareMetalCluster: ${["default-full"].name}
///       location: us-west1
///       annotations: {}
///       nodePoolConfig:
///         operatingSystem: LINUX
///         labels: {}
///         nodeConfigs:
///           - nodeIp: 10.200.0.11
///             labels: {}
///         taints:
///           - key: test-key
///             value: test-value
///             effect: NO_EXECUTE
/// ```
///
///
/// ## Import
///
/// BareMetalNodePool can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/bareMetalClusters/{{bare_metal_cluster}}/bareMetalNodePools/{{name}}`
/// * `{{project}}/{{location}}/{{bare_metal_cluster}}/{{name}}`
/// * `{{location}}/{{bare_metal_cluster}}/{{name}}`
///
///
/// When using the `pulumi import` command, BareMetalNodePool can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gkeonprem/bareMetalNodePool:BareMetalNodePool default projects/{{project}}/locations/{{location}}/bareMetalClusters/{{bare_metal_cluster}}/bareMetalNodePools/{{name}}
/// $ pulumi import gcp:gkeonprem/bareMetalNodePool:BareMetalNodePool default {{project}}/{{location}}/{{bare_metal_cluster}}/{{name}}
/// $ pulumi import gcp:gkeonprem/bareMetalNodePool:BareMetalNodePool default {{location}}/{{bare_metal_cluster}}/{{name}}
/// ```
class BareMetalNodePool extends pulumi.CustomResource {
  /// Annotations on the Bare Metal Node Pool.
  /// This field has the same restrictions as Kubernetes annotations.
  /// The total size of all keys and values combined is limited to 256k.
  /// Key can have 2 segments: prefix (optional) and name (required),
  /// separated by a slash (/).
  /// Prefix must be a DNS subdomain.
  /// Name must be 63 characters or less, begin and end with alphanumerics,
  /// with dashes (-), underscores (_), dots (.), and alphanumerics between.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;
  /// The cluster this node pool belongs to.
  late final pulumi.Output<String> bareMetalCluster;
  /// The time the cluster was created, in RFC3339 text format.
  late final pulumi.Output<String> createTime;
  /// The time the cluster was deleted, in RFC3339 text format.
  late final pulumi.Output<String> deleteTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The display name for the Bare Metal Node Pool.
  late final pulumi.Output<String?> displayName;
  /// All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;
  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the
  /// client has an up-to-date value before proceeding.
  /// Allows clients to perform consistent read-modify-writes
  /// through optimistic concurrency control.
  late final pulumi.Output<String> etag;
  /// The location of the resource.
  late final pulumi.Output<String> location;
  /// The bare metal node pool name.
  late final pulumi.Output<String> name;
  /// Node pool configuration.
  /// Structure is documented below.
  late final pulumi.Output<BareMetalNodePoolNodePoolConfig> nodePoolConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// If set, there are currently changes in flight to the Bare Metal User Cluster.
  late final pulumi.Output<bool> reconciling;
  /// (Output)
  /// The lifecycle state of the condition.
  late final pulumi.Output<String> state;
  /// Specifies detailed node pool status.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> statuses;
  /// The unique identifier of the Bare Metal Node Pool.
  late final pulumi.Output<String> uid;
  /// The time the cluster was last updated, in RFC3339 text format.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [BareMetalNodePool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BareMetalNodePool]. {@macro pulumi_gkeonprem_bare_metal_node_pool_bare_metal_node_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BareMetalNodePool(
    String name, {
    BareMetalNodePoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gkeonprem/bareMetalNodePool:BareMetalNodePool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    annotations = registerOutput<Map<String, String>?>('annotations');
    bareMetalCluster = registerOutput<String>('bareMetalCluster');
    createTime = registerOutput<String>('createTime');
    deleteTime = registerOutput<String>('deleteTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    nodePoolConfig = registerOutput<BareMetalNodePoolNodePoolConfig>('nodePoolConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalNodePoolNodePoolConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    reconciling = registerOutput<bool>('reconciling');
    state = registerOutput<String>('state');
    statuses = registerOutput<List<Map<String, dynamic>>>('statuses');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [BareMetalNodePool] resource's state with the given [name] and [id].
  static BareMetalNodePool get(
    String name,
    pulumi.Input<String> id, {
    BareMetalNodePoolState? state,
  }) {
    return BareMetalNodePool._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BareMetalNodePool._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gkeonprem/bareMetalNodePool:BareMetalNodePool',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    annotations = registerOutput<Map<String, String>?>('annotations');
    bareMetalCluster = registerOutput<String>('bareMetalCluster');
    createTime = registerOutput<String>('createTime');
    deleteTime = registerOutput<String>('deleteTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    nodePoolConfig = registerOutput<BareMetalNodePoolNodePoolConfig>('nodePoolConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalNodePoolNodePoolConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    reconciling = registerOutput<bool>('reconciling');
    this.state = registerOutput<String>('state');
    statuses = registerOutput<List<Map<String, dynamic>>>('statuses');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}
