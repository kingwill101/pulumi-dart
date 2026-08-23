import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_args.dart';
import 'cluster_autoscaling_settings.dart';
import 'cluster_state.dart';

/// A cluster in a private cloud.
///
///
/// To get more information about Cluster, see:
///
/// * [API documentation](https://cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.privateClouds.clusters)
///
/// ## Example Usage
///
/// ### Vmware Engine Cluster Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cluster_nw = new gcp.vmwareengine.Network("cluster-nw", {
///     name: "pc-nw",
///     type: "STANDARD",
///     location: "global",
///     description: "PC network description.",
/// });
/// const cluster_pc = new gcp.vmwareengine.PrivateCloud("cluster-pc", {
///     location: "us-west1-a",
///     name: "sample-pc",
///     description: "Sample test PC.",
///     networkConfig: {
///         managementCidr: "192.168.30.0/24",
///         vmwareEngineNetwork: cluster_nw.id,
///     },
///     managementCluster: {
///         clusterId: "sample-mgmt-cluster",
///         nodeTypeConfigs: [{
///             nodeTypeId: "standard-72",
///             nodeCount: 3,
///         }],
///     },
/// });
/// const vmw_engine_ext_cluster = new gcp.vmwareengine.Cluster("vmw-engine-ext-cluster", {
///     name: "ext-cluster",
///     parent: cluster_pc.id,
///     nodeTypeConfigs: [{
///         nodeTypeId: "standard-72",
///         nodeCount: 3,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// cluster_nw = gcp.vmwareengine.Network("cluster-nw",
///     name="pc-nw",
///     type="STANDARD",
///     location="global",
///     description="PC network description.")
/// cluster_pc = gcp.vmwareengine.PrivateCloud("cluster-pc",
///     location="us-west1-a",
///     name="sample-pc",
///     description="Sample test PC.",
///     network_config={
///         "management_cidr": "192.168.30.0/24",
///         "vmware_engine_network": cluster_nw.id,
///     },
///     management_cluster={
///         "cluster_id": "sample-mgmt-cluster",
///         "node_type_configs": [{
///             "node_type_id": "standard-72",
///             "node_count": 3,
///         }],
///     })
/// vmw_engine_ext_cluster = gcp.vmwareengine.Cluster("vmw-engine-ext-cluster",
///     name="ext-cluster",
///     parent=cluster_pc.id,
///     node_type_configs=[{
///         "node_type_id": "standard-72",
///         "node_count": 3,
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
///     var cluster_nw = new Gcp.VMwareEngine.Network("cluster-nw", new()
///     {
///         Name = "pc-nw",
///         Type = "STANDARD",
///         Location = "global",
///         Description = "PC network description.",
///     });
///
///     var cluster_pc = new Gcp.VMwareEngine.PrivateCloud("cluster-pc", new()
///     {
///         Location = "us-west1-a",
///         Name = "sample-pc",
///         Description = "Sample test PC.",
///         NetworkConfig = new Gcp.VMwareEngine.Inputs.PrivateCloudNetworkConfigArgs
///         {
///             ManagementCidr = "192.168.30.0/24",
///             VmwareEngineNetwork = cluster_nw.Id,
///         },
///         ManagementCluster = new Gcp.VMwareEngine.Inputs.PrivateCloudManagementClusterArgs
///         {
///             ClusterId = "sample-mgmt-cluster",
///             NodeTypeConfigs = new[]
///             {
///                 new Gcp.VMwareEngine.Inputs.PrivateCloudManagementClusterNodeTypeConfigArgs
///                 {
///                     NodeTypeId = "standard-72",
///                     NodeCount = 3,
///                 },
///             },
///         },
///     });
///
///     var vmw_engine_ext_cluster = new Gcp.VMwareEngine.Cluster("vmw-engine-ext-cluster", new()
///     {
///         Name = "ext-cluster",
///         Parent = cluster_pc.Id,
///         NodeTypeConfigs = new[]
///         {
///             new Gcp.VMwareEngine.Inputs.ClusterNodeTypeConfigArgs
///             {
///                 NodeTypeId = "standard-72",
///                 NodeCount = 3,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vmwareengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cluster_nw, err := vmwareengine.NewNetwork(ctx, "cluster-nw", &vmwareengine.NetworkArgs{
/// 			Name:        pulumi.String("pc-nw"),
/// 			Type:        pulumi.String("STANDARD"),
/// 			Location:    pulumi.String("global"),
/// 			Description: pulumi.String("PC network description."),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cluster_pc, err := vmwareengine.NewPrivateCloud(ctx, "cluster-pc", &vmwareengine.PrivateCloudArgs{
/// 			Location:    pulumi.String("us-west1-a"),
/// 			Name:        pulumi.String("sample-pc"),
/// 			Description: pulumi.String("Sample test PC."),
/// 			NetworkConfig: &vmwareengine.PrivateCloudNetworkConfigArgs{
/// 				ManagementCidr:      pulumi.String("192.168.30.0/24"),
/// 				VmwareEngineNetwork: cluster_nw.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			ManagementCluster: &vmwareengine.PrivateCloudManagementClusterArgs{
/// 				ClusterId: pulumi.String("sample-mgmt-cluster"),
/// 				NodeTypeConfigs: vmwareengine.PrivateCloudManagementClusterNodeTypeConfigArray{
/// 					&vmwareengine.PrivateCloudManagementClusterNodeTypeConfigArgs{
/// 						NodeTypeId: pulumi.String("standard-72"),
/// 						NodeCount:  pulumi.Int(3),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vmwareengine.NewCluster(ctx, "vmw-engine-ext-cluster", &vmwareengine.ClusterArgs{
/// 			Name:   pulumi.String("ext-cluster"),
/// 			Parent: cluster_pc.ID().ToIDOutput().ToStringOutput(),
/// 			NodeTypeConfigs: vmwareengine.ClusterNodeTypeConfigArray{
/// 				&vmwareengine.ClusterNodeTypeConfigArgs{
/// 					NodeTypeId: pulumi.String("standard-72"),
/// 					NodeCount:  pulumi.Int(3),
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
/// resource "gcp_vmwareengine_cluster" "vmw-engine-ext-cluster" {
///   name   = "ext-cluster"
///   parent = gcp_vmwareengine_privatecloud.cluster-pc.id
///   node_type_configs {
///     node_type_id = "standard-72"
///     node_count   = 3
///   }
/// }
/// resource "gcp_vmwareengine_privatecloud" "cluster-pc" {
///   location    = "us-west1-a"
///   name        = "sample-pc"
///   description = "Sample test PC."
///   network_config = {
///     management_cidr       = "192.168.30.0/24"
///     vmware_engine_network = gcp_vmwareengine_network.cluster-nw.id
///   }
///   management_cluster = {
///     cluster_id = "sample-mgmt-cluster"
///     node_type_configs = [{
///       "nodeTypeId" = "standard-72"
///       "nodeCount"  = 3
///     }]
///   }
/// }
/// resource "gcp_vmwareengine_network" "cluster-nw" {
///   name        = "pc-nw"
///   type        = "STANDARD"
///   location    = "global"
///   description = "PC network description."
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vmwareengine.Network;
/// import com.pulumi.gcp.vmwareengine.NetworkArgs;
/// import com.pulumi.gcp.vmwareengine.PrivateCloud;
/// import com.pulumi.gcp.vmwareengine.PrivateCloudArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.PrivateCloudNetworkConfigArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.PrivateCloudManagementClusterArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.PrivateCloudManagementClusterNodeTypeConfigArgs;
/// import com.pulumi.gcp.vmwareengine.Cluster;
/// import com.pulumi.gcp.vmwareengine.ClusterArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.ClusterNodeTypeConfigArgs;
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
///         var cluster_nw = new Network("cluster-nw", NetworkArgs.builder()
///             .name("pc-nw")
///             .type("STANDARD")
///             .location("global")
///             .description("PC network description.")
///             .build());
///
///         var cluster_pc = new PrivateCloud("cluster-pc", PrivateCloudArgs.builder()
///             .location("us-west1-a")
///             .name("sample-pc")
///             .description("Sample test PC.")
///             .networkConfig(PrivateCloudNetworkConfigArgs.builder()
///                 .managementCidr("192.168.30.0/24")
///                 .vmwareEngineNetwork(cluster_nw.id())
///                 .build())
///             .managementCluster(PrivateCloudManagementClusterArgs.builder()
///                 .clusterId("sample-mgmt-cluster")
///                 .nodeTypeConfigs(PrivateCloudManagementClusterNodeTypeConfigArgs.builder()
///                     .nodeTypeId("standard-72")
///                     .nodeCount(3)
///                     .build())
///                 .build())
///             .build());
///
///         var vmw_engine_ext_cluster = new Cluster("vmw-engine-ext-cluster", ClusterArgs.builder()
///             .name("ext-cluster")
///             .parent(cluster_pc.id())
///             .nodeTypeConfigs(ClusterNodeTypeConfigArgs.builder()
///                 .nodeTypeId("standard-72")
///                 .nodeCount(3)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   vmw-engine-ext-cluster:
///     type: gcp:vmwareengine:Cluster
///     properties:
///       name: ext-cluster
///       parent: ${["cluster-pc"].id}
///       nodeTypeConfigs:
///         - nodeTypeId: standard-72
///           nodeCount: 3
///   cluster-pc:
///     type: gcp:vmwareengine:PrivateCloud
///     properties:
///       location: us-west1-a
///       name: sample-pc
///       description: Sample test PC.
///       networkConfig:
///         managementCidr: 192.168.30.0/24
///         vmwareEngineNetwork: ${["cluster-nw"].id}
///       managementCluster:
///         clusterId: sample-mgmt-cluster
///         nodeTypeConfigs:
///           - nodeTypeId: standard-72
///             nodeCount: 3
///   cluster-nw:
///     type: gcp:vmwareengine:Network
///     properties:
///       name: pc-nw
///       type: STANDARD
///       location: global
///       description: PC network description.
/// ```
///
/// ### Vmware Engine Cluster Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cluster_nw = new gcp.vmwareengine.Network("cluster-nw", {
///     name: "pc-nw",
///     type: "STANDARD",
///     location: "global",
///     description: "PC network description.",
/// });
/// const cluster_pc = new gcp.vmwareengine.PrivateCloud("cluster-pc", {
///     location: "us-west1-a",
///     name: "sample-pc",
///     description: "Sample test PC.",
///     networkConfig: {
///         managementCidr: "192.168.30.0/24",
///         vmwareEngineNetwork: cluster_nw.id,
///     },
///     managementCluster: {
///         clusterId: "sample-mgmt-cluster",
///         nodeTypeConfigs: [{
///             nodeTypeId: "standard-72",
///             nodeCount: 3,
///             customCoreCount: 32,
///         }],
///     },
/// });
/// const vmw_ext_cluster = new gcp.vmwareengine.Cluster("vmw-ext-cluster", {
///     name: "ext-cluster",
///     parent: cluster_pc.id,
///     nodeTypeConfigs: [{
///         nodeTypeId: "standard-72",
///         nodeCount: 3,
///         customCoreCount: 32,
///     }],
///     autoscalingSettings: {
///         autoscalingPolicies: [{
///             autoscalePolicyId: "autoscaling-policy",
///             nodeTypeId: "standard-72",
///             scaleOutSize: 1,
///             cpuThresholds: {
///                 scaleOut: 80,
///                 scaleIn: 15,
///             },
///             consumedMemoryThresholds: {
///                 scaleOut: 75,
///                 scaleIn: 20,
///             },
///             storageThresholds: {
///                 scaleOut: 80,
///                 scaleIn: 20,
///             },
///         }],
///         minClusterNodeCount: 3,
///         maxClusterNodeCount: 8,
///         coolDownPeriod: "1800s",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// cluster_nw = gcp.vmwareengine.Network("cluster-nw",
///     name="pc-nw",
///     type="STANDARD",
///     location="global",
///     description="PC network description.")
/// cluster_pc = gcp.vmwareengine.PrivateCloud("cluster-pc",
///     location="us-west1-a",
///     name="sample-pc",
///     description="Sample test PC.",
///     network_config={
///         "management_cidr": "192.168.30.0/24",
///         "vmware_engine_network": cluster_nw.id,
///     },
///     management_cluster={
///         "cluster_id": "sample-mgmt-cluster",
///         "node_type_configs": [{
///             "node_type_id": "standard-72",
///             "node_count": 3,
///             "custom_core_count": 32,
///         }],
///     })
/// vmw_ext_cluster = gcp.vmwareengine.Cluster("vmw-ext-cluster",
///     name="ext-cluster",
///     parent=cluster_pc.id,
///     node_type_configs=[{
///         "node_type_id": "standard-72",
///         "node_count": 3,
///         "custom_core_count": 32,
///     }],
///     autoscaling_settings={
///         "autoscaling_policies": [{
///             "autoscale_policy_id": "autoscaling-policy",
///             "node_type_id": "standard-72",
///             "scale_out_size": 1,
///             "cpu_thresholds": {
///                 "scale_out": 80,
///                 "scale_in": 15,
///             },
///             "consumed_memory_thresholds": {
///                 "scale_out": 75,
///                 "scale_in": 20,
///             },
///             "storage_thresholds": {
///                 "scale_out": 80,
///                 "scale_in": 20,
///             },
///         }],
///         "min_cluster_node_count": 3,
///         "max_cluster_node_count": 8,
///         "cool_down_period": "1800s",
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
///     var cluster_nw = new Gcp.VMwareEngine.Network("cluster-nw", new()
///     {
///         Name = "pc-nw",
///         Type = "STANDARD",
///         Location = "global",
///         Description = "PC network description.",
///     });
///
///     var cluster_pc = new Gcp.VMwareEngine.PrivateCloud("cluster-pc", new()
///     {
///         Location = "us-west1-a",
///         Name = "sample-pc",
///         Description = "Sample test PC.",
///         NetworkConfig = new Gcp.VMwareEngine.Inputs.PrivateCloudNetworkConfigArgs
///         {
///             ManagementCidr = "192.168.30.0/24",
///             VmwareEngineNetwork = cluster_nw.Id,
///         },
///         ManagementCluster = new Gcp.VMwareEngine.Inputs.PrivateCloudManagementClusterArgs
///         {
///             ClusterId = "sample-mgmt-cluster",
///             NodeTypeConfigs = new[]
///             {
///                 new Gcp.VMwareEngine.Inputs.PrivateCloudManagementClusterNodeTypeConfigArgs
///                 {
///                     NodeTypeId = "standard-72",
///                     NodeCount = 3,
///                     CustomCoreCount = 32,
///                 },
///             },
///         },
///     });
///
///     var vmw_ext_cluster = new Gcp.VMwareEngine.Cluster("vmw-ext-cluster", new()
///     {
///         Name = "ext-cluster",
///         Parent = cluster_pc.Id,
///         NodeTypeConfigs = new[]
///         {
///             new Gcp.VMwareEngine.Inputs.ClusterNodeTypeConfigArgs
///             {
///                 NodeTypeId = "standard-72",
///                 NodeCount = 3,
///                 CustomCoreCount = 32,
///             },
///         },
///         AutoscalingSettings = new Gcp.VMwareEngine.Inputs.ClusterAutoscalingSettingsArgs
///         {
///             AutoscalingPolicies = new[]
///             {
///                 new Gcp.VMwareEngine.Inputs.ClusterAutoscalingSettingsAutoscalingPolicyArgs
///                 {
///                     AutoscalePolicyId = "autoscaling-policy",
///                     NodeTypeId = "standard-72",
///                     ScaleOutSize = 1,
///                     CpuThresholds = new Gcp.VMwareEngine.Inputs.ClusterAutoscalingSettingsAutoscalingPolicyCpuThresholdsArgs
///                     {
///                         ScaleOut = 80,
///                         ScaleIn = 15,
///                     },
///                     ConsumedMemoryThresholds = new Gcp.VMwareEngine.Inputs.ClusterAutoscalingSettingsAutoscalingPolicyConsumedMemoryThresholdsArgs
///                     {
///                         ScaleOut = 75,
///                         ScaleIn = 20,
///                     },
///                     StorageThresholds = new Gcp.VMwareEngine.Inputs.ClusterAutoscalingSettingsAutoscalingPolicyStorageThresholdsArgs
///                     {
///                         ScaleOut = 80,
///                         ScaleIn = 20,
///                     },
///                 },
///             },
///             MinClusterNodeCount = 3,
///             MaxClusterNodeCount = 8,
///             CoolDownPeriod = "1800s",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vmwareengine"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cluster_nw, err := vmwareengine.NewNetwork(ctx, "cluster-nw", &vmwareengine.NetworkArgs{
/// 			Name:        pulumi.String("pc-nw"),
/// 			Type:        pulumi.String("STANDARD"),
/// 			Location:    pulumi.String("global"),
/// 			Description: pulumi.String("PC network description."),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cluster_pc, err := vmwareengine.NewPrivateCloud(ctx, "cluster-pc", &vmwareengine.PrivateCloudArgs{
/// 			Location:    pulumi.String("us-west1-a"),
/// 			Name:        pulumi.String("sample-pc"),
/// 			Description: pulumi.String("Sample test PC."),
/// 			NetworkConfig: &vmwareengine.PrivateCloudNetworkConfigArgs{
/// 				ManagementCidr:      pulumi.String("192.168.30.0/24"),
/// 				VmwareEngineNetwork: cluster_nw.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			ManagementCluster: &vmwareengine.PrivateCloudManagementClusterArgs{
/// 				ClusterId: pulumi.String("sample-mgmt-cluster"),
/// 				NodeTypeConfigs: vmwareengine.PrivateCloudManagementClusterNodeTypeConfigArray{
/// 					&vmwareengine.PrivateCloudManagementClusterNodeTypeConfigArgs{
/// 						NodeTypeId:      pulumi.String("standard-72"),
/// 						NodeCount:       pulumi.Int(3),
/// 						CustomCoreCount: pulumi.Int(32),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vmwareengine.NewCluster(ctx, "vmw-ext-cluster", &vmwareengine.ClusterArgs{
/// 			Name:   pulumi.String("ext-cluster"),
/// 			Parent: cluster_pc.ID().ToIDOutput().ToStringOutput(),
/// 			NodeTypeConfigs: vmwareengine.ClusterNodeTypeConfigArray{
/// 				&vmwareengine.ClusterNodeTypeConfigArgs{
/// 					NodeTypeId:      pulumi.String("standard-72"),
/// 					NodeCount:       pulumi.Int(3),
/// 					CustomCoreCount: pulumi.Int(32),
/// 				},
/// 			},
/// 			AutoscalingSettings: &vmwareengine.ClusterAutoscalingSettingsArgs{
/// 				AutoscalingPolicies: vmwareengine.ClusterAutoscalingSettingsAutoscalingPolicyArray{
/// 					&vmwareengine.ClusterAutoscalingSettingsAutoscalingPolicyArgs{
/// 						AutoscalePolicyId: pulumi.String("autoscaling-policy"),
/// 						NodeTypeId:        pulumi.String("standard-72"),
/// 						ScaleOutSize:      pulumi.Int(1),
/// 						CpuThresholds: &vmwareengine.ClusterAutoscalingSettingsAutoscalingPolicyCpuThresholdsArgs{
/// 							ScaleOut: pulumi.Int(80),
/// 							ScaleIn:  pulumi.Int(15),
/// 						},
/// 						ConsumedMemoryThresholds: &vmwareengine.ClusterAutoscalingSettingsAutoscalingPolicyConsumedMemoryThresholdsArgs{
/// 							ScaleOut: pulumi.Int(75),
/// 							ScaleIn:  pulumi.Int(20),
/// 						},
/// 						StorageThresholds: &vmwareengine.ClusterAutoscalingSettingsAutoscalingPolicyStorageThresholdsArgs{
/// 							ScaleOut: pulumi.Int(80),
/// 							ScaleIn:  pulumi.Int(20),
/// 						},
/// 					},
/// 				},
/// 				MinClusterNodeCount: pulumi.Int(3),
/// 				MaxClusterNodeCount: pulumi.Int(8),
/// 				CoolDownPeriod:      pulumi.String("1800s"),
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
/// resource "gcp_vmwareengine_cluster" "vmw-ext-cluster" {
///   name   = "ext-cluster"
///   parent = gcp_vmwareengine_privatecloud.cluster-pc.id
///   node_type_configs {
///     node_type_id      = "standard-72"
///     node_count        = 3
///     custom_core_count = 32
///   }
///   autoscaling_settings = {
///     autoscaling_policies = [{
///       "autoscalePolicyId" = "autoscaling-policy"
///       "nodeTypeId"        = "standard-72"
///       "scaleOutSize"      = 1
///       "cpuThresholds" = {
///         "scaleOut" = 80
///         "scaleIn"  = 15
///       }
///       "consumedMemoryThresholds" = {
///         "scaleOut" = 75
///         "scaleIn"  = 20
///       }
///       "storageThresholds" = {
///         "scaleOut" = 80
///         "scaleIn"  = 20
///       }
///     }]
///     min_cluster_node_count = 3
///     max_cluster_node_count = 8
///     cool_down_period       = "1800s"
///   }
/// }
/// resource "gcp_vmwareengine_privatecloud" "cluster-pc" {
///   location    = "us-west1-a"
///   name        = "sample-pc"
///   description = "Sample test PC."
///   network_config = {
///     management_cidr       = "192.168.30.0/24"
///     vmware_engine_network = gcp_vmwareengine_network.cluster-nw.id
///   }
///   management_cluster = {
///     cluster_id = "sample-mgmt-cluster"
///     node_type_configs = [{
///       "nodeTypeId"      = "standard-72"
///       "nodeCount"       = 3
///       "customCoreCount" = 32
///     }]
///   }
/// }
/// resource "gcp_vmwareengine_network" "cluster-nw" {
///   name        = "pc-nw"
///   type        = "STANDARD"
///   location    = "global"
///   description = "PC network description."
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.vmwareengine.Network;
/// import com.pulumi.gcp.vmwareengine.NetworkArgs;
/// import com.pulumi.gcp.vmwareengine.PrivateCloud;
/// import com.pulumi.gcp.vmwareengine.PrivateCloudArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.PrivateCloudNetworkConfigArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.PrivateCloudManagementClusterArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.PrivateCloudManagementClusterNodeTypeConfigArgs;
/// import com.pulumi.gcp.vmwareengine.Cluster;
/// import com.pulumi.gcp.vmwareengine.ClusterArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.ClusterNodeTypeConfigArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.ClusterAutoscalingSettingsArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.ClusterAutoscalingSettingsAutoscalingPolicyArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.ClusterAutoscalingSettingsAutoscalingPolicyCpuThresholdsArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.ClusterAutoscalingSettingsAutoscalingPolicyConsumedMemoryThresholdsArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.ClusterAutoscalingSettingsAutoscalingPolicyStorageThresholdsArgs;
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
///         var cluster_nw = new Network("cluster-nw", NetworkArgs.builder()
///             .name("pc-nw")
///             .type("STANDARD")
///             .location("global")
///             .description("PC network description.")
///             .build());
///
///         var cluster_pc = new PrivateCloud("cluster-pc", PrivateCloudArgs.builder()
///             .location("us-west1-a")
///             .name("sample-pc")
///             .description("Sample test PC.")
///             .networkConfig(PrivateCloudNetworkConfigArgs.builder()
///                 .managementCidr("192.168.30.0/24")
///                 .vmwareEngineNetwork(cluster_nw.id())
///                 .build())
///             .managementCluster(PrivateCloudManagementClusterArgs.builder()
///                 .clusterId("sample-mgmt-cluster")
///                 .nodeTypeConfigs(PrivateCloudManagementClusterNodeTypeConfigArgs.builder()
///                     .nodeTypeId("standard-72")
///                     .nodeCount(3)
///                     .customCoreCount(32)
///                     .build())
///                 .build())
///             .build());
///
///         var vmw_ext_cluster = new Cluster("vmw-ext-cluster", ClusterArgs.builder()
///             .name("ext-cluster")
///             .parent(cluster_pc.id())
///             .nodeTypeConfigs(ClusterNodeTypeConfigArgs.builder()
///                 .nodeTypeId("standard-72")
///                 .nodeCount(3)
///                 .customCoreCount(32)
///                 .build())
///             .autoscalingSettings(ClusterAutoscalingSettingsArgs.builder()
///                 .autoscalingPolicies(ClusterAutoscalingSettingsAutoscalingPolicyArgs.builder()
///                     .autoscalePolicyId("autoscaling-policy")
///                     .nodeTypeId("standard-72")
///                     .scaleOutSize(1)
///                     .cpuThresholds(ClusterAutoscalingSettingsAutoscalingPolicyCpuThresholdsArgs.builder()
///                         .scaleOut(80)
///                         .scaleIn(15)
///                         .build())
///                     .consumedMemoryThresholds(ClusterAutoscalingSettingsAutoscalingPolicyConsumedMemoryThresholdsArgs.builder()
///                         .scaleOut(75)
///                         .scaleIn(20)
///                         .build())
///                     .storageThresholds(ClusterAutoscalingSettingsAutoscalingPolicyStorageThresholdsArgs.builder()
///                         .scaleOut(80)
///                         .scaleIn(20)
///                         .build())
///                     .build())
///                 .minClusterNodeCount(3)
///                 .maxClusterNodeCount(8)
///                 .coolDownPeriod("1800s")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   vmw-ext-cluster:
///     type: gcp:vmwareengine:Cluster
///     properties:
///       name: ext-cluster
///       parent: ${["cluster-pc"].id}
///       nodeTypeConfigs:
///         - nodeTypeId: standard-72
///           nodeCount: 3
///           customCoreCount: 32
///       autoscalingSettings:
///         autoscalingPolicies:
///           - autoscalePolicyId: autoscaling-policy
///             nodeTypeId: standard-72
///             scaleOutSize: 1
///             cpuThresholds:
///               scaleOut: 80
///               scaleIn: 15
///             consumedMemoryThresholds:
///               scaleOut: 75
///               scaleIn: 20
///             storageThresholds:
///               scaleOut: 80
///               scaleIn: 20
///         minClusterNodeCount: 3
///         maxClusterNodeCount: 8
///         coolDownPeriod: 1800s
///   cluster-pc:
///     type: gcp:vmwareengine:PrivateCloud
///     properties:
///       location: us-west1-a
///       name: sample-pc
///       description: Sample test PC.
///       networkConfig:
///         managementCidr: 192.168.30.0/24
///         vmwareEngineNetwork: ${["cluster-nw"].id}
///       managementCluster:
///         clusterId: sample-mgmt-cluster
///         nodeTypeConfigs:
///           - nodeTypeId: standard-72
///             nodeCount: 3
///             customCoreCount: 32
///   cluster-nw:
///     type: gcp:vmwareengine:Network
///     properties:
///       name: pc-nw
///       type: STANDARD
///       location: global
///       description: PC network description.
/// ```
///
/// ### Vmware Engine Cluster Nfs Datastore Filestore
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// // Use this network for filestore instance
/// const fsNetwork = gcp.compute.getNetwork({
///     name: "filestore_nw",
/// });
/// // Create a filestore instance with delete protection enabled
/// //### Use ip range of private cloud service subnet in the 'nfs_export_options'
/// const testInstance = new gcp.filestore.Instance("test_instance", {
///     name: "test-fs-filestore",
///     location: "",
///     tier: "ZONAL",
///     deletionProtectionEnabled: "yes" === "true",
///     fileShares: {
///         capacityGb: 1024,
///         name: "share101",
///         nfsExportOptions: [{
///             ipRanges: ["10.0.0.0/24"],
///         }],
///     },
///     networks: [{
///         network: fsNetwork.then(fsNetwork => fsNetwork.id),
///         modes: ["MODE_IPV4"],
///         connectMode: "PRIVATE_SERVICE_ACCESS",
///     }],
/// });
/// const cluster_nw = new gcp.vmwareengine.Network("cluster-nw", {
///     name: "pc-nw",
///     type: "STANDARD",
///     location: "global",
///     description: "PC network description.",
/// });
/// const cluster_pc = new gcp.vmwareengine.PrivateCloud("cluster-pc", {
///     location: "",
///     name: "sample-pc",
///     description: "Sample test PC.",
///     networkConfig: {
///         managementCidr: "192.168.30.0/24",
///         vmwareEngineNetwork: cluster_nw.id,
///     },
///     managementCluster: {
///         clusterId: "sample-mgmt-cluster",
///         nodeTypeConfigs: [{
///             nodeTypeId: "standard-72",
///             nodeCount: 3,
///             customCoreCount: 32,
///         }],
///     },
/// });
/// // Update service subnet
/// //###  Service subnet is used by nfs datastore mounts
/// //### ip_cidr_range configured on subnet must also be allowed in filestore instance's 'nfs_export_options'
/// const cluster_pc_subnet = new gcp.vmwareengine.Subnet("cluster-pc-subnet", {
///     name: "service-1",
///     parent: cluster_pc.id,
///     ipCidrRange: "10.0.0.0/24",
/// });
/// // Read network peering
/// //### This peering is created by filestore instance
/// const snPeering = fsNetwork.then(fsNetwork => gcp.compute.getNetworkPeering({
///     name: "servicenetworking-googleapis-com",
///     network: fsNetwork.id,
/// }));
/// // Create vmware engine network peering
/// //## vmware network peering is required for filestore mount on cluster
/// const psaNetworkPeering = new gcp.vmwareengine.NetworkPeering("psa_network_peering", {
///     name: "tf-test-psa-network-peering",
///     description: "test description",
///     vmwareEngineNetwork: cluster_nw.id,
///     peerNetwork: snPeering.then(snPeering => std.trimprefix({
///         input: snPeering.peerNetwork,
///         prefix: "https://www.googleapis.com/compute/v1",
///     })).then(invoke => invoke.result),
///     peerNetworkType: "PRIVATE_SERVICES_ACCESS",
/// });
/// const testFsDatastore = new gcp.vmwareengine.Datastore("test_fs_datastore", {
///     name: "ext-fs-datastore",
///     location: "",
///     description: "test description",
///     nfsDatastore: {
///         googleFileService: {
///             filestoreInstance: testInstance.id,
///         },
///     },
/// });
/// // Mount NFS datastore on vSphere cluster
/// // This code block is required to mount the datastore on ESXi hosts
/// const vmw_ext_cluster = new gcp.vmwareengine.Cluster("vmw-ext-cluster", {
///     name: "ext-cluster",
///     parent: cluster_pc.id,
///     nodeTypeConfigs: [{
///         nodeTypeId: "standard-72",
///         nodeCount: 3,
///     }],
///     datastoreMountConfigs: [{
///         datastore: testFsDatastore.id,
///         datastoreNetwork: {
///             subnet: cluster_pc_subnet.id,
///             connectionCount: 4,
///             mtu: 1500,
///         },
///         nfsVersion: "NFS_V3",
///         accessMode: "READ_WRITE",
///         ignoreColocation: false,
///     }],
/// }, {
///     dependsOn: [psaNetworkPeering],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// # Use this network for filestore instance
/// fs_network = gcp.compute.get_network(name="filestore_nw")
/// # Create a filestore instance with delete protection enabled
/// #### Use ip range of private cloud service subnet in the 'nfs_export_options'
/// test_instance = gcp.filestore.Instance("test_instance",
///     name="test-fs-filestore",
///     location="",
///     tier="ZONAL",
///     deletion_protection_enabled="yes" == "true",
///     file_shares={
///         "capacity_gb": 1024,
///         "name": "share101",
///         "nfs_export_options": [{
///             "ip_ranges": ["10.0.0.0/24"],
///         }],
///     },
///     networks=[{
///         "network": fs_network.id,
///         "modes": ["MODE_IPV4"],
///         "connect_mode": "PRIVATE_SERVICE_ACCESS",
///     }])
/// cluster_nw = gcp.vmwareengine.Network("cluster-nw",
///     name="pc-nw",
///     type="STANDARD",
///     location="global",
///     description="PC network description.")
/// cluster_pc = gcp.vmwareengine.PrivateCloud("cluster-pc",
///     location="",
///     name="sample-pc",
///     description="Sample test PC.",
///     network_config={
///         "management_cidr": "192.168.30.0/24",
///         "vmware_engine_network": cluster_nw.id,
///     },
///     management_cluster={
///         "cluster_id": "sample-mgmt-cluster",
///         "node_type_configs": [{
///             "node_type_id": "standard-72",
///             "node_count": 3,
///             "custom_core_count": 32,
///         }],
///     })
/// # Update service subnet
/// ####  Service subnet is used by nfs datastore mounts
/// #### ip_cidr_range configured on subnet must also be allowed in filestore instance's 'nfs_export_options'
/// cluster_pc_subnet = gcp.vmwareengine.Subnet("cluster-pc-subnet",
///     name="service-1",
///     parent=cluster_pc.id,
///     ip_cidr_range="10.0.0.0/24")
/// # Read network peering
/// #### This peering is created by filestore instance
/// sn_peering = gcp.compute.get_network_peering(name="servicenetworking-googleapis-com",
///     network=fs_network.id)
/// # Create vmware engine network peering
/// ### vmware network peering is required for filestore mount on cluster
/// psa_network_peering = gcp.vmwareengine.NetworkPeering("psa_network_peering",
///     name="tf-test-psa-network-peering",
///     description="test description",
///     vmware_engine_network=cluster_nw.id,
///     peer_network=std.trimprefix(input=sn_peering.peer_network,
///         prefix="https://www.googleapis.com/compute/v1").result,
///     peer_network_type="PRIVATE_SERVICES_ACCESS")
/// test_fs_datastore = gcp.vmwareengine.Datastore("test_fs_datastore",
///     name="ext-fs-datastore",
///     location="",
///     description="test description",
///     nfs_datastore={
///         "google_file_service": {
///             "filestore_instance": test_instance.id,
///         },
///     })
/// # Mount NFS datastore on vSphere cluster
/// # This code block is required to mount the datastore on ESXi hosts
/// vmw_ext_cluster = gcp.vmwareengine.Cluster("vmw-ext-cluster",
///     name="ext-cluster",
///     parent=cluster_pc.id,
///     node_type_configs=[{
///         "node_type_id": "standard-72",
///         "node_count": 3,
///     }],
///     datastore_mount_configs=[{
///         "datastore": test_fs_datastore.id,
///         "datastore_network": {
///             "subnet": cluster_pc_subnet.id,
///             "connection_count": 4,
///             "mtu": 1500,
///         },
///         "nfs_version": "NFS_V3",
///         "access_mode": "READ_WRITE",
///         "ignore_colocation": False,
///     }],
///     opts = pulumi.ResourceOptions(depends_on=[psa_network_peering]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Use this network for filestore instance
///     var fsNetwork = Gcp.Compute.GetNetwork.Invoke(new()
///     {
///         Name = "filestore_nw",
///     });
///
///     // Create a filestore instance with delete protection enabled
///     //### Use ip range of private cloud service subnet in the 'nfs_export_options'
///     var testInstance = new Gcp.Filestore.Instance("test_instance", new()
///     {
///         Name = "test-fs-filestore",
///         Location = "",
///         Tier = "ZONAL",
///         DeletionProtectionEnabled = "yes" == "true",
///         FileShares = new Gcp.Filestore.Inputs.InstanceFileSharesArgs
///         {
///             CapacityGb = 1024,
///             Name = "share101",
///             NfsExportOptions = new[]
///             {
///                 new Gcp.Filestore.Inputs.InstanceFileSharesNfsExportOptionArgs
///                 {
///                     IpRanges = new[]
///                     {
///                         "10.0.0.0/24",
///                     },
///                 },
///             },
///         },
///         Networks = new[]
///         {
///             new Gcp.Filestore.Inputs.InstanceNetworkArgs
///             {
///                 Network = fsNetwork.Apply(getNetworkResult => getNetworkResult.Id),
///                 Modes = new[]
///                 {
///                     "MODE_IPV4",
///                 },
///                 ConnectMode = "PRIVATE_SERVICE_ACCESS",
///             },
///         },
///     });
///
///     var cluster_nw = new Gcp.VMwareEngine.Network("cluster-nw", new()
///     {
///         Name = "pc-nw",
///         Type = "STANDARD",
///         Location = "global",
///         Description = "PC network description.",
///     });
///
///     var cluster_pc = new Gcp.VMwareEngine.PrivateCloud("cluster-pc", new()
///     {
///         Location = "",
///         Name = "sample-pc",
///         Description = "Sample test PC.",
///         NetworkConfig = new Gcp.VMwareEngine.Inputs.PrivateCloudNetworkConfigArgs
///         {
///             ManagementCidr = "192.168.30.0/24",
///             VmwareEngineNetwork = cluster_nw.Id,
///         },
///         ManagementCluster = new Gcp.VMwareEngine.Inputs.PrivateCloudManagementClusterArgs
///         {
///             ClusterId = "sample-mgmt-cluster",
///             NodeTypeConfigs = new[]
///             {
///                 new Gcp.VMwareEngine.Inputs.PrivateCloudManagementClusterNodeTypeConfigArgs
///                 {
///                     NodeTypeId = "standard-72",
///                     NodeCount = 3,
///                     CustomCoreCount = 32,
///                 },
///             },
///         },
///     });
///
///     // Update service subnet
///     //###  Service subnet is used by nfs datastore mounts
///     //### ip_cidr_range configured on subnet must also be allowed in filestore instance's 'nfs_export_options'
///     var cluster_pc_subnet = new Gcp.VMwareEngine.Subnet("cluster-pc-subnet", new()
///     {
///         Name = "service-1",
///         Parent = cluster_pc.Id,
///         IpCidrRange = "10.0.0.0/24",
///     });
///
///     // Read network peering
///     //### This peering is created by filestore instance
///     var snPeering = Gcp.Compute.GetNetworkPeering.Invoke(new()
///     {
///         Name = "servicenetworking-googleapis-com",
///         Network = fsNetwork.Apply(getNetworkResult => getNetworkResult.Id),
///     });
///
///     // Create vmware engine network peering
///     //## vmware network peering is required for filestore mount on cluster
///     var psaNetworkPeering = new Gcp.VMwareEngine.NetworkPeering("psa_network_peering", new()
///     {
///         Name = "tf-test-psa-network-peering",
///         Description = "test description",
///         VmwareEngineNetwork = cluster_nw.Id,
///         PeerNetwork = Std.Trimprefix.Invoke(new()
///         {
///             Input = snPeering.Apply(getNetworkPeeringResult => getNetworkPeeringResult.PeerNetwork),
///             Prefix = "https://www.googleapis.com/compute/v1",
///         }).Apply(invoke => invoke.Result),
///         PeerNetworkType = "PRIVATE_SERVICES_ACCESS",
///     });
///
///     var testFsDatastore = new Gcp.VMwareEngine.Datastore("test_fs_datastore", new()
///     {
///         Name = "ext-fs-datastore",
///         Location = "",
///         Description = "test description",
///         NfsDatastore = new Gcp.VMwareEngine.Inputs.DatastoreNfsDatastoreArgs
///         {
///             GoogleFileService = new Gcp.VMwareEngine.Inputs.DatastoreNfsDatastoreGoogleFileServiceArgs
///             {
///                 FilestoreInstance = testInstance.Id,
///             },
///         },
///     });
///
///     // Mount NFS datastore on vSphere cluster
///     // This code block is required to mount the datastore on ESXi hosts
///     var vmw_ext_cluster = new Gcp.VMwareEngine.Cluster("vmw-ext-cluster", new()
///     {
///         Name = "ext-cluster",
///         Parent = cluster_pc.Id,
///         NodeTypeConfigs = new[]
///         {
///             new Gcp.VMwareEngine.Inputs.ClusterNodeTypeConfigArgs
///             {
///                 NodeTypeId = "standard-72",
///                 NodeCount = 3,
///             },
///         },
///         DatastoreMountConfigs = new[]
///         {
///             new Gcp.VMwareEngine.Inputs.ClusterDatastoreMountConfigArgs
///             {
///                 Datastore = testFsDatastore.Id,
///                 DatastoreNetwork = new Gcp.VMwareEngine.Inputs.ClusterDatastoreMountConfigDatastoreNetworkArgs
///                 {
///                     Subnet = cluster_pc_subnet.Id,
///                     ConnectionCount = 4,
///                     Mtu = 1500,
///                 },
///                 NfsVersion = "NFS_V3",
///                 AccessMode = "READ_WRITE",
///                 IgnoreColocation = false,
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             psaNetworkPeering,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/filestore"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vmwareengine"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Use this network for filestore instance
/// 		fsNetwork, err := compute.LookupNetwork(ctx, &compute.LookupNetworkArgs{
/// 			Name: pulumi.StringRef("filestore_nw"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create a filestore instance with delete protection enabled
/// 		// ### Use ip range of private cloud service subnet in the 'nfs_export_options'
/// 		testInstance, err := filestore.NewInstance(ctx, "test_instance", &filestore.InstanceArgs{
/// 			Name:                      pulumi.String("test-fs-filestore"),
/// 			Location:                  pulumi.String(""),
/// 			Tier:                      pulumi.String("ZONAL"),
/// 			DeletionProtectionEnabled: pulumi.Bool("yes"),
/// 			FileShares: &filestore.InstanceFileSharesArgs{
/// 				CapacityGb: pulumi.Int(1024),
/// 				Name:       pulumi.String("share101"),
/// 				NfsExportOptions: filestore.InstanceFileSharesNfsExportOptionArray{
/// 					&filestore.InstanceFileSharesNfsExportOptionArgs{
/// 						IpRanges: pulumi.StringArray{
/// 							pulumi.String("10.0.0.0/24"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Networks: filestore.InstanceNetworkArray{
/// 				&filestore.InstanceNetworkArgs{
/// 					Network: pulumi.String(fsNetwork.Id),
/// 					Modes: pulumi.StringArray{
/// 						pulumi.String("MODE_IPV4"),
/// 					},
/// 					ConnectMode: pulumi.String("PRIVATE_SERVICE_ACCESS"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cluster_nw, err := vmwareengine.NewNetwork(ctx, "cluster-nw", &vmwareengine.NetworkArgs{
/// 			Name:        pulumi.String("pc-nw"),
/// 			Type:        pulumi.String("STANDARD"),
/// 			Location:    pulumi.String("global"),
/// 			Description: pulumi.String("PC network description."),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cluster_pc, err := vmwareengine.NewPrivateCloud(ctx, "cluster-pc", &vmwareengine.PrivateCloudArgs{
/// 			Location:    pulumi.String(""),
/// 			Name:        pulumi.String("sample-pc"),
/// 			Description: pulumi.String("Sample test PC."),
/// 			NetworkConfig: &vmwareengine.PrivateCloudNetworkConfigArgs{
/// 				ManagementCidr:      pulumi.String("192.168.30.0/24"),
/// 				VmwareEngineNetwork: cluster_nw.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			ManagementCluster: &vmwareengine.PrivateCloudManagementClusterArgs{
/// 				ClusterId: pulumi.String("sample-mgmt-cluster"),
/// 				NodeTypeConfigs: vmwareengine.PrivateCloudManagementClusterNodeTypeConfigArray{
/// 					&vmwareengine.PrivateCloudManagementClusterNodeTypeConfigArgs{
/// 						NodeTypeId:      pulumi.String("standard-72"),
/// 						NodeCount:       pulumi.Int(3),
/// 						CustomCoreCount: pulumi.Int(32),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Update service subnet
/// 		// ###  Service subnet is used by nfs datastore mounts
/// 		// ### ip_cidr_range configured on subnet must also be allowed in filestore instance's 'nfs_export_options'
/// 		cluster_pc_subnet, err := vmwareengine.NewSubnet(ctx, "cluster-pc-subnet", &vmwareengine.SubnetArgs{
/// 			Name:        pulumi.String("service-1"),
/// 			Parent:      cluster_pc.ID().ToIDOutput().ToStringOutput(),
/// 			IpCidrRange: pulumi.String("10.0.0.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Read network peering
/// 		// ### This peering is created by filestore instance
/// 		snPeering, err := compute.LookupNetworkPeering(ctx, &compute.LookupNetworkPeeringArgs{
/// 			Name:    "servicenetworking-googleapis-com",
/// 			Network: fsNetwork.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeTrimprefix, err := std.Trimprefix(ctx, &std.TrimprefixArgs{
/// 			Input:  snPeering.PeerNetwork,
/// 			Prefix: "https://www.googleapis.com/compute/v1",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create vmware engine network peering
/// 		// ## vmware network peering is required for filestore mount on cluster
/// 		psaNetworkPeering, err := vmwareengine.NewNetworkPeering(ctx, "psa_network_peering", &vmwareengine.NetworkPeeringArgs{
/// 			Name:                pulumi.String("tf-test-psa-network-peering"),
/// 			Description:         pulumi.String("test description"),
/// 			VmwareEngineNetwork: cluster_nw.ID().ToIDOutput().ToStringOutput(),
/// 			PeerNetwork:         pulumi.String(invokeTrimprefix.Result),
/// 			PeerNetworkType:     pulumi.String("PRIVATE_SERVICES_ACCESS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testFsDatastore, err := vmwareengine.NewDatastore(ctx, "test_fs_datastore", &vmwareengine.DatastoreArgs{
/// 			Name:        pulumi.String("ext-fs-datastore"),
/// 			Location:    pulumi.String(""),
/// 			Description: pulumi.String("test description"),
/// 			NfsDatastore: &vmwareengine.DatastoreNfsDatastoreArgs{
/// 				GoogleFileService: &vmwareengine.DatastoreNfsDatastoreGoogleFileServiceArgs{
/// 					FilestoreInstance: testInstance.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Mount NFS datastore on vSphere cluster
/// 		// This code block is required to mount the datastore on ESXi hosts
/// 		_, err = vmwareengine.NewCluster(ctx, "vmw-ext-cluster", &vmwareengine.ClusterArgs{
/// 			Name:   pulumi.String("ext-cluster"),
/// 			Parent: cluster_pc.ID().ToIDOutput().ToStringOutput(),
/// 			NodeTypeConfigs: vmwareengine.ClusterNodeTypeConfigArray{
/// 				&vmwareengine.ClusterNodeTypeConfigArgs{
/// 					NodeTypeId: pulumi.String("standard-72"),
/// 					NodeCount:  pulumi.Int(3),
/// 				},
/// 			},
/// 			DatastoreMountConfigs: vmwareengine.ClusterDatastoreMountConfigArray{
/// 				&vmwareengine.ClusterDatastoreMountConfigArgs{
/// 					Datastore: testFsDatastore.ID().ToIDOutput().ToStringOutput(),
/// 					DatastoreNetwork: &vmwareengine.ClusterDatastoreMountConfigDatastoreNetworkArgs{
/// 						Subnet:          cluster_pc_subnet.ID().ToIDOutput().ToStringOutput(),
/// 						ConnectionCount: pulumi.Int(4),
/// 						Mtu:             pulumi.Int(1500),
/// 					},
/// 					NfsVersion:       pulumi.String("NFS_V3"),
/// 					AccessMode:       pulumi.String("READ_WRITE"),
/// 					IgnoreColocation: pulumi.Bool(false),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			psaNetworkPeering,
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
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// data "gcp_compute_getnetwork" "fsNetwork" {
///   name = "filestore_nw"
/// }
/// data "gcp_compute_getnetworkpeering" "snPeering" {
///   name    = "servicenetworking-googleapis-com"
///   network = data.gcp_compute_getnetwork.fsNetwork.id
/// }
///
/// # Create a filestore instance with delete protection enabled
/// #### Use ip range of private cloud service subnet in the 'nfs_export_options'
/// resource "gcp_filestore_instance" "test_instance" {
///   name                        = "test-fs-filestore"
///   location                    = ""
///   tier                        = "ZONAL"
///   deletion_protection_enabled = "yes"
///   file_shares = {
///     capacity_gb = 1024
///     name        = "share101"
///     nfs_export_options = [{
///       "ipRanges" = ["10.0.0.0/24"]
///     }]
///   }
///   networks {
///     network      = data.gcp_compute_getnetwork.fsNetwork.id
///     modes        = ["MODE_IPV4"]
///     connect_mode = "PRIVATE_SERVICE_ACCESS"
///   }
/// }
/// resource "gcp_vmwareengine_network" "cluster-nw" {
///   name        = "pc-nw"
///   type        = "STANDARD"
///   location    = "global"
///   description = "PC network description."
/// }
/// resource "gcp_vmwareengine_privatecloud" "cluster-pc" {
///   location    = ""
///   name        = "sample-pc"
///   description = "Sample test PC."
///   network_config = {
///     management_cidr       = "192.168.30.0/24"
///     vmware_engine_network = gcp_vmwareengine_network.cluster-nw.id
///   }
///   management_cluster = {
///     cluster_id = "sample-mgmt-cluster"
///     node_type_configs = [{
///       "nodeTypeId"      = "standard-72"
///       "nodeCount"       = 3
///       "customCoreCount" = 32
///     }]
///   }
/// }
/// # Update service subnet
/// ####  Service subnet is used by nfs datastore mounts
/// #### ip_cidr_range configured on subnet must also be allowed in filestore instance's 'nfs_export_options'
/// resource "gcp_vmwareengine_subnet" "cluster-pc-subnet" {
///   name          = "service-1"
///   parent        = gcp_vmwareengine_privatecloud.cluster-pc.id
///   ip_cidr_range = "10.0.0.0/24"
/// }
/// # Create vmware engine network peering
/// ### vmware network peering is required for filestore mount on cluster
/// resource "gcp_vmwareengine_networkpeering" "psa_network_peering" {
///   name                  = "tf-test-psa-network-peering"
///   description           = "test description"
///   vmware_engine_network = gcp_vmwareengine_network.cluster-nw.id
///   peer_network          = trimprefix(data.gcp_compute_getnetworkpeering.snPeering.peer_network, "https://www.googleapis.com/compute/v1")
///   peer_network_type     = "PRIVATE_SERVICES_ACCESS"
/// }
/// resource "gcp_vmwareengine_datastore" "test_fs_datastore" {
///   name        = "ext-fs-datastore"
///   location    = ""
///   description = "test description"
///   nfs_datastore = {
///     google_file_service = {
///       filestore_instance = gcp_filestore_instance.test_instance.id
///     }
///   }
/// }
/// # Mount NFS datastore on vSphere cluster
/// # This code block is required to mount the datastore on ESXi hosts
/// resource "gcp_vmwareengine_cluster" "vmw-ext-cluster" {
///   depends_on = [gcp_vmwareengine_networkpeering.psa_network_peering]
///   name       = "ext-cluster"
///   parent     = gcp_vmwareengine_privatecloud.cluster-pc.id
///   node_type_configs {
///     node_type_id = "standard-72"
///     node_count   = 3
///   }
///   datastore_mount_configs {
///     datastore = gcp_vmwareengine_datastore.test_fs_datastore.id
///     datastore_network = {
///       subnet           = gcp_vmwareengine_subnet.cluster-pc-subnet.id
///       connection_count = 4
///       mtu              = 1500
///     }
///     nfs_version       = "NFS_V3"
///     access_mode       = "READ_WRITE"
///     ignore_colocation = false
///   }
/// }
/// # Use this network for filestore instance
/// # Read network peering
/// #### This peering is created by filestore instance
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetNetworkArgs;
/// import com.pulumi.gcp.filestore.Instance;
/// import com.pulumi.gcp.filestore.InstanceArgs;
/// import com.pulumi.gcp.filestore.inputs.InstanceFileSharesArgs;
/// import com.pulumi.gcp.filestore.inputs.InstanceFileSharesNfsExportOptionArgs;
/// import com.pulumi.gcp.filestore.inputs.InstanceNetworkArgs;
/// import com.pulumi.gcp.vmwareengine.Network;
/// import com.pulumi.gcp.vmwareengine.NetworkArgs;
/// import com.pulumi.gcp.vmwareengine.PrivateCloud;
/// import com.pulumi.gcp.vmwareengine.PrivateCloudArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.PrivateCloudNetworkConfigArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.PrivateCloudManagementClusterArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.PrivateCloudManagementClusterNodeTypeConfigArgs;
/// import com.pulumi.gcp.vmwareengine.Subnet;
/// import com.pulumi.gcp.vmwareengine.SubnetArgs;
/// import com.pulumi.gcp.compute.inputs.GetNetworkPeeringArgs;
/// import com.pulumi.gcp.vmwareengine.NetworkPeering;
/// import com.pulumi.gcp.vmwareengine.NetworkPeeringArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.TrimprefixArgs;
/// import com.pulumi.gcp.vmwareengine.Datastore;
/// import com.pulumi.gcp.vmwareengine.DatastoreArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.DatastoreNfsDatastoreArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.DatastoreNfsDatastoreGoogleFileServiceArgs;
/// import com.pulumi.gcp.vmwareengine.Cluster;
/// import com.pulumi.gcp.vmwareengine.ClusterArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.ClusterNodeTypeConfigArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.ClusterDatastoreMountConfigArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.ClusterDatastoreMountConfigDatastoreNetworkArgs;
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
///         // Use this network for filestore instance
///         final var fsNetwork = ComputeFunctions.getNetwork(GetNetworkArgs.builder()
///             .name("filestore_nw")
///             .build());
///
///         // Create a filestore instance with delete protection enabled
///         //### Use ip range of private cloud service subnet in the 'nfs_export_options'
///         var testInstance = new Instance("testInstance", InstanceArgs.builder()
///             .name("test-fs-filestore")
///             .location("")
///             .tier("ZONAL")
///             .deletionProtectionEnabled("yes")
///             .fileShares(InstanceFileSharesArgs.builder()
///                 .capacityGb(1024)
///                 .name("share101")
///                 .nfsExportOptions(InstanceFileSharesNfsExportOptionArgs.builder()
///                     .ipRanges("10.0.0.0/24")
///                     .build())
///                 .build())
///             .networks(InstanceNetworkArgs.builder()
///                 .network(fsNetwork.id())
///                 .modes("MODE_IPV4")
///                 .connectMode("PRIVATE_SERVICE_ACCESS")
///                 .build())
///             .build());
///
///         var cluster_nw = new Network("cluster-nw", NetworkArgs.builder()
///             .name("pc-nw")
///             .type("STANDARD")
///             .location("global")
///             .description("PC network description.")
///             .build());
///
///         var cluster_pc = new PrivateCloud("cluster-pc", PrivateCloudArgs.builder()
///             .location("")
///             .name("sample-pc")
///             .description("Sample test PC.")
///             .networkConfig(PrivateCloudNetworkConfigArgs.builder()
///                 .managementCidr("192.168.30.0/24")
///                 .vmwareEngineNetwork(cluster_nw.id())
///                 .build())
///             .managementCluster(PrivateCloudManagementClusterArgs.builder()
///                 .clusterId("sample-mgmt-cluster")
///                 .nodeTypeConfigs(PrivateCloudManagementClusterNodeTypeConfigArgs.builder()
///                     .nodeTypeId("standard-72")
///                     .nodeCount(3)
///                     .customCoreCount(32)
///                     .build())
///                 .build())
///             .build());
///
///         // Update service subnet
///         //###  Service subnet is used by nfs datastore mounts
///         //### ip_cidr_range configured on subnet must also be allowed in filestore instance's 'nfs_export_options'
///         var cluster_pc_subnet = new Subnet("cluster-pc-subnet", SubnetArgs.builder()
///             .name("service-1")
///             .parent(cluster_pc.id())
///             .ipCidrRange("10.0.0.0/24")
///             .build());
///
///         // Read network peering
///         //### This peering is created by filestore instance
///         final var snPeering = ComputeFunctions.getNetworkPeering(GetNetworkPeeringArgs.builder()
///             .name("servicenetworking-googleapis-com")
///             .network(fsNetwork.id())
///             .build());
///
///         // Create vmware engine network peering
///         //## vmware network peering is required for filestore mount on cluster
///         var psaNetworkPeering = new NetworkPeering("psaNetworkPeering", NetworkPeeringArgs.builder()
///             .name("tf-test-psa-network-peering")
///             .description("test description")
///             .vmwareEngineNetwork(cluster_nw.id())
///             .peerNetwork(StdFunctions.trimprefix(TrimprefixArgs.builder()
///                 .input(snPeering.peerNetwork())
///                 .prefix("https://www.googleapis.com/compute/v1")
///                 .build()).result())
///             .peerNetworkType("PRIVATE_SERVICES_ACCESS")
///             .build());
///
///         var testFsDatastore = new Datastore("testFsDatastore", DatastoreArgs.builder()
///             .name("ext-fs-datastore")
///             .location("")
///             .description("test description")
///             .nfsDatastore(DatastoreNfsDatastoreArgs.builder()
///                 .googleFileService(DatastoreNfsDatastoreGoogleFileServiceArgs.builder()
///                     .filestoreInstance(testInstance.id())
///                     .build())
///                 .build())
///             .build());
///
///         // Mount NFS datastore on vSphere cluster
///         // This code block is required to mount the datastore on ESXi hosts
///         var vmw_ext_cluster = new Cluster("vmw-ext-cluster", ClusterArgs.builder()
///             .name("ext-cluster")
///             .parent(cluster_pc.id())
///             .nodeTypeConfigs(ClusterNodeTypeConfigArgs.builder()
///                 .nodeTypeId("standard-72")
///                 .nodeCount(3)
///                 .build())
///             .datastoreMountConfigs(ClusterDatastoreMountConfigArgs.builder()
///                 .datastore(testFsDatastore.id())
///                 .datastoreNetwork(ClusterDatastoreMountConfigDatastoreNetworkArgs.builder()
///                     .subnet(cluster_pc_subnet.id())
///                     .connectionCount(4)
///                     .mtu(1500)
///                     .build())
///                 .nfsVersion("NFS_V3")
///                 .accessMode("READ_WRITE")
///                 .ignoreColocation(false)
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(psaNetworkPeering)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Create a filestore instance with delete protection enabled
///   #### Use ip range of private cloud service subnet in the 'nfs_export_options'
///   testInstance:
///     type: gcp:filestore:Instance
///     name: test_instance
///     properties:
///       name: test-fs-filestore
///       location: ""
///       tier: ZONAL
///       deletionProtectionEnabled: yes
///       fileShares:
///         capacityGb: 1024
///         name: share101
///         nfsExportOptions:
///           - ipRanges:
///               - 10.0.0.0/24
///       networks:
///         - network: ${fsNetwork.id}
///           modes:
///             - MODE_IPV4
///           connectMode: PRIVATE_SERVICE_ACCESS
///   cluster-nw:
///     type: gcp:vmwareengine:Network
///     properties:
///       name: pc-nw
///       type: STANDARD
///       location: global
///       description: PC network description.
///   cluster-pc:
///     type: gcp:vmwareengine:PrivateCloud
///     properties:
///       location: ""
///       name: sample-pc
///       description: Sample test PC.
///       networkConfig:
///         managementCidr: 192.168.30.0/24
///         vmwareEngineNetwork: ${["cluster-nw"].id}
///       managementCluster:
///         clusterId: sample-mgmt-cluster
///         nodeTypeConfigs:
///           - nodeTypeId: standard-72
///             nodeCount: 3
///             customCoreCount: 32
///   # Update service subnet
///   ####  Service subnet is used by nfs datastore mounts
///   #### ip_cidr_range configured on subnet must also be allowed in filestore instance's 'nfs_export_options'
///   cluster-pc-subnet:
///     type: gcp:vmwareengine:Subnet
///     properties:
///       name: service-1
///       parent: ${["cluster-pc"].id}
///       ipCidrRange: 10.0.0.0/24
///   # Create vmware engine network peering
///   ### vmware network peering is required for filestore mount on cluster
///   psaNetworkPeering:
///     type: gcp:vmwareengine:NetworkPeering
///     name: psa_network_peering
///     properties:
///       name: tf-test-psa-network-peering
///       description: test description
///       vmwareEngineNetwork: ${["cluster-nw"].id}
///       peerNetwork:
///         fn::invoke:
///           function: std:trimprefix
///           arguments:
///             input: ${snPeering.peerNetwork}
///             prefix: https://www.googleapis.com/compute/v1
///           return: result
///       peerNetworkType: PRIVATE_SERVICES_ACCESS
///   testFsDatastore:
///     type: gcp:vmwareengine:Datastore
///     name: test_fs_datastore
///     properties:
///       name: ext-fs-datastore
///       location: ""
///       description: test description
///       nfsDatastore:
///         googleFileService:
///           filestoreInstance: ${testInstance.id}
///   # Mount NFS datastore on vSphere cluster
///   # This code block is required to mount the datastore on ESXi hosts
///   vmw-ext-cluster:
///     type: gcp:vmwareengine:Cluster
///     properties:
///       name: ext-cluster
///       parent: ${["cluster-pc"].id}
///       nodeTypeConfigs:
///         - nodeTypeId: standard-72
///           nodeCount: 3
///       datastoreMountConfigs:
///         - datastore: ${testFsDatastore.id}
///           datastoreNetwork:
///             subnet: ${["cluster-pc-subnet"].id}
///             connectionCount: 4
///             mtu: 1500
///           nfsVersion: NFS_V3
///           accessMode: READ_WRITE
///           ignoreColocation: false
///     options:
///       dependsOn:
///         - ${psaNetworkPeering}
/// variables:
///   # Use this network for filestore instance
///   fsNetwork:
///     fn::invoke:
///       function: gcp:compute:getNetwork
///       arguments:
///         name: filestore_nw
///   # Read network peering
///   #### This peering is created by filestore instance
///   snPeering:
///     fn::invoke:
///       function: gcp:compute:getNetworkPeering
///       arguments:
///         name: servicenetworking-googleapis-com
///         network: ${fsNetwork.id}
/// ```
///
/// ### Vmware Engine Cluster Nfs Datastore Netapp
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// // Use this network for netapp volume
/// const npNetwork = gcp.compute.getNetwork({
///     name: "netapp_nw",
/// });
/// const cluster_nw = new gcp.vmwareengine.Network("cluster-nw", {
///     name: "pc-nw",
///     type: "STANDARD",
///     location: "global",
///     description: "PC network description.",
/// });
/// // Read network peering
/// //### This peering is created by netapp volume
/// const snPeering = npNetwork.then(npNetwork => gcp.compute.getNetworkPeering({
///     name: "sn-netapp-prod",
///     network: npNetwork.id,
/// }));
/// // Create vmware engine network peering
/// //### vmware network peering is required for netapp mount on cluster
/// const gcnvNetworkPeering = new gcp.vmwareengine.NetworkPeering("gcnv_network_peering", {
///     name: "tf-test-gcnv-network-peering",
///     description: "test description",
///     vmwareEngineNetwork: cluster_nw.id,
///     peerNetwork: snPeering.then(snPeering => std.trimprefix({
///         input: snPeering.peerNetwork,
///         prefix: "https://www.googleapis.com/compute/v1",
///     })).then(invoke => invoke.result),
///     peerNetworkType: "GOOGLE_CLOUD_NETAPP_VOLUMES",
/// });
/// const cluster_pc = new gcp.vmwareengine.PrivateCloud("cluster-pc", {
///     location: "",
///     name: "sample-pc",
///     description: "Sample test PC.",
///     networkConfig: {
///         managementCidr: "192.168.30.0/24",
///         vmwareEngineNetwork: cluster_nw.id,
///     },
///     managementCluster: {
///         clusterId: "sample-mgmt-cluster",
///         nodeTypeConfigs: [{
///             nodeTypeId: "standard-72",
///             nodeCount: 3,
///             customCoreCount: 32,
///         }],
///     },
/// });
/// // Update service subnet
/// //###  Service subnet is used by nfs datastore mounts
/// //### ip_cidr_range configured on subnet must also be allowed in in netapp volumes's 'export_policy'
/// const cluster_pc_subnet = new gcp.vmwareengine.Subnet("cluster-pc-subnet", {
///     name: "service-1",
///     parent: cluster_pc.id,
///     ipCidrRange: "10.0.0.0/24",
/// });
/// const _default = new gcp.netapp.StoragePool("default", {
///     name: "tf-test-test-pool",
///     location: "us-west1",
///     serviceLevel: "PREMIUM",
///     capacityGib: "2048",
///     network: npNetwork.then(npNetwork => npNetwork.id),
/// });
/// // Create a netapp volume with delete protection enabled
/// //## Use ip range of private cloud service subnet in the 'export_policy'
/// const testVolume = new gcp.netapp.Volume("test_volume", {
///     location: "us-west1",
///     name: "tf-test-test-volume",
///     capacityGib: "100",
///     shareName: "tf-test-test-volume",
///     storagePool: _default.name,
///     protocols: ["NFSV3"],
///     exportPolicy: {
///         rules: [{
///             accessType: "READ_WRITE",
///             allowedClients: "10.0.0.0/24",
///             hasRootAccess: "true",
///             kerberos5ReadOnly: false,
///             kerberos5ReadWrite: false,
///             kerberos5iReadOnly: false,
///             kerberos5iReadWrite: false,
///             kerberos5pReadOnly: false,
///             kerberos5pReadWrite: false,
///             nfsv3: true,
///             nfsv4: false,
///         }],
///     },
///     restrictedActions: ["DELETE"],
/// });
/// const testFsDatastore = new gcp.vmwareengine.Datastore("test_fs_datastore", {
///     name: "ext-fs-datastore",
///     location: "us-west1",
///     description: "example google_file_service.netapp datastore.",
///     nfsDatastore: {
///         googleFileService: {
///             netappVolume: testVolume.id,
///         },
///     },
/// });
/// // Mount NFS datastore on vSphere cluster
/// // This code block is required to mount the datastore on ESXi hosts
/// const vmw_ext_cluster = new gcp.vmwareengine.Cluster("vmw-ext-cluster", {
///     name: "ext-cluster",
///     parent: cluster_pc.id,
///     nodeTypeConfigs: [{
///         nodeTypeId: "standard-72",
///         nodeCount: 3,
///     }],
///     datastoreMountConfigs: [{
///         datastore: testFsDatastore.id,
///         datastoreNetwork: {
///             subnet: cluster_pc_subnet.id,
///             connectionCount: 4,
///             mtu: 1500,
///         },
///         nfsVersion: "NFS_V3",
///         accessMode: "READ_WRITE",
///         ignoreColocation: true,
///     }],
/// }, {
///     dependsOn: [gcnvNetworkPeering],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// # Use this network for netapp volume
/// np_network = gcp.compute.get_network(name="netapp_nw")
/// cluster_nw = gcp.vmwareengine.Network("cluster-nw",
///     name="pc-nw",
///     type="STANDARD",
///     location="global",
///     description="PC network description.")
/// # Read network peering
/// #### This peering is created by netapp volume
/// sn_peering = gcp.compute.get_network_peering(name="sn-netapp-prod",
///     network=np_network.id)
/// # Create vmware engine network peering
/// #### vmware network peering is required for netapp mount on cluster
/// gcnv_network_peering = gcp.vmwareengine.NetworkPeering("gcnv_network_peering",
///     name="tf-test-gcnv-network-peering",
///     description="test description",
///     vmware_engine_network=cluster_nw.id,
///     peer_network=std.trimprefix(input=sn_peering.peer_network,
///         prefix="https://www.googleapis.com/compute/v1").result,
///     peer_network_type="GOOGLE_CLOUD_NETAPP_VOLUMES")
/// cluster_pc = gcp.vmwareengine.PrivateCloud("cluster-pc",
///     location="",
///     name="sample-pc",
///     description="Sample test PC.",
///     network_config={
///         "management_cidr": "192.168.30.0/24",
///         "vmware_engine_network": cluster_nw.id,
///     },
///     management_cluster={
///         "cluster_id": "sample-mgmt-cluster",
///         "node_type_configs": [{
///             "node_type_id": "standard-72",
///             "node_count": 3,
///             "custom_core_count": 32,
///         }],
///     })
/// # Update service subnet
/// ####  Service subnet is used by nfs datastore mounts
/// #### ip_cidr_range configured on subnet must also be allowed in in netapp volumes's 'export_policy'
/// cluster_pc_subnet = gcp.vmwareengine.Subnet("cluster-pc-subnet",
///     name="service-1",
///     parent=cluster_pc.id,
///     ip_cidr_range="10.0.0.0/24")
/// default = gcp.netapp.StoragePool("default",
///     name="tf-test-test-pool",
///     location="us-west1",
///     service_level="PREMIUM",
///     capacity_gib="2048",
///     network=np_network.id)
/// # Create a netapp volume with delete protection enabled
/// ### Use ip range of private cloud service subnet in the 'export_policy'
/// test_volume = gcp.netapp.Volume("test_volume",
///     location="us-west1",
///     name="tf-test-test-volume",
///     capacity_gib="100",
///     share_name="tf-test-test-volume",
///     storage_pool=default.name,
///     protocols=["NFSV3"],
///     export_policy={
///         "rules": [{
///             "access_type": "READ_WRITE",
///             "allowed_clients": "10.0.0.0/24",
///             "has_root_access": "true",
///             "kerberos5_read_only": False,
///             "kerberos5_read_write": False,
///             "kerberos5i_read_only": False,
///             "kerberos5i_read_write": False,
///             "kerberos5p_read_only": False,
///             "kerberos5p_read_write": False,
///             "nfsv3": True,
///             "nfsv4": False,
///         }],
///     },
///     restricted_actions=["DELETE"])
/// test_fs_datastore = gcp.vmwareengine.Datastore("test_fs_datastore",
///     name="ext-fs-datastore",
///     location="us-west1",
///     description="example google_file_service.netapp datastore.",
///     nfs_datastore={
///         "google_file_service": {
///             "netapp_volume": test_volume.id,
///         },
///     })
/// # Mount NFS datastore on vSphere cluster
/// # This code block is required to mount the datastore on ESXi hosts
/// vmw_ext_cluster = gcp.vmwareengine.Cluster("vmw-ext-cluster",
///     name="ext-cluster",
///     parent=cluster_pc.id,
///     node_type_configs=[{
///         "node_type_id": "standard-72",
///         "node_count": 3,
///     }],
///     datastore_mount_configs=[{
///         "datastore": test_fs_datastore.id,
///         "datastore_network": {
///             "subnet": cluster_pc_subnet.id,
///             "connection_count": 4,
///             "mtu": 1500,
///         },
///         "nfs_version": "NFS_V3",
///         "access_mode": "READ_WRITE",
///         "ignore_colocation": True,
///     }],
///     opts = pulumi.ResourceOptions(depends_on=[gcnv_network_peering]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Use this network for netapp volume
///     var npNetwork = Gcp.Compute.GetNetwork.Invoke(new()
///     {
///         Name = "netapp_nw",
///     });
///
///     var cluster_nw = new Gcp.VMwareEngine.Network("cluster-nw", new()
///     {
///         Name = "pc-nw",
///         Type = "STANDARD",
///         Location = "global",
///         Description = "PC network description.",
///     });
///
///     // Read network peering
///     //### This peering is created by netapp volume
///     var snPeering = Gcp.Compute.GetNetworkPeering.Invoke(new()
///     {
///         Name = "sn-netapp-prod",
///         Network = npNetwork.Apply(getNetworkResult => getNetworkResult.Id),
///     });
///
///     // Create vmware engine network peering
///     //### vmware network peering is required for netapp mount on cluster
///     var gcnvNetworkPeering = new Gcp.VMwareEngine.NetworkPeering("gcnv_network_peering", new()
///     {
///         Name = "tf-test-gcnv-network-peering",
///         Description = "test description",
///         VmwareEngineNetwork = cluster_nw.Id,
///         PeerNetwork = Std.Trimprefix.Invoke(new()
///         {
///             Input = snPeering.Apply(getNetworkPeeringResult => getNetworkPeeringResult.PeerNetwork),
///             Prefix = "https://www.googleapis.com/compute/v1",
///         }).Apply(invoke => invoke.Result),
///         PeerNetworkType = "GOOGLE_CLOUD_NETAPP_VOLUMES",
///     });
///
///     var cluster_pc = new Gcp.VMwareEngine.PrivateCloud("cluster-pc", new()
///     {
///         Location = "",
///         Name = "sample-pc",
///         Description = "Sample test PC.",
///         NetworkConfig = new Gcp.VMwareEngine.Inputs.PrivateCloudNetworkConfigArgs
///         {
///             ManagementCidr = "192.168.30.0/24",
///             VmwareEngineNetwork = cluster_nw.Id,
///         },
///         ManagementCluster = new Gcp.VMwareEngine.Inputs.PrivateCloudManagementClusterArgs
///         {
///             ClusterId = "sample-mgmt-cluster",
///             NodeTypeConfigs = new[]
///             {
///                 new Gcp.VMwareEngine.Inputs.PrivateCloudManagementClusterNodeTypeConfigArgs
///                 {
///                     NodeTypeId = "standard-72",
///                     NodeCount = 3,
///                     CustomCoreCount = 32,
///                 },
///             },
///         },
///     });
///
///     // Update service subnet
///     //###  Service subnet is used by nfs datastore mounts
///     //### ip_cidr_range configured on subnet must also be allowed in in netapp volumes's 'export_policy'
///     var cluster_pc_subnet = new Gcp.VMwareEngine.Subnet("cluster-pc-subnet", new()
///     {
///         Name = "service-1",
///         Parent = cluster_pc.Id,
///         IpCidrRange = "10.0.0.0/24",
///     });
///
///     var @default = new Gcp.Netapp.StoragePool("default", new()
///     {
///         Name = "tf-test-test-pool",
///         Location = "us-west1",
///         ServiceLevel = "PREMIUM",
///         CapacityGib = "2048",
///         Network = npNetwork.Apply(getNetworkResult => getNetworkResult.Id),
///     });
///
///     // Create a netapp volume with delete protection enabled
///     //## Use ip range of private cloud service subnet in the 'export_policy'
///     var testVolume = new Gcp.Netapp.Volume("test_volume", new()
///     {
///         Location = "us-west1",
///         Name = "tf-test-test-volume",
///         CapacityGib = "100",
///         ShareName = "tf-test-test-volume",
///         StoragePool = @default.Name,
///         Protocols = new[]
///         {
///             "NFSV3",
///         },
///         ExportPolicy = new Gcp.Netapp.Inputs.VolumeExportPolicyArgs
///         {
///             Rules = new[]
///             {
///                 new Gcp.Netapp.Inputs.VolumeExportPolicyRuleArgs
///                 {
///                     AccessType = "READ_WRITE",
///                     AllowedClients = "10.0.0.0/24",
///                     HasRootAccess = "true",
///                     Kerberos5ReadOnly = false,
///                     Kerberos5ReadWrite = false,
///                     Kerberos5iReadOnly = false,
///                     Kerberos5iReadWrite = false,
///                     Kerberos5pReadOnly = false,
///                     Kerberos5pReadWrite = false,
///                     Nfsv3 = true,
///                     Nfsv4 = false,
///                 },
///             },
///         },
///         RestrictedActions = new[]
///         {
///             "DELETE",
///         },
///     });
///
///     var testFsDatastore = new Gcp.VMwareEngine.Datastore("test_fs_datastore", new()
///     {
///         Name = "ext-fs-datastore",
///         Location = "us-west1",
///         Description = "example google_file_service.netapp datastore.",
///         NfsDatastore = new Gcp.VMwareEngine.Inputs.DatastoreNfsDatastoreArgs
///         {
///             GoogleFileService = new Gcp.VMwareEngine.Inputs.DatastoreNfsDatastoreGoogleFileServiceArgs
///             {
///                 NetappVolume = testVolume.Id,
///             },
///         },
///     });
///
///     // Mount NFS datastore on vSphere cluster
///     // This code block is required to mount the datastore on ESXi hosts
///     var vmw_ext_cluster = new Gcp.VMwareEngine.Cluster("vmw-ext-cluster", new()
///     {
///         Name = "ext-cluster",
///         Parent = cluster_pc.Id,
///         NodeTypeConfigs = new[]
///         {
///             new Gcp.VMwareEngine.Inputs.ClusterNodeTypeConfigArgs
///             {
///                 NodeTypeId = "standard-72",
///                 NodeCount = 3,
///             },
///         },
///         DatastoreMountConfigs = new[]
///         {
///             new Gcp.VMwareEngine.Inputs.ClusterDatastoreMountConfigArgs
///             {
///                 Datastore = testFsDatastore.Id,
///                 DatastoreNetwork = new Gcp.VMwareEngine.Inputs.ClusterDatastoreMountConfigDatastoreNetworkArgs
///                 {
///                     Subnet = cluster_pc_subnet.Id,
///                     ConnectionCount = 4,
///                     Mtu = 1500,
///                 },
///                 NfsVersion = "NFS_V3",
///                 AccessMode = "READ_WRITE",
///                 IgnoreColocation = true,
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             gcnvNetworkPeering,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/netapp"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/vmwareengine"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Use this network for netapp volume
/// 		npNetwork, err := compute.LookupNetwork(ctx, &compute.LookupNetworkArgs{
/// 			Name: pulumi.StringRef("netapp_nw"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cluster_nw, err := vmwareengine.NewNetwork(ctx, "cluster-nw", &vmwareengine.NetworkArgs{
/// 			Name:        pulumi.String("pc-nw"),
/// 			Type:        pulumi.String("STANDARD"),
/// 			Location:    pulumi.String("global"),
/// 			Description: pulumi.String("PC network description."),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Read network peering
/// 		// ### This peering is created by netapp volume
/// 		snPeering, err := compute.LookupNetworkPeering(ctx, &compute.LookupNetworkPeeringArgs{
/// 			Name:    "sn-netapp-prod",
/// 			Network: npNetwork.Id,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeTrimprefix, err := std.Trimprefix(ctx, &std.TrimprefixArgs{
/// 			Input:  snPeering.PeerNetwork,
/// 			Prefix: "https://www.googleapis.com/compute/v1",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create vmware engine network peering
/// 		// ### vmware network peering is required for netapp mount on cluster
/// 		gcnvNetworkPeering, err := vmwareengine.NewNetworkPeering(ctx, "gcnv_network_peering", &vmwareengine.NetworkPeeringArgs{
/// 			Name:                pulumi.String("tf-test-gcnv-network-peering"),
/// 			Description:         pulumi.String("test description"),
/// 			VmwareEngineNetwork: cluster_nw.ID().ToIDOutput().ToStringOutput(),
/// 			PeerNetwork:         pulumi.String(invokeTrimprefix.Result),
/// 			PeerNetworkType:     pulumi.String("GOOGLE_CLOUD_NETAPP_VOLUMES"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cluster_pc, err := vmwareengine.NewPrivateCloud(ctx, "cluster-pc", &vmwareengine.PrivateCloudArgs{
/// 			Location:    pulumi.String(""),
/// 			Name:        pulumi.String("sample-pc"),
/// 			Description: pulumi.String("Sample test PC."),
/// 			NetworkConfig: &vmwareengine.PrivateCloudNetworkConfigArgs{
/// 				ManagementCidr:      pulumi.String("192.168.30.0/24"),
/// 				VmwareEngineNetwork: cluster_nw.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			ManagementCluster: &vmwareengine.PrivateCloudManagementClusterArgs{
/// 				ClusterId: pulumi.String("sample-mgmt-cluster"),
/// 				NodeTypeConfigs: vmwareengine.PrivateCloudManagementClusterNodeTypeConfigArray{
/// 					&vmwareengine.PrivateCloudManagementClusterNodeTypeConfigArgs{
/// 						NodeTypeId:      pulumi.String("standard-72"),
/// 						NodeCount:       pulumi.Int(3),
/// 						CustomCoreCount: pulumi.Int(32),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Update service subnet
/// 		// ###  Service subnet is used by nfs datastore mounts
/// 		// ### ip_cidr_range configured on subnet must also be allowed in in netapp volumes's 'export_policy'
/// 		cluster_pc_subnet, err := vmwareengine.NewSubnet(ctx, "cluster-pc-subnet", &vmwareengine.SubnetArgs{
/// 			Name:        pulumi.String("service-1"),
/// 			Parent:      cluster_pc.ID().ToIDOutput().ToStringOutput(),
/// 			IpCidrRange: pulumi.String("10.0.0.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := netapp.NewStoragePool(ctx, "default", &netapp.StoragePoolArgs{
/// 			Name:         pulumi.String("tf-test-test-pool"),
/// 			Location:     pulumi.String("us-west1"),
/// 			ServiceLevel: pulumi.String("PREMIUM"),
/// 			CapacityGib:  pulumi.String("2048"),
/// 			Network:      pulumi.String(npNetwork.Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create a netapp volume with delete protection enabled
/// 		// ## Use ip range of private cloud service subnet in the 'export_policy'
/// 		testVolume, err := netapp.NewVolume(ctx, "test_volume", &netapp.VolumeArgs{
/// 			Location:    pulumi.String("us-west1"),
/// 			Name:        pulumi.String("tf-test-test-volume"),
/// 			CapacityGib: pulumi.String("100"),
/// 			ShareName:   pulumi.String("tf-test-test-volume"),
/// 			StoragePool: _default.Name,
/// 			Protocols: pulumi.StringArray{
/// 				pulumi.String("NFSV3"),
/// 			},
/// 			ExportPolicy: &netapp.VolumeExportPolicyArgs{
/// 				Rules: netapp.VolumeExportPolicyRuleArray{
/// 					&netapp.VolumeExportPolicyRuleArgs{
/// 						AccessType:          pulumi.String("READ_WRITE"),
/// 						AllowedClients:      pulumi.String("10.0.0.0/24"),
/// 						HasRootAccess:       pulumi.String("true"),
/// 						Kerberos5ReadOnly:   pulumi.Bool(false),
/// 						Kerberos5ReadWrite:  pulumi.Bool(false),
/// 						Kerberos5iReadOnly:  pulumi.Bool(false),
/// 						Kerberos5iReadWrite: pulumi.Bool(false),
/// 						Kerberos5pReadOnly:  pulumi.Bool(false),
/// 						Kerberos5pReadWrite: pulumi.Bool(false),
/// 						Nfsv3:               pulumi.Bool(true),
/// 						Nfsv4:               pulumi.Bool(false),
/// 					},
/// 				},
/// 			},
/// 			RestrictedActions: pulumi.StringArray{
/// 				pulumi.String("DELETE"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testFsDatastore, err := vmwareengine.NewDatastore(ctx, "test_fs_datastore", &vmwareengine.DatastoreArgs{
/// 			Name:        pulumi.String("ext-fs-datastore"),
/// 			Location:    pulumi.String("us-west1"),
/// 			Description: pulumi.String("example google_file_service.netapp datastore."),
/// 			NfsDatastore: &vmwareengine.DatastoreNfsDatastoreArgs{
/// 				GoogleFileService: &vmwareengine.DatastoreNfsDatastoreGoogleFileServiceArgs{
/// 					NetappVolume: testVolume.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Mount NFS datastore on vSphere cluster
/// 		// This code block is required to mount the datastore on ESXi hosts
/// 		_, err = vmwareengine.NewCluster(ctx, "vmw-ext-cluster", &vmwareengine.ClusterArgs{
/// 			Name:   pulumi.String("ext-cluster"),
/// 			Parent: cluster_pc.ID().ToIDOutput().ToStringOutput(),
/// 			NodeTypeConfigs: vmwareengine.ClusterNodeTypeConfigArray{
/// 				&vmwareengine.ClusterNodeTypeConfigArgs{
/// 					NodeTypeId: pulumi.String("standard-72"),
/// 					NodeCount:  pulumi.Int(3),
/// 				},
/// 			},
/// 			DatastoreMountConfigs: vmwareengine.ClusterDatastoreMountConfigArray{
/// 				&vmwareengine.ClusterDatastoreMountConfigArgs{
/// 					Datastore: testFsDatastore.ID().ToIDOutput().ToStringOutput(),
/// 					DatastoreNetwork: &vmwareengine.ClusterDatastoreMountConfigDatastoreNetworkArgs{
/// 						Subnet:          cluster_pc_subnet.ID().ToIDOutput().ToStringOutput(),
/// 						ConnectionCount: pulumi.Int(4),
/// 						Mtu:             pulumi.Int(1500),
/// 					},
/// 					NfsVersion:       pulumi.String("NFS_V3"),
/// 					AccessMode:       pulumi.String("READ_WRITE"),
/// 					IgnoreColocation: pulumi.Bool(true),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			gcnvNetworkPeering,
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
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// data "gcp_compute_getnetwork" "npNetwork" {
///   name = "netapp_nw"
/// }
/// data "gcp_compute_getnetworkpeering" "snPeering" {
///   name    = "sn-netapp-prod"
///   network = data.gcp_compute_getnetwork.npNetwork.id
/// }
///
/// resource "gcp_vmwareengine_network" "cluster-nw" {
///   name        = "pc-nw"
///   type        = "STANDARD"
///   location    = "global"
///   description = "PC network description."
/// }
/// # Create vmware engine network peering
/// #### vmware network peering is required for netapp mount on cluster
/// resource "gcp_vmwareengine_networkpeering" "gcnv_network_peering" {
///   name                  = "tf-test-gcnv-network-peering"
///   description           = "test description"
///   vmware_engine_network = gcp_vmwareengine_network.cluster-nw.id
///   peer_network          = trimprefix(data.gcp_compute_getnetworkpeering.snPeering.peer_network, "https://www.googleapis.com/compute/v1")
///   peer_network_type     = "GOOGLE_CLOUD_NETAPP_VOLUMES"
/// }
/// resource "gcp_vmwareengine_privatecloud" "cluster-pc" {
///   location    = ""
///   name        = "sample-pc"
///   description = "Sample test PC."
///   network_config = {
///     management_cidr       = "192.168.30.0/24"
///     vmware_engine_network = gcp_vmwareengine_network.cluster-nw.id
///   }
///   management_cluster = {
///     cluster_id = "sample-mgmt-cluster"
///     node_type_configs = [{
///       "nodeTypeId"      = "standard-72"
///       "nodeCount"       = 3
///       "customCoreCount" = 32
///     }]
///   }
/// }
/// # Update service subnet
/// ####  Service subnet is used by nfs datastore mounts
/// #### ip_cidr_range configured on subnet must also be allowed in in netapp volumes's 'export_policy'
/// resource "gcp_vmwareengine_subnet" "cluster-pc-subnet" {
///   name          = "service-1"
///   parent        = gcp_vmwareengine_privatecloud.cluster-pc.id
///   ip_cidr_range = "10.0.0.0/24"
/// }
/// resource "gcp_netapp_storagepool" "default" {
///   name          = "tf-test-test-pool"
///   location      = "us-west1"
///   service_level = "PREMIUM"
///   capacity_gib  = "2048"
///   network       = data.gcp_compute_getnetwork.npNetwork.id
/// }
/// # Create a netapp volume with delete protection enabled
/// ### Use ip range of private cloud service subnet in the 'export_policy'
/// resource "gcp_netapp_volume" "test_volume" {
///   location     = "us-west1"
///   name         = "tf-test-test-volume"
///   capacity_gib = "100"
///   share_name   = "tf-test-test-volume"
///   storage_pool = gcp_netapp_storagepool.default.name
///   protocols    = ["NFSV3"]
///   export_policy = {
///     rules = [{
///       "accessType"          = "READ_WRITE"
///       "allowedClients"      = "10.0.0.0/24"
///       "hasRootAccess"       = "true"
///       "kerberos5ReadOnly"   = false
///       "kerberos5ReadWrite"  = false
///       "kerberos5iReadOnly"  = false
///       "kerberos5iReadWrite" = false
///       "kerberos5pReadOnly"  = false
///       "kerberos5pReadWrite" = false
///       "nfsv3"               = true
///       "nfsv4"               = false
///     }]
///   }
///   restricted_actions = ["DELETE"]
/// }
/// resource "gcp_vmwareengine_datastore" "test_fs_datastore" {
///   name        = "ext-fs-datastore"
///   location    = "us-west1"
///   description = "example google_file_service.netapp datastore."
///   nfs_datastore = {
///     google_file_service = {
///       netapp_volume = gcp_netapp_volume.test_volume.id
///     }
///   }
/// }
/// # Mount NFS datastore on vSphere cluster
/// # This code block is required to mount the datastore on ESXi hosts
/// resource "gcp_vmwareengine_cluster" "vmw-ext-cluster" {
///   depends_on = [gcp_vmwareengine_networkpeering.gcnv_network_peering]
///   name       = "ext-cluster"
///   parent     = gcp_vmwareengine_privatecloud.cluster-pc.id
///   node_type_configs {
///     node_type_id = "standard-72"
///     node_count   = 3
///   }
///   datastore_mount_configs {
///     datastore = gcp_vmwareengine_datastore.test_fs_datastore.id
///     datastore_network = {
///       subnet           = gcp_vmwareengine_subnet.cluster-pc-subnet.id
///       connection_count = 4
///       mtu              = 1500
///     }
///     nfs_version       = "NFS_V3"
///     access_mode       = "READ_WRITE"
///     ignore_colocation = true
///   }
/// }
/// # Use this network for netapp volume
/// # Read network peering
/// #### This peering is created by netapp volume
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetNetworkArgs;
/// import com.pulumi.gcp.vmwareengine.Network;
/// import com.pulumi.gcp.vmwareengine.NetworkArgs;
/// import com.pulumi.gcp.compute.inputs.GetNetworkPeeringArgs;
/// import com.pulumi.gcp.vmwareengine.NetworkPeering;
/// import com.pulumi.gcp.vmwareengine.NetworkPeeringArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.TrimprefixArgs;
/// import com.pulumi.gcp.vmwareengine.PrivateCloud;
/// import com.pulumi.gcp.vmwareengine.PrivateCloudArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.PrivateCloudNetworkConfigArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.PrivateCloudManagementClusterArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.PrivateCloudManagementClusterNodeTypeConfigArgs;
/// import com.pulumi.gcp.vmwareengine.Subnet;
/// import com.pulumi.gcp.vmwareengine.SubnetArgs;
/// import com.pulumi.gcp.netapp.StoragePool;
/// import com.pulumi.gcp.netapp.StoragePoolArgs;
/// import com.pulumi.gcp.netapp.Volume;
/// import com.pulumi.gcp.netapp.VolumeArgs;
/// import com.pulumi.gcp.netapp.inputs.VolumeExportPolicyArgs;
/// import com.pulumi.gcp.netapp.inputs.VolumeExportPolicyRuleArgs;
/// import com.pulumi.gcp.vmwareengine.Datastore;
/// import com.pulumi.gcp.vmwareengine.DatastoreArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.DatastoreNfsDatastoreArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.DatastoreNfsDatastoreGoogleFileServiceArgs;
/// import com.pulumi.gcp.vmwareengine.Cluster;
/// import com.pulumi.gcp.vmwareengine.ClusterArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.ClusterNodeTypeConfigArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.ClusterDatastoreMountConfigArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.ClusterDatastoreMountConfigDatastoreNetworkArgs;
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
///         // Use this network for netapp volume
///         final var npNetwork = ComputeFunctions.getNetwork(GetNetworkArgs.builder()
///             .name("netapp_nw")
///             .build());
///
///         var cluster_nw = new Network("cluster-nw", NetworkArgs.builder()
///             .name("pc-nw")
///             .type("STANDARD")
///             .location("global")
///             .description("PC network description.")
///             .build());
///
///         // Read network peering
///         //### This peering is created by netapp volume
///         final var snPeering = ComputeFunctions.getNetworkPeering(GetNetworkPeeringArgs.builder()
///             .name("sn-netapp-prod")
///             .network(npNetwork.id())
///             .build());
///
///         // Create vmware engine network peering
///         //### vmware network peering is required for netapp mount on cluster
///         var gcnvNetworkPeering = new NetworkPeering("gcnvNetworkPeering", NetworkPeeringArgs.builder()
///             .name("tf-test-gcnv-network-peering")
///             .description("test description")
///             .vmwareEngineNetwork(cluster_nw.id())
///             .peerNetwork(StdFunctions.trimprefix(TrimprefixArgs.builder()
///                 .input(snPeering.peerNetwork())
///                 .prefix("https://www.googleapis.com/compute/v1")
///                 .build()).result())
///             .peerNetworkType("GOOGLE_CLOUD_NETAPP_VOLUMES")
///             .build());
///
///         var cluster_pc = new PrivateCloud("cluster-pc", PrivateCloudArgs.builder()
///             .location("")
///             .name("sample-pc")
///             .description("Sample test PC.")
///             .networkConfig(PrivateCloudNetworkConfigArgs.builder()
///                 .managementCidr("192.168.30.0/24")
///                 .vmwareEngineNetwork(cluster_nw.id())
///                 .build())
///             .managementCluster(PrivateCloudManagementClusterArgs.builder()
///                 .clusterId("sample-mgmt-cluster")
///                 .nodeTypeConfigs(PrivateCloudManagementClusterNodeTypeConfigArgs.builder()
///                     .nodeTypeId("standard-72")
///                     .nodeCount(3)
///                     .customCoreCount(32)
///                     .build())
///                 .build())
///             .build());
///
///         // Update service subnet
///         //###  Service subnet is used by nfs datastore mounts
///         //### ip_cidr_range configured on subnet must also be allowed in in netapp volumes's 'export_policy'
///         var cluster_pc_subnet = new Subnet("cluster-pc-subnet", SubnetArgs.builder()
///             .name("service-1")
///             .parent(cluster_pc.id())
///             .ipCidrRange("10.0.0.0/24")
///             .build());
///
///         var default_ = new StoragePool("default", StoragePoolArgs.builder()
///             .name("tf-test-test-pool")
///             .location("us-west1")
///             .serviceLevel("PREMIUM")
///             .capacityGib("2048")
///             .network(npNetwork.id())
///             .build());
///
///         // Create a netapp volume with delete protection enabled
///         //## Use ip range of private cloud service subnet in the 'export_policy'
///         var testVolume = new Volume("testVolume", VolumeArgs.builder()
///             .location("us-west1")
///             .name("tf-test-test-volume")
///             .capacityGib("100")
///             .shareName("tf-test-test-volume")
///             .storagePool(default_.name())
///             .protocols("NFSV3")
///             .exportPolicy(VolumeExportPolicyArgs.builder()
///                 .rules(VolumeExportPolicyRuleArgs.builder()
///                     .accessType("READ_WRITE")
///                     .allowedClients("10.0.0.0/24")
///                     .hasRootAccess("true")
///                     .kerberos5ReadOnly(false)
///                     .kerberos5ReadWrite(false)
///                     .kerberos5iReadOnly(false)
///                     .kerberos5iReadWrite(false)
///                     .kerberos5pReadOnly(false)
///                     .kerberos5pReadWrite(false)
///                     .nfsv3(true)
///                     .nfsv4(false)
///                     .build())
///                 .build())
///             .restrictedActions("DELETE")
///             .build());
///
///         var testFsDatastore = new Datastore("testFsDatastore", DatastoreArgs.builder()
///             .name("ext-fs-datastore")
///             .location("us-west1")
///             .description("example google_file_service.netapp datastore.")
///             .nfsDatastore(DatastoreNfsDatastoreArgs.builder()
///                 .googleFileService(DatastoreNfsDatastoreGoogleFileServiceArgs.builder()
///                     .netappVolume(testVolume.id())
///                     .build())
///                 .build())
///             .build());
///
///         // Mount NFS datastore on vSphere cluster
///         // This code block is required to mount the datastore on ESXi hosts
///         var vmw_ext_cluster = new Cluster("vmw-ext-cluster", ClusterArgs.builder()
///             .name("ext-cluster")
///             .parent(cluster_pc.id())
///             .nodeTypeConfigs(ClusterNodeTypeConfigArgs.builder()
///                 .nodeTypeId("standard-72")
///                 .nodeCount(3)
///                 .build())
///             .datastoreMountConfigs(ClusterDatastoreMountConfigArgs.builder()
///                 .datastore(testFsDatastore.id())
///                 .datastoreNetwork(ClusterDatastoreMountConfigDatastoreNetworkArgs.builder()
///                     .subnet(cluster_pc_subnet.id())
///                     .connectionCount(4)
///                     .mtu(1500)
///                     .build())
///                 .nfsVersion("NFS_V3")
///                 .accessMode("READ_WRITE")
///                 .ignoreColocation(true)
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(gcnvNetworkPeering)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   cluster-nw:
///     type: gcp:vmwareengine:Network
///     properties:
///       name: pc-nw
///       type: STANDARD
///       location: global
///       description: PC network description.
///   # Create vmware engine network peering
///   #### vmware network peering is required for netapp mount on cluster
///   gcnvNetworkPeering:
///     type: gcp:vmwareengine:NetworkPeering
///     name: gcnv_network_peering
///     properties:
///       name: tf-test-gcnv-network-peering
///       description: test description
///       vmwareEngineNetwork: ${["cluster-nw"].id}
///       peerNetwork:
///         fn::invoke:
///           function: std:trimprefix
///           arguments:
///             input: ${snPeering.peerNetwork}
///             prefix: https://www.googleapis.com/compute/v1
///           return: result
///       peerNetworkType: GOOGLE_CLOUD_NETAPP_VOLUMES
///   cluster-pc:
///     type: gcp:vmwareengine:PrivateCloud
///     properties:
///       location: ""
///       name: sample-pc
///       description: Sample test PC.
///       networkConfig:
///         managementCidr: 192.168.30.0/24
///         vmwareEngineNetwork: ${["cluster-nw"].id}
///       managementCluster:
///         clusterId: sample-mgmt-cluster
///         nodeTypeConfigs:
///           - nodeTypeId: standard-72
///             nodeCount: 3
///             customCoreCount: 32
///   # Update service subnet
///   ####  Service subnet is used by nfs datastore mounts
///   #### ip_cidr_range configured on subnet must also be allowed in in netapp volumes's 'export_policy'
///   cluster-pc-subnet:
///     type: gcp:vmwareengine:Subnet
///     properties:
///       name: service-1
///       parent: ${["cluster-pc"].id}
///       ipCidrRange: 10.0.0.0/24
///   default:
///     type: gcp:netapp:StoragePool
///     properties:
///       name: tf-test-test-pool
///       location: us-west1
///       serviceLevel: PREMIUM
///       capacityGib: '2048'
///       network: ${npNetwork.id}
///   # Create a netapp volume with delete protection enabled
///   ### Use ip range of private cloud service subnet in the 'export_policy'
///   testVolume:
///     type: gcp:netapp:Volume
///     name: test_volume
///     properties:
///       location: us-west1
///       name: tf-test-test-volume
///       capacityGib: '100'
///       shareName: tf-test-test-volume
///       storagePool: ${default.name}
///       protocols:
///         - NFSV3
///       exportPolicy:
///         rules:
///           - accessType: READ_WRITE
///             allowedClients: 10.0.0.0/24
///             hasRootAccess: 'true'
///             kerberos5ReadOnly: false
///             kerberos5ReadWrite: false
///             kerberos5iReadOnly: false
///             kerberos5iReadWrite: false
///             kerberos5pReadOnly: false
///             kerberos5pReadWrite: false
///             nfsv3: true
///             nfsv4: false
///       restrictedActions:
///         - DELETE
///   testFsDatastore:
///     type: gcp:vmwareengine:Datastore
///     name: test_fs_datastore
///     properties:
///       name: ext-fs-datastore
///       location: us-west1
///       description: example google_file_service.netapp datastore.
///       nfsDatastore:
///         googleFileService:
///           netappVolume: ${testVolume.id}
///   # Mount NFS datastore on vSphere cluster
///   # This code block is required to mount the datastore on ESXi hosts
///   vmw-ext-cluster:
///     type: gcp:vmwareengine:Cluster
///     properties:
///       name: ext-cluster
///       parent: ${["cluster-pc"].id}
///       nodeTypeConfigs:
///         - nodeTypeId: standard-72
///           nodeCount: 3
///       datastoreMountConfigs:
///         - datastore: ${testFsDatastore.id}
///           datastoreNetwork:
///             subnet: ${["cluster-pc-subnet"].id}
///             connectionCount: 4
///             mtu: 1500
///           nfsVersion: NFS_V3
///           accessMode: READ_WRITE
///           ignoreColocation: true
///     options:
///       dependsOn:
///         - ${gcnvNetworkPeering}
/// variables:
///   # Use this network for netapp volume
///   npNetwork:
///     fn::invoke:
///       function: gcp:compute:getNetwork
///       arguments:
///         name: netapp_nw
///   # Read network peering
///   #### This peering is created by netapp volume
///   snPeering:
///     fn::invoke:
///       function: gcp:compute:getNetworkPeering
///       arguments:
///         name: sn-netapp-prod
///         network: ${npNetwork.id}
/// ```
///
///
/// ## Import
///
/// Cluster can be imported using any of these accepted formats:
///
/// * `{{parent}}/clusters/{{name}}`
///
///
/// When using the `pulumi import` command, Cluster can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vmwareengine/cluster:Cluster default {{parent}}/clusters/{{name}}
/// ```
class Cluster extends pulumi.CustomResource {
  /// Configuration of the autoscaling applied to this cluster
  /// Structure is documented below.
  late final pulumi.Output<ClusterAutoscalingSettings?> autoscalingSettings;
  /// Creation time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> createTime;
  /// Optional. Configuration to mount a datastore.
  /// Mount can be done along with cluster create or during cluster update
  /// Since service subnet is not configured with ip range on mgmt cluster creation, mount on management cluster is done as update only
  /// for unmount remove 'datastore_mount_config' config from the update of cluster resource
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> datastoreMountConfigs;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// True if the cluster is a management cluster; false otherwise.
  /// There can only be one management cluster in a private cloud and it has to be the first one.
  late final pulumi.Output<bool> management;
  /// The ID of the Cluster.
  late final pulumi.Output<String> name;
  /// The map of cluster node types in this cluster,
  /// where the key is canonical identifier of the node type (corresponds to the NodeType).
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> nodeTypeConfigs;
  /// The resource name of the private cloud to create a new cluster in.
  /// Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.
  /// For example: projects/my-project/locations/us-west1-a/privateClouds/my-cloud
  late final pulumi.Output<String> parent;
  /// State of the Cluster.
  late final pulumi.Output<String> state;
  /// System-generated unique identifier for the resource.
  late final pulumi.Output<String> uid;
  /// Last updated time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Cluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cluster]. {@macro pulumi_vmwareengine_cluster_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vmwareengine/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoscalingSettings = registerOutput<ClusterAutoscalingSettings?>('autoscalingSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterAutoscalingSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    datastoreMountConfigs = registerOutput<List<Map<String, dynamic>>?>('datastoreMountConfigs');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    management = registerOutput<bool>('management');
    this.name = registerOutput<String>('name');
    nodeTypeConfigs = registerOutput<List<Map<String, dynamic>>?>('nodeTypeConfigs');
    parent = registerOutput<String>('parent');
    state = registerOutput<String>('state');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
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
          'gcp:vmwareengine/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoscalingSettings = registerOutput<ClusterAutoscalingSettings?>('autoscalingSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterAutoscalingSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    datastoreMountConfigs = registerOutput<List<Map<String, dynamic>>?>('datastoreMountConfigs');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    management = registerOutput<bool>('management');
    this.name = registerOutput<String>('name');
    nodeTypeConfigs = registerOutput<List<Map<String, dynamic>>?>('nodeTypeConfigs');
    parent = registerOutput<String>('parent');
    this.state = registerOutput<String>('state');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
  }
}
