import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_cloud_args.dart';
import 'private_cloud_hcx.dart';
import 'private_cloud_management_cluster.dart';
import 'private_cloud_network_config.dart';
import 'private_cloud_nsx.dart';
import 'private_cloud_state.dart';
import 'private_cloud_vcenter.dart';

/// Represents a private cloud resource. Private clouds are zonal resources.
///
///
/// To get more information about PrivateCloud, see:
///
/// * [API documentation](https://cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.privateClouds)
///
/// ## Example Usage
///
/// ### Vmware Engine Private Cloud Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const pc_nw = new gcp.vmwareengine.Network("pc-nw", {
///     name: "pc-nw",
///     location: "global",
///     type: "STANDARD",
///     description: "PC network description.",
/// });
/// const vmw_engine_pc = new gcp.vmwareengine.PrivateCloud("vmw-engine-pc", {
///     location: "us-west1-a",
///     name: "sample-pc",
///     description: "Sample test PC.",
///     networkConfig: {
///         managementCidr: "192.168.30.0/24",
///         vmwareEngineNetwork: pc_nw.id,
///     },
///     managementCluster: {
///         clusterId: "sample-mgmt-cluster",
///         nodeTypeConfigs: [{
///             nodeTypeId: "standard-72",
///             nodeCount: 3,
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// pc_nw = gcp.vmwareengine.Network("pc-nw",
///     name="pc-nw",
///     location="global",
///     type="STANDARD",
///     description="PC network description.")
/// vmw_engine_pc = gcp.vmwareengine.PrivateCloud("vmw-engine-pc",
///     location="us-west1-a",
///     name="sample-pc",
///     description="Sample test PC.",
///     network_config={
///         "management_cidr": "192.168.30.0/24",
///         "vmware_engine_network": pc_nw.id,
///     },
///     management_cluster={
///         "cluster_id": "sample-mgmt-cluster",
///         "node_type_configs": [{
///             "node_type_id": "standard-72",
///             "node_count": 3,
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
///     var pc_nw = new Gcp.VMwareEngine.Network("pc-nw", new()
///     {
///         Name = "pc-nw",
///         Location = "global",
///         Type = "STANDARD",
///         Description = "PC network description.",
///     });
///
///     var vmw_engine_pc = new Gcp.VMwareEngine.PrivateCloud("vmw-engine-pc", new()
///     {
///         Location = "us-west1-a",
///         Name = "sample-pc",
///         Description = "Sample test PC.",
///         NetworkConfig = new Gcp.VMwareEngine.Inputs.PrivateCloudNetworkConfigArgs
///         {
///             ManagementCidr = "192.168.30.0/24",
///             VmwareEngineNetwork = pc_nw.Id,
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
/// 		pc_nw, err := vmwareengine.NewNetwork(ctx, "pc-nw", &vmwareengine.NetworkArgs{
/// 			Name:        pulumi.String("pc-nw"),
/// 			Location:    pulumi.String("global"),
/// 			Type:        pulumi.String("STANDARD"),
/// 			Description: pulumi.String("PC network description."),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vmwareengine.NewPrivateCloud(ctx, "vmw-engine-pc", &vmwareengine.PrivateCloudArgs{
/// 			Location:    pulumi.String("us-west1-a"),
/// 			Name:        pulumi.String("sample-pc"),
/// 			Description: pulumi.String("Sample test PC."),
/// 			NetworkConfig: &vmwareengine.PrivateCloudNetworkConfigArgs{
/// 				ManagementCidr:      pulumi.String("192.168.30.0/24"),
/// 				VmwareEngineNetwork: pc_nw.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_vmwareengine_privatecloud" "vmw-engine-pc" {
///   location    = "us-west1-a"
///   name        = "sample-pc"
///   description = "Sample test PC."
///   network_config = {
///     management_cidr       = "192.168.30.0/24"
///     vmware_engine_network = gcp_vmwareengine_network.pc-nw.id
///   }
///   management_cluster = {
///     cluster_id = "sample-mgmt-cluster"
///     node_type_configs = [{
///       "nodeTypeId" = "standard-72"
///       "nodeCount"  = 3
///     }]
///   }
/// }
/// resource "gcp_vmwareengine_network" "pc-nw" {
///   name        = "pc-nw"
///   location    = "global"
///   type        = "STANDARD"
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
///         var pc_nw = new Network("pc-nw", NetworkArgs.builder()
///             .name("pc-nw")
///             .location("global")
///             .type("STANDARD")
///             .description("PC network description.")
///             .build());
///
///         var vmw_engine_pc = new PrivateCloud("vmw-engine-pc", PrivateCloudArgs.builder()
///             .location("us-west1-a")
///             .name("sample-pc")
///             .description("Sample test PC.")
///             .networkConfig(PrivateCloudNetworkConfigArgs.builder()
///                 .managementCidr("192.168.30.0/24")
///                 .vmwareEngineNetwork(pc_nw.id())
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
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   vmw-engine-pc:
///     type: gcp:vmwareengine:PrivateCloud
///     properties:
///       location: us-west1-a
///       name: sample-pc
///       description: Sample test PC.
///       networkConfig:
///         managementCidr: 192.168.30.0/24
///         vmwareEngineNetwork: ${["pc-nw"].id}
///       managementCluster:
///         clusterId: sample-mgmt-cluster
///         nodeTypeConfigs:
///           - nodeTypeId: standard-72
///             nodeCount: 3
///   pc-nw:
///     type: gcp:vmwareengine:Network
///     properties:
///       name: pc-nw
///       location: global
///       type: STANDARD
///       description: PC network description.
/// ```
///
/// ### Vmware Engine Private Cloud Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const pc_nw = new gcp.vmwareengine.Network("pc-nw", {
///     name: "pc-nw",
///     location: "global",
///     type: "STANDARD",
///     description: "PC network description.",
/// });
/// const vmw_engine_pc = new gcp.vmwareengine.PrivateCloud("vmw-engine-pc", {
///     location: "us-west1-a",
///     name: "sample-pc",
///     description: "Sample test PC.",
///     type: "TIME_LIMITED",
///     networkConfig: {
///         managementCidr: "192.168.30.0/24",
///         vmwareEngineNetwork: pc_nw.id,
///     },
///     managementCluster: {
///         clusterId: "sample-mgmt-cluster",
///         nodeTypeConfigs: [{
///             nodeTypeId: "standard-72",
///             nodeCount: 1,
///             customCoreCount: 32,
///         }],
///         autoscalingSettings: {
///             autoscalingPolicies: [{
///                 autoscalePolicyId: "autoscaling-policy",
///                 nodeTypeId: "standard-72",
///                 scaleOutSize: 1,
///                 cpuThresholds: {
///                     scaleOut: 80,
///                     scaleIn: 15,
///                 },
///                 consumedMemoryThresholds: {
///                     scaleOut: 75,
///                     scaleIn: 20,
///                 },
///                 storageThresholds: {
///                     scaleOut: 80,
///                     scaleIn: 20,
///                 },
///             }],
///             minClusterNodeCount: 3,
///             maxClusterNodeCount: 8,
///             coolDownPeriod: "1800s",
///         },
///     },
///     deletionDelayHours: 0,
///     sendDeletionDelayHoursIfZero: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// pc_nw = gcp.vmwareengine.Network("pc-nw",
///     name="pc-nw",
///     location="global",
///     type="STANDARD",
///     description="PC network description.")
/// vmw_engine_pc = gcp.vmwareengine.PrivateCloud("vmw-engine-pc",
///     location="us-west1-a",
///     name="sample-pc",
///     description="Sample test PC.",
///     type="TIME_LIMITED",
///     network_config={
///         "management_cidr": "192.168.30.0/24",
///         "vmware_engine_network": pc_nw.id,
///     },
///     management_cluster={
///         "cluster_id": "sample-mgmt-cluster",
///         "node_type_configs": [{
///             "node_type_id": "standard-72",
///             "node_count": 1,
///             "custom_core_count": 32,
///         }],
///         "autoscaling_settings": {
///             "autoscaling_policies": [{
///                 "autoscale_policy_id": "autoscaling-policy",
///                 "node_type_id": "standard-72",
///                 "scale_out_size": 1,
///                 "cpu_thresholds": {
///                     "scale_out": 80,
///                     "scale_in": 15,
///                 },
///                 "consumed_memory_thresholds": {
///                     "scale_out": 75,
///                     "scale_in": 20,
///                 },
///                 "storage_thresholds": {
///                     "scale_out": 80,
///                     "scale_in": 20,
///                 },
///             }],
///             "min_cluster_node_count": 3,
///             "max_cluster_node_count": 8,
///             "cool_down_period": "1800s",
///         },
///     },
///     deletion_delay_hours=0,
///     send_deletion_delay_hours_if_zero=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pc_nw = new Gcp.VMwareEngine.Network("pc-nw", new()
///     {
///         Name = "pc-nw",
///         Location = "global",
///         Type = "STANDARD",
///         Description = "PC network description.",
///     });
///
///     var vmw_engine_pc = new Gcp.VMwareEngine.PrivateCloud("vmw-engine-pc", new()
///     {
///         Location = "us-west1-a",
///         Name = "sample-pc",
///         Description = "Sample test PC.",
///         Type = "TIME_LIMITED",
///         NetworkConfig = new Gcp.VMwareEngine.Inputs.PrivateCloudNetworkConfigArgs
///         {
///             ManagementCidr = "192.168.30.0/24",
///             VmwareEngineNetwork = pc_nw.Id,
///         },
///         ManagementCluster = new Gcp.VMwareEngine.Inputs.PrivateCloudManagementClusterArgs
///         {
///             ClusterId = "sample-mgmt-cluster",
///             NodeTypeConfigs = new[]
///             {
///                 new Gcp.VMwareEngine.Inputs.PrivateCloudManagementClusterNodeTypeConfigArgs
///                 {
///                     NodeTypeId = "standard-72",
///                     NodeCount = 1,
///                     CustomCoreCount = 32,
///                 },
///             },
///             AutoscalingSettings = new Gcp.VMwareEngine.Inputs.PrivateCloudManagementClusterAutoscalingSettingsArgs
///             {
///                 AutoscalingPolicies = new[]
///                 {
///                     new Gcp.VMwareEngine.Inputs.PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyArgs
///                     {
///                         AutoscalePolicyId = "autoscaling-policy",
///                         NodeTypeId = "standard-72",
///                         ScaleOutSize = 1,
///                         CpuThresholds = new Gcp.VMwareEngine.Inputs.PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyCpuThresholdsArgs
///                         {
///                             ScaleOut = 80,
///                             ScaleIn = 15,
///                         },
///                         ConsumedMemoryThresholds = new Gcp.VMwareEngine.Inputs.PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyConsumedMemoryThresholdsArgs
///                         {
///                             ScaleOut = 75,
///                             ScaleIn = 20,
///                         },
///                         StorageThresholds = new Gcp.VMwareEngine.Inputs.PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyStorageThresholdsArgs
///                         {
///                             ScaleOut = 80,
///                             ScaleIn = 20,
///                         },
///                     },
///                 },
///                 MinClusterNodeCount = 3,
///                 MaxClusterNodeCount = 8,
///                 CoolDownPeriod = "1800s",
///             },
///         },
///         DeletionDelayHours = 0,
///         SendDeletionDelayHoursIfZero = true,
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
/// 		pc_nw, err := vmwareengine.NewNetwork(ctx, "pc-nw", &vmwareengine.NetworkArgs{
/// 			Name:        pulumi.String("pc-nw"),
/// 			Location:    pulumi.String("global"),
/// 			Type:        pulumi.String("STANDARD"),
/// 			Description: pulumi.String("PC network description."),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vmwareengine.NewPrivateCloud(ctx, "vmw-engine-pc", &vmwareengine.PrivateCloudArgs{
/// 			Location:    pulumi.String("us-west1-a"),
/// 			Name:        pulumi.String("sample-pc"),
/// 			Description: pulumi.String("Sample test PC."),
/// 			Type:        pulumi.String("TIME_LIMITED"),
/// 			NetworkConfig: &vmwareengine.PrivateCloudNetworkConfigArgs{
/// 				ManagementCidr:      pulumi.String("192.168.30.0/24"),
/// 				VmwareEngineNetwork: pc_nw.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			ManagementCluster: &vmwareengine.PrivateCloudManagementClusterArgs{
/// 				ClusterId: pulumi.String("sample-mgmt-cluster"),
/// 				NodeTypeConfigs: vmwareengine.PrivateCloudManagementClusterNodeTypeConfigArray{
/// 					&vmwareengine.PrivateCloudManagementClusterNodeTypeConfigArgs{
/// 						NodeTypeId:      pulumi.String("standard-72"),
/// 						NodeCount:       pulumi.Int(1),
/// 						CustomCoreCount: pulumi.Int(32),
/// 					},
/// 				},
/// 				AutoscalingSettings: &vmwareengine.PrivateCloudManagementClusterAutoscalingSettingsArgs{
/// 					AutoscalingPolicies: vmwareengine.PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyArray{
/// 						&vmwareengine.PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyArgs{
/// 							AutoscalePolicyId: pulumi.String("autoscaling-policy"),
/// 							NodeTypeId:        pulumi.String("standard-72"),
/// 							ScaleOutSize:      pulumi.Int(1),
/// 							CpuThresholds: &vmwareengine.PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyCpuThresholdsArgs{
/// 								ScaleOut: pulumi.Int(80),
/// 								ScaleIn:  pulumi.Int(15),
/// 							},
/// 							ConsumedMemoryThresholds: &vmwareengine.PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyConsumedMemoryThresholdsArgs{
/// 								ScaleOut: pulumi.Int(75),
/// 								ScaleIn:  pulumi.Int(20),
/// 							},
/// 							StorageThresholds: &vmwareengine.PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyStorageThresholdsArgs{
/// 								ScaleOut: pulumi.Int(80),
/// 								ScaleIn:  pulumi.Int(20),
/// 							},
/// 						},
/// 					},
/// 					MinClusterNodeCount: pulumi.Int(3),
/// 					MaxClusterNodeCount: pulumi.Int(8),
/// 					CoolDownPeriod:      pulumi.String("1800s"),
/// 				},
/// 			},
/// 			DeletionDelayHours:           pulumi.Int(0),
/// 			SendDeletionDelayHoursIfZero: pulumi.Bool(true),
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
/// resource "gcp_vmwareengine_privatecloud" "vmw-engine-pc" {
///   location    = "us-west1-a"
///   name        = "sample-pc"
///   description = "Sample test PC."
///   type        = "TIME_LIMITED"
///   network_config = {
///     management_cidr       = "192.168.30.0/24"
///     vmware_engine_network = gcp_vmwareengine_network.pc-nw.id
///   }
///   management_cluster = {
///     cluster_id = "sample-mgmt-cluster"
///     node_type_configs = [{
///       "nodeTypeId"      = "standard-72"
///       "nodeCount"       = 1
///       "customCoreCount" = 32
///     }]
///     autoscaling_settings = {
///       autoscaling_policies = [{
///         "autoscalePolicyId" = "autoscaling-policy"
///         "nodeTypeId"        = "standard-72"
///         "scaleOutSize"      = 1
///         "cpuThresholds" = {
///           "scaleOut" = 80
///           "scaleIn"  = 15
///         }
///         "consumedMemoryThresholds" = {
///           "scaleOut" = 75
///           "scaleIn"  = 20
///         }
///         "storageThresholds" = {
///           "scaleOut" = 80
///           "scaleIn"  = 20
///         }
///       }]
///       min_cluster_node_count = 3
///       max_cluster_node_count = 8
///       cool_down_period       = "1800s"
///     }
///   }
///   deletion_delay_hours              = 0
///   send_deletion_delay_hours_if_zero = true
/// }
/// resource "gcp_vmwareengine_network" "pc-nw" {
///   name        = "pc-nw"
///   location    = "global"
///   type        = "STANDARD"
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
/// import com.pulumi.gcp.vmwareengine.inputs.PrivateCloudManagementClusterAutoscalingSettingsArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyCpuThresholdsArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyConsumedMemoryThresholdsArgs;
/// import com.pulumi.gcp.vmwareengine.inputs.PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyStorageThresholdsArgs;
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
///         var pc_nw = new Network("pc-nw", NetworkArgs.builder()
///             .name("pc-nw")
///             .location("global")
///             .type("STANDARD")
///             .description("PC network description.")
///             .build());
///
///         var vmw_engine_pc = new PrivateCloud("vmw-engine-pc", PrivateCloudArgs.builder()
///             .location("us-west1-a")
///             .name("sample-pc")
///             .description("Sample test PC.")
///             .type("TIME_LIMITED")
///             .networkConfig(PrivateCloudNetworkConfigArgs.builder()
///                 .managementCidr("192.168.30.0/24")
///                 .vmwareEngineNetwork(pc_nw.id())
///                 .build())
///             .managementCluster(PrivateCloudManagementClusterArgs.builder()
///                 .clusterId("sample-mgmt-cluster")
///                 .nodeTypeConfigs(PrivateCloudManagementClusterNodeTypeConfigArgs.builder()
///                     .nodeTypeId("standard-72")
///                     .nodeCount(1)
///                     .customCoreCount(32)
///                     .build())
///                 .autoscalingSettings(PrivateCloudManagementClusterAutoscalingSettingsArgs.builder()
///                     .autoscalingPolicies(PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyArgs.builder()
///                         .autoscalePolicyId("autoscaling-policy")
///                         .nodeTypeId("standard-72")
///                         .scaleOutSize(1)
///                         .cpuThresholds(PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyCpuThresholdsArgs.builder()
///                             .scaleOut(80)
///                             .scaleIn(15)
///                             .build())
///                         .consumedMemoryThresholds(PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyConsumedMemoryThresholdsArgs.builder()
///                             .scaleOut(75)
///                             .scaleIn(20)
///                             .build())
///                         .storageThresholds(PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyStorageThresholdsArgs.builder()
///                             .scaleOut(80)
///                             .scaleIn(20)
///                             .build())
///                         .build())
///                     .minClusterNodeCount(3)
///                     .maxClusterNodeCount(8)
///                     .coolDownPeriod("1800s")
///                     .build())
///                 .build())
///             .deletionDelayHours(0)
///             .sendDeletionDelayHoursIfZero(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   vmw-engine-pc:
///     type: gcp:vmwareengine:PrivateCloud
///     properties:
///       location: us-west1-a
///       name: sample-pc
///       description: Sample test PC.
///       type: TIME_LIMITED
///       networkConfig:
///         managementCidr: 192.168.30.0/24
///         vmwareEngineNetwork: ${["pc-nw"].id}
///       managementCluster:
///         clusterId: sample-mgmt-cluster
///         nodeTypeConfigs:
///           - nodeTypeId: standard-72
///             nodeCount: 1
///             customCoreCount: 32
///         autoscalingSettings:
///           autoscalingPolicies:
///             - autoscalePolicyId: autoscaling-policy
///               nodeTypeId: standard-72
///               scaleOutSize: 1
///               cpuThresholds:
///                 scaleOut: 80
///                 scaleIn: 15
///               consumedMemoryThresholds:
///                 scaleOut: 75
///                 scaleIn: 20
///               storageThresholds:
///                 scaleOut: 80
///                 scaleIn: 20
///           minClusterNodeCount: 3
///           maxClusterNodeCount: 8
///           coolDownPeriod: 1800s
///       deletionDelayHours: 0
///       sendDeletionDelayHoursIfZero: true
///   pc-nw:
///     type: gcp:vmwareengine:Network
///     properties:
///       name: pc-nw
///       location: global
///       type: STANDARD
///       description: PC network description.
/// ```
///
///
/// ## Import
///
/// PrivateCloud can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/privateClouds/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, PrivateCloud can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vmwareengine/privateCloud:PrivateCloud default projects/{{project}}/locations/{{location}}/privateClouds/{{name}}
/// $ pulumi import gcp:vmwareengine/privateCloud:PrivateCloud default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:vmwareengine/privateCloud:PrivateCloud default {{location}}/{{name}}
/// ```
class PrivateCloud extends pulumi.CustomResource {
  /// Creation time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> createTime;
  /// Time when the resource was scheduled for deletion.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> deleteTime;
  /// The number of hours to delay this request. You can set this value to an hour between 0 to 8, where setting it to 0 starts the deletion request immediately. If no value is set, a default value is set at the API Level.
  late final pulumi.Output<int?> deletionDelayHours;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// User-provided description for this private cloud.
  late final pulumi.Output<String?> description;
  /// Time when the resource will be irreversibly deleted.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> expireTime;
  /// Details about a HCX Cloud Manager appliance.
  /// Structure is documented below.
  late final pulumi.Output<List<PrivateCloudHcx>> hcxes;
  /// The location where the PrivateCloud should reside.
  late final pulumi.Output<String> location;
  /// The management cluster for this private cloud. This used for creating and managing the default cluster.
  /// Structure is documented below.
  late final pulumi.Output<PrivateCloudManagementCluster> managementCluster;
  /// The ID of the PrivateCloud.
  late final pulumi.Output<String> name;
  /// Network configuration in the consumer project with which the peering has to be done.
  /// Structure is documented below.
  late final pulumi.Output<PrivateCloudNetworkConfig> networkConfig;
  /// Details about a NSX Manager appliance.
  /// Structure is documented below.
  late final pulumi.Output<List<PrivateCloudNsx>> nsxes;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// While set true, deletionDelayHours value will be sent in the request even for zero value of the field. This field is only useful for setting 0 value to the deletionDelayHours field. It can be used both alone and together with deletion_delay_hours.
  late final pulumi.Output<bool?> sendDeletionDelayHoursIfZero;
  /// State of the appliance.
  /// Possible values are: `ACTIVE`, `CREATING`.
  late final pulumi.Output<String> state;
  /// Initial type of the private cloud.
  /// Possible values are: `STANDARD`, `TIME_LIMITED`, `STRETCHED`.
  late final pulumi.Output<String?> type;
  /// System-generated unique identifier for the resource.
  late final pulumi.Output<String> uid;
  /// Last update time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;
  /// Details about a vCenter Server management appliance.
  /// Structure is documented below.
  late final pulumi.Output<List<PrivateCloudVcenter>> vcenters;

