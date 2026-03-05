import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_node_pool_args.dart';
import 'vmware_node_pool_config.dart';
import 'vmware_node_pool_node_pool_autoscaling.dart';
import 'vmware_node_pool_state.dart';

/// A Google Vmware Node Pool.
///
///
/// To get more information about VmwareNodePool, see:
///
/// * [API documentation](https://cloud.google.com/kubernetes-engine/distributed-cloud/reference/on-prem-api/rest/v1/projects.locations.vmwareClusters.vmwareNodePools)
///
/// ## Example Usage
///
/// ### Gkeonprem Vmware Node Pool Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const default_basic = new gcp.gkeonprem.VMwareCluster("default-basic", {
///     name: "my-cluster",
///     location: "us-west1",
///     adminClusterMembership: "projects/870316890899/locations/global/memberships/gkeonprem-terraform-test",
///     description: "test cluster",
///     onPremVersion: "1.13.1-gke.35",
///     networkConfig: {
///         serviceAddressCidrBlocks: ["10.96.0.0/12"],
///         podAddressCidrBlocks: ["192.168.0.0/16"],
///         dhcpIpConfig: {
///             enabled: true,
///         },
///     },
///     controlPlaneNode: {
///         cpus: 4,
///         memory: 8192,
///         replicas: 1,
///     },
///     loadBalancer: {
///         vipConfig: {
///             controlPlaneVip: "10.251.133.5",
///             ingressVip: "10.251.135.19",
///         },
///         metalLbConfig: {
///             addressPools: [
///                 {
///                     pool: "ingress-ip",
///                     manualAssign: true,
///                     addresses: ["10.251.135.19"],
///                 },
///                 {
///                     pool: "lb-test-ip",
///                     manualAssign: true,
///                     addresses: ["10.251.135.19"],
///                 },
///             ],
///         },
///     },
/// });
/// const nodepool_basic = new gcp.gkeonprem.VMwareNodePool("nodepool-basic", {
///     name: "my-nodepool",
///     location: "us-west1",
///     vmwareCluster: default_basic.name,
///     config: {
///         replicas: 3,
///         imageType: "ubuntu_containerd",
///         enableLoadBalancer: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_basic = gcp.gkeonprem.VMwareCluster("default-basic",
///     name="my-cluster",
///     location="us-west1",
///     admin_cluster_membership="projects/870316890899/locations/global/memberships/gkeonprem-terraform-test",
///     description="test cluster",
///     on_prem_version="1.13.1-gke.35",
///     network_config={
///         "service_address_cidr_blocks": ["10.96.0.0/12"],
///         "pod_address_cidr_blocks": ["192.168.0.0/16"],
///         "dhcp_ip_config": {
///             "enabled": True,
///         },
///     },
///     control_plane_node={
///         "cpus": 4,
///         "memory": 8192,
///         "replicas": 1,
///     },
///     load_balancer={
///         "vip_config": {
///             "control_plane_vip": "10.251.133.5",
///             "ingress_vip": "10.251.135.19",
///         },
///         "metal_lb_config": {
///             "address_pools": [
///                 {
///                     "pool": "ingress-ip",
///                     "manual_assign": True,
///                     "addresses": ["10.251.135.19"],
///                 },
///                 {
///                     "pool": "lb-test-ip",
///                     "manual_assign": True,
///                     "addresses": ["10.251.135.19"],
///                 },
///             ],
///         },
///     })
/// nodepool_basic = gcp.gkeonprem.VMwareNodePool("nodepool-basic",
///     name="my-nodepool",
///     location="us-west1",
///     vmware_cluster=default_basic.name,
///     config={
///         "replicas": 3,
///         "image_type": "ubuntu_containerd",
///         "enable_load_balancer": True,
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
///     var default_basic = new Gcp.GkeOnPrem.VMwareCluster("default-basic", new()
///     {
///         Name = "my-cluster",
///         Location = "us-west1",
///         AdminClusterMembership = "projects/870316890899/locations/global/memberships/gkeonprem-terraform-test",
///         Description = "test cluster",
///         OnPremVersion = "1.13.1-gke.35",
///         NetworkConfig = new Gcp.GkeOnPrem.Inputs.VMwareClusterNetworkConfigArgs
///         {
///             ServiceAddressCidrBlocks = new[]
///             {
///                 "10.96.0.0/12",
///             },
///             PodAddressCidrBlocks = new[]
///             {
///                 "192.168.0.0/16",
///             },
///             DhcpIpConfig = new Gcp.GkeOnPrem.Inputs.VMwareClusterNetworkConfigDhcpIpConfigArgs
///             {
///                 Enabled = true,
///             },
///         },
///         ControlPlaneNode = new Gcp.GkeOnPrem.Inputs.VMwareClusterControlPlaneNodeArgs
///         {
///             Cpus = 4,
///             Memory = 8192,
///             Replicas = 1,
///         },
///         LoadBalancer = new Gcp.GkeOnPrem.Inputs.VMwareClusterLoadBalancerArgs
///         {
///             VipConfig = new Gcp.GkeOnPrem.Inputs.VMwareClusterLoadBalancerVipConfigArgs
///             {
///                 ControlPlaneVip = "10.251.133.5",
///                 IngressVip = "10.251.135.19",
///             },
///             MetalLbConfig = new Gcp.GkeOnPrem.Inputs.VMwareClusterLoadBalancerMetalLbConfigArgs
///             {
///                 AddressPools = new[]
///                 {
///                     new Gcp.GkeOnPrem.Inputs.VMwareClusterLoadBalancerMetalLbConfigAddressPoolArgs
///                     {
///                         Pool = "ingress-ip",
///                         ManualAssign = true,
///                         Addresses = new[]
///                         {
///                             "10.251.135.19",
///                         },
///                     },
///                     new Gcp.GkeOnPrem.Inputs.VMwareClusterLoadBalancerMetalLbConfigAddressPoolArgs
///                     {
///                         Pool = "lb-test-ip",
///                         ManualAssign = true,
///                         Addresses = new[]
///                         {
///                             "10.251.135.19",
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
///     var nodepool_basic = new Gcp.GkeOnPrem.VMwareNodePool("nodepool-basic", new()
///     {
///         Name = "my-nodepool",
///         Location = "us-west1",
///         VmwareCluster = default_basic.Name,
///         Config = new Gcp.GkeOnPrem.Inputs.VMwareNodePoolConfigArgs
///         {
///             Replicas = 3,
///             ImageType = "ubuntu_containerd",
///             EnableLoadBalancer = true,
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
/// 		default_basic, err := gkeonprem.NewVMwareCluster(ctx, "default-basic", &gkeonprem.VMwareClusterArgs{
/// 			Name:                   pulumi.String("my-cluster"),
/// 			Location:               pulumi.String("us-west1"),
/// 			AdminClusterMembership: pulumi.String("projects/870316890899/locations/global/memberships/gkeonprem-terraform-test"),
/// 			Description:            pulumi.String("test cluster"),
/// 			OnPremVersion:          pulumi.String("1.13.1-gke.35"),
/// 			NetworkConfig: &gkeonprem.VMwareClusterNetworkConfigArgs{
/// 				ServiceAddressCidrBlocks: pulumi.StringArray{
/// 					pulumi.String("10.96.0.0/12"),
/// 				},
/// 				PodAddressCidrBlocks: pulumi.StringArray{
/// 					pulumi.String("192.168.0.0/16"),
/// 				},
/// 				DhcpIpConfig: &gkeonprem.VMwareClusterNetworkConfigDhcpIpConfigArgs{
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 			ControlPlaneNode: &gkeonprem.VMwareClusterControlPlaneNodeArgs{
/// 				Cpus:     pulumi.Int(4),
/// 				Memory:   pulumi.Int(8192),
/// 				Replicas: pulumi.Int(1),
/// 			},
/// 			LoadBalancer: &gkeonprem.VMwareClusterLoadBalancerArgs{
/// 				VipConfig: &gkeonprem.VMwareClusterLoadBalancerVipConfigArgs{
/// 					ControlPlaneVip: pulumi.String("10.251.133.5"),
/// 					IngressVip:      pulumi.String("10.251.135.19"),
/// 				},
/// 				MetalLbConfig: &gkeonprem.VMwareClusterLoadBalancerMetalLbConfigArgs{
/// 					AddressPools: gkeonprem.VMwareClusterLoadBalancerMetalLbConfigAddressPoolArray{
/// 						&gkeonprem.VMwareClusterLoadBalancerMetalLbConfigAddressPoolArgs{
/// 							Pool:         pulumi.String("ingress-ip"),
/// 							ManualAssign: pulumi.Bool(true),
/// 							Addresses: pulumi.StringArray{
/// 								pulumi.String("10.251.135.19"),
/// 							},
/// 						},
/// 						&gkeonprem.VMwareClusterLoadBalancerMetalLbConfigAddressPoolArgs{
/// 							Pool:         pulumi.String("lb-test-ip"),
/// 							ManualAssign: pulumi.Bool(true),
/// 							Addresses: pulumi.StringArray{
/// 								pulumi.String("10.251.135.19"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gkeonprem.NewVMwareNodePool(ctx, "nodepool-basic", &gkeonprem.VMwareNodePoolArgs{
/// 			Name:          pulumi.String("my-nodepool"),
/// 			Location:      pulumi.String("us-west1"),
/// 			VmwareCluster: default_basic.Name,
/// 			Config: &gkeonprem.VMwareNodePoolConfigArgs{
/// 				Replicas:           pulumi.Int(3),
/// 				ImageType:          pulumi.String("ubuntu_containerd"),
/// 				EnableLoadBalancer: pulumi.Bool(true),
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
/// import com.pulumi.gcp.gkeonprem.VMwareCluster;
/// import com.pulumi.gcp.gkeonprem.VMwareClusterArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VMwareClusterNetworkConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VMwareClusterNetworkConfigDhcpIpConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VMwareClusterControlPlaneNodeArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VMwareClusterLoadBalancerArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VMwareClusterLoadBalancerVipConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VMwareClusterLoadBalancerMetalLbConfigArgs;
/// import com.pulumi.gcp.gkeonprem.VMwareNodePool;
/// import com.pulumi.gcp.gkeonprem.VMwareNodePoolArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VMwareNodePoolConfigArgs;
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
///         var default_basic = new VMwareCluster("default-basic", VMwareClusterArgs.builder()
///             .name("my-cluster")
///             .location("us-west1")
///             .adminClusterMembership("projects/870316890899/locations/global/memberships/gkeonprem-terraform-test")
///             .description("test cluster")
///             .onPremVersion("1.13.1-gke.35")
///             .networkConfig(VMwareClusterNetworkConfigArgs.builder()
///                 .serviceAddressCidrBlocks("10.96.0.0/12")
///                 .podAddressCidrBlocks("192.168.0.0/16")
///                 .dhcpIpConfig(VMwareClusterNetworkConfigDhcpIpConfigArgs.builder()
///                     .enabled(true)
///                     .build())
///                 .build())
///             .controlPlaneNode(VMwareClusterControlPlaneNodeArgs.builder()
///                 .cpus(4)
///                 .memory(8192)
///                 .replicas(1)
///                 .build())
///             .loadBalancer(VMwareClusterLoadBalancerArgs.builder()
///                 .vipConfig(VMwareClusterLoadBalancerVipConfigArgs.builder()
///                     .controlPlaneVip("10.251.133.5")
///                     .ingressVip("10.251.135.19")
///                     .build())
///                 .metalLbConfig(VMwareClusterLoadBalancerMetalLbConfigArgs.builder()
///                     .addressPools(
///                         VMwareClusterLoadBalancerMetalLbConfigAddressPoolArgs.builder()
///                             .pool("ingress-ip")
///                             .manualAssign(true)
///                             .addresses("10.251.135.19")
///                             .build(),
///                         VMwareClusterLoadBalancerMetalLbConfigAddressPoolArgs.builder()
///                             .pool("lb-test-ip")
///                             .manualAssign(true)
///                             .addresses("10.251.135.19")
///                             .build())
///                     .build())
///                 .build())
///             .build());
///
///         var nodepool_basic = new VMwareNodePool("nodepool-basic", VMwareNodePoolArgs.builder()
///             .name("my-nodepool")
///             .location("us-west1")
///             .vmwareCluster(default_basic.name())
///             .config(VMwareNodePoolConfigArgs.builder()
///                 .replicas(3)
///                 .imageType("ubuntu_containerd")
///                 .enableLoadBalancer(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default-basic:
///     type: gcp:gkeonprem:VMwareCluster
///     properties:
///       name: my-cluster
///       location: us-west1
///       adminClusterMembership: projects/870316890899/locations/global/memberships/gkeonprem-terraform-test
///       description: test cluster
///       onPremVersion: 1.13.1-gke.35
///       networkConfig:
///         serviceAddressCidrBlocks:
///           - 10.96.0.0/12
///         podAddressCidrBlocks:
///           - 192.168.0.0/16
///         dhcpIpConfig:
///           enabled: true
///       controlPlaneNode:
///         cpus: 4
///         memory: 8192
///         replicas: 1
///       loadBalancer:
///         vipConfig:
///           controlPlaneVip: 10.251.133.5
///           ingressVip: 10.251.135.19
///         metalLbConfig:
///           addressPools:
///             - pool: ingress-ip
///               manualAssign: 'true'
///               addresses:
///                 - 10.251.135.19
///             - pool: lb-test-ip
///               manualAssign: 'true'
///               addresses:
///                 - 10.251.135.19
///   nodepool-basic:
///     type: gcp:gkeonprem:VMwareNodePool
///     properties:
///       name: my-nodepool
///       location: us-west1
///       vmwareCluster: ${["default-basic"].name}
///       config:
///         replicas: 3
///         imageType: ubuntu_containerd
///         enableLoadBalancer: true
/// ```
///
/// ### Gkeonprem Vmware Node Pool Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const default_full = new gcp.gkeonprem.VMwareCluster("default-full", {
///     name: "my-cluster",
///     location: "us-west1",
///     adminClusterMembership: "projects/870316890899/locations/global/memberships/gkeonprem-terraform-test",
///     description: "test cluster",
///     onPremVersion: "1.33.0-gke.35",
///     networkConfig: {
///         serviceAddressCidrBlocks: ["10.96.0.0/12"],
///         podAddressCidrBlocks: ["192.168.0.0/16"],
///         dhcpIpConfig: {
///             enabled: true,
///         },
///     },
///     controlPlaneNode: {
///         cpus: 4,
///         memory: 8192,
///         replicas: 1,
///     },
///     loadBalancer: {
///         vipConfig: {
///             controlPlaneVip: "10.251.133.5",
///             ingressVip: "10.251.135.19",
///         },
///         metalLbConfig: {
///             addressPools: [
///                 {
///                     pool: "ingress-ip",
///                     manualAssign: true,
///                     addresses: ["10.251.135.19"],
///                 },
///                 {
///                     pool: "lb-test-ip",
///                     manualAssign: true,
///                     addresses: ["10.251.135.19"],
///                 },
///             ],
///         },
///     },
/// });
/// const nodepool_full = new gcp.gkeonprem.VMwareNodePool("nodepool-full", {
///     name: "my-nodepool",
///     location: "us-west1",
///     vmwareCluster: default_full.name,
///     onPremVersion: "1.33.0-gke.35",
///     annotations: {},
///     config: {
///         cpus: 4,
///         memoryMb: 8196,
///         replicas: 3,
///         imageType: "ubuntu_containerd",
///         image: "image",
///         bootDiskSizeGb: 10,
///         taints: [
///             {
///                 key: "key",
///                 value: "value",
///             },
///             {
///                 key: "key",
///                 value: "value",
///                 effect: "NO_SCHEDULE",
///             },
///         ],
///         labels: {},
///         vsphereConfig: {
///             datastore: "test-datastore",
///             tags: [
///                 {
///                     category: "test-category-1",
///                     tag: "tag-1",
///                 },
///                 {
///                     category: "test-category-2",
///                     tag: "tag-2",
///                 },
///             ],
///             hostGroups: [
///                 "host1",
///                 "host2",
///             ],
///         },
///         enableLoadBalancer: true,
///     },
///     nodePoolAutoscaling: {
///         minReplicas: 1,
///         maxReplicas: 5,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_full = gcp.gkeonprem.VMwareCluster("default-full",
///     name="my-cluster",
///     location="us-west1",
///     admin_cluster_membership="projects/870316890899/locations/global/memberships/gkeonprem-terraform-test",
///     description="test cluster",
///     on_prem_version="1.33.0-gke.35",
///     network_config={
///         "service_address_cidr_blocks": ["10.96.0.0/12"],
///         "pod_address_cidr_blocks": ["192.168.0.0/16"],
///         "dhcp_ip_config": {
///             "enabled": True,
///         },
///     },
///     control_plane_node={
///         "cpus": 4,
///         "memory": 8192,
///         "replicas": 1,
///     },
///     load_balancer={
///         "vip_config": {
///             "control_plane_vip": "10.251.133.5",
///             "ingress_vip": "10.251.135.19",
///         },
///         "metal_lb_config": {
///             "address_pools": [
///                 {
///                     "pool": "ingress-ip",
///                     "manual_assign": True,
///                     "addresses": ["10.251.135.19"],
///                 },
///                 {
///                     "pool": "lb-test-ip",
///                     "manual_assign": True,
///                     "addresses": ["10.251.135.19"],
///                 },
///             ],
///         },
///     })
/// nodepool_full = gcp.gkeonprem.VMwareNodePool("nodepool-full",
///     name="my-nodepool",
///     location="us-west1",
///     vmware_cluster=default_full.name,
///     on_prem_version="1.33.0-gke.35",
///     annotations={},
///     config={
///         "cpus": 4,
///         "memory_mb": 8196,
///         "replicas": 3,
///         "image_type": "ubuntu_containerd",
///         "image": "image",
///         "boot_disk_size_gb": 10,
///         "taints": [
///             {
///                 "key": "key",
///                 "value": "value",
///             },
///             {
///                 "key": "key",
///                 "value": "value",
///                 "effect": "NO_SCHEDULE",
///             },
///         ],
///         "labels": {},
///         "vsphere_config": {
///             "datastore": "test-datastore",
///             "tags": [
///                 {
///                     "category": "test-category-1",
///                     "tag": "tag-1",
///                 },
///                 {
///                     "category": "test-category-2",
///                     "tag": "tag-2",
///                 },
///             ],
///             "host_groups": [
///                 "host1",
///                 "host2",
///             ],
///         },
///         "enable_load_balancer": True,
///     },
///     node_pool_autoscaling={
///         "min_replicas": 1,
///         "max_replicas": 5,
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
///     var default_full = new Gcp.GkeOnPrem.VMwareCluster("default-full", new()
///     {
///         Name = "my-cluster",
///         Location = "us-west1",
///         AdminClusterMembership = "projects/870316890899/locations/global/memberships/gkeonprem-terraform-test",
///         Description = "test cluster",
///         OnPremVersion = "1.33.0-gke.35",
///         NetworkConfig = new Gcp.GkeOnPrem.Inputs.VMwareClusterNetworkConfigArgs
///         {
///             ServiceAddressCidrBlocks = new[]
///             {
///                 "10.96.0.0/12",
///             },
///             PodAddressCidrBlocks = new[]
///             {
///                 "192.168.0.0/16",
///             },
///             DhcpIpConfig = new Gcp.GkeOnPrem.Inputs.VMwareClusterNetworkConfigDhcpIpConfigArgs
///             {
///                 Enabled = true,
///             },
///         },
///         ControlPlaneNode = new Gcp.GkeOnPrem.Inputs.VMwareClusterControlPlaneNodeArgs
///         {
///             Cpus = 4,
///             Memory = 8192,
///             Replicas = 1,
///         },
///         LoadBalancer = new Gcp.GkeOnPrem.Inputs.VMwareClusterLoadBalancerArgs
///         {
///             VipConfig = new Gcp.GkeOnPrem.Inputs.VMwareClusterLoadBalancerVipConfigArgs
///             {
///                 ControlPlaneVip = "10.251.133.5",
///                 IngressVip = "10.251.135.19",
///             },
///             MetalLbConfig = new Gcp.GkeOnPrem.Inputs.VMwareClusterLoadBalancerMetalLbConfigArgs
///             {
///                 AddressPools = new[]
///                 {
///                     new Gcp.GkeOnPrem.Inputs.VMwareClusterLoadBalancerMetalLbConfigAddressPoolArgs
///                     {
///                         Pool = "ingress-ip",
///                         ManualAssign = true,
///                         Addresses = new[]
///                         {
///                             "10.251.135.19",
///                         },
///                     },
///                     new Gcp.GkeOnPrem.Inputs.VMwareClusterLoadBalancerMetalLbConfigAddressPoolArgs
///                     {
///                         Pool = "lb-test-ip",
///                         ManualAssign = true,
///                         Addresses = new[]
///                         {
///                             "10.251.135.19",
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
///     var nodepool_full = new Gcp.GkeOnPrem.VMwareNodePool("nodepool-full", new()
///     {
///         Name = "my-nodepool",
///         Location = "us-west1",
///         VmwareCluster = default_full.Name,
///         OnPremVersion = "1.33.0-gke.35",
///         Annotations = null,
///         Config = new Gcp.GkeOnPrem.Inputs.VMwareNodePoolConfigArgs
///         {
///             Cpus = 4,
///             MemoryMb = 8196,
///             Replicas = 3,
///             ImageType = "ubuntu_containerd",
///             Image = "image",
///             BootDiskSizeGb = 10,
///             Taints = new[]
///             {
///                 new Gcp.GkeOnPrem.Inputs.VMwareNodePoolConfigTaintArgs
///                 {
///                     Key = "key",
///                     Value = "value",
///                 },
///                 new Gcp.GkeOnPrem.Inputs.VMwareNodePoolConfigTaintArgs
///                 {
///                     Key = "key",
///                     Value = "value",
///                     Effect = "NO_SCHEDULE",
///                 },
///             },
///             Labels = null,
///             VsphereConfig = new Gcp.GkeOnPrem.Inputs.VMwareNodePoolConfigVsphereConfigArgs
///             {
///                 Datastore = "test-datastore",
///                 Tags = new[]
///                 {
///                     new Gcp.GkeOnPrem.Inputs.VMwareNodePoolConfigVsphereConfigTagArgs
///                     {
///                         Category = "test-category-1",
///                         Tag = "tag-1",
///                     },
///                     new Gcp.GkeOnPrem.Inputs.VMwareNodePoolConfigVsphereConfigTagArgs
///                     {
///                         Category = "test-category-2",
///                         Tag = "tag-2",
///                     },
///                 },
///                 HostGroups = new[]
///                 {
///                     "host1",
///                     "host2",
///                 },
///             },
///             EnableLoadBalancer = true,
///         },
///         NodePoolAutoscaling = new Gcp.GkeOnPrem.Inputs.VMwareNodePoolNodePoolAutoscalingArgs
///         {
///             MinReplicas = 1,
///             MaxReplicas = 5,
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
/// 		default_full, err := gkeonprem.NewVMwareCluster(ctx, "default-full", &gkeonprem.VMwareClusterArgs{
/// 			Name:                   pulumi.String("my-cluster"),
/// 			Location:               pulumi.String("us-west1"),
/// 			AdminClusterMembership: pulumi.String("projects/870316890899/locations/global/memberships/gkeonprem-terraform-test"),
/// 			Description:            pulumi.String("test cluster"),
/// 			OnPremVersion:          pulumi.String("1.33.0-gke.35"),
/// 			NetworkConfig: &gkeonprem.VMwareClusterNetworkConfigArgs{
/// 				ServiceAddressCidrBlocks: pulumi.StringArray{
/// 					pulumi.String("10.96.0.0/12"),
/// 				},
/// 				PodAddressCidrBlocks: pulumi.StringArray{
/// 					pulumi.String("192.168.0.0/16"),
/// 				},
/// 				DhcpIpConfig: &gkeonprem.VMwareClusterNetworkConfigDhcpIpConfigArgs{
/// 					Enabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 			ControlPlaneNode: &gkeonprem.VMwareClusterControlPlaneNodeArgs{
/// 				Cpus:     pulumi.Int(4),
/// 				Memory:   pulumi.Int(8192),
/// 				Replicas: pulumi.Int(1),
/// 			},
/// 			LoadBalancer: &gkeonprem.VMwareClusterLoadBalancerArgs{
/// 				VipConfig: &gkeonprem.VMwareClusterLoadBalancerVipConfigArgs{
/// 					ControlPlaneVip: pulumi.String("10.251.133.5"),
/// 					IngressVip:      pulumi.String("10.251.135.19"),
/// 				},
/// 				MetalLbConfig: &gkeonprem.VMwareClusterLoadBalancerMetalLbConfigArgs{
/// 					AddressPools: gkeonprem.VMwareClusterLoadBalancerMetalLbConfigAddressPoolArray{
/// 						&gkeonprem.VMwareClusterLoadBalancerMetalLbConfigAddressPoolArgs{
/// 							Pool:         pulumi.String("ingress-ip"),
/// 							ManualAssign: pulumi.Bool(true),
/// 							Addresses: pulumi.StringArray{
/// 								pulumi.String("10.251.135.19"),
/// 							},
/// 						},
/// 						&gkeonprem.VMwareClusterLoadBalancerMetalLbConfigAddressPoolArgs{
/// 							Pool:         pulumi.String("lb-test-ip"),
/// 							ManualAssign: pulumi.Bool(true),
/// 							Addresses: pulumi.StringArray{
/// 								pulumi.String("10.251.135.19"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gkeonprem.NewVMwareNodePool(ctx, "nodepool-full", &gkeonprem.VMwareNodePoolArgs{
/// 			Name:          pulumi.String("my-nodepool"),
/// 			Location:      pulumi.String("us-west1"),
/// 			VmwareCluster: default_full.Name,
/// 			OnPremVersion: pulumi.String("1.33.0-gke.35"),
/// 			Annotations:   pulumi.StringMap{},
/// 			Config: &gkeonprem.VMwareNodePoolConfigArgs{
/// 				Cpus:           pulumi.Int(4),
/// 				MemoryMb:       pulumi.Int(8196),
/// 				Replicas:       pulumi.Int(3),
/// 				ImageType:      pulumi.String("ubuntu_containerd"),
/// 				Image:          pulumi.String("image"),
/// 				BootDiskSizeGb: pulumi.Int(10),
/// 				Taints: gkeonprem.VMwareNodePoolConfigTaintArray{
/// 					&gkeonprem.VMwareNodePoolConfigTaintArgs{
/// 						Key:   pulumi.String("key"),
/// 						Value: pulumi.String("value"),
/// 					},
/// 					&gkeonprem.VMwareNodePoolConfigTaintArgs{
/// 						Key:    pulumi.String("key"),
/// 						Value:  pulumi.String("value"),
/// 						Effect: pulumi.String("NO_SCHEDULE"),
/// 					},
/// 				},
/// 				Labels: pulumi.StringMap{},
/// 				VsphereConfig: &gkeonprem.VMwareNodePoolConfigVsphereConfigArgs{
/// 					Datastore: pulumi.String("test-datastore"),
/// 					Tags: gkeonprem.VMwareNodePoolConfigVsphereConfigTagArray{
/// 						&gkeonprem.VMwareNodePoolConfigVsphereConfigTagArgs{
/// 							Category: pulumi.String("test-category-1"),
/// 							Tag:      pulumi.String("tag-1"),
/// 						},
/// 						&gkeonprem.VMwareNodePoolConfigVsphereConfigTagArgs{
/// 							Category: pulumi.String("test-category-2"),
/// 							Tag:      pulumi.String("tag-2"),
/// 						},
/// 					},
/// 					HostGroups: pulumi.StringArray{
/// 						pulumi.String("host1"),
/// 						pulumi.String("host2"),
/// 					},
/// 				},
/// 				EnableLoadBalancer: pulumi.Bool(true),
/// 			},
/// 			NodePoolAutoscaling: &gkeonprem.VMwareNodePoolNodePoolAutoscalingArgs{
/// 				MinReplicas: pulumi.Int(1),
/// 				MaxReplicas: pulumi.Int(5),
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
/// import com.pulumi.gcp.gkeonprem.VMwareCluster;
/// import com.pulumi.gcp.gkeonprem.VMwareClusterArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VMwareClusterNetworkConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VMwareClusterNetworkConfigDhcpIpConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VMwareClusterControlPlaneNodeArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VMwareClusterLoadBalancerArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VMwareClusterLoadBalancerVipConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VMwareClusterLoadBalancerMetalLbConfigArgs;
/// import com.pulumi.gcp.gkeonprem.VMwareNodePool;
/// import com.pulumi.gcp.gkeonprem.VMwareNodePoolArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VMwareNodePoolConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VMwareNodePoolConfigVsphereConfigArgs;
/// import com.pulumi.gcp.gkeonprem.inputs.VMwareNodePoolNodePoolAutoscalingArgs;
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
///         var default_full = new VMwareCluster("default-full", VMwareClusterArgs.builder()
///             .name("my-cluster")
///             .location("us-west1")
///             .adminClusterMembership("projects/870316890899/locations/global/memberships/gkeonprem-terraform-test")
///             .description("test cluster")
///             .onPremVersion("1.33.0-gke.35")
///             .networkConfig(VMwareClusterNetworkConfigArgs.builder()
///                 .serviceAddressCidrBlocks("10.96.0.0/12")
///                 .podAddressCidrBlocks("192.168.0.0/16")
///                 .dhcpIpConfig(VMwareClusterNetworkConfigDhcpIpConfigArgs.builder()
///                     .enabled(true)
///                     .build())
///                 .build())
///             .controlPlaneNode(VMwareClusterControlPlaneNodeArgs.builder()
///                 .cpus(4)
///                 .memory(8192)
///                 .replicas(1)
///                 .build())
///             .loadBalancer(VMwareClusterLoadBalancerArgs.builder()
///                 .vipConfig(VMwareClusterLoadBalancerVipConfigArgs.builder()
///                     .controlPlaneVip("10.251.133.5")
///                     .ingressVip("10.251.135.19")
///                     .build())
///                 .metalLbConfig(VMwareClusterLoadBalancerMetalLbConfigArgs.builder()
///                     .addressPools(
///                         VMwareClusterLoadBalancerMetalLbConfigAddressPoolArgs.builder()
///                             .pool("ingress-ip")
///                             .manualAssign(true)
///                             .addresses("10.251.135.19")
///                             .build(),
///                         VMwareClusterLoadBalancerMetalLbConfigAddressPoolArgs.builder()
///                             .pool("lb-test-ip")
///                             .manualAssign(true)
///                             .addresses("10.251.135.19")
///                             .build())
///                     .build())
///                 .build())
///             .build());
///
///         var nodepool_full = new VMwareNodePool("nodepool-full", VMwareNodePoolArgs.builder()
///             .name("my-nodepool")
///             .location("us-west1")
///             .vmwareCluster(default_full.name())
///             .onPremVersion("1.33.0-gke.35")
///             .annotations(Map.ofEntries(
///             ))
///             .config(VMwareNodePoolConfigArgs.builder()
///                 .cpus(4)
///                 .memoryMb(8196)
///                 .replicas(3)
///                 .imageType("ubuntu_containerd")
///                 .image("image")
///                 .bootDiskSizeGb(10)
///                 .taints(
///                     VMwareNodePoolConfigTaintArgs.builder()
///                         .key("key")
///                         .value("value")
///                         .build(),
///                     VMwareNodePoolConfigTaintArgs.builder()
///                         .key("key")
///                         .value("value")
///                         .effect("NO_SCHEDULE")
///                         .build())
///                 .labels(Map.ofEntries(
///                 ))
///                 .vsphereConfig(VMwareNodePoolConfigVsphereConfigArgs.builder()
///                     .datastore("test-datastore")
///                     .tags(
///                         VMwareNodePoolConfigVsphereConfigTagArgs.builder()
///                             .category("test-category-1")
///                             .tag("tag-1")
///                             .build(),
///                         VMwareNodePoolConfigVsphereConfigTagArgs.builder()
///                             .category("test-category-2")
///                             .tag("tag-2")
///                             .build())
///                     .hostGroups(
///                         "host1",
///                         "host2")
///                     .build())
///                 .enableLoadBalancer(true)
///                 .build())
///             .nodePoolAutoscaling(VMwareNodePoolNodePoolAutoscalingArgs.builder()
///                 .minReplicas(1)
///                 .maxReplicas(5)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default-full:
///     type: gcp:gkeonprem:VMwareCluster
///     properties:
///       name: my-cluster
///       location: us-west1
///       adminClusterMembership: projects/870316890899/locations/global/memberships/gkeonprem-terraform-test
///       description: test cluster
///       onPremVersion: 1.33.0-gke.35
///       networkConfig:
///         serviceAddressCidrBlocks:
///           - 10.96.0.0/12
///         podAddressCidrBlocks:
///           - 192.168.0.0/16
///         dhcpIpConfig:
///           enabled: true
///       controlPlaneNode:
///         cpus: 4
///         memory: 8192
///         replicas: 1
///       loadBalancer:
///         vipConfig:
///           controlPlaneVip: 10.251.133.5
///           ingressVip: 10.251.135.19
///         metalLbConfig:
///           addressPools:
///             - pool: ingress-ip
///               manualAssign: 'true'
///               addresses:
///                 - 10.251.135.19
///             - pool: lb-test-ip
///               manualAssign: 'true'
///               addresses:
///                 - 10.251.135.19
///   nodepool-full:
///     type: gcp:gkeonprem:VMwareNodePool
///     properties:
///       name: my-nodepool
///       location: us-west1
///       vmwareCluster: ${["default-full"].name}
///       onPremVersion: 1.33.0-gke.35
///       annotations: {}
///       config:
///         cpus: 4
///         memoryMb: 8196
///         replicas: 3
///         imageType: ubuntu_containerd
///         image: image
///         bootDiskSizeGb: 10
///         taints:
///           - key: key
///             value: value
///           - key: key
///             value: value
///             effect: NO_SCHEDULE
///         labels: {}
///         vsphereConfig:
///           datastore: test-datastore
///           tags:
///             - category: test-category-1
///               tag: tag-1
///             - category: test-category-2
///               tag: tag-2
///           hostGroups:
///             - host1
///             - host2
///         enableLoadBalancer: true
///       nodePoolAutoscaling:
///         minReplicas: 1
///         maxReplicas: 5
/// ```
///
///
/// ## Import
///
/// VmwareNodePool can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/vmwareClusters/{{vmware_cluster}}/vmwareNodePools/{{name}}`
///
/// * `{{project}}/{{location}}/{{vmware_cluster}}/{{name}}`
///
/// * `{{location}}/{{vmware_cluster}}/{{name}}`
///
/// When using the `pulumi import` command, VmwareNodePool can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gkeonprem/vMwareNodePool:VMwareNodePool default projects/{{project}}/locations/{{location}}/vmwareClusters/{{vmware_cluster}}/vmwareNodePools/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkeonprem/vMwareNodePool:VMwareNodePool default {{project}}/{{location}}/{{vmware_cluster}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkeonprem/vMwareNodePool:VMwareNodePool default {{location}}/{{vmware_cluster}}/{{name}}
/// ```
class VMwareNodePool extends pulumi.CustomResource {
  /// Annotations on the node Pool.
  /// This field has the same restrictions as Kubernetes annotations.
  /// The total size of all keys and values combined is limited to 256k.
  /// Key can have 2 segments: prefix (optional) and name (required),
  /// separated by a slash (/).
  /// Prefix must be a DNS subdomain.
  /// Name must be 63 characters or less, begin and end with alphanumerics,
  /// with dashes (-), underscores (_), dots (.), and alphanumerics between.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;
  /// The node configuration of the node pool.
  /// Structure is documented below.
  late final pulumi.Output<VMwareNodePoolConfig> config;
  /// The time the cluster was created, in RFC3339 text format.
  late final pulumi.Output<String> createTime;
  /// The time the cluster was deleted, in RFC3339 text format.
  late final pulumi.Output<String> deleteTime;
  /// The display name for the node pool.
  late final pulumi.Output<String?> displayName;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;
  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the
  /// client has an up-to-date value before proceeding.
  /// Allows clients to perform consistent read-modify-writes
  /// through optimistic concurrency control.
  late final pulumi.Output<String> etag;
  /// The location of the resource.
  late final pulumi.Output<String> location;
  /// The vmware node pool name.
  late final pulumi.Output<String> name;
  /// Node Pool autoscaling config for the node pool.
  /// Structure is documented below.
  late final pulumi.Output<VMwareNodePoolNodePoolAutoscaling?> nodePoolAutoscaling;
  /// Anthos version for the node pool. Defaults to the user cluster version.
  late final pulumi.Output<String?> onPremVersion;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// If set, there are currently changes in flight to the node pool.
  late final pulumi.Output<bool> reconciling;
  /// (Output)
  /// The lifecycle state of the condition.
  late final pulumi.Output<String> state;
  /// ResourceStatus representing detailed cluster state.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> statuses;
  /// The unique identifier of the node pool.
  late final pulumi.Output<String> uid;
  /// The time the cluster was last updated, in RFC3339 text format.
  late final pulumi.Output<String> updateTime;
  /// The cluster this node pool belongs to.
  late final pulumi.Output<String> vmwareCluster;

  /// Creates a new [VMwareNodePool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VMwareNodePool]. {@macro pulumi_gkeonprem_v_mware_node_pool_vmware_node_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VMwareNodePool(
    String name, {
    VMwareNodePoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gkeonprem/vMwareNodePool:VMwareNodePool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    annotations = registerOutput<Map<String, String>?>('annotations');
    config = registerOutput<VMwareNodePoolConfig>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VMwareNodePoolConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deleteTime = registerOutput<String>('deleteTime');
    displayName = registerOutput<String?>('displayName');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    nodePoolAutoscaling = registerOutput<VMwareNodePoolNodePoolAutoscaling?>('nodePoolAutoscaling', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VMwareNodePoolNodePoolAutoscaling.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    onPremVersion = registerOutput<String?>('onPremVersion');
    project = registerOutput<String>('project');
    reconciling = registerOutput<bool>('reconciling');
    state = registerOutput<String>('state');
    statuses = registerOutput<List<Map<String, dynamic>>>('statuses');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
    vmwareCluster = registerOutput<String>('vmwareCluster');
  }

  /// Gets an existing [VMwareNodePool] resource's state with the given [name] and [id].
  static VMwareNodePool get(
    String name,
    pulumi.Input<String> id, {
    VMwareNodePoolState? state,
  }) {
    return VMwareNodePool._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VMwareNodePool._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gkeonprem/vMwareNodePool:VMwareNodePool',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    annotations = registerOutput<Map<String, String>?>('annotations');
    config = registerOutput<VMwareNodePoolConfig>('config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VMwareNodePoolConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deleteTime = registerOutput<String>('deleteTime');
    displayName = registerOutput<String?>('displayName');
    effectiveAnnotations = registerOutput<Map<String, String>>('effectiveAnnotations');
    etag = registerOutput<String>('etag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    nodePoolAutoscaling = registerOutput<VMwareNodePoolNodePoolAutoscaling?>('nodePoolAutoscaling', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VMwareNodePoolNodePoolAutoscaling.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    onPremVersion = registerOutput<String?>('onPremVersion');
    project = registerOutput<String>('project');
    reconciling = registerOutput<bool>('reconciling');
    this.state = registerOutput<String>('state');
    statuses = registerOutput<List<Map<String, dynamic>>>('statuses');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
    vmwareCluster = registerOutput<String>('vmwareCluster');
  }
}
