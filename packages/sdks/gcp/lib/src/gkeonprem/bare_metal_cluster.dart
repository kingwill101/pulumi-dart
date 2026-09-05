import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_cluster_args.dart';
import 'bare_metal_cluster_binary_authorization.dart';
import 'bare_metal_cluster_cluster_operations.dart';
import 'bare_metal_cluster_control_plane.dart';
import 'bare_metal_cluster_fleet.dart';
import 'bare_metal_cluster_load_balancer.dart';
import 'bare_metal_cluster_maintenance_config.dart';
import 'bare_metal_cluster_network_config.dart';
import 'bare_metal_cluster_node_access_config.dart';
import 'bare_metal_cluster_node_config.dart';
import 'bare_metal_cluster_os_environment_config.dart';
import 'bare_metal_cluster_proxy.dart';
import 'bare_metal_cluster_security_config.dart';
import 'bare_metal_cluster_state.dart';
import 'bare_metal_cluster_status.dart';
import 'bare_metal_cluster_storage.dart';
import 'bare_metal_cluster_upgrade_policy.dart';
import 'bare_metal_cluster_validation_check.dart';

/// A Google Bare Metal User Cluster.
///
///
/// To get more information about BareMetalCluster, see:
///
/// * [API documentation](https://cloud.google.com/kubernetes-engine/distributed-cloud/reference/on-prem-api/rest/v1/projects.locations.bareMetalClusters)
///
/// ## Example Usage
///
/// ### Gkeonprem Bare Metal Cluster Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cluster_basic = new gcp.gkeonprem.BareMetalCluster("cluster-basic", {
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
///                 avoidBuggyIps: true,
///                 manualAssign: true,
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
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// cluster_basic = gcp.gkeonprem.BareMetalCluster("cluster-basic",
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
///                 "avoid_buggy_ips": True,
///                 "manual_assign": True,
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
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cluster_basic = new Gcp.GkeOnPrem.BareMetalCluster("cluster-basic", new()
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
///                         AvoidBuggyIps = true,
///                         ManualAssign = true,
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
/// 		_, err := gkeonprem.NewBareMetalCluster(ctx, "cluster-basic", &gkeonprem.BareMetalClusterArgs{
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
/// 							AvoidBuggyIps: pulumi.Bool(true),
/// 							ManualAssign:  pulumi.Bool(true),
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
/// resource "gcp_gkeonprem_baremetalcluster" "cluster-basic" {
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
///         "pool"          = "pool1"
///         "addresses"     = ["10.200.0.14/32", "10.200.0.15/32", "10.200.0.16/32", "10.200.0.17/32", "10.200.0.18/32", "fd00:1::f/128", "fd00:1::10/128", "fd00:1::11/128", "fd00:1::12/128"]
///         "avoidBuggyIps" = true
///         "manualAssign"  = true
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
///         var cluster_basic = new BareMetalCluster("cluster-basic", BareMetalClusterArgs.builder()
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
///                         .avoidBuggyIps(true)
///                         .manualAssign(true)
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
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cluster-basic:
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
///               avoidBuggyIps: true
///               manualAssign: true
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
/// ```
///
/// ### Gkeonprem Bare Metal Cluster Manuallb
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cluster_manuallb = new gcp.gkeonprem.BareMetalCluster("cluster-manuallb", {
///     name: "cluster-manuallb",
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
///         manualLbConfig: {
///             enabled: true,
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
///     binaryAuthorization: {
///         evaluationMode: "DISABLED",
///     },
///     upgradePolicy: {
///         policy: "SERIAL",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// cluster_manuallb = gcp.gkeonprem.BareMetalCluster("cluster-manuallb",
///     name="cluster-manuallb",
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
///         "manual_lb_config": {
///             "enabled": True,
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
///     },
///     binary_authorization={
///         "evaluation_mode": "DISABLED",
///     },
///     upgrade_policy={
///         "policy": "SERIAL",
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
///     var cluster_manuallb = new Gcp.GkeOnPrem.BareMetalCluster("cluster-manuallb", new()
///     {
///         Name = "cluster-manuallb",
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
///             ManualLbConfig = new Gcp.GkeOnPrem.Inputs.BareMetalClusterLoadBalancerManualLbConfigArgs
///             {
///                 Enabled = true,
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
///         BinaryAuthorization = new Gcp.GkeOnPrem.Inputs.BareMetalClusterBinaryAuthorizationArgs
///         {
///             EvaluationMode = "DISABLED",
///         },
///         UpgradePolicy = new Gcp.GkeOnPrem.Inputs.BareMetalClusterUpgradePolicyArgs
///         {
///             Policy = "SERIAL",
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
/// 		_, err := gkeonprem.NewBareMetalCluster(ctx, "cluster-manuallb", &gkeonprem.BareMetalClusterArgs{
/// 			Name:                   pulumi.String("cluster-manuallb"),
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
/// 				ManualLbConfig: &gkeonprem.BareMetalClusterLoadBalancerManualLbConfigArgs{
/// 					Enabled: pulumi.Bool(true),
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
/// 			BinaryAuthorization: &gkeonprem.BareMetalClusterBinaryAuthorizationArgs{
/// 				EvaluationMode: pulumi.String("DISABLED"),
/// 			},
/// 			UpgradePolicy: &gkeonprem.BareMetalClusterUpgradePolicyArgs{
/// 				Policy: pulumi.String("SERIAL"),
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
/// resource "gcp_gkeonprem_baremetalcluster" "cluster-manuallb" {
///   name                     = "cluster-manuallb"
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
///     manual_lb_config = {
///       enabled = true
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
///   binary_authorization = {
///     evaluation_mode = "DISABLED"
///   }
///   upgrade_policy = {
///     policy = "SERIAL"
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
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterLoadBalancerManualLbConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterStorageArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterStorageLvpShareConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterStorageLvpShareConfigLvpConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterStorageLvpNodeMountsConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterSecurityConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterSecurityConfigAuthorizationArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterSecurityConfigAuthorizationAdminUserArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterBinaryAuthorizationArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterUpgradePolicyArgs;
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
///         var cluster_manuallb = new BareMetalCluster("cluster-manuallb", BareMetalClusterArgs.builder()
///             .name("cluster-manuallb")
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
///                 .manualLbConfig(BareMetalClusterLoadBalancerManualLbConfigArgs.builder()
///                     .enabled(true)
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
///             .binaryAuthorization(BareMetalClusterBinaryAuthorizationArgs.builder()
///                 .evaluationMode("DISABLED")
///                 .build())
///             .upgradePolicy(BareMetalClusterUpgradePolicyArgs.builder()
///                 .policy("SERIAL")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cluster-manuallb:
///     type: gcp:gkeonprem:BareMetalCluster
///     properties:
///       name: cluster-manuallb
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
///         manualLbConfig:
///           enabled: true
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
///       binaryAuthorization:
///         evaluationMode: DISABLED
///       upgradePolicy:
///         policy: SERIAL
/// ```
///
/// ### Gkeonprem Bare Metal Cluster Bgplb
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cluster_bgplb = new gcp.gkeonprem.BareMetalCluster("cluster-bgplb", {
///     name: "cluster-bgplb",
///     location: "us-west1",
///     adminClusterMembership: "projects/870316890899/locations/global/memberships/gkeonprem-terraform-test",
///     bareMetalVersion: "1.12.3",
///     networkConfig: {
///         islandModeCidr: {
///             serviceAddressCidrBlocks: ["172.26.0.0/16"],
///             podAddressCidrBlocks: ["10.240.0.0/13"],
///         },
///         advancedNetworking: true,
///         multipleNetworkInterfacesConfig: {
///             enabled: true,
///         },
///         srIovConfig: {
///             enabled: true,
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
///                 taints: [{
///                     key: "test-key",
///                     value: "test-value",
///                     effect: "NO_EXECUTE",
///                 }],
///             },
///         },
///         apiServerArgs: [{
///             argument: "test-argument",
///             value: "test-value",
///         }],
///     },
///     loadBalancer: {
///         portConfig: {
///             controlPlaneLoadBalancerPort: 443,
///         },
///         vipConfig: {
///             controlPlaneVip: "10.200.0.13",
///             ingressVip: "10.200.0.14",
///         },
///         bgpLbConfig: {
///             asn: 123456,
///             bgpPeerConfigs: [{
///                 asn: 123457,
///                 ipAddress: "10.0.0.1",
///                 controlPlaneNodes: ["test-node"],
///             }],
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
///             loadBalancerNodePoolConfig: {
///                 nodePoolConfig: {
///                     labels: {},
///                     operatingSystem: "LINUX",
///                     nodeConfigs: [{
///                         labels: {},
///                         nodeIp: "10.200.0.9",
///                     }],
///                     taints: [{
///                         key: "test-key",
///                         value: "test-value",
///                         effect: "NO_EXECUTE",
///                     }],
///                     kubeletConfig: {
///                         registryPullQps: 10,
///                         registryBurst: 12,
///                         serializeImagePullsDisabled: true,
///                     },
///                 },
///             },
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
///     proxy: {
///         uri: "http://test-domain/test",
///         noProxies: ["127.0.0.1"],
///     },
///     clusterOperations: {
///         enableApplicationLogs: true,
///     },
///     maintenanceConfig: {
///         maintenanceAddressCidrBlocks: ["192.168.0.1/20"],
///     },
///     nodeConfig: {
///         maxPodsPerNode: 10,
///         containerRuntime: "CONTAINERD",
///     },
///     nodeAccessConfig: {
///         loginUser: "test@example.com",
///     },
///     osEnvironmentConfig: {
///         packageRepoExcluded: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// cluster_bgplb = gcp.gkeonprem.BareMetalCluster("cluster-bgplb",
///     name="cluster-bgplb",
///     location="us-west1",
///     admin_cluster_membership="projects/870316890899/locations/global/memberships/gkeonprem-terraform-test",
///     bare_metal_version="1.12.3",
///     network_config={
///         "island_mode_cidr": {
///             "service_address_cidr_blocks": ["172.26.0.0/16"],
///             "pod_address_cidr_blocks": ["10.240.0.0/13"],
///         },
///         "advanced_networking": True,
///         "multiple_network_interfaces_config": {
///             "enabled": True,
///         },
///         "sr_iov_config": {
///             "enabled": True,
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
///                 "taints": [{
///                     "key": "test-key",
///                     "value": "test-value",
///                     "effect": "NO_EXECUTE",
///                 }],
///             },
///         },
///         "api_server_args": [{
///             "argument": "test-argument",
///             "value": "test-value",
///         }],
///     },
///     load_balancer={
///         "port_config": {
///             "control_plane_load_balancer_port": 443,
///         },
///         "vip_config": {
///             "control_plane_vip": "10.200.0.13",
///             "ingress_vip": "10.200.0.14",
///         },
///         "bgp_lb_config": {
///             "asn": 123456,
///             "bgp_peer_configs": [{
///                 "asn": 123457,
///                 "ip_address": "10.0.0.1",
///                 "control_plane_nodes": ["test-node"],
///             }],
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
///             "load_balancer_node_pool_config": {
///                 "node_pool_config": {
///                     "labels": {},
///                     "operating_system": "LINUX",
///                     "node_configs": [{
///                         "labels": {},
///                         "node_ip": "10.200.0.9",
///                     }],
///                     "taints": [{
///                         "key": "test-key",
///                         "value": "test-value",
///                         "effect": "NO_EXECUTE",
///                     }],
///                     "kubelet_config": {
///                         "registry_pull_qps": 10,
///                         "registry_burst": 12,
///                         "serialize_image_pulls_disabled": True,
///                     },
///                 },
///             },
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
///     },
///     proxy={
///         "uri": "http://test-domain/test",
///         "no_proxies": ["127.0.0.1"],
///     },
///     cluster_operations={
///         "enable_application_logs": True,
///     },
///     maintenance_config={
///         "maintenance_address_cidr_blocks": ["192.168.0.1/20"],
///     },
///     node_config={
///         "max_pods_per_node": 10,
///         "container_runtime": "CONTAINERD",
///     },
///     node_access_config={
///         "login_user": "test@example.com",
///     },
///     os_environment_config={
///         "package_repo_excluded": True,
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
///     var cluster_bgplb = new Gcp.GkeOnPrem.BareMetalCluster("cluster-bgplb", new()
///     {
///         Name = "cluster-bgplb",
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
///             AdvancedNetworking = true,
///             MultipleNetworkInterfacesConfig = new Gcp.GkeOnPrem.Inputs.BareMetalClusterNetworkConfigMultipleNetworkInterfacesConfigArgs
///             {
///                 Enabled = true,
///             },
///             SrIovConfig = new Gcp.GkeOnPrem.Inputs.BareMetalClusterNetworkConfigSrIovConfigArgs
///             {
///                 Enabled = true,
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
///                     Taints = new[]
///                     {
///                         new Gcp.GkeOnPrem.Inputs.BareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigTaintArgs
///                         {
///                             Key = "test-key",
///                             Value = "test-value",
///                             Effect = "NO_EXECUTE",
///                         },
///                     },
///                 },
///             },
///             ApiServerArgs = new[]
///             {
///                 new Gcp.GkeOnPrem.Inputs.BareMetalClusterControlPlaneApiServerArgArgs
///                 {
///                     Argument = "test-argument",
///                     Value = "test-value",
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
///             BgpLbConfig = new Gcp.GkeOnPrem.Inputs.BareMetalClusterLoadBalancerBgpLbConfigArgs
///             {
///                 Asn = 123456,
///                 BgpPeerConfigs = new[]
///                 {
///                     new Gcp.GkeOnPrem.Inputs.BareMetalClusterLoadBalancerBgpLbConfigBgpPeerConfigArgs
///                     {
///                         Asn = 123457,
///                         IpAddress = "10.0.0.1",
///                         ControlPlaneNodes = new[]
///                         {
///                             "test-node",
///                         },
///                     },
///                 },
///                 AddressPools = new[]
///                 {
///                     new Gcp.GkeOnPrem.Inputs.BareMetalClusterLoadBalancerBgpLbConfigAddressPoolArgs
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
///                 LoadBalancerNodePoolConfig = new Gcp.GkeOnPrem.Inputs.BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigArgs
///                 {
///                     NodePoolConfig = new Gcp.GkeOnPrem.Inputs.BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigArgs
///                     {
///                         Labels = null,
///                         OperatingSystem = "LINUX",
///                         NodeConfigs = new[]
///                         {
///                             new Gcp.GkeOnPrem.Inputs.BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigNodeConfigArgs
///                             {
///                                 Labels = null,
///                                 NodeIp = "10.200.0.9",
///                             },
///                         },
///                         Taints = new[]
///                         {
///                             new Gcp.GkeOnPrem.Inputs.BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigTaintArgs
///                             {
///                                 Key = "test-key",
///                                 Value = "test-value",
///                                 Effect = "NO_EXECUTE",
///                             },
///                         },
///                         KubeletConfig = new Gcp.GkeOnPrem.Inputs.BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigKubeletConfigArgs
///                         {
///                             RegistryPullQps = 10,
///                             RegistryBurst = 12,
///                             SerializeImagePullsDisabled = true,
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
///         Proxy = new Gcp.GkeOnPrem.Inputs.BareMetalClusterProxyArgs
///         {
///             Uri = "http://test-domain/test",
///             NoProxies = new[]
///             {
///                 "127.0.0.1",
///             },
///         },
///         ClusterOperations = new Gcp.GkeOnPrem.Inputs.BareMetalClusterClusterOperationsArgs
///         {
///             EnableApplicationLogs = true,
///         },
///         MaintenanceConfig = new Gcp.GkeOnPrem.Inputs.BareMetalClusterMaintenanceConfigArgs
///         {
///             MaintenanceAddressCidrBlocks = new[]
///             {
///                 "192.168.0.1/20",
///             },
///         },
///         NodeConfig = new Gcp.GkeOnPrem.Inputs.BareMetalClusterNodeConfigArgs
///         {
///             MaxPodsPerNode = 10,
///             ContainerRuntime = "CONTAINERD",
///         },
///         NodeAccessConfig = new Gcp.GkeOnPrem.Inputs.BareMetalClusterNodeAccessConfigArgs
///         {
///             LoginUser = "test@example.com",
///         },
///         OsEnvironmentConfig = new Gcp.GkeOnPrem.Inputs.BareMetalClusterOsEnvironmentConfigArgs
///         {
///             PackageRepoExcluded = true,
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
/// 		_, err := gkeonprem.NewBareMetalCluster(ctx, "cluster-bgplb", &gkeonprem.BareMetalClusterArgs{
/// 			Name:                   pulumi.String("cluster-bgplb"),
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
/// 				AdvancedNetworking: pulumi.Bool(true),
/// 				MultipleNetworkInterfacesConfig: &gkeonprem.BareMetalClusterNetworkConfigMultipleNetworkInterfacesConfigArgs{
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 				SrIovConfig: &gkeonprem.BareMetalClusterNetworkConfigSrIovConfigArgs{
/// 					Enabled: pulumi.Bool(true),
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
/// 						Taints: gkeonprem.BareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigTaintArray{
/// 							&gkeonprem.BareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigTaintArgs{
/// 								Key:    pulumi.String("test-key"),
/// 								Value:  pulumi.String("test-value"),
/// 								Effect: pulumi.String("NO_EXECUTE"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				ApiServerArgs: gkeonprem.BareMetalClusterControlPlaneApiServerArgArray{
/// 					&gkeonprem.BareMetalClusterControlPlaneApiServerArgArgs{
/// 						Argument: pulumi.String("test-argument"),
/// 						Value:    pulumi.String("test-value"),
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
/// 				BgpLbConfig: &gkeonprem.BareMetalClusterLoadBalancerBgpLbConfigArgs{
/// 					Asn: pulumi.Int(123456),
/// 					BgpPeerConfigs: gkeonprem.BareMetalClusterLoadBalancerBgpLbConfigBgpPeerConfigArray{
/// 						&gkeonprem.BareMetalClusterLoadBalancerBgpLbConfigBgpPeerConfigArgs{
/// 							Asn:       pulumi.Int(123457),
/// 							IpAddress: pulumi.String("10.0.0.1"),
/// 							ControlPlaneNodes: pulumi.StringArray{
/// 								pulumi.String("test-node"),
/// 							},
/// 						},
/// 					},
/// 					AddressPools: gkeonprem.BareMetalClusterLoadBalancerBgpLbConfigAddressPoolArray{
/// 						&gkeonprem.BareMetalClusterLoadBalancerBgpLbConfigAddressPoolArgs{
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
/// 					LoadBalancerNodePoolConfig: &gkeonprem.BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigArgs{
/// 						NodePoolConfig: &gkeonprem.BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigArgs{
/// 							Labels:          pulumi.StringMap{},
/// 							OperatingSystem: pulumi.String("LINUX"),
/// 							NodeConfigs: gkeonprem.BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigNodeConfigArray{
/// 								&gkeonprem.BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigNodeConfigArgs{
/// 									Labels: pulumi.StringMap{},
/// 									NodeIp: pulumi.String("10.200.0.9"),
/// 								},
/// 							},
/// 							Taints: gkeonprem.BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigTaintArray{
/// 								&gkeonprem.BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigTaintArgs{
/// 									Key:    pulumi.String("test-key"),
/// 									Value:  pulumi.String("test-value"),
/// 									Effect: pulumi.String("NO_EXECUTE"),
/// 								},
/// 							},
/// 							KubeletConfig: &gkeonprem.BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigKubeletConfigArgs{
/// 								RegistryPullQps:             pulumi.Int(10),
/// 								RegistryBurst:               pulumi.Int(12),
/// 								SerializeImagePullsDisabled: pulumi.Bool(true),
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
/// 			Proxy: &gkeonprem.BareMetalClusterProxyArgs{
/// 				Uri: pulumi.String("http://test-domain/test"),
/// 				NoProxies: pulumi.StringArray{
/// 					pulumi.String("127.0.0.1"),
/// 				},
/// 			},
/// 			ClusterOperations: &gkeonprem.BareMetalClusterClusterOperationsArgs{
/// 				EnableApplicationLogs: pulumi.Bool(true),
/// 			},
/// 			MaintenanceConfig: &gkeonprem.BareMetalClusterMaintenanceConfigArgs{
/// 				MaintenanceAddressCidrBlocks: pulumi.StringArray{
/// 					pulumi.String("192.168.0.1/20"),
/// 				},
/// 			},
/// 			NodeConfig: &gkeonprem.BareMetalClusterNodeConfigArgs{
/// 				MaxPodsPerNode:   pulumi.Int(10),
/// 				ContainerRuntime: pulumi.String("CONTAINERD"),
/// 			},
/// 			NodeAccessConfig: &gkeonprem.BareMetalClusterNodeAccessConfigArgs{
/// 				LoginUser: pulumi.String("test@example.com"),
/// 			},
/// 			OsEnvironmentConfig: &gkeonprem.BareMetalClusterOsEnvironmentConfigArgs{
/// 				PackageRepoExcluded: pulumi.Bool(true),
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
/// resource "gcp_gkeonprem_baremetalcluster" "cluster-bgplb" {
///   name                     = "cluster-bgplb"
///   location                 = "us-west1"
///   admin_cluster_membership = "projects/870316890899/locations/global/memberships/gkeonprem-terraform-test"
///   bare_metal_version       = "1.12.3"
///   network_config = {
///     island_mode_cidr = {
///       service_address_cidr_blocks = ["172.26.0.0/16"]
///       pod_address_cidr_blocks     = ["10.240.0.0/13"]
///     }
///     advanced_networking = true
///     multiple_network_interfaces_config = {
///       enabled = true
///     }
///     sr_iov_config = {
///       enabled = true
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
///         taints = [{
///           "key"    = "test-key"
///           "value"  = "test-value"
///           "effect" = "NO_EXECUTE"
///         }]
///       }
///     }
///     api_server_args = [{
///       "argument" = "test-argument"
///       "value"    = "test-value"
///     }]
///   }
///   load_balancer = {
///     port_config = {
///       control_plane_load_balancer_port = 443
///     }
///     vip_config = {
///       control_plane_vip = "10.200.0.13"
///       ingress_vip       = "10.200.0.14"
///     }
///     bgp_lb_config = {
///       asn = 123456
///       bgp_peer_configs = [{
///         "asn"               = 123457
///         "ipAddress"         = "10.0.0.1"
///         "controlPlaneNodes" = ["test-node"]
///       }]
///       address_pools = [{
///         "pool"      = "pool1"
///         "addresses" = ["10.200.0.14/32", "10.200.0.15/32", "10.200.0.16/32", "10.200.0.17/32", "10.200.0.18/32", "fd00:1::f/128", "fd00:1::10/128", "fd00:1::11/128", "fd00:1::12/128"]
///       }]
///       load_balancer_node_pool_config = {
///         node_pool_config = {
///           labels           = {}
///           operating_system = "LINUX"
///           node_configs = [{
///             "labels" = {}
///             "nodeIp" = "10.200.0.9"
///           }]
///           taints = [{
///             "key"    = "test-key"
///             "value"  = "test-value"
///             "effect" = "NO_EXECUTE"
///           }]
///           kubelet_config = {
///             registry_pull_qps              = 10
///             registry_burst                 = 12
///             serialize_image_pulls_disabled = true
///           }
///         }
///       }
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
///   proxy = {
///     uri        = "http://test-domain/test"
///     no_proxies = ["127.0.0.1"]
///   }
///   cluster_operations = {
///     enable_application_logs = true
///   }
///   maintenance_config = {
///     maintenance_address_cidr_blocks = ["192.168.0.1/20"]
///   }
///   node_config = {
///     max_pods_per_node = 10
///     container_runtime = "CONTAINERD"
///   }
///   node_access_config = {
///     login_user = "test@example.com"
///   }
///   os_environment_config = {
///     package_repo_excluded = true
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
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterNetworkConfigMultipleNetworkInterfacesConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterNetworkConfigSrIovConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterControlPlaneArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterControlPlaneControlPlaneNodePoolConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigNodeConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigTaintArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterControlPlaneApiServerArgArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterLoadBalancerArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterLoadBalancerPortConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterLoadBalancerVipConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterLoadBalancerBgpLbConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterLoadBalancerBgpLbConfigBgpPeerConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterLoadBalancerBgpLbConfigAddressPoolArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigNodeConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigTaintArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigKubeletConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterStorageArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterStorageLvpShareConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterStorageLvpShareConfigLvpConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterStorageLvpNodeMountsConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterSecurityConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterSecurityConfigAuthorizationArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterSecurityConfigAuthorizationAdminUserArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterProxyArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterClusterOperationsArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterMaintenanceConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterNodeConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterNodeAccessConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.BareMetalClusterOsEnvironmentConfigArgs;
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
///         var cluster_bgplb = new BareMetalCluster("cluster-bgplb", BareMetalClusterArgs.builder()
///             .name("cluster-bgplb")
///             .location("us-west1")
///             .adminClusterMembership("projects/870316890899/locations/global/memberships/gkeonprem-terraform-test")
///             .bareMetalVersion("1.12.3")
///             .networkConfig(BareMetalClusterNetworkConfigArgs.builder()
///                 .islandModeCidr(BareMetalClusterNetworkConfigIslandModeCidrArgs.builder()
///                     .serviceAddressCidrBlocks("172.26.0.0/16")
///                     .podAddressCidrBlocks("10.240.0.0/13")
///                     .build())
///                 .advancedNetworking(true)
///                 .multipleNetworkInterfacesConfig(BareMetalClusterNetworkConfigMultipleNetworkInterfacesConfigArgs.builder()
///                     .enabled(true)
///                     .build())
///                 .srIovConfig(BareMetalClusterNetworkConfigSrIovConfigArgs.builder()
///                     .enabled(true)
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
///                         .taints(BareMetalClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigTaintArgs.builder()
///                             .key("test-key")
///                             .value("test-value")
///                             .effect("NO_EXECUTE")
///                             .build())
///                         .build())
///                     .build())
///                 .apiServerArgs(BareMetalClusterControlPlaneApiServerArgArgs.builder()
///                     .argument("test-argument")
///                     .value("test-value")
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
///                 .bgpLbConfig(BareMetalClusterLoadBalancerBgpLbConfigArgs.builder()
///                     .asn(123456)
///                     .bgpPeerConfigs(BareMetalClusterLoadBalancerBgpLbConfigBgpPeerConfigArgs.builder()
///                         .asn(123457)
///                         .ipAddress("10.0.0.1")
///                         .controlPlaneNodes("test-node")
///                         .build())
///                     .addressPools(BareMetalClusterLoadBalancerBgpLbConfigAddressPoolArgs.builder()
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
///                     .loadBalancerNodePoolConfig(BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigArgs.builder()
///                         .nodePoolConfig(BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigArgs.builder()
///                             .labels(Map.ofEntries(
///                             ))
///                             .operatingSystem("LINUX")
///                             .nodeConfigs(BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigNodeConfigArgs.builder()
///                                 .labels(Map.ofEntries(
///                                 ))
///                                 .nodeIp("10.200.0.9")
///                                 .build())
///                             .taints(BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigTaintArgs.builder()
///                                 .key("test-key")
///                                 .value("test-value")
///                                 .effect("NO_EXECUTE")
///                                 .build())
///                             .kubeletConfig(BareMetalClusterLoadBalancerBgpLbConfigLoadBalancerNodePoolConfigNodePoolConfigKubeletConfigArgs.builder()
///                                 .registryPullQps(10)
///                                 .registryBurst(12)
///                                 .serializeImagePullsDisabled(true)
///                                 .build())
///                             .build())
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
///             .proxy(BareMetalClusterProxyArgs.builder()
///                 .uri("http://test-domain/test")
///                 .noProxies("127.0.0.1")
///                 .build())
///             .clusterOperations(BareMetalClusterClusterOperationsArgs.builder()
///                 .enableApplicationLogs(true)
///                 .build())
///             .maintenanceConfig(BareMetalClusterMaintenanceConfigArgs.builder()
///                 .maintenanceAddressCidrBlocks("192.168.0.1/20")
///                 .build())
///             .nodeConfig(BareMetalClusterNodeConfigArgs.builder()
///                 .maxPodsPerNode(10)
///                 .containerRuntime("CONTAINERD")
///                 .build())
///             .nodeAccessConfig(BareMetalClusterNodeAccessConfigArgs.builder()
///                 .loginUser("test@example.com")
///                 .build())
///             .osEnvironmentConfig(BareMetalClusterOsEnvironmentConfigArgs.builder()
///                 .packageRepoExcluded(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cluster-bgplb:
///     type: gcp:gkeonprem:BareMetalCluster
///     properties:
///       name: cluster-bgplb
///       location: us-west1
///       adminClusterMembership: projects/870316890899/locations/global/memberships/gkeonprem-terraform-test
///       bareMetalVersion: 1.12.3
///       networkConfig:
///         islandModeCidr:
///           serviceAddressCidrBlocks:
///             - 172.26.0.0/16
///           podAddressCidrBlocks:
///             - 10.240.0.0/13
///         advancedNetworking: true
///         multipleNetworkInterfacesConfig:
///           enabled: true
///         srIovConfig:
///           enabled: true
///       controlPlane:
///         controlPlaneNodePoolConfig:
///           nodePoolConfig:
///             labels: {}
///             operatingSystem: LINUX
///             nodeConfigs:
///               - labels: {}
///                 nodeIp: 10.200.0.9
///             taints:
///               - key: test-key
///                 value: test-value
///                 effect: NO_EXECUTE
///         apiServerArgs:
///           - argument: test-argument
///             value: test-value
///       loadBalancer:
///         portConfig:
///           controlPlaneLoadBalancerPort: 443
///         vipConfig:
///           controlPlaneVip: 10.200.0.13
///           ingressVip: 10.200.0.14
///         bgpLbConfig:
///           asn: 123456
///           bgpPeerConfigs:
///             - asn: 123457
///               ipAddress: 10.0.0.1
///               controlPlaneNodes:
///                 - test-node
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
///           loadBalancerNodePoolConfig:
///             nodePoolConfig:
///               labels: {}
///               operatingSystem: LINUX
///               nodeConfigs:
///                 - labels: {}
///                   nodeIp: 10.200.0.9
///               taints:
///                 - key: test-key
///                   value: test-value
///                   effect: NO_EXECUTE
///               kubeletConfig:
///                 registryPullQps: 10
///                 registryBurst: 12
///                 serializeImagePullsDisabled: true
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
///       proxy:
///         uri: http://test-domain/test
///         noProxies:
///           - 127.0.0.1
///       clusterOperations:
///         enableApplicationLogs: true
///       maintenanceConfig:
///         maintenanceAddressCidrBlocks:
///           - 192.168.0.1/20
///       nodeConfig:
///         maxPodsPerNode: 10
///         containerRuntime: CONTAINERD
///       nodeAccessConfig:
///         loginUser: test@example.com
///       osEnvironmentConfig:
///         packageRepoExcluded: true
/// ```
///
///
/// ## Import
///
/// BareMetalCluster can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/bareMetalClusters/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, BareMetalCluster can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gkeonprem/bareMetalCluster:BareMetalCluster default projects/{{project}}/locations/{{location}}/bareMetalClusters/{{name}}
/// $ pulumi import gcp:gkeonprem/bareMetalCluster:BareMetalCluster default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:gkeonprem/bareMetalCluster:BareMetalCluster default {{location}}/{{name}}
/// ```
class BareMetalCluster extends pulumi.CustomResource {
  /// The Admin Cluster this Bare Metal User Cluster belongs to.
  /// This is the full resource name of the Admin Cluster's hub membership.
  late final pulumi.Output<String> adminClusterMembership;
  /// Annotations on the Bare Metal User Cluster.
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
  /// A human readable description of this Bare Metal User Cluster.
  late final pulumi.Output<String> bareMetalVersion;
  /// Binary Authorization related configurations.
  /// Structure is documented below.
  late final pulumi.Output<BareMetalClusterBinaryAuthorization?> binaryAuthorization;
  /// Specifies the User Cluster's observability infrastructure.
  /// Structure is documented below.
  late final pulumi.Output<BareMetalClusterClusterOperations?> clusterOperations;
  /// Specifies the control plane configuration.
  /// Structure is documented below.
  late final pulumi.Output<BareMetalClusterControlPlane> controlPlane;
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
  /// A human readable description of this Bare Metal User Cluster.
  late final pulumi.Output<String?> description;
  /// All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;
  /// The IP address name of Bare Metal User Cluster's API server.
  late final pulumi.Output<String> endpoint;
  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the
  /// client has an up-to-date value before proceeding.
  /// Allows clients to perform consistent read-modify-writes
  /// through optimistic concurrency control.
  late final pulumi.Output<String> etag;
  /// Fleet related configuration.
  /// Fleets are a Google Cloud concept for logically organizing clusters,
  /// letting you use and manage multi-cluster capabilities and apply
  /// consistent policies across your systems.
  /// See [Anthos Fleets](https://cloud.google.com/anthos/multicluster-management/fleets) for
  /// more details on Anthos multi-cluster capabilities using Fleets.
  /// Structure is documented below.
  late final pulumi.Output<List<BareMetalClusterFleet>> fleets;
  /// Specifies the load balancer configuration.
  /// Structure is documented below.
  late final pulumi.Output<BareMetalClusterLoadBalancer> loadBalancer;
  /// The object name of the Bare Metal Cluster custom resource on the
  /// associated admin cluster. This field is used to support conflicting
  /// names when enrolling existing clusters to the API. When used as a part of
  /// cluster enrollment, this field will differ from the ID in the resource
  /// name. For new clusters, this field will match the user provided cluster ID
  /// and be visible in the last component of the resource name. It is not
  /// modifiable.
  /// All users should use this name to access their cluster using gkectl or
  /// kubectl and should expect to see the local name when viewing admin
  /// cluster controller logs.
  late final pulumi.Output<String> localName;
  /// The location of the resource.
  late final pulumi.Output<String> location;
  /// Specifies the workload node configurations.
  /// Structure is documented below.
  late final pulumi.Output<BareMetalClusterMaintenanceConfig?> maintenanceConfig;
  /// The bare metal cluster name.
  late final pulumi.Output<String> name;
  /// Network configuration.
  /// Structure is documented below.
  late final pulumi.Output<BareMetalClusterNetworkConfig> networkConfig;
  /// Specifies the node access related settings for the bare metal user cluster.
  /// Structure is documented below.
  late final pulumi.Output<BareMetalClusterNodeAccessConfig?> nodeAccessConfig;
  /// Specifies the workload node configurations.
  /// Structure is documented below.
  late final pulumi.Output<BareMetalClusterNodeConfig?> nodeConfig;
  /// OS environment related configurations.
  /// Structure is documented below.
  late final pulumi.Output<BareMetalClusterOsEnvironmentConfig?> osEnvironmentConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Specifies the cluster proxy configuration.
  /// Structure is documented below.
  late final pulumi.Output<BareMetalClusterProxy?> proxy;
  /// If set, there are currently changes in flight to the Bare Metal User Cluster.
  late final pulumi.Output<bool> reconciling;
  /// Specifies the security related settings for the Bare Metal User Cluster.
  /// Structure is documented below.
  late final pulumi.Output<BareMetalClusterSecurityConfig?> securityConfig;
  /// (Output)
  /// The lifecycle state of the condition.
  late final pulumi.Output<String> state;
  /// (Output)
  /// Specifies the detailed validation check status
  /// Structure is documented below.
  late final pulumi.Output<List<BareMetalClusterStatus>> statuses;
  /// Specifies the cluster storage configuration.
  /// Structure is documented below.
  late final pulumi.Output<BareMetalClusterStorage> storage;
  /// The unique identifier of the Bare Metal User Cluster.
  late final pulumi.Output<String> uid;
  /// The time the cluster was last updated, in RFC3339 text format.
  late final pulumi.Output<String> updateTime;
  /// The cluster upgrade policy.
  /// Structure is documented below.
  late final pulumi.Output<BareMetalClusterUpgradePolicy?> upgradePolicy;
  /// Specifies the security related settings for the Bare Metal User Cluster.
  /// Structure is documented below.
  late final pulumi.Output<List<BareMetalClusterValidationCheck>> validationChecks;

  /// Creates a new [BareMetalCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BareMetalCluster]. {@macro pulumi_gkeonprem_bare_metal_cluster_bare_metal_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BareMetalCluster(
    String name, {
    BareMetalClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gkeonprem/bareMetalCluster:BareMetalCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    adminClusterMembership = registerOutput<String>('adminClusterMembership');
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    bareMetalVersion = registerOutput<String>('bareMetalVersion');
    binaryAuthorization = registerOutput<BareMetalClusterBinaryAuthorization?>('binaryAuthorization', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalClusterBinaryAuthorization.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clusterOperations = registerOutput<BareMetalClusterClusterOperations?>('clusterOperations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalClusterClusterOperations.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    controlPlane = registerOutput<BareMetalClusterControlPlane>('controlPlane', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalClusterControlPlane.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deleteTime = registerOutput<String>('deleteTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    endpoint = registerOutput<String>('endpoint');
    etag = registerOutput<String>('etag');
    fleets = registerOutput<List<BareMetalClusterFleet>>('fleets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BareMetalClusterFleet>(guardedValue, (value) => BareMetalClusterFleet.fromMap((value as Map).cast<String, dynamic>())); });
    loadBalancer = registerOutput<BareMetalClusterLoadBalancer>('loadBalancer', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalClusterLoadBalancer.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    localName = registerOutput<String>('localName');
    location = registerOutput<String>('location');
    maintenanceConfig = registerOutput<BareMetalClusterMaintenanceConfig?>('maintenanceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalClusterMaintenanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    networkConfig = registerOutput<BareMetalClusterNetworkConfig>('networkConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalClusterNetworkConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nodeAccessConfig = registerOutput<BareMetalClusterNodeAccessConfig?>('nodeAccessConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalClusterNodeAccessConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nodeConfig = registerOutput<BareMetalClusterNodeConfig?>('nodeConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalClusterNodeConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    osEnvironmentConfig = registerOutput<BareMetalClusterOsEnvironmentConfig?>('osEnvironmentConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalClusterOsEnvironmentConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    proxy = registerOutput<BareMetalClusterProxy?>('proxy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalClusterProxy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    reconciling = registerOutput<bool>('reconciling');
    securityConfig = registerOutput<BareMetalClusterSecurityConfig?>('securityConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalClusterSecurityConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    state = registerOutput<String>('state');
    statuses = registerOutput<List<BareMetalClusterStatus>>('statuses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BareMetalClusterStatus>(guardedValue, (value) => BareMetalClusterStatus.fromMap((value as Map).cast<String, dynamic>())); });
    storage = registerOutput<BareMetalClusterStorage>('storage', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalClusterStorage.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
    upgradePolicy = registerOutput<BareMetalClusterUpgradePolicy?>('upgradePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalClusterUpgradePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    validationChecks = registerOutput<List<BareMetalClusterValidationCheck>>('validationChecks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BareMetalClusterValidationCheck>(guardedValue, (value) => BareMetalClusterValidationCheck.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [BareMetalCluster] resource's state with the given [name] and [id].
  static BareMetalCluster get(
    String name,
    pulumi.Input<String> id, {
    BareMetalClusterState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return BareMetalCluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  BareMetalCluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gkeonprem/bareMetalCluster:BareMetalCluster',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    adminClusterMembership = registerOutput<String>('adminClusterMembership');
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    bareMetalVersion = registerOutput<String>('bareMetalVersion');
    binaryAuthorization = registerOutput<BareMetalClusterBinaryAuthorization?>('binaryAuthorization', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalClusterBinaryAuthorization.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clusterOperations = registerOutput<BareMetalClusterClusterOperations?>('clusterOperations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalClusterClusterOperations.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    controlPlane = registerOutput<BareMetalClusterControlPlane>('controlPlane', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalClusterControlPlane.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deleteTime = registerOutput<String>('deleteTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    endpoint = registerOutput<String>('endpoint');
    etag = registerOutput<String>('etag');
    fleets = registerOutput<List<BareMetalClusterFleet>>('fleets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BareMetalClusterFleet>(guardedValue, (value) => BareMetalClusterFleet.fromMap((value as Map).cast<String, dynamic>())); });
    loadBalancer = registerOutput<BareMetalClusterLoadBalancer>('loadBalancer', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalClusterLoadBalancer.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    localName = registerOutput<String>('localName');
    location = registerOutput<String>('location');
    maintenanceConfig = registerOutput<BareMetalClusterMaintenanceConfig?>('maintenanceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalClusterMaintenanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    networkConfig = registerOutput<BareMetalClusterNetworkConfig>('networkConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalClusterNetworkConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nodeAccessConfig = registerOutput<BareMetalClusterNodeAccessConfig?>('nodeAccessConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalClusterNodeAccessConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nodeConfig = registerOutput<BareMetalClusterNodeConfig?>('nodeConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalClusterNodeConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    osEnvironmentConfig = registerOutput<BareMetalClusterOsEnvironmentConfig?>('osEnvironmentConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalClusterOsEnvironmentConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    proxy = registerOutput<BareMetalClusterProxy?>('proxy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalClusterProxy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    reconciling = registerOutput<bool>('reconciling');
    securityConfig = registerOutput<BareMetalClusterSecurityConfig?>('securityConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalClusterSecurityConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.state = registerOutput<String>('state');
    statuses = registerOutput<List<BareMetalClusterStatus>>('statuses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BareMetalClusterStatus>(guardedValue, (value) => BareMetalClusterStatus.fromMap((value as Map).cast<String, dynamic>())); });
    storage = registerOutput<BareMetalClusterStorage>('storage', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalClusterStorage.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
    upgradePolicy = registerOutput<BareMetalClusterUpgradePolicy?>('upgradePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalClusterUpgradePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    validationChecks = registerOutput<List<BareMetalClusterValidationCheck>>('validationChecks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BareMetalClusterValidationCheck>(guardedValue, (value) => BareMetalClusterValidationCheck.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [BareMetalCluster] resource.
  BareMetalCluster.reference(String urn)
    : super(
        'gcp:gkeonprem/bareMetalCluster:BareMetalCluster',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    adminClusterMembership = registerOutput<String>('adminClusterMembership');
    annotations = registerOutput<Map<String, String>?>('annotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    bareMetalVersion = registerOutput<String>('bareMetalVersion');
    binaryAuthorization = registerOutput<BareMetalClusterBinaryAuthorization?>('binaryAuthorization', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalClusterBinaryAuthorization.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clusterOperations = registerOutput<BareMetalClusterClusterOperations?>('clusterOperations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalClusterClusterOperations.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    controlPlane = registerOutput<BareMetalClusterControlPlane>('controlPlane', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalClusterControlPlane.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deleteTime = registerOutput<String>('deleteTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    endpoint = registerOutput<String>('endpoint');
    etag = registerOutput<String>('etag');
    fleets = registerOutput<List<BareMetalClusterFleet>>('fleets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BareMetalClusterFleet>(guardedValue, (value) => BareMetalClusterFleet.fromMap((value as Map).cast<String, dynamic>())); });
    loadBalancer = registerOutput<BareMetalClusterLoadBalancer>('loadBalancer', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalClusterLoadBalancer.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    localName = registerOutput<String>('localName');
    location = registerOutput<String>('location');
    maintenanceConfig = registerOutput<BareMetalClusterMaintenanceConfig?>('maintenanceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalClusterMaintenanceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    networkConfig = registerOutput<BareMetalClusterNetworkConfig>('networkConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalClusterNetworkConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nodeAccessConfig = registerOutput<BareMetalClusterNodeAccessConfig?>('nodeAccessConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalClusterNodeAccessConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nodeConfig = registerOutput<BareMetalClusterNodeConfig?>('nodeConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalClusterNodeConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    osEnvironmentConfig = registerOutput<BareMetalClusterOsEnvironmentConfig?>('osEnvironmentConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalClusterOsEnvironmentConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    project = registerOutput<String>('project');
    proxy = registerOutput<BareMetalClusterProxy?>('proxy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalClusterProxy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    reconciling = registerOutput<bool>('reconciling');
    securityConfig = registerOutput<BareMetalClusterSecurityConfig?>('securityConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalClusterSecurityConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    state = registerOutput<String>('state');
    statuses = registerOutput<List<BareMetalClusterStatus>>('statuses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BareMetalClusterStatus>(guardedValue, (value) => BareMetalClusterStatus.fromMap((value as Map).cast<String, dynamic>())); });
    storage = registerOutput<BareMetalClusterStorage>('storage', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalClusterStorage.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
    upgradePolicy = registerOutput<BareMetalClusterUpgradePolicy?>('upgradePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BareMetalClusterUpgradePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    validationChecks = registerOutput<List<BareMetalClusterValidationCheck>>('validationChecks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BareMetalClusterValidationCheck>(guardedValue, (value) => BareMetalClusterValidationCheck.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