  /// Creates a new [PrivateCloud].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateCloud]. {@macro pulumi_vmwareengine_private_cloud_private_cloud_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateCloud(
    String name, {
    PrivateCloudArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vmwareengine/privateCloud:PrivateCloud',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    createTime = registerOutput<String>('createTime');
    deleteTime = registerOutput<String>('deleteTime');
    deletionDelayHours = registerOutput<int?>('deletionDelayHours');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    expireTime = registerOutput<String>('expireTime');
    hcxes = registerOutput<List<PrivateCloudHcx>>('hcxes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateCloudHcx>(guardedValue, (value) => PrivateCloudHcx.fromMap((value as Map).cast<String, dynamic>())); });
    location = registerOutput<String>('location');
    managementCluster = registerOutput<PrivateCloudManagementCluster>('managementCluster', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateCloudManagementCluster.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    networkConfig = registerOutput<PrivateCloudNetworkConfig>('networkConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateCloudNetworkConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nsxes = registerOutput<List<PrivateCloudNsx>>('nsxes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateCloudNsx>(guardedValue, (value) => PrivateCloudNsx.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
    sendDeletionDelayHoursIfZero = registerOutput<bool?>('sendDeletionDelayHoursIfZero');
    state = registerOutput<String>('state');
    type = registerOutput<String?>('type');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
    vcenters = registerOutput<List<PrivateCloudVcenter>>('vcenters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateCloudVcenter>(guardedValue, (value) => PrivateCloudVcenter.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [PrivateCloud] resource's state with the given [name] and [id].
  static PrivateCloud get(
    String name,
    pulumi.Input<String> id, {
    PrivateCloudState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return PrivateCloud._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  PrivateCloud._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:vmwareengine/privateCloud:PrivateCloud',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deleteTime = registerOutput<String>('deleteTime');
    deletionDelayHours = registerOutput<int?>('deletionDelayHours');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    expireTime = registerOutput<String>('expireTime');
    hcxes = registerOutput<List<PrivateCloudHcx>>('hcxes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateCloudHcx>(guardedValue, (value) => PrivateCloudHcx.fromMap((value as Map).cast<String, dynamic>())); });
    location = registerOutput<String>('location');
    managementCluster = registerOutput<PrivateCloudManagementCluster>('managementCluster', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateCloudManagementCluster.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    networkConfig = registerOutput<PrivateCloudNetworkConfig>('networkConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateCloudNetworkConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nsxes = registerOutput<List<PrivateCloudNsx>>('nsxes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateCloudNsx>(guardedValue, (value) => PrivateCloudNsx.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
    sendDeletionDelayHoursIfZero = registerOutput<bool?>('sendDeletionDelayHoursIfZero');
    this.state = registerOutput<String>('state');
    type = registerOutput<String?>('type');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
    vcenters = registerOutput<List<PrivateCloudVcenter>>('vcenters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateCloudVcenter>(guardedValue, (value) => PrivateCloudVcenter.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [PrivateCloud] resource.
  PrivateCloud.reference(String urn)
    : super(
        'gcp:vmwareengine/privateCloud:PrivateCloud',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deleteTime = registerOutput<String>('deleteTime');
    deletionDelayHours = registerOutput<int?>('deletionDelayHours');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    expireTime = registerOutput<String>('expireTime');
    hcxes = registerOutput<List<PrivateCloudHcx>>('hcxes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateCloudHcx>(guardedValue, (value) => PrivateCloudHcx.fromMap((value as Map).cast<String, dynamic>())); });
    location = registerOutput<String>('location');
    managementCluster = registerOutput<PrivateCloudManagementCluster>('managementCluster', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateCloudManagementCluster.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    networkConfig = registerOutput<PrivateCloudNetworkConfig>('networkConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PrivateCloudNetworkConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    nsxes = registerOutput<List<PrivateCloudNsx>>('nsxes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateCloudNsx>(guardedValue, (value) => PrivateCloudNsx.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
    sendDeletionDelayHoursIfZero = registerOutput<bool?>('sendDeletionDelayHoursIfZero');
    state = registerOutput<String>('state');
    type = registerOutput<String?>('type');
    uid = registerOutput<String>('uid');
    updateTime = registerOutput<String>('updateTime');
    vcenters = registerOutput<List<PrivateCloudVcenter>>('vcenters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateCloudVcenter>(guardedValue, (value) => PrivateCloudVcenter.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
