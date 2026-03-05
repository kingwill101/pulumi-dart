import 'package:pulumi/pulumi.dart' as pulumi;
import 'aad_configuration_response.dart';
import 'administrator_configuration_response.dart';
import 'control_plane_node_configuration_response.dart';
import 'extended_location_response.dart';
import 'kubernetes_cluster_args.dart';
import 'managed_resource_group_configuration_response.dart';
import 'network_configuration_response.dart';
import 'system_data_response.dart';

/// Uses Azure REST API version 2025-02-01. In version 2.x of the Azure Native provider, it used API version 2023-10-01-preview.
///
/// Other available API versions: 2024-07-01, 2024-10-01-preview, 2025-07-01-preview, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native networkcloud [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update Kubernetes cluster
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var kubernetesCluster = new AzureNative.NetworkCloud.KubernetesCluster("kubernetesCluster", new()
///     {
///         AadConfiguration = new AzureNative.NetworkCloud.Inputs.AadConfigurationArgs
///         {
///             AdminGroupObjectIds = new[]
///             {
///                 "ffffffff-ffff-ffff-ffff-ffffffffffff",
///             },
///         },
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
///         ControlPlaneNodeConfiguration = new AzureNative.NetworkCloud.Inputs.ControlPlaneNodeConfigurationArgs
///         {
///             AdministratorConfiguration = new AzureNative.NetworkCloud.Inputs.AdministratorConfigurationArgs
///             {
///                 AdminUsername = "azure",
///                 SshPublicKeys = new[]
///                 {
///                     new AzureNative.NetworkCloud.Inputs.SshPublicKeyArgs
///                     {
///                         KeyData = "ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm",
///                     },
///                 },
///             },
///             AvailabilityZones = new[]
///             {
///                 "1",
///                 "2",
///                 "3",
///             },
///             Count = 3,
///             VmSkuName = "NC_G6_28_v1",
///         },
///         ExtendedLocation = new AzureNative.NetworkCloud.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName",
///             Type = "CustomLocation",
///         },
///         InitialAgentPoolConfigurations = new[]
///         {
///             new AzureNative.NetworkCloud.Inputs.InitialAgentPoolConfigurationArgs
///             {
///                 AdministratorConfiguration = new AzureNative.NetworkCloud.Inputs.AdministratorConfigurationArgs
///                 {
///                     AdminUsername = "azure",
///                     SshPublicKeys = new[]
///                     {
///                         new AzureNative.NetworkCloud.Inputs.SshPublicKeyArgs
///                         {
///                             KeyData = "ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm",
///                         },
///                     },
///                 },
///                 AgentOptions = new AzureNative.NetworkCloud.Inputs.AgentOptionsArgs
///                 {
///                     HugepagesCount = 96,
///                     HugepagesSize = AzureNative.NetworkCloud.HugepagesSize.HugepagesSize_1G,
///                 },
///                 AttachedNetworkConfiguration = new AzureNative.NetworkCloud.Inputs.AttachedNetworkConfigurationArgs
///                 {
///                     L2Networks = new[]
///                     {
///                         new AzureNative.NetworkCloud.Inputs.L2NetworkAttachmentConfigurationArgs
///                         {
///                             NetworkId = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l2Networks/l2NetworkName",
///                             PluginType = AzureNative.NetworkCloud.KubernetesPluginType.DPDK,
///                         },
///                     },
///                     L3Networks = new[]
///                     {
///                         new AzureNative.NetworkCloud.Inputs.L3NetworkAttachmentConfigurationArgs
///                         {
///                             IpamEnabled = AzureNative.NetworkCloud.L3NetworkConfigurationIpamEnabled.False,
///                             NetworkId = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l3Networks/l3NetworkName",
///                             PluginType = AzureNative.NetworkCloud.KubernetesPluginType.SRIOV,
///                         },
///                     },
///                     TrunkedNetworks = new[]
///                     {
///                         new AzureNative.NetworkCloud.Inputs.TrunkedNetworkAttachmentConfigurationArgs
///                         {
///                             NetworkId = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/trunkedNetworks/trunkedNetworkName",
///                             PluginType = AzureNative.NetworkCloud.KubernetesPluginType.MACVLAN,
///                         },
///                     },
///                 },
///                 AvailabilityZones = new[]
///                 {
///                     "1",
///                     "2",
///                     "3",
///                 },
///                 Count = 3,
///                 Labels = new[]
///                 {
///                     new AzureNative.NetworkCloud.Inputs.KubernetesLabelArgs
///                     {
///                         Key = "kubernetes.label",
///                         Value = "true",
///                     },
///                 },
///                 Mode = AzureNative.NetworkCloud.AgentPoolMode.System,
///                 Name = "SystemPool-1",
///                 Taints = new[]
///                 {
///                     new AzureNative.NetworkCloud.Inputs.KubernetesLabelArgs
///                     {
///                         Key = "kubernetes.taint",
///                         Value = "true:NoSchedule",
///                     },
///                 },
///                 UpgradeSettings = new AzureNative.NetworkCloud.Inputs.AgentPoolUpgradeSettingsArgs
///                 {
///                     MaxSurge = "1",
///                 },
///                 VmSkuName = "NC_P46_224_v1",
///             },
///         },
///         KubernetesClusterName = "kubernetesClusterName",
///         KubernetesVersion = "1.XX.Y",
///         Location = "location",
///         ManagedResourceGroupConfiguration = new AzureNative.NetworkCloud.Inputs.ManagedResourceGroupConfigurationArgs
///         {
///             Location = "East US",
///             Name = "my-managed-rg",
///         },
///         NetworkConfiguration = new AzureNative.NetworkCloud.Inputs.NetworkConfigurationArgs
///         {
///             AttachedNetworkConfiguration = new AzureNative.NetworkCloud.Inputs.AttachedNetworkConfigurationArgs
///             {
///                 L2Networks = new[]
///                 {
///                     new AzureNative.NetworkCloud.Inputs.L2NetworkAttachmentConfigurationArgs
///                     {
///                         NetworkId = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l2Networks/l2NetworkName",
///                         PluginType = AzureNative.NetworkCloud.KubernetesPluginType.DPDK,
///                     },
///                 },
///                 L3Networks = new[]
///                 {
///                     new AzureNative.NetworkCloud.Inputs.L3NetworkAttachmentConfigurationArgs
///                     {
///                         IpamEnabled = AzureNative.NetworkCloud.L3NetworkConfigurationIpamEnabled.False,
///                         NetworkId = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l3Networks/l3NetworkName",
///                         PluginType = AzureNative.NetworkCloud.KubernetesPluginType.SRIOV,
///                     },
///                 },
///                 TrunkedNetworks = new[]
///                 {
///                     new AzureNative.NetworkCloud.Inputs.TrunkedNetworkAttachmentConfigurationArgs
///                     {
///                         NetworkId = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/trunkedNetworks/trunkedNetworkName",
///                         PluginType = AzureNative.NetworkCloud.KubernetesPluginType.MACVLAN,
///                     },
///                 },
///             },
///             BgpServiceLoadBalancerConfiguration = new AzureNative.NetworkCloud.Inputs.BgpServiceLoadBalancerConfigurationArgs
///             {
///                 BgpAdvertisements = new[]
///                 {
///                     new AzureNative.NetworkCloud.Inputs.BgpAdvertisementArgs
///                     {
///                         AdvertiseToFabric = AzureNative.NetworkCloud.AdvertiseToFabric.True,
///                         Communities = new[]
///                         {
///                             "64512:100",
///                         },
///                         IpAddressPools = new[]
///                         {
///                             "pool1",
///                         },
///                         Peers = new[]
///                         {
///                             "peer1",
///                         },
///                     },
///                 },
///                 BgpPeers = new[]
///                 {
///                     new AzureNative.NetworkCloud.Inputs.ServiceLoadBalancerBgpPeerArgs
///                     {
///                         BfdEnabled = AzureNative.NetworkCloud.BfdEnabled.False,
///                         BgpMultiHop = AzureNative.NetworkCloud.BgpMultiHop.False,
///                         HoldTime = "P300s",
///                         KeepAliveTime = "P300s",
///                         MyAsn = 64512,
///                         Name = "peer1",
///                         PeerAddress = "203.0.113.254",
///                         PeerAsn = 64497,
///                         PeerPort = 179,
///                     },
///                 },
///                 FabricPeeringEnabled = AzureNative.NetworkCloud.FabricPeeringEnabled.True,
///                 IpAddressPools = new[]
///                 {
///                     new AzureNative.NetworkCloud.Inputs.IpAddressPoolArgs
///                     {
///                         Addresses = new[]
///                         {
///                             "198.51.102.0/24",
///                         },
///                         AutoAssign = AzureNative.NetworkCloud.BfdEnabled.True,
///                         Name = "pool1",
///                         OnlyUseHostIps = AzureNative.NetworkCloud.BfdEnabled.True,
///                     },
///                 },
///             },
///             CloudServicesNetworkId = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/cloudServicesNetworks/cloudServicesNetworkName",
///             CniNetworkId = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l3Networks/l3NetworkName",
///             DnsServiceIp = "198.51.101.2",
///             PodCidrs = new[]
///             {
///                 "198.51.100.0/24",
///             },
///             ServiceCidrs = new[]
///             {
///                 "198.51.101.0/24",
///             },
///         },
///         ResourceGroupName = "resourceGroupName",
///         Tags =
///         {
///             { "key1", "myvalue1" },
///             { "key2", "myvalue2" },
///         },
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
/// 		_, err := networkcloud.NewKubernetesCluster(ctx, "kubernetesCluster", &networkcloud.KubernetesClusterArgs{
/// 			AadConfiguration: &networkcloud.AadConfigurationArgs{
/// 				AdminGroupObjectIds: pulumi.StringArray{
/// 					pulumi.String("ffffffff-ffff-ffff-ffff-ffffffffffff"),
/// 				},
/// 			},
/// 			AdministratorConfiguration: &networkcloud.AdministratorConfigurationArgs{
/// 				AdminUsername: pulumi.String("azure"),
/// 				SshPublicKeys: networkcloud.SshPublicKeyArray{
/// 					&networkcloud.SshPublicKeyArgs{
/// 						KeyData: pulumi.String("ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm"),
/// 					},
/// 				},
/// 			},
/// 			ControlPlaneNodeConfiguration: &networkcloud.ControlPlaneNodeConfigurationArgs{
/// 				AdministratorConfiguration: &networkcloud.AdministratorConfigurationArgs{
/// 					AdminUsername: pulumi.String("azure"),
/// 					SshPublicKeys: networkcloud.SshPublicKeyArray{
/// 						&networkcloud.SshPublicKeyArgs{
/// 							KeyData: pulumi.String("ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm"),
/// 						},
/// 					},
/// 				},
/// 				AvailabilityZones: pulumi.StringArray{
/// 					pulumi.String("1"),
/// 					pulumi.String("2"),
/// 					pulumi.String("3"),
/// 				},
/// 				Count:     pulumi.Float64(3),
/// 				VmSkuName: pulumi.String("NC_G6_28_v1"),
/// 			},
/// 			ExtendedLocation: &networkcloud.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName"),
/// 				Type: pulumi.String("CustomLocation"),
/// 			},
/// 			InitialAgentPoolConfigurations: networkcloud.InitialAgentPoolConfigurationArray{
/// 				&networkcloud.InitialAgentPoolConfigurationArgs{
/// 					AdministratorConfiguration: &networkcloud.AdministratorConfigurationArgs{
/// 						AdminUsername: pulumi.String("azure"),
/// 						SshPublicKeys: networkcloud.SshPublicKeyArray{
/// 							&networkcloud.SshPublicKeyArgs{
/// 								KeyData: pulumi.String("ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm"),
/// 							},
/// 						},
/// 					},
/// 					AgentOptions: &networkcloud.AgentOptionsArgs{
/// 						HugepagesCount: pulumi.Float64(96),
/// 						HugepagesSize:  pulumi.String(networkcloud.HugepagesSize_1G),
/// 					},
/// 					AttachedNetworkConfiguration: &networkcloud.AttachedNetworkConfigurationArgs{
/// 						L2Networks: networkcloud.L2NetworkAttachmentConfigurationArray{
/// 							&networkcloud.L2NetworkAttachmentConfigurationArgs{
/// 								NetworkId:  pulumi.String("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l2Networks/l2NetworkName"),
/// 								PluginType: pulumi.String(networkcloud.KubernetesPluginTypeDPDK),
/// 							},
/// 						},
/// 						L3Networks: networkcloud.L3NetworkAttachmentConfigurationArray{
/// 							&networkcloud.L3NetworkAttachmentConfigurationArgs{
/// 								IpamEnabled: pulumi.String(networkcloud.L3NetworkConfigurationIpamEnabledFalse),
/// 								NetworkId:   pulumi.String("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l3Networks/l3NetworkName"),
/// 								PluginType:  pulumi.String(networkcloud.KubernetesPluginTypeSRIOV),
/// 							},
/// 						},
/// 						TrunkedNetworks: networkcloud.TrunkedNetworkAttachmentConfigurationArray{
/// 							&networkcloud.TrunkedNetworkAttachmentConfigurationArgs{
/// 								NetworkId:  pulumi.String("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/trunkedNetworks/trunkedNetworkName"),
/// 								PluginType: pulumi.String(networkcloud.KubernetesPluginTypeMACVLAN),
/// 							},
/// 						},
/// 					},
/// 					AvailabilityZones: pulumi.StringArray{
/// 						pulumi.String("1"),
/// 						pulumi.String("2"),
/// 						pulumi.String("3"),
/// 					},
/// 					Count: pulumi.Float64(3),
/// 					Labels: networkcloud.KubernetesLabelArray{
/// 						&networkcloud.KubernetesLabelArgs{
/// 							Key:   pulumi.String("kubernetes.label"),
/// 							Value: pulumi.String("true"),
/// 						},
/// 					},
/// 					Mode: pulumi.String(networkcloud.AgentPoolModeSystem),
/// 					Name: pulumi.String("SystemPool-1"),
/// 					Taints: networkcloud.KubernetesLabelArray{
/// 						&networkcloud.KubernetesLabelArgs{
/// 							Key:   pulumi.String("kubernetes.taint"),
/// 							Value: pulumi.String("true:NoSchedule"),
/// 						},
/// 					},
/// 					UpgradeSettings: &networkcloud.AgentPoolUpgradeSettingsArgs{
/// 						MaxSurge: pulumi.String("1"),
/// 					},
/// 					VmSkuName: pulumi.String("NC_P46_224_v1"),
/// 				},
/// 			},
/// 			KubernetesClusterName: pulumi.String("kubernetesClusterName"),
/// 			KubernetesVersion:     pulumi.String("1.XX.Y"),
/// 			Location:              pulumi.String("location"),
/// 			ManagedResourceGroupConfiguration: &networkcloud.ManagedResourceGroupConfigurationArgs{
/// 				Location: pulumi.String("East US"),
/// 				Name:     pulumi.String("my-managed-rg"),
/// 			},
/// 			NetworkConfiguration: &networkcloud.NetworkConfigurationArgs{
/// 				AttachedNetworkConfiguration: &networkcloud.AttachedNetworkConfigurationArgs{
/// 					L2Networks: networkcloud.L2NetworkAttachmentConfigurationArray{
/// 						&networkcloud.L2NetworkAttachmentConfigurationArgs{
/// 							NetworkId:  pulumi.String("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l2Networks/l2NetworkName"),
/// 							PluginType: pulumi.String(networkcloud.KubernetesPluginTypeDPDK),
/// 						},
/// 					},
/// 					L3Networks: networkcloud.L3NetworkAttachmentConfigurationArray{
/// 						&networkcloud.L3NetworkAttachmentConfigurationArgs{
/// 							IpamEnabled: pulumi.String(networkcloud.L3NetworkConfigurationIpamEnabledFalse),
/// 							NetworkId:   pulumi.String("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l3Networks/l3NetworkName"),
/// 							PluginType:  pulumi.String(networkcloud.KubernetesPluginTypeSRIOV),
/// 						},
/// 					},
/// 					TrunkedNetworks: networkcloud.TrunkedNetworkAttachmentConfigurationArray{
/// 						&networkcloud.TrunkedNetworkAttachmentConfigurationArgs{
/// 							NetworkId:  pulumi.String("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/trunkedNetworks/trunkedNetworkName"),
/// 							PluginType: pulumi.String(networkcloud.KubernetesPluginTypeMACVLAN),
/// 						},
/// 					},
/// 				},
/// 				BgpServiceLoadBalancerConfiguration: &networkcloud.BgpServiceLoadBalancerConfigurationArgs{
/// 					BgpAdvertisements: networkcloud.BgpAdvertisementArray{
/// 						&networkcloud.BgpAdvertisementArgs{
/// 							AdvertiseToFabric: pulumi.String(networkcloud.AdvertiseToFabricTrue),
/// 							Communities: pulumi.StringArray{
/// 								pulumi.String("64512:100"),
/// 							},
/// 							IpAddressPools: pulumi.StringArray{
/// 								pulumi.String("pool1"),
/// 							},
/// 							Peers: pulumi.StringArray{
/// 								pulumi.String("peer1"),
/// 							},
/// 						},
/// 					},
/// 					BgpPeers: networkcloud.ServiceLoadBalancerBgpPeerArray{
/// 						&networkcloud.ServiceLoadBalancerBgpPeerArgs{
/// 							BfdEnabled:    pulumi.String(networkcloud.BfdEnabledFalse),
/// 							BgpMultiHop:   pulumi.String(networkcloud.BgpMultiHopFalse),
/// 							HoldTime:      pulumi.String("P300s"),
/// 							KeepAliveTime: pulumi.String("P300s"),
/// 							MyAsn:         pulumi.Float64(64512),
/// 							Name:          pulumi.String("peer1"),
/// 							PeerAddress:   pulumi.String("203.0.113.254"),
/// 							PeerAsn:       pulumi.Float64(64497),
/// 							PeerPort:      pulumi.Float64(179),
/// 						},
/// 					},
/// 					FabricPeeringEnabled: pulumi.String(networkcloud.FabricPeeringEnabledTrue),
/// 					IpAddressPools: networkcloud.IpAddressPoolArray{
/// 						&networkcloud.IpAddressPoolArgs{
/// 							Addresses: pulumi.StringArray{
/// 								pulumi.String("198.51.102.0/24"),
/// 							},
/// 							AutoAssign:     pulumi.String(networkcloud.BfdEnabledTrue),
/// 							Name:           pulumi.String("pool1"),
/// 							OnlyUseHostIps: pulumi.String(networkcloud.BfdEnabledTrue),
/// 						},
/// 					},
/// 				},
/// 				CloudServicesNetworkId: pulumi.String("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/cloudServicesNetworks/cloudServicesNetworkName"),
/// 				CniNetworkId:           pulumi.String("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l3Networks/l3NetworkName"),
/// 				DnsServiceIp:           pulumi.String("198.51.101.2"),
/// 				PodCidrs: pulumi.StringArray{
/// 					pulumi.String("198.51.100.0/24"),
/// 				},
/// 				ServiceCidrs: pulumi.StringArray{
/// 					pulumi.String("198.51.101.0/24"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("resourceGroupName"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("myvalue1"),
/// 				"key2": pulumi.String("myvalue2"),
/// 			},
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
/// import com.pulumi.azurenative.networkcloud.KubernetesCluster;
/// import com.pulumi.azurenative.networkcloud.KubernetesClusterArgs;
/// import com.pulumi.azurenative.networkcloud.inputs.AadConfigurationArgs;
/// import com.pulumi.azurenative.networkcloud.inputs.AdministratorConfigurationArgs;
/// import com.pulumi.azurenative.networkcloud.inputs.ControlPlaneNodeConfigurationArgs;
/// import com.pulumi.azurenative.networkcloud.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.networkcloud.inputs.InitialAgentPoolConfigurationArgs;
/// import com.pulumi.azurenative.networkcloud.inputs.AgentOptionsArgs;
/// import com.pulumi.azurenative.networkcloud.inputs.AttachedNetworkConfigurationArgs;
/// import com.pulumi.azurenative.networkcloud.inputs.AgentPoolUpgradeSettingsArgs;
/// import com.pulumi.azurenative.networkcloud.inputs.ManagedResourceGroupConfigurationArgs;
/// import com.pulumi.azurenative.networkcloud.inputs.NetworkConfigurationArgs;
/// import com.pulumi.azurenative.networkcloud.inputs.BgpServiceLoadBalancerConfigurationArgs;
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
///         var kubernetesCluster = new KubernetesCluster("kubernetesCluster", KubernetesClusterArgs.builder()
///             .aadConfiguration(AadConfigurationArgs.builder()
///                 .adminGroupObjectIds("ffffffff-ffff-ffff-ffff-ffffffffffff")
///                 .build())
///             .administratorConfiguration(AdministratorConfigurationArgs.builder()
///                 .adminUsername("azure")
///                 .sshPublicKeys(SshPublicKeyArgs.builder()
///                     .keyData("ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm")
///                     .build())
///                 .build())
///             .controlPlaneNodeConfiguration(ControlPlaneNodeConfigurationArgs.builder()
///                 .administratorConfiguration(AdministratorConfigurationArgs.builder()
///                     .adminUsername("azure")
///                     .sshPublicKeys(SshPublicKeyArgs.builder()
///                         .keyData("ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm")
///                         .build())
///                     .build())
///                 .availabilityZones(
///                     "1",
///                     "2",
///                     "3")
///                 .count(3.0)
///                 .vmSkuName("NC_G6_28_v1")
///                 .build())
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName")
///                 .type("CustomLocation")
///                 .build())
///             .initialAgentPoolConfigurations(InitialAgentPoolConfigurationArgs.builder()
///                 .administratorConfiguration(AdministratorConfigurationArgs.builder()
///                     .adminUsername("azure")
///                     .sshPublicKeys(SshPublicKeyArgs.builder()
///                         .keyData("ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm")
///                         .build())
///                     .build())
///                 .agentOptions(AgentOptionsArgs.builder()
///                     .hugepagesCount(96.0)
///                     .hugepagesSize("1G")
///                     .build())
///                 .attachedNetworkConfiguration(AttachedNetworkConfigurationArgs.builder()
///                     .l2Networks(L2NetworkAttachmentConfigurationArgs.builder()
///                         .networkId("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l2Networks/l2NetworkName")
///                         .pluginType("DPDK")
///                         .build())
///                     .l3Networks(L3NetworkAttachmentConfigurationArgs.builder()
///                         .ipamEnabled("False")
///                         .networkId("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l3Networks/l3NetworkName")
///                         .pluginType("SRIOV")
///                         .build())
///                     .trunkedNetworks(TrunkedNetworkAttachmentConfigurationArgs.builder()
///                         .networkId("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/trunkedNetworks/trunkedNetworkName")
///                         .pluginType("MACVLAN")
///                         .build())
///                     .build())
///                 .availabilityZones(
///                     "1",
///                     "2",
///                     "3")
///                 .count(3.0)
///                 .labels(KubernetesLabelArgs.builder()
///                     .key("kubernetes.label")
///                     .value("true")
///                     .build())
///                 .mode("System")
///                 .name("SystemPool-1")
///                 .taints(KubernetesLabelArgs.builder()
///                     .key("kubernetes.taint")
///                     .value("true:NoSchedule")
///                     .build())
///                 .upgradeSettings(AgentPoolUpgradeSettingsArgs.builder()
///                     .maxSurge("1")
///                     .build())
///                 .vmSkuName("NC_P46_224_v1")
///                 .build())
///             .kubernetesClusterName("kubernetesClusterName")
///             .kubernetesVersion("1.XX.Y")
///             .location("location")
///             .managedResourceGroupConfiguration(ManagedResourceGroupConfigurationArgs.builder()
///                 .location("East US")
///                 .name("my-managed-rg")
///                 .build())
///             .networkConfiguration(NetworkConfigurationArgs.builder()
///                 .attachedNetworkConfiguration(AttachedNetworkConfigurationArgs.builder()
///                     .l2Networks(L2NetworkAttachmentConfigurationArgs.builder()
///                         .networkId("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l2Networks/l2NetworkName")
///                         .pluginType("DPDK")
///                         .build())
///                     .l3Networks(L3NetworkAttachmentConfigurationArgs.builder()
///                         .ipamEnabled("False")
///                         .networkId("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l3Networks/l3NetworkName")
///                         .pluginType("SRIOV")
///                         .build())
///                     .trunkedNetworks(TrunkedNetworkAttachmentConfigurationArgs.builder()
///                         .networkId("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/trunkedNetworks/trunkedNetworkName")
///                         .pluginType("MACVLAN")
///                         .build())
///                     .build())
///                 .bgpServiceLoadBalancerConfiguration(BgpServiceLoadBalancerConfigurationArgs.builder()
///                     .bgpAdvertisements(BgpAdvertisementArgs.builder()
///                         .advertiseToFabric("True")
///                         .communities("64512:100")
///                         .ipAddressPools("pool1")
///                         .peers("peer1")
///                         .build())
///                     .bgpPeers(ServiceLoadBalancerBgpPeerArgs.builder()
///                         .bfdEnabled("False")
///                         .bgpMultiHop("False")
///                         .holdTime("P300s")
///                         .keepAliveTime("P300s")
///                         .myAsn(64512.0)
///                         .name("peer1")
///                         .peerAddress("203.0.113.254")
///                         .peerAsn(64497.0)
///                         .peerPort(179.0)
///                         .build())
///                     .fabricPeeringEnabled("True")
///                     .ipAddressPools(IpAddressPoolArgs.builder()
///                         .addresses("198.51.102.0/24")
///                         .autoAssign("True")
///                         .name("pool1")
///                         .onlyUseHostIps("True")
///                         .build())
///                     .build())
///                 .cloudServicesNetworkId("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/cloudServicesNetworks/cloudServicesNetworkName")
///                 .cniNetworkId("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l3Networks/l3NetworkName")
///                 .dnsServiceIp("198.51.101.2")
///                 .podCidrs("198.51.100.0/24")
///                 .serviceCidrs("198.51.101.0/24")
///                 .build())
///             .resourceGroupName("resourceGroupName")
///             .tags(Map.ofEntries(
///                 Map.entry("key1", "myvalue1"),
///                 Map.entry("key2", "myvalue2")
///             ))
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
/// const kubernetesCluster = new azure_native.networkcloud.KubernetesCluster("kubernetesCluster", {
///     aadConfiguration: {
///         adminGroupObjectIds: ["ffffffff-ffff-ffff-ffff-ffffffffffff"],
///     },
///     administratorConfiguration: {
///         adminUsername: "azure",
///         sshPublicKeys: [{
///             keyData: "ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm",
///         }],
///     },
///     controlPlaneNodeConfiguration: {
///         administratorConfiguration: {
///             adminUsername: "azure",
///             sshPublicKeys: [{
///                 keyData: "ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm",
///             }],
///         },
///         availabilityZones: [
///             "1",
///             "2",
///             "3",
///         ],
///         count: 3,
///         vmSkuName: "NC_G6_28_v1",
///     },
///     extendedLocation: {
///         name: "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName",
///         type: "CustomLocation",
///     },
///     initialAgentPoolConfigurations: [{
///         administratorConfiguration: {
///             adminUsername: "azure",
///             sshPublicKeys: [{
///                 keyData: "ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm",
///             }],
///         },
///         agentOptions: {
///             hugepagesCount: 96,
///             hugepagesSize: azure_native.networkcloud.HugepagesSize.HugepagesSize_1G,
///         },
///         attachedNetworkConfiguration: {
///             l2Networks: [{
///                 networkId: "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l2Networks/l2NetworkName",
///                 pluginType: azure_native.networkcloud.KubernetesPluginType.DPDK,
///             }],
///             l3Networks: [{
///                 ipamEnabled: azure_native.networkcloud.L3NetworkConfigurationIpamEnabled.False,
///                 networkId: "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l3Networks/l3NetworkName",
///                 pluginType: azure_native.networkcloud.KubernetesPluginType.SRIOV,
///             }],
///             trunkedNetworks: [{
///                 networkId: "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/trunkedNetworks/trunkedNetworkName",
///                 pluginType: azure_native.networkcloud.KubernetesPluginType.MACVLAN,
///             }],
///         },
///         availabilityZones: [
///             "1",
///             "2",
///             "3",
///         ],
///         count: 3,
///         labels: [{
///             key: "kubernetes.label",
///             value: "true",
///         }],
///         mode: azure_native.networkcloud.AgentPoolMode.System,
///         name: "SystemPool-1",
///         taints: [{
///             key: "kubernetes.taint",
///             value: "true:NoSchedule",
///         }],
///         upgradeSettings: {
///             maxSurge: "1",
///         },
///         vmSkuName: "NC_P46_224_v1",
///     }],
///     kubernetesClusterName: "kubernetesClusterName",
///     kubernetesVersion: "1.XX.Y",
///     location: "location",
///     managedResourceGroupConfiguration: {
///         location: "East US",
///         name: "my-managed-rg",
///     },
///     networkConfiguration: {
///         attachedNetworkConfiguration: {
///             l2Networks: [{
///                 networkId: "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l2Networks/l2NetworkName",
///                 pluginType: azure_native.networkcloud.KubernetesPluginType.DPDK,
///             }],
///             l3Networks: [{
///                 ipamEnabled: azure_native.networkcloud.L3NetworkConfigurationIpamEnabled.False,
///                 networkId: "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l3Networks/l3NetworkName",
///                 pluginType: azure_native.networkcloud.KubernetesPluginType.SRIOV,
///             }],
///             trunkedNetworks: [{
///                 networkId: "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/trunkedNetworks/trunkedNetworkName",
///                 pluginType: azure_native.networkcloud.KubernetesPluginType.MACVLAN,
///             }],
///         },
///         bgpServiceLoadBalancerConfiguration: {
///             bgpAdvertisements: [{
///                 advertiseToFabric: azure_native.networkcloud.AdvertiseToFabric.True,
///                 communities: ["64512:100"],
///                 ipAddressPools: ["pool1"],
///                 peers: ["peer1"],
///             }],
///             bgpPeers: [{
///                 bfdEnabled: azure_native.networkcloud.BfdEnabled.False,
///                 bgpMultiHop: azure_native.networkcloud.BgpMultiHop.False,
///                 holdTime: "P300s",
///                 keepAliveTime: "P300s",
///                 myAsn: 64512,
///                 name: "peer1",
///                 peerAddress: "203.0.113.254",
///                 peerAsn: 64497,
///                 peerPort: 179,
///             }],
///             fabricPeeringEnabled: azure_native.networkcloud.FabricPeeringEnabled.True,
///             ipAddressPools: [{
///                 addresses: ["198.51.102.0/24"],
///                 autoAssign: azure_native.networkcloud.BfdEnabled.True,
///                 name: "pool1",
///                 onlyUseHostIps: azure_native.networkcloud.BfdEnabled.True,
///             }],
///         },
///         cloudServicesNetworkId: "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/cloudServicesNetworks/cloudServicesNetworkName",
///         cniNetworkId: "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l3Networks/l3NetworkName",
///         dnsServiceIp: "198.51.101.2",
///         podCidrs: ["198.51.100.0/24"],
///         serviceCidrs: ["198.51.101.0/24"],
///     },
///     resourceGroupName: "resourceGroupName",
///     tags: {
///         key1: "myvalue1",
///         key2: "myvalue2",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// kubernetes_cluster = azure_native.networkcloud.KubernetesCluster("kubernetesCluster",
///     aad_configuration={
///         "admin_group_object_ids": ["ffffffff-ffff-ffff-ffff-ffffffffffff"],
///     },
///     administrator_configuration={
///         "admin_username": "azure",
///         "ssh_public_keys": [{
///             "key_data": "ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm",
///         }],
///     },
///     control_plane_node_configuration={
///         "administrator_configuration": {
///             "admin_username": "azure",
///             "ssh_public_keys": [{
///                 "key_data": "ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm",
///             }],
///         },
///         "availability_zones": [
///             "1",
///             "2",
///             "3",
///         ],
///         "count": 3,
///         "vm_sku_name": "NC_G6_28_v1",
///     },
///     extended_location={
///         "name": "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName",
///         "type": "CustomLocation",
///     },
///     initial_agent_pool_configurations=[{
///         "administrator_configuration": {
///             "admin_username": "azure",
///             "ssh_public_keys": [{
///                 "key_data": "ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm",
///             }],
///         },
///         "agent_options": {
///             "hugepages_count": 96,
///             "hugepages_size": azure_native.networkcloud.HugepagesSize.HUGEPAGES_SIZE_1_G,
///         },
///         "attached_network_configuration": {
///             "l2_networks": [{
///                 "network_id": "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l2Networks/l2NetworkName",
///                 "plugin_type": azure_native.networkcloud.KubernetesPluginType.DPDK,
///             }],
///             "l3_networks": [{
///                 "ipam_enabled": azure_native.networkcloud.L3NetworkConfigurationIpamEnabled.FALSE,
///                 "network_id": "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l3Networks/l3NetworkName",
///                 "plugin_type": azure_native.networkcloud.KubernetesPluginType.SRIOV,
///             }],
///             "trunked_networks": [{
///                 "network_id": "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/trunkedNetworks/trunkedNetworkName",
///                 "plugin_type": azure_native.networkcloud.KubernetesPluginType.MACVLAN,
///             }],
///         },
///         "availability_zones": [
///             "1",
///             "2",
///             "3",
///         ],
///         "count": 3,
///         "labels": [{
///             "key": "kubernetes.label",
///             "value": "true",
///         }],
///         "mode": azure_native.networkcloud.AgentPoolMode.SYSTEM,
///         "name": "SystemPool-1",
///         "taints": [{
///             "key": "kubernetes.taint",
///             "value": "true:NoSchedule",
///         }],
///         "upgrade_settings": {
///             "max_surge": "1",
///         },
///         "vm_sku_name": "NC_P46_224_v1",
///     }],
///     kubernetes_cluster_name="kubernetesClusterName",
///     kubernetes_version="1.XX.Y",
///     location="location",
///     managed_resource_group_configuration={
///         "location": "East US",
///         "name": "my-managed-rg",
///     },
///     network_configuration={
///         "attached_network_configuration": {
///             "l2_networks": [{
///                 "network_id": "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l2Networks/l2NetworkName",
///                 "plugin_type": azure_native.networkcloud.KubernetesPluginType.DPDK,
///             }],
///             "l3_networks": [{
///                 "ipam_enabled": azure_native.networkcloud.L3NetworkConfigurationIpamEnabled.FALSE,
///                 "network_id": "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l3Networks/l3NetworkName",
///                 "plugin_type": azure_native.networkcloud.KubernetesPluginType.SRIOV,
///             }],
///             "trunked_networks": [{
///                 "network_id": "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/trunkedNetworks/trunkedNetworkName",
///                 "plugin_type": azure_native.networkcloud.KubernetesPluginType.MACVLAN,
///             }],
///         },
///         "bgp_service_load_balancer_configuration": {
///             "bgp_advertisements": [{
///                 "advertise_to_fabric": azure_native.networkcloud.AdvertiseToFabric.TRUE,
///                 "communities": ["64512:100"],
///                 "ip_address_pools": ["pool1"],
///                 "peers": ["peer1"],
///             }],
///             "bgp_peers": [{
///                 "bfd_enabled": azure_native.networkcloud.BfdEnabled.FALSE,
///                 "bgp_multi_hop": azure_native.networkcloud.BgpMultiHop.FALSE,
///                 "hold_time": "P300s",
///                 "keep_alive_time": "P300s",
///                 "my_asn": 64512,
///                 "name": "peer1",
///                 "peer_address": "203.0.113.254",
///                 "peer_asn": 64497,
///                 "peer_port": 179,
///             }],
///             "fabric_peering_enabled": azure_native.networkcloud.FabricPeeringEnabled.TRUE,
///             "ip_address_pools": [{
///                 "addresses": ["198.51.102.0/24"],
///                 "auto_assign": azure_native.networkcloud.BfdEnabled.TRUE,
///                 "name": "pool1",
///                 "only_use_host_ips": azure_native.networkcloud.BfdEnabled.TRUE,
///             }],
///         },
///         "cloud_services_network_id": "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/cloudServicesNetworks/cloudServicesNetworkName",
///         "cni_network_id": "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l3Networks/l3NetworkName",
///         "dns_service_ip": "198.51.101.2",
///         "pod_cidrs": ["198.51.100.0/24"],
///         "service_cidrs": ["198.51.101.0/24"],
///     },
///     resource_group_name="resourceGroupName",
///     tags={
///         "key1": "myvalue1",
///         "key2": "myvalue2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   kubernetesCluster:
///     type: azure-native:networkcloud:KubernetesCluster
///     properties:
///       aadConfiguration:
///         adminGroupObjectIds:
///           - ffffffff-ffff-ffff-ffff-ffffffffffff
///       administratorConfiguration:
///         adminUsername: azure
///         sshPublicKeys:
///           - keyData: ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm
///       controlPlaneNodeConfiguration:
///         administratorConfiguration:
///           adminUsername: azure
///           sshPublicKeys:
///             - keyData: ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm
///         availabilityZones:
///           - '1'
///           - '2'
///           - '3'
///         count: 3
///         vmSkuName: NC_G6_28_v1
///       extendedLocation:
///         name: /subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName
///         type: CustomLocation
///       initialAgentPoolConfigurations:
///         - administratorConfiguration:
///             adminUsername: azure
///             sshPublicKeys:
///               - keyData: ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm
///           agentOptions:
///             hugepagesCount: 96
///             hugepagesSize: 1G
///           attachedNetworkConfiguration:
///             l2Networks:
///               - networkId: /subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l2Networks/l2NetworkName
///                 pluginType: DPDK
///             l3Networks:
///               - ipamEnabled: False
///                 networkId: /subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l3Networks/l3NetworkName
///                 pluginType: SRIOV
///             trunkedNetworks:
///               - networkId: /subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/trunkedNetworks/trunkedNetworkName
///                 pluginType: MACVLAN
///           availabilityZones:
///             - '1'
///             - '2'
///             - '3'
///           count: 3
///           labels:
///             - key: kubernetes.label
///               value: 'true'
///           mode: System
///           name: SystemPool-1
///           taints:
///             - key: kubernetes.taint
///               value: true:NoSchedule
///           upgradeSettings:
///             maxSurge: '1'
///           vmSkuName: NC_P46_224_v1
///       kubernetesClusterName: kubernetesClusterName
///       kubernetesVersion: 1.XX.Y
///       location: location
///       managedResourceGroupConfiguration:
///         location: East US
///         name: my-managed-rg
///       networkConfiguration:
///         attachedNetworkConfiguration:
///           l2Networks:
///             - networkId: /subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l2Networks/l2NetworkName
///               pluginType: DPDK
///           l3Networks:
///             - ipamEnabled: False
///               networkId: /subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l3Networks/l3NetworkName
///               pluginType: SRIOV
///           trunkedNetworks:
///             - networkId: /subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/trunkedNetworks/trunkedNetworkName
///               pluginType: MACVLAN
///         bgpServiceLoadBalancerConfiguration:
///           bgpAdvertisements:
///             - advertiseToFabric: True
///               communities:
///                 - 64512:100
///               ipAddressPools:
///                 - pool1
///               peers:
///                 - peer1
///           bgpPeers:
///             - bfdEnabled: False
///               bgpMultiHop: False
///               holdTime: P300s
///               keepAliveTime: P300s
///               myAsn: 64512
///               name: peer1
///               peerAddress: 203.0.113.254
///               peerAsn: 64497
///               peerPort: 179
///           fabricPeeringEnabled: True
///           ipAddressPools:
///             - addresses:
///                 - 198.51.102.0/24
///               autoAssign: True
///               name: pool1
///               onlyUseHostIps: True
///         cloudServicesNetworkId: /subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/cloudServicesNetworks/cloudServicesNetworkName
///         cniNetworkId: /subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l3Networks/l3NetworkName
///         dnsServiceIp: 198.51.101.2
///         podCidrs:
///           - 198.51.100.0/24
///         serviceCidrs:
///           - 198.51.101.0/24
///       resourceGroupName: resourceGroupName
///       tags:
///         key1: myvalue1
///         key2: myvalue2
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update Kubernetes cluster with a layer 2 load balancer
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var kubernetesCluster = new AzureNative.NetworkCloud.KubernetesCluster("kubernetesCluster", new()
///     {
///         AadConfiguration = new AzureNative.NetworkCloud.Inputs.AadConfigurationArgs
///         {
///             AdminGroupObjectIds = new[]
///             {
///                 "ffffffff-ffff-ffff-ffff-ffffffffffff",
///             },
///         },
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
///         ControlPlaneNodeConfiguration = new AzureNative.NetworkCloud.Inputs.ControlPlaneNodeConfigurationArgs
///         {
///             AdministratorConfiguration = new AzureNative.NetworkCloud.Inputs.AdministratorConfigurationArgs
///             {
///                 AdminUsername = "azure",
///                 SshPublicKeys = new[]
///                 {
///                     new AzureNative.NetworkCloud.Inputs.SshPublicKeyArgs
///                     {
///                         KeyData = "ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm",
///                     },
///                 },
///             },
///             AvailabilityZones = new[]
///             {
///                 "1",
///                 "2",
///                 "3",
///             },
///             Count = 3,
///             VmSkuName = "NC_G6_28_v1",
///         },
///         ExtendedLocation = new AzureNative.NetworkCloud.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName",
///             Type = "CustomLocation",
///         },
///         InitialAgentPoolConfigurations = new[]
///         {
///             new AzureNative.NetworkCloud.Inputs.InitialAgentPoolConfigurationArgs
///             {
///                 AdministratorConfiguration = new AzureNative.NetworkCloud.Inputs.AdministratorConfigurationArgs
///                 {
///                     AdminUsername = "azure",
///                     SshPublicKeys = new[]
///                     {
///                         new AzureNative.NetworkCloud.Inputs.SshPublicKeyArgs
///                         {
///                             KeyData = "ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm",
///                         },
///                     },
///                 },
///                 AgentOptions = new AzureNative.NetworkCloud.Inputs.AgentOptionsArgs
///                 {
///                     HugepagesCount = 96,
///                     HugepagesSize = AzureNative.NetworkCloud.HugepagesSize.HugepagesSize_1G,
///                 },
///                 AttachedNetworkConfiguration = new AzureNative.NetworkCloud.Inputs.AttachedNetworkConfigurationArgs
///                 {
///                     L2Networks = new[]
///                     {
///                         new AzureNative.NetworkCloud.Inputs.L2NetworkAttachmentConfigurationArgs
///                         {
///                             NetworkId = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l2Networks/l2NetworkName",
///                             PluginType = AzureNative.NetworkCloud.KubernetesPluginType.DPDK,
///                         },
///                     },
///                     L3Networks = new[]
///                     {
///                         new AzureNative.NetworkCloud.Inputs.L3NetworkAttachmentConfigurationArgs
///                         {
///                             IpamEnabled = AzureNative.NetworkCloud.L3NetworkConfigurationIpamEnabled.False,
///                             NetworkId = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l3Networks/l3NetworkName",
///                             PluginType = AzureNative.NetworkCloud.KubernetesPluginType.SRIOV,
///                         },
///                     },
///                     TrunkedNetworks = new[]
///                     {
///                         new AzureNative.NetworkCloud.Inputs.TrunkedNetworkAttachmentConfigurationArgs
///                         {
///                             NetworkId = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/trunkedNetworks/trunkedNetworkName",
///                             PluginType = AzureNative.NetworkCloud.KubernetesPluginType.MACVLAN,
///                         },
///                     },
///                 },
///                 AvailabilityZones = new[]
///                 {
///                     "1",
///                     "2",
///                     "3",
///                 },
///                 Count = 3,
///                 Labels = new[]
///                 {
///                     new AzureNative.NetworkCloud.Inputs.KubernetesLabelArgs
///                     {
///                         Key = "kubernetes.label",
///                         Value = "true",
///                     },
///                 },
///                 Mode = AzureNative.NetworkCloud.AgentPoolMode.System,
///                 Name = "SystemPool-1",
///                 Taints = new[]
///                 {
///                     new AzureNative.NetworkCloud.Inputs.KubernetesLabelArgs
///                     {
///                         Key = "kubernetes.taint",
///                         Value = "true:NoSchedule",
///                     },
///                 },
///                 UpgradeSettings = new AzureNative.NetworkCloud.Inputs.AgentPoolUpgradeSettingsArgs
///                 {
///                     MaxSurge = "1",
///                 },
///                 VmSkuName = "NC_P46_224_v1",
///             },
///         },
///         KubernetesClusterName = "kubernetesClusterName",
///         KubernetesVersion = "1.XX.Y",
///         Location = "location",
///         ManagedResourceGroupConfiguration = new AzureNative.NetworkCloud.Inputs.ManagedResourceGroupConfigurationArgs
///         {
///             Location = "East US",
///             Name = "my-managed-rg",
///         },
///         NetworkConfiguration = new AzureNative.NetworkCloud.Inputs.NetworkConfigurationArgs
///         {
///             AttachedNetworkConfiguration = new AzureNative.NetworkCloud.Inputs.AttachedNetworkConfigurationArgs
///             {
///                 L2Networks = new[]
///                 {
///                     new AzureNative.NetworkCloud.Inputs.L2NetworkAttachmentConfigurationArgs
///                     {
///                         NetworkId = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l2Networks/l2NetworkName",
///                         PluginType = AzureNative.NetworkCloud.KubernetesPluginType.DPDK,
///                     },
///                 },
///                 L3Networks = new[]
///                 {
///                     new AzureNative.NetworkCloud.Inputs.L3NetworkAttachmentConfigurationArgs
///                     {
///                         IpamEnabled = AzureNative.NetworkCloud.L3NetworkConfigurationIpamEnabled.False,
///                         NetworkId = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l3Networks/l3NetworkName",
///                         PluginType = AzureNative.NetworkCloud.KubernetesPluginType.SRIOV,
///                     },
///                 },
///                 TrunkedNetworks = new[]
///                 {
///                     new AzureNative.NetworkCloud.Inputs.TrunkedNetworkAttachmentConfigurationArgs
///                     {
///                         NetworkId = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/trunkedNetworks/trunkedNetworkName",
///                         PluginType = AzureNative.NetworkCloud.KubernetesPluginType.MACVLAN,
///                     },
///                 },
///             },
///             CloudServicesNetworkId = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/cloudServicesNetworks/cloudServicesNetworkName",
///             CniNetworkId = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l3Networks/l3NetworkName",
///             DnsServiceIp = "198.51.101.2",
///             L2ServiceLoadBalancerConfiguration = new AzureNative.NetworkCloud.Inputs.L2ServiceLoadBalancerConfigurationArgs
///             {
///                 IpAddressPools = new[]
///                 {
///                     new AzureNative.NetworkCloud.Inputs.IpAddressPoolArgs
///                     {
///                         Addresses = new[]
///                         {
///                             "198.51.102.2-198.51.102.254",
///                         },
///                         AutoAssign = AzureNative.NetworkCloud.BfdEnabled.True,
///                         Name = "pool1",
///                     },
///                 },
///             },
///             PodCidrs = new[]
///             {
///                 "198.51.100.0/24",
///             },
///             ServiceCidrs = new[]
///             {
///                 "198.51.101.0/24",
///             },
///         },
///         ResourceGroupName = "resourceGroupName",
///         Tags =
///         {
///             { "key1", "myvalue1" },
///             { "key2", "myvalue2" },
///         },
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
/// 		_, err := networkcloud.NewKubernetesCluster(ctx, "kubernetesCluster", &networkcloud.KubernetesClusterArgs{
/// 			AadConfiguration: &networkcloud.AadConfigurationArgs{
/// 				AdminGroupObjectIds: pulumi.StringArray{
/// 					pulumi.String("ffffffff-ffff-ffff-ffff-ffffffffffff"),
/// 				},
/// 			},
/// 			AdministratorConfiguration: &networkcloud.AdministratorConfigurationArgs{
/// 				AdminUsername: pulumi.String("azure"),
/// 				SshPublicKeys: networkcloud.SshPublicKeyArray{
/// 					&networkcloud.SshPublicKeyArgs{
/// 						KeyData: pulumi.String("ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm"),
/// 					},
/// 				},
/// 			},
/// 			ControlPlaneNodeConfiguration: &networkcloud.ControlPlaneNodeConfigurationArgs{
/// 				AdministratorConfiguration: &networkcloud.AdministratorConfigurationArgs{
/// 					AdminUsername: pulumi.String("azure"),
/// 					SshPublicKeys: networkcloud.SshPublicKeyArray{
/// 						&networkcloud.SshPublicKeyArgs{
/// 							KeyData: pulumi.String("ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm"),
/// 						},
/// 					},
/// 				},
/// 				AvailabilityZones: pulumi.StringArray{
/// 					pulumi.String("1"),
/// 					pulumi.String("2"),
/// 					pulumi.String("3"),
/// 				},
/// 				Count:     pulumi.Float64(3),
/// 				VmSkuName: pulumi.String("NC_G6_28_v1"),
/// 			},
/// 			ExtendedLocation: &networkcloud.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName"),
/// 				Type: pulumi.String("CustomLocation"),
/// 			},
/// 			InitialAgentPoolConfigurations: networkcloud.InitialAgentPoolConfigurationArray{
/// 				&networkcloud.InitialAgentPoolConfigurationArgs{
/// 					AdministratorConfiguration: &networkcloud.AdministratorConfigurationArgs{
/// 						AdminUsername: pulumi.String("azure"),
/// 						SshPublicKeys: networkcloud.SshPublicKeyArray{
/// 							&networkcloud.SshPublicKeyArgs{
/// 								KeyData: pulumi.String("ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm"),
/// 							},
/// 						},
/// 					},
/// 					AgentOptions: &networkcloud.AgentOptionsArgs{
/// 						HugepagesCount: pulumi.Float64(96),
/// 						HugepagesSize:  pulumi.String(networkcloud.HugepagesSize_1G),
/// 					},
/// 					AttachedNetworkConfiguration: &networkcloud.AttachedNetworkConfigurationArgs{
/// 						L2Networks: networkcloud.L2NetworkAttachmentConfigurationArray{
/// 							&networkcloud.L2NetworkAttachmentConfigurationArgs{
/// 								NetworkId:  pulumi.String("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l2Networks/l2NetworkName"),
/// 								PluginType: pulumi.String(networkcloud.KubernetesPluginTypeDPDK),
/// 							},
/// 						},
/// 						L3Networks: networkcloud.L3NetworkAttachmentConfigurationArray{
/// 							&networkcloud.L3NetworkAttachmentConfigurationArgs{
/// 								IpamEnabled: pulumi.String(networkcloud.L3NetworkConfigurationIpamEnabledFalse),
/// 								NetworkId:   pulumi.String("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l3Networks/l3NetworkName"),
/// 								PluginType:  pulumi.String(networkcloud.KubernetesPluginTypeSRIOV),
/// 							},
/// 						},
/// 						TrunkedNetworks: networkcloud.TrunkedNetworkAttachmentConfigurationArray{
/// 							&networkcloud.TrunkedNetworkAttachmentConfigurationArgs{
/// 								NetworkId:  pulumi.String("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/trunkedNetworks/trunkedNetworkName"),
/// 								PluginType: pulumi.String(networkcloud.KubernetesPluginTypeMACVLAN),
/// 							},
/// 						},
/// 					},
/// 					AvailabilityZones: pulumi.StringArray{
/// 						pulumi.String("1"),
/// 						pulumi.String("2"),
/// 						pulumi.String("3"),
/// 					},
/// 					Count: pulumi.Float64(3),
/// 					Labels: networkcloud.KubernetesLabelArray{
/// 						&networkcloud.KubernetesLabelArgs{
/// 							Key:   pulumi.String("kubernetes.label"),
/// 							Value: pulumi.String("true"),
/// 						},
/// 					},
/// 					Mode: pulumi.String(networkcloud.AgentPoolModeSystem),
/// 					Name: pulumi.String("SystemPool-1"),
/// 					Taints: networkcloud.KubernetesLabelArray{
/// 						&networkcloud.KubernetesLabelArgs{
/// 							Key:   pulumi.String("kubernetes.taint"),
/// 							Value: pulumi.String("true:NoSchedule"),
/// 						},
/// 					},
/// 					UpgradeSettings: &networkcloud.AgentPoolUpgradeSettingsArgs{
/// 						MaxSurge: pulumi.String("1"),
/// 					},
/// 					VmSkuName: pulumi.String("NC_P46_224_v1"),
/// 				},
/// 			},
/// 			KubernetesClusterName: pulumi.String("kubernetesClusterName"),
/// 			KubernetesVersion:     pulumi.String("1.XX.Y"),
/// 			Location:              pulumi.String("location"),
/// 			ManagedResourceGroupConfiguration: &networkcloud.ManagedResourceGroupConfigurationArgs{
/// 				Location: pulumi.String("East US"),
/// 				Name:     pulumi.String("my-managed-rg"),
/// 			},
/// 			NetworkConfiguration: &networkcloud.NetworkConfigurationArgs{
/// 				AttachedNetworkConfiguration: &networkcloud.AttachedNetworkConfigurationArgs{
/// 					L2Networks: networkcloud.L2NetworkAttachmentConfigurationArray{
/// 						&networkcloud.L2NetworkAttachmentConfigurationArgs{
/// 							NetworkId:  pulumi.String("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l2Networks/l2NetworkName"),
/// 							PluginType: pulumi.String(networkcloud.KubernetesPluginTypeDPDK),
/// 						},
/// 					},
/// 					L3Networks: networkcloud.L3NetworkAttachmentConfigurationArray{
/// 						&networkcloud.L3NetworkAttachmentConfigurationArgs{
/// 							IpamEnabled: pulumi.String(networkcloud.L3NetworkConfigurationIpamEnabledFalse),
/// 							NetworkId:   pulumi.String("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l3Networks/l3NetworkName"),
/// 							PluginType:  pulumi.String(networkcloud.KubernetesPluginTypeSRIOV),
/// 						},
/// 					},
/// 					TrunkedNetworks: networkcloud.TrunkedNetworkAttachmentConfigurationArray{
/// 						&networkcloud.TrunkedNetworkAttachmentConfigurationArgs{
/// 							NetworkId:  pulumi.String("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/trunkedNetworks/trunkedNetworkName"),
/// 							PluginType: pulumi.String(networkcloud.KubernetesPluginTypeMACVLAN),
/// 						},
/// 					},
/// 				},
/// 				CloudServicesNetworkId: pulumi.String("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/cloudServicesNetworks/cloudServicesNetworkName"),
/// 				CniNetworkId:           pulumi.String("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l3Networks/l3NetworkName"),
/// 				DnsServiceIp:           pulumi.String("198.51.101.2"),
/// 				L2ServiceLoadBalancerConfiguration: &networkcloud.L2ServiceLoadBalancerConfigurationArgs{
/// 					IpAddressPools: networkcloud.IpAddressPoolArray{
/// 						&networkcloud.IpAddressPoolArgs{
/// 							Addresses: pulumi.StringArray{
/// 								pulumi.String("198.51.102.2-198.51.102.254"),
/// 							},
/// 							AutoAssign: pulumi.String(networkcloud.BfdEnabledTrue),
/// 							Name:       pulumi.String("pool1"),
/// 						},
/// 					},
/// 				},
/// 				PodCidrs: pulumi.StringArray{
/// 					pulumi.String("198.51.100.0/24"),
/// 				},
/// 				ServiceCidrs: pulumi.StringArray{
/// 					pulumi.String("198.51.101.0/24"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("resourceGroupName"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("myvalue1"),
/// 				"key2": pulumi.String("myvalue2"),
/// 			},
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
/// import com.pulumi.azurenative.networkcloud.KubernetesCluster;
/// import com.pulumi.azurenative.networkcloud.KubernetesClusterArgs;
/// import com.pulumi.azurenative.networkcloud.inputs.AadConfigurationArgs;
/// import com.pulumi.azurenative.networkcloud.inputs.AdministratorConfigurationArgs;
/// import com.pulumi.azurenative.networkcloud.inputs.ControlPlaneNodeConfigurationArgs;
/// import com.pulumi.azurenative.networkcloud.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.networkcloud.inputs.InitialAgentPoolConfigurationArgs;
/// import com.pulumi.azurenative.networkcloud.inputs.AgentOptionsArgs;
/// import com.pulumi.azurenative.networkcloud.inputs.AttachedNetworkConfigurationArgs;
/// import com.pulumi.azurenative.networkcloud.inputs.AgentPoolUpgradeSettingsArgs;
/// import com.pulumi.azurenative.networkcloud.inputs.ManagedResourceGroupConfigurationArgs;
/// import com.pulumi.azurenative.networkcloud.inputs.NetworkConfigurationArgs;
/// import com.pulumi.azurenative.networkcloud.inputs.L2ServiceLoadBalancerConfigurationArgs;
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
///         var kubernetesCluster = new KubernetesCluster("kubernetesCluster", KubernetesClusterArgs.builder()
///             .aadConfiguration(AadConfigurationArgs.builder()
///                 .adminGroupObjectIds("ffffffff-ffff-ffff-ffff-ffffffffffff")
///                 .build())
///             .administratorConfiguration(AdministratorConfigurationArgs.builder()
///                 .adminUsername("azure")
///                 .sshPublicKeys(SshPublicKeyArgs.builder()
///                     .keyData("ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm")
///                     .build())
///                 .build())
///             .controlPlaneNodeConfiguration(ControlPlaneNodeConfigurationArgs.builder()
///                 .administratorConfiguration(AdministratorConfigurationArgs.builder()
///                     .adminUsername("azure")
///                     .sshPublicKeys(SshPublicKeyArgs.builder()
///                         .keyData("ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm")
///                         .build())
///                     .build())
///                 .availabilityZones(
///                     "1",
///                     "2",
///                     "3")
///                 .count(3.0)
///                 .vmSkuName("NC_G6_28_v1")
///                 .build())
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName")
///                 .type("CustomLocation")
///                 .build())
///             .initialAgentPoolConfigurations(InitialAgentPoolConfigurationArgs.builder()
///                 .administratorConfiguration(AdministratorConfigurationArgs.builder()
///                     .adminUsername("azure")
///                     .sshPublicKeys(SshPublicKeyArgs.builder()
///                         .keyData("ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm")
///                         .build())
///                     .build())
///                 .agentOptions(AgentOptionsArgs.builder()
///                     .hugepagesCount(96.0)
///                     .hugepagesSize("1G")
///                     .build())
///                 .attachedNetworkConfiguration(AttachedNetworkConfigurationArgs.builder()
///                     .l2Networks(L2NetworkAttachmentConfigurationArgs.builder()
///                         .networkId("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l2Networks/l2NetworkName")
///                         .pluginType("DPDK")
///                         .build())
///                     .l3Networks(L3NetworkAttachmentConfigurationArgs.builder()
///                         .ipamEnabled("False")
///                         .networkId("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l3Networks/l3NetworkName")
///                         .pluginType("SRIOV")
///                         .build())
///                     .trunkedNetworks(TrunkedNetworkAttachmentConfigurationArgs.builder()
///                         .networkId("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/trunkedNetworks/trunkedNetworkName")
///                         .pluginType("MACVLAN")
///                         .build())
///                     .build())
///                 .availabilityZones(
///                     "1",
///                     "2",
///                     "3")
///                 .count(3.0)
///                 .labels(KubernetesLabelArgs.builder()
///                     .key("kubernetes.label")
///                     .value("true")
///                     .build())
///                 .mode("System")
///                 .name("SystemPool-1")
///                 .taints(KubernetesLabelArgs.builder()
///                     .key("kubernetes.taint")
///                     .value("true:NoSchedule")
///                     .build())
///                 .upgradeSettings(AgentPoolUpgradeSettingsArgs.builder()
///                     .maxSurge("1")
///                     .build())
///                 .vmSkuName("NC_P46_224_v1")
///                 .build())
///             .kubernetesClusterName("kubernetesClusterName")
///             .kubernetesVersion("1.XX.Y")
///             .location("location")
///             .managedResourceGroupConfiguration(ManagedResourceGroupConfigurationArgs.builder()
///                 .location("East US")
///                 .name("my-managed-rg")
///                 .build())
///             .networkConfiguration(NetworkConfigurationArgs.builder()
///                 .attachedNetworkConfiguration(AttachedNetworkConfigurationArgs.builder()
///                     .l2Networks(L2NetworkAttachmentConfigurationArgs.builder()
///                         .networkId("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l2Networks/l2NetworkName")
///                         .pluginType("DPDK")
///                         .build())
///                     .l3Networks(L3NetworkAttachmentConfigurationArgs.builder()
///                         .ipamEnabled("False")
///                         .networkId("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l3Networks/l3NetworkName")
///                         .pluginType("SRIOV")
///                         .build())
///                     .trunkedNetworks(TrunkedNetworkAttachmentConfigurationArgs.builder()
///                         .networkId("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/trunkedNetworks/trunkedNetworkName")
///                         .pluginType("MACVLAN")
///                         .build())
///                     .build())
///                 .cloudServicesNetworkId("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/cloudServicesNetworks/cloudServicesNetworkName")
///                 .cniNetworkId("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l3Networks/l3NetworkName")
///                 .dnsServiceIp("198.51.101.2")
///                 .l2ServiceLoadBalancerConfiguration(L2ServiceLoadBalancerConfigurationArgs.builder()
///                     .ipAddressPools(IpAddressPoolArgs.builder()
///                         .addresses("198.51.102.2-198.51.102.254")
///                         .autoAssign("True")
///                         .name("pool1")
///                         .build())
///                     .build())
///                 .podCidrs("198.51.100.0/24")
///                 .serviceCidrs("198.51.101.0/24")
///                 .build())
///             .resourceGroupName("resourceGroupName")
///             .tags(Map.ofEntries(
///                 Map.entry("key1", "myvalue1"),
///                 Map.entry("key2", "myvalue2")
///             ))
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
/// const kubernetesCluster = new azure_native.networkcloud.KubernetesCluster("kubernetesCluster", {
///     aadConfiguration: {
///         adminGroupObjectIds: ["ffffffff-ffff-ffff-ffff-ffffffffffff"],
///     },
///     administratorConfiguration: {
///         adminUsername: "azure",
///         sshPublicKeys: [{
///             keyData: "ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm",
///         }],
///     },
///     controlPlaneNodeConfiguration: {
///         administratorConfiguration: {
///             adminUsername: "azure",
///             sshPublicKeys: [{
///                 keyData: "ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm",
///             }],
///         },
///         availabilityZones: [
///             "1",
///             "2",
///             "3",
///         ],
///         count: 3,
///         vmSkuName: "NC_G6_28_v1",
///     },
///     extendedLocation: {
///         name: "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName",
///         type: "CustomLocation",
///     },
///     initialAgentPoolConfigurations: [{
///         administratorConfiguration: {
///             adminUsername: "azure",
///             sshPublicKeys: [{
///                 keyData: "ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm",
///             }],
///         },
///         agentOptions: {
///             hugepagesCount: 96,
///             hugepagesSize: azure_native.networkcloud.HugepagesSize.HugepagesSize_1G,
///         },
///         attachedNetworkConfiguration: {
///             l2Networks: [{
///                 networkId: "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l2Networks/l2NetworkName",
///                 pluginType: azure_native.networkcloud.KubernetesPluginType.DPDK,
///             }],
///             l3Networks: [{
///                 ipamEnabled: azure_native.networkcloud.L3NetworkConfigurationIpamEnabled.False,
///                 networkId: "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l3Networks/l3NetworkName",
///                 pluginType: azure_native.networkcloud.KubernetesPluginType.SRIOV,
///             }],
///             trunkedNetworks: [{
///                 networkId: "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/trunkedNetworks/trunkedNetworkName",
///                 pluginType: azure_native.networkcloud.KubernetesPluginType.MACVLAN,
///             }],
///         },
///         availabilityZones: [
///             "1",
///             "2",
///             "3",
///         ],
///         count: 3,
///         labels: [{
///             key: "kubernetes.label",
///             value: "true",
///         }],
///         mode: azure_native.networkcloud.AgentPoolMode.System,
///         name: "SystemPool-1",
///         taints: [{
///             key: "kubernetes.taint",
///             value: "true:NoSchedule",
///         }],
///         upgradeSettings: {
///             maxSurge: "1",
///         },
///         vmSkuName: "NC_P46_224_v1",
///     }],
///     kubernetesClusterName: "kubernetesClusterName",
///     kubernetesVersion: "1.XX.Y",
///     location: "location",
///     managedResourceGroupConfiguration: {
///         location: "East US",
///         name: "my-managed-rg",
///     },
///     networkConfiguration: {
///         attachedNetworkConfiguration: {
///             l2Networks: [{
///                 networkId: "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l2Networks/l2NetworkName",
///                 pluginType: azure_native.networkcloud.KubernetesPluginType.DPDK,
///             }],
///             l3Networks: [{
///                 ipamEnabled: azure_native.networkcloud.L3NetworkConfigurationIpamEnabled.False,
///                 networkId: "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l3Networks/l3NetworkName",
///                 pluginType: azure_native.networkcloud.KubernetesPluginType.SRIOV,
///             }],
///             trunkedNetworks: [{
///                 networkId: "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/trunkedNetworks/trunkedNetworkName",
///                 pluginType: azure_native.networkcloud.KubernetesPluginType.MACVLAN,
///             }],
///         },
///         cloudServicesNetworkId: "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/cloudServicesNetworks/cloudServicesNetworkName",
///         cniNetworkId: "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l3Networks/l3NetworkName",
///         dnsServiceIp: "198.51.101.2",
///         l2ServiceLoadBalancerConfiguration: {
///             ipAddressPools: [{
///                 addresses: ["198.51.102.2-198.51.102.254"],
///                 autoAssign: azure_native.networkcloud.BfdEnabled.True,
///                 name: "pool1",
///             }],
///         },
///         podCidrs: ["198.51.100.0/24"],
///         serviceCidrs: ["198.51.101.0/24"],
///     },
///     resourceGroupName: "resourceGroupName",
///     tags: {
///         key1: "myvalue1",
///         key2: "myvalue2",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// kubernetes_cluster = azure_native.networkcloud.KubernetesCluster("kubernetesCluster",
///     aad_configuration={
///         "admin_group_object_ids": ["ffffffff-ffff-ffff-ffff-ffffffffffff"],
///     },
///     administrator_configuration={
///         "admin_username": "azure",
///         "ssh_public_keys": [{
///             "key_data": "ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm",
///         }],
///     },
///     control_plane_node_configuration={
///         "administrator_configuration": {
///             "admin_username": "azure",
///             "ssh_public_keys": [{
///                 "key_data": "ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm",
///             }],
///         },
///         "availability_zones": [
///             "1",
///             "2",
///             "3",
///         ],
///         "count": 3,
///         "vm_sku_name": "NC_G6_28_v1",
///     },
///     extended_location={
///         "name": "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName",
///         "type": "CustomLocation",
///     },
///     initial_agent_pool_configurations=[{
///         "administrator_configuration": {
///             "admin_username": "azure",
///             "ssh_public_keys": [{
///                 "key_data": "ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm",
///             }],
///         },
///         "agent_options": {
///             "hugepages_count": 96,
///             "hugepages_size": azure_native.networkcloud.HugepagesSize.HUGEPAGES_SIZE_1_G,
///         },
///         "attached_network_configuration": {
///             "l2_networks": [{
///                 "network_id": "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l2Networks/l2NetworkName",
///                 "plugin_type": azure_native.networkcloud.KubernetesPluginType.DPDK,
///             }],
///             "l3_networks": [{
///                 "ipam_enabled": azure_native.networkcloud.L3NetworkConfigurationIpamEnabled.FALSE,
///                 "network_id": "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l3Networks/l3NetworkName",
///                 "plugin_type": azure_native.networkcloud.KubernetesPluginType.SRIOV,
///             }],
///             "trunked_networks": [{
///                 "network_id": "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/trunkedNetworks/trunkedNetworkName",
///                 "plugin_type": azure_native.networkcloud.KubernetesPluginType.MACVLAN,
///             }],
///         },
///         "availability_zones": [
///             "1",
///             "2",
///             "3",
///         ],
///         "count": 3,
///         "labels": [{
///             "key": "kubernetes.label",
///             "value": "true",
///         }],
///         "mode": azure_native.networkcloud.AgentPoolMode.SYSTEM,
///         "name": "SystemPool-1",
///         "taints": [{
///             "key": "kubernetes.taint",
///             "value": "true:NoSchedule",
///         }],
///         "upgrade_settings": {
///             "max_surge": "1",
///         },
///         "vm_sku_name": "NC_P46_224_v1",
///     }],
///     kubernetes_cluster_name="kubernetesClusterName",
///     kubernetes_version="1.XX.Y",
///     location="location",
///     managed_resource_group_configuration={
///         "location": "East US",
///         "name": "my-managed-rg",
///     },
///     network_configuration={
///         "attached_network_configuration": {
///             "l2_networks": [{
///                 "network_id": "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l2Networks/l2NetworkName",
///                 "plugin_type": azure_native.networkcloud.KubernetesPluginType.DPDK,
///             }],
///             "l3_networks": [{
///                 "ipam_enabled": azure_native.networkcloud.L3NetworkConfigurationIpamEnabled.FALSE,
///                 "network_id": "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l3Networks/l3NetworkName",
///                 "plugin_type": azure_native.networkcloud.KubernetesPluginType.SRIOV,
///             }],
///             "trunked_networks": [{
///                 "network_id": "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/trunkedNetworks/trunkedNetworkName",
///                 "plugin_type": azure_native.networkcloud.KubernetesPluginType.MACVLAN,
///             }],
///         },
///         "cloud_services_network_id": "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/cloudServicesNetworks/cloudServicesNetworkName",
///         "cni_network_id": "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l3Networks/l3NetworkName",
///         "dns_service_ip": "198.51.101.2",
///         "l2_service_load_balancer_configuration": {
///             "ip_address_pools": [{
///                 "addresses": ["198.51.102.2-198.51.102.254"],
///                 "auto_assign": azure_native.networkcloud.BfdEnabled.TRUE,
///                 "name": "pool1",
///             }],
///         },
///         "pod_cidrs": ["198.51.100.0/24"],
///         "service_cidrs": ["198.51.101.0/24"],
///     },
///     resource_group_name="resourceGroupName",
///     tags={
///         "key1": "myvalue1",
///         "key2": "myvalue2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   kubernetesCluster:
///     type: azure-native:networkcloud:KubernetesCluster
///     properties:
///       aadConfiguration:
///         adminGroupObjectIds:
///           - ffffffff-ffff-ffff-ffff-ffffffffffff
///       administratorConfiguration:
///         adminUsername: azure
///         sshPublicKeys:
///           - keyData: ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm
///       controlPlaneNodeConfiguration:
///         administratorConfiguration:
///           adminUsername: azure
///           sshPublicKeys:
///             - keyData: ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm
///         availabilityZones:
///           - '1'
///           - '2'
///           - '3'
///         count: 3
///         vmSkuName: NC_G6_28_v1
///       extendedLocation:
///         name: /subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ExtendedLocation/customLocations/clusterExtendedLocationName
///         type: CustomLocation
///       initialAgentPoolConfigurations:
///         - administratorConfiguration:
///             adminUsername: azure
///             sshPublicKeys:
///               - keyData: ssh-rsa AAtsE3njSONzDYRIZv/WLjVuMfrUSByHp+jfaaOLHTIIB4fJvo6dQUZxE20w2iDHV3tEkmnTo84eba97VMueQD6OzJPEyWZMRpz8UYWOd0IXeRqiFu1lawNblZhwNT/ojNZfpB3af/YDzwQCZgTcTRyNNhL4o/blKUmug0daSsSXISTRnIDpcf5qytjs1Xo+yYyJMvzLL59mhAyb3p/cD+Y3/s3WhAx+l0XOKpzXnblrv9d3q4c2tWmm/SyFqthaqd0= admin@vm
///           agentOptions:
///             hugepagesCount: 96
///             hugepagesSize: 1G
///           attachedNetworkConfiguration:
///             l2Networks:
///               - networkId: /subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l2Networks/l2NetworkName
///                 pluginType: DPDK
///             l3Networks:
///               - ipamEnabled: False
///                 networkId: /subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l3Networks/l3NetworkName
///                 pluginType: SRIOV
///             trunkedNetworks:
///               - networkId: /subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/trunkedNetworks/trunkedNetworkName
///                 pluginType: MACVLAN
///           availabilityZones:
///             - '1'
///             - '2'
///             - '3'
///           count: 3
///           labels:
///             - key: kubernetes.label
///               value: 'true'
///           mode: System
///           name: SystemPool-1
///           taints:
///             - key: kubernetes.taint
///               value: true:NoSchedule
///           upgradeSettings:
///             maxSurge: '1'
///           vmSkuName: NC_P46_224_v1
///       kubernetesClusterName: kubernetesClusterName
///       kubernetesVersion: 1.XX.Y
///       location: location
///       managedResourceGroupConfiguration:
///         location: East US
///         name: my-managed-rg
///       networkConfiguration:
///         attachedNetworkConfiguration:
///           l2Networks:
///             - networkId: /subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l2Networks/l2NetworkName
///               pluginType: DPDK
///           l3Networks:
///             - ipamEnabled: False
///               networkId: /subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l3Networks/l3NetworkName
///               pluginType: SRIOV
///           trunkedNetworks:
///             - networkId: /subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/trunkedNetworks/trunkedNetworkName
///               pluginType: MACVLAN
///         cloudServicesNetworkId: /subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/cloudServicesNetworks/cloudServicesNetworkName
///         cniNetworkId: /subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.NetworkCloud/l3Networks/l3NetworkName
///         dnsServiceIp: 198.51.101.2
///         l2ServiceLoadBalancerConfiguration:
///           ipAddressPools:
///             - addresses:
///                 - 198.51.102.2-198.51.102.254
///               autoAssign: True
///               name: pool1
///         podCidrs:
///           - 198.51.100.0/24
///         serviceCidrs:
///           - 198.51.101.0/24
///       resourceGroupName: resourceGroupName
///       tags:
///         key1: myvalue1
///         key2: myvalue2
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
/// $ pulumi import azure-native:networkcloud:KubernetesCluster KubernetesClusterName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.NetworkCloud/kubernetesClusters/{kubernetesClusterName}
/// ```
class KubernetesCluster extends pulumi.CustomResource {
  /// The Azure Active Directory Integration properties.
  late final pulumi.Output<AadConfigurationResponse?> aadConfiguration;

  /// The administrative credentials that will be applied to the control plane and agent pool nodes that do not specify their own values.
  late final pulumi.Output<AdministratorConfigurationResponse?>
  administratorConfiguration;

  /// The full list of network resource IDs that are attached to this cluster, including those attached only to specific agent pools.
  late final pulumi.Output<List<String>> attachedNetworkIds;

  /// The list of versions that this Kubernetes cluster can be upgraded to.
  late final pulumi.Output<List<Map<String, dynamic>>> availableUpgrades;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The resource ID of the Network Cloud cluster.
  late final pulumi.Output<String> clusterId;

  /// The resource ID of the connected cluster set up when this Kubernetes cluster is created.
  late final pulumi.Output<String> connectedClusterId;

  /// The current running version of Kubernetes on the control plane.
  late final pulumi.Output<String> controlPlaneKubernetesVersion;

  /// The defining characteristics of the control plane for this Kubernetes Cluster.
  late final pulumi.Output<ControlPlaneNodeConfigurationResponse>
  controlPlaneNodeConfiguration;

  /// The current status of the Kubernetes cluster.
  late final pulumi.Output<String> detailedStatus;

  /// The descriptive message about the current detailed status.
  late final pulumi.Output<String> detailedStatusMessage;

  /// Resource ETag.
  late final pulumi.Output<String> etag;

  /// The extended location of the cluster associated with the resource.
  late final pulumi.Output<ExtendedLocationResponse> extendedLocation;

  /// The current feature settings.
  late final pulumi.Output<List<Map<String, dynamic>>> featureStatuses;

  /// The agent pools that are created with this Kubernetes cluster for running critical system services and workloads. This data in this field is only used during creation, and the field will be empty following the creation of the Kubernetes Cluster. After creation, the management of agent pools is done using the agentPools sub-resource.
  late final pulumi.Output<List<Map<String, dynamic>>>
  initialAgentPoolConfigurations;

  /// The Kubernetes version for this cluster.
  late final pulumi.Output<String> kubernetesVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The configuration of the managed resource group associated with the resource.
  late final pulumi.Output<ManagedResourceGroupConfigurationResponse?>
  managedResourceGroupConfiguration;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The configuration of the Kubernetes cluster networking, including the attachment of networks that span the cluster.
  late final pulumi.Output<NetworkConfigurationResponse> networkConfiguration;

  /// The details of the nodes in this cluster.
  late final pulumi.Output<List<Map<String, dynamic>>> nodes;

  /// The provisioning state of the Kubernetes cluster resource.
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [KubernetesCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KubernetesCluster]. {@macro pulumi_networkcloud_kubernetes_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KubernetesCluster(
    String name, {
    KubernetesClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:networkcloud:KubernetesCluster',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    aadConfiguration = registerOutput<AadConfigurationResponse?>(
      'aadConfiguration',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AadConfigurationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
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
    attachedNetworkIds = registerOutput<List<String>>('attachedNetworkIds');
    availableUpgrades = registerOutput<List<Map<String, dynamic>>>(
      'availableUpgrades',
    );
    azureApiVersion = registerOutput<String>('azureApiVersion');
    clusterId = registerOutput<String>('clusterId');
    connectedClusterId = registerOutput<String>('connectedClusterId');
    controlPlaneKubernetesVersion = registerOutput<String>(
      'controlPlaneKubernetesVersion',
    );
    controlPlaneNodeConfiguration =
        registerOutput<ControlPlaneNodeConfigurationResponse>(
          'controlPlaneNodeConfiguration',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ControlPlaneNodeConfigurationResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    detailedStatus = registerOutput<String>('detailedStatus');
    detailedStatusMessage = registerOutput<String>('detailedStatusMessage');
    etag = registerOutput<String>('etag');
    extendedLocation = registerOutput<ExtendedLocationResponse>(
      'extendedLocation',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ExtendedLocationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    featureStatuses = registerOutput<List<Map<String, dynamic>>>(
      'featureStatuses',
    );
    initialAgentPoolConfigurations = registerOutput<List<Map<String, dynamic>>>(
      'initialAgentPoolConfigurations',
    );
    kubernetesVersion = registerOutput<String>('kubernetesVersion');
    location = registerOutput<String>('location');
    managedResourceGroupConfiguration =
        registerOutput<ManagedResourceGroupConfigurationResponse?>(
          'managedResourceGroupConfiguration',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ManagedResourceGroupConfigurationResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    this.name = registerOutput<String>('name');
    networkConfiguration = registerOutput<NetworkConfigurationResponse>(
      'networkConfiguration',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return NetworkConfigurationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    nodes = registerOutput<List<Map<String, dynamic>>>('nodes');
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
    type = registerOutput<String>('type');
  }
}
