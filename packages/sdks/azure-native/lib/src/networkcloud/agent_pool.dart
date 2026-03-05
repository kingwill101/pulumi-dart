import 'package:pulumi/pulumi.dart' as pulumi;
import 'administrator_configuration_response.dart';
import 'agent_options_response.dart';
import 'agent_pool_args.dart';
import 'agent_pool_upgrade_settings_response.dart';
import 'attached_network_configuration_response.dart';
import 'extended_location_response.dart';
import 'system_data_response.dart';

/// Uses Azure REST API version 2025-02-01. In version 2.x of the Azure Native provider, it used API version 2023-10-01-preview.
///
/// Other available API versions: 2024-07-01, 2024-10-01-preview, 2025-07-01-preview, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native networkcloud [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update Kubernetes cluster agent pool
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var agentPool = new AzureNative.NetworkCloud.AgentPool("agentPool", new()
///     {
///         AdministratorConfiguration = new AzureNative.NetworkCloud.Inputs.AdministratorConfigurationArgs
///         {
///             AdminUsername = "azure",
///             SshPublicKeys = new[]
///             {
///                 new AzureNative.NetworkCloud.Inputs.SshPublicKeyArgs
///                 {
///                     KeyData = "ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm",
///                 },
///             },
///         },
///         AgentOptions = new AzureNative.NetworkCloud.Inputs.AgentOptionsArgs
///         {
///             HugepagesCount = 96,
///             HugepagesSize = AzureNative.NetworkCloud.HugepagesSize.HugepagesSize_1G,
///         },
///         AgentPoolName = "agentPoolName",
///         AttachedNetworkConfiguration = new AzureNative.NetworkCloud.Inputs.AttachedNetworkConfigurationArgs
///         {
///             L2Networks = new[]
///             {
///                 new AzureNative.NetworkCloud.Inputs.L2NetworkAttachmentConfigurationArgs
///                 {
///                     NetworkId = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l2Networks/l2NetworkName",
///                     PluginType = AzureNative.NetworkCloud.KubernetesPluginType.DPDK,
///                 },
///             },
///             L3Networks = new[]
///             {
///                 new AzureNative.NetworkCloud.Inputs.L3NetworkAttachmentConfigurationArgs
///                 {
///                     IpamEnabled = AzureNative.NetworkCloud.L3NetworkConfigurationIpamEnabled.False,
///                     NetworkId = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l3Networks/l3NetworkName",
///                     PluginType = AzureNative.NetworkCloud.KubernetesPluginType.SRIOV,
///                 },
///             },
///             TrunkedNetworks = new[]
///             {
///                 new AzureNative.NetworkCloud.Inputs.TrunkedNetworkAttachmentConfigurationArgs
///                 {
///                     NetworkId = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/trunkedNetworks/trunkedNetworkName",
///                     PluginType = AzureNative.NetworkCloud.KubernetesPluginType.MACVLAN,
///                 },
///             },
///         },
///         AvailabilityZones = new[]
///         {
///             "1",
///             "2",
///             "3",
///         },
///         Count = 3,
///         ExtendedLocation = new AzureNative.NetworkCloud.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName",
///             Type = "CustomLocation",
///         },
///         KubernetesClusterName = "kubernetesClusterName",
///         Labels = new[]
///         {
///             new AzureNative.NetworkCloud.Inputs.KubernetesLabelArgs
///             {
///                 Key = "kubernetes.label",
///                 Value = "true",
///             },
///         },
///         Location = "location",
///         Mode = AzureNative.NetworkCloud.AgentPoolMode.System,
///         ResourceGroupName = "resourceGroupName",
///         Tags =
///         {
///             { "key1", "myvalue1" },
///             { "key2", "myvalue2" },
///         },
///         Taints = new[]
///         {
///             new AzureNative.NetworkCloud.Inputs.KubernetesLabelArgs
///             {
///                 Key = "kubernetes.taint",
///                 Value = "true:NoSchedule",
///             },
///         },
///         UpgradeSettings = new AzureNative.NetworkCloud.Inputs.AgentPoolUpgradeSettingsArgs
///         {
///             MaxSurge = "1",
///         },
///         VmSkuName = "NC_P46_224_v1",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	networkcloud "github.com/pulumi/pulumi-azure-native-sdk/networkcloud/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkcloud.NewAgentPool(ctx, "agentPool", &networkcloud.AgentPoolArgs{
/// 			AdministratorConfiguration: &networkcloud.AdministratorConfigurationArgs{
/// 				AdminUsername: pulumi.String("azure"),
/// 				SshPublicKeys: networkcloud.SshPublicKeyArray{
/// 					&networkcloud.SshPublicKeyArgs{
/// 						KeyData: pulumi.String("ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm"),
/// 					},
/// 				},
/// 			},
/// 			AgentOptions: &networkcloud.AgentOptionsArgs{
/// 				HugepagesCount: pulumi.Float64(96),
/// 				HugepagesSize:  pulumi.String(networkcloud.HugepagesSize_1G),
/// 			},
/// 			AgentPoolName: pulumi.String("agentPoolName"),
/// 			AttachedNetworkConfiguration: &networkcloud.AttachedNetworkConfigurationArgs{
/// 				L2Networks: networkcloud.L2NetworkAttachmentConfigurationArray{
/// 					&networkcloud.L2NetworkAttachmentConfigurationArgs{
/// 						NetworkId:  pulumi.String("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l2Networks/l2NetworkName"),
/// 						PluginType: pulumi.String(networkcloud.KubernetesPluginTypeDPDK),
/// 					},
/// 				},
/// 				L3Networks: networkcloud.L3NetworkAttachmentConfigurationArray{
/// 					&networkcloud.L3NetworkAttachmentConfigurationArgs{
/// 						IpamEnabled: pulumi.String(networkcloud.L3NetworkConfigurationIpamEnabledFalse),
/// 						NetworkId:   pulumi.String("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l3Networks/l3NetworkName"),
/// 						PluginType:  pulumi.String(networkcloud.KubernetesPluginTypeSRIOV),
/// 					},
/// 				},
/// 				TrunkedNetworks: networkcloud.TrunkedNetworkAttachmentConfigurationArray{
/// 					&networkcloud.TrunkedNetworkAttachmentConfigurationArgs{
/// 						NetworkId:  pulumi.String("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/trunkedNetworks/trunkedNetworkName"),
/// 						PluginType: pulumi.String(networkcloud.KubernetesPluginTypeMACVLAN),
/// 					},
/// 				},
/// 			},
/// 			AvailabilityZones: pulumi.StringArray{
/// 				pulumi.String("1"),
/// 				pulumi.String("2"),
/// 				pulumi.String("3"),
/// 			},
/// 			Count: pulumi.Float64(3),
/// 			ExtendedLocation: &networkcloud.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName"),
/// 				Type: pulumi.String("CustomLocation"),
/// 			},
/// 			KubernetesClusterName: pulumi.String("kubernetesClusterName"),
/// 			Labels: networkcloud.KubernetesLabelArray{
/// 				&networkcloud.KubernetesLabelArgs{
/// 					Key:   pulumi.String("kubernetes.label"),
/// 					Value: pulumi.String("true"),
/// 				},
/// 			},
/// 			Location:          pulumi.String("location"),
/// 			Mode:              pulumi.String(networkcloud.AgentPoolModeSystem),
/// 			ResourceGroupName: pulumi.String("resourceGroupName"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("myvalue1"),
/// 				"key2": pulumi.String("myvalue2"),
/// 			},
/// 			Taints: networkcloud.KubernetesLabelArray{
/// 				&networkcloud.KubernetesLabelArgs{
/// 					Key:   pulumi.String("kubernetes.taint"),
/// 					Value: pulumi.String("true:NoSchedule"),
/// 				},
/// 			},
/// 			UpgradeSettings: &networkcloud.AgentPoolUpgradeSettingsArgs{
/// 				MaxSurge: pulumi.String("1"),
/// 			},
/// 			VmSkuName: pulumi.String("NC_P46_224_v1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.networkcloud.AgentPool;
/// import com.pulumi.azurenative.networkcloud.AgentPoolArgs;
/// import com.pulumi.azurenative.networkcloud.inputs.AdministratorConfigurationArgs;
/// import com.pulumi.azurenative.networkcloud.inputs.AgentOptionsArgs;
/// import com.pulumi.azurenative.networkcloud.inputs.AttachedNetworkConfigurationArgs;
/// import com.pulumi.azurenative.networkcloud.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.networkcloud.inputs.KubernetesLabelArgs;
/// import com.pulumi.azurenative.networkcloud.inputs.AgentPoolUpgradeSettingsArgs;
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
///         var agentPool = new AgentPool("agentPool", AgentPoolArgs.builder()
///             .administratorConfiguration(AdministratorConfigurationArgs.builder()
///                 .adminUsername("azure")
///                 .sshPublicKeys(SshPublicKeyArgs.builder()
///                     .keyData("ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm")
///                     .build())
///                 .build())
///             .agentOptions(AgentOptionsArgs.builder()
///                 .hugepagesCount(96.0)
///                 .hugepagesSize("1G")
///                 .build())
///             .agentPoolName("agentPoolName")
///             .attachedNetworkConfiguration(AttachedNetworkConfigurationArgs.builder()
///                 .l2Networks(L2NetworkAttachmentConfigurationArgs.builder()
///                     .networkId("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l2Networks/l2NetworkName")
///                     .pluginType("DPDK")
///                     .build())
///                 .l3Networks(L3NetworkAttachmentConfigurationArgs.builder()
///                     .ipamEnabled("False")
///                     .networkId("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l3Networks/l3NetworkName")
///                     .pluginType("SRIOV")
///                     .build())
///                 .trunkedNetworks(TrunkedNetworkAttachmentConfigurationArgs.builder()
///                     .networkId("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/trunkedNetworks/trunkedNetworkName")
///                     .pluginType("MACVLAN")
///                     .build())
///                 .build())
///             .availabilityZones(
///                 "1",
///                 "2",
///                 "3")
///             .count(3.0)
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName")
///                 .type("CustomLocation")
///                 .build())
///             .kubernetesClusterName("kubernetesClusterName")
///             .labels(KubernetesLabelArgs.builder()
///                 .key("kubernetes.label")
///                 .value("true")
///                 .build())
///             .location("location")
///             .mode("System")
///             .resourceGroupName("resourceGroupName")
///             .tags(Map.ofEntries(
///                 Map.entry("key1", "myvalue1"),
///                 Map.entry("key2", "myvalue2")
///             ))
///             .taints(KubernetesLabelArgs.builder()
///                 .key("kubernetes.taint")
///                 .value("true:NoSchedule")
///                 .build())
///             .upgradeSettings(AgentPoolUpgradeSettingsArgs.builder()
///                 .maxSurge("1")
///                 .build())
///             .vmSkuName("NC_P46_224_v1")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const agentPool = new azure_native.networkcloud.AgentPool("agentPool", {
///     administratorConfiguration: {
///         adminUsername: "azure",
///         sshPublicKeys: [{
///             keyData: "ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm",
///         }],
///     },
///     agentOptions: {
///         hugepagesCount: 96,
///         hugepagesSize: azure_native.networkcloud.HugepagesSize.HugepagesSize_1G,
///     },
///     agentPoolName: "agentPoolName",
///     attachedNetworkConfiguration: {
///         l2Networks: [{
///             networkId: "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l2Networks/l2NetworkName",
///             pluginType: azure_native.networkcloud.KubernetesPluginType.DPDK,
///         }],
///         l3Networks: [{
///             ipamEnabled: azure_native.networkcloud.L3NetworkConfigurationIpamEnabled.False,
///             networkId: "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l3Networks/l3NetworkName",
///             pluginType: azure_native.networkcloud.KubernetesPluginType.SRIOV,
///         }],
///         trunkedNetworks: [{
///             networkId: "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/trunkedNetworks/trunkedNetworkName",
///             pluginType: azure_native.networkcloud.KubernetesPluginType.MACVLAN,
///         }],
///     },
///     availabilityZones: [
///         "1",
///         "2",
///         "3",
///     ],
///     count: 3,
///     extendedLocation: {
///         name: "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName",
///         type: "CustomLocation",
///     },
///     kubernetesClusterName: "kubernetesClusterName",
///     labels: [{
///         key: "kubernetes.label",
///         value: "true",
///     }],
///     location: "location",
///     mode: azure_native.networkcloud.AgentPoolMode.System,
///     resourceGroupName: "resourceGroupName",
///     tags: {
///         key1: "myvalue1",
///         key2: "myvalue2",
///     },
///     taints: [{
///         key: "kubernetes.taint",
///         value: "true:NoSchedule",
///     }],
///     upgradeSettings: {
///         maxSurge: "1",
///     },
///     vmSkuName: "NC_P46_224_v1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// agent_pool = azure_native.networkcloud.AgentPool("agentPool",
///     administrator_configuration={
///         "admin_username": "azure",
///         "ssh_public_keys": [{
///             "key_data": "ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm",
///         }],
///     },
///     agent_options={
///         "hugepages_count": 96,
///         "hugepages_size": azure_native.networkcloud.HugepagesSize.HUGEPAGES_SIZE_1_G,
///     },
///     agent_pool_name="agentPoolName",
///     attached_network_configuration={
///         "l2_networks": [{
///             "network_id": "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l2Networks/l2NetworkName",
///             "plugin_type": azure_native.networkcloud.KubernetesPluginType.DPDK,
///         }],
///         "l3_networks": [{
///             "ipam_enabled": azure_native.networkcloud.L3NetworkConfigurationIpamEnabled.FALSE,
///             "network_id": "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l3Networks/l3NetworkName",
///             "plugin_type": azure_native.networkcloud.KubernetesPluginType.SRIOV,
///         }],
///         "trunked_networks": [{
///             "network_id": "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/trunkedNetworks/trunkedNetworkName",
///             "plugin_type": azure_native.networkcloud.KubernetesPluginType.MACVLAN,
///         }],
///     },
///     availability_zones=[
///         "1",
///         "2",
///         "3",
///     ],
///     count=3,
///     extended_location={
///         "name": "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName",
///         "type": "CustomLocation",
///     },
///     kubernetes_cluster_name="kubernetesClusterName",
///     labels=[{
///         "key": "kubernetes.label",
///         "value": "true",
///     }],
///     location="location",
///     mode=azure_native.networkcloud.AgentPoolMode.SYSTEM,
///     resource_group_name="resourceGroupName",
///     tags={
///         "key1": "myvalue1",
///         "key2": "myvalue2",
///     },
///     taints=[{
///         "key": "kubernetes.taint",
///         "value": "true:NoSchedule",
///     }],
///     upgrade_settings={
///         "max_surge": "1",
///     },
///     vm_sku_name="NC_P46_224_v1")
///
/// ```
///
/// ```yaml
/// resources:
///   agentPool:
///     type: azure-native:networkcloud:AgentPool
///     properties:
///       administratorConfiguration:
///         adminUsername: azure
///         sshPublicKeys:
///           - keyData: ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm
///       agentOptions:
///         hugepagesCount: 96
///         hugepagesSize: 1G
///       agentPoolName: agentPoolName
///       attachedNetworkConfiguration:
///         l2Networks:
///           - networkId: /subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l2Networks/l2NetworkName
///             pluginType: DPDK
///         l3Networks:
///           - ipamEnabled: False
///             networkId: /subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l3Networks/l3NetworkName
///             pluginType: SRIOV
///         trunkedNetworks:
///           - networkId: /subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/trunkedNetworks/trunkedNetworkName
///             pluginType: MACVLAN
///       availabilityZones:
///         - '1'
///         - '2'
///         - '3'
///       count: 3
///       extendedLocation:
///         name: /subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName
///         type: CustomLocation
///       kubernetesClusterName: kubernetesClusterName
///       labels:
///         - key: kubernetes.label
///           value: 'true'
///       location: location
///       mode: System
///       resourceGroupName: resourceGroupName
///       tags:
///         key1: myvalue1
///         key2: myvalue2
///       taints:
///         - key: kubernetes.taint
///           value: true:NoSchedule
///       upgradeSettings:
///         maxSurge: '1'
///       vmSkuName: NC_P46_224_v1
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:networkcloud:AgentPool default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.NetworkCloud/kubernetesClusters/{kubernetesClusterName}/agentPools/{agentPoolName}
/// ```
class AgentPool extends pulumi.CustomResource {
  /// The administrator credentials to be used for the nodes in this agent pool.
  late final pulumi.Output<AdministratorConfigurationResponse?>
  administratorConfiguration;

  /// The configurations that will be applied to each agent in this agent pool.
  late final pulumi.Output<AgentOptionsResponse?> agentOptions;

  /// The configuration of networks being attached to the agent pool for use by the workloads that run on this Kubernetes cluster.
  late final pulumi.Output<AttachedNetworkConfigurationResponse?>
  attachedNetworkConfiguration;

  /// The list of availability zones of the Network Cloud cluster used for the provisioning of nodes in this agent pool. If not specified, all availability zones will be used.
  late final pulumi.Output<List<String>?> availabilityZones;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The number of virtual machines that use this configuration.
  late final pulumi.Output<double> count;

  /// The current status of the agent pool.
  late final pulumi.Output<String> detailedStatus;

  /// The descriptive message about the current detailed status.
  late final pulumi.Output<String> detailedStatusMessage;

  /// Resource ETag.
  late final pulumi.Output<String> etag;

  /// The extended location of the cluster associated with the resource.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;

  /// The Kubernetes version running in this agent pool.
  late final pulumi.Output<String> kubernetesVersion;

  /// The labels applied to the nodes in this agent pool.
  late final pulumi.Output<List<Map<String, dynamic>>?> labels;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The selection of how this agent pool is utilized, either as a system pool or a user pool. System pools run the features and critical services for the Kubernetes Cluster, while user pools are dedicated to user workloads. Every Kubernetes cluster must contain at least one system node pool with at least one node.
  late final pulumi.Output<String> mode;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The provisioning state of the agent pool.
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The taints applied to the nodes in this agent pool.
  late final pulumi.Output<List<Map<String, dynamic>>?> taints;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// The configuration of the agent pool.
  late final pulumi.Output<AgentPoolUpgradeSettingsResponse?> upgradeSettings;

  /// The name of the VM SKU that determines the size of resources allocated for node VMs.
  late final pulumi.Output<String> vmSkuName;

  /// Creates a new [AgentPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentPool]. {@macro pulumi_networkcloud_agent_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentPool(
    String name, {
    AgentPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:networkcloud:AgentPool',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    administratorConfiguration =
        registerOutput<AdministratorConfigurationResponse?>(
          'administratorConfiguration',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return AdministratorConfigurationResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    agentOptions = registerOutput<AgentOptionsResponse?>(
      'agentOptions',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AgentOptionsResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    attachedNetworkConfiguration =
        registerOutput<AttachedNetworkConfigurationResponse?>(
          'attachedNetworkConfiguration',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return AttachedNetworkConfigurationResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    availabilityZones = registerOutput<List<String>?>('availabilityZones');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    count = registerOutput<double>('count');
    detailedStatus = registerOutput<String>('detailedStatus');
    detailedStatusMessage = registerOutput<String>('detailedStatusMessage');
    etag = registerOutput<String>('etag');
    extendedLocation = registerOutput<ExtendedLocationResponse?>(
      'extendedLocation',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ExtendedLocationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    kubernetesVersion = registerOutput<String>('kubernetesVersion');
    labels = registerOutput<List<Map<String, dynamic>>?>('labels');
    location = registerOutput<String>('location');
    mode = registerOutput<String>('mode');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    taints = registerOutput<List<Map<String, dynamic>>?>('taints');
    type = registerOutput<String>('type');
    upgradeSettings = registerOutput<AgentPoolUpgradeSettingsResponse?>(
      'upgradeSettings',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AgentPoolUpgradeSettingsResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    vmSkuName = registerOutput<String>('vmSkuName');
  }
}
