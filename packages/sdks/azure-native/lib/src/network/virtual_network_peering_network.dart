import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_space_response.dart';
import 'sub_resource_response.dart';
import 'virtual_network_bgp_communities_response.dart';
import 'virtual_network_encryption_response.dart';
import 'virtual_network_peering_args.dart';

/// Peerings in a virtual network resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create V6 Subnet peering
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualNetworkPeering = new AzureNative.Network.VirtualNetworkPeering("virtualNetworkPeering", new()
///     {
///         AllowForwardedTraffic = true,
///         AllowGatewayTransit = false,
///         AllowVirtualNetworkAccess = true,
///         EnableOnlyIPv6Peering = true,
///         LocalSubnetNames = new[]
///         {
///             "Subnet1",
///             "Subnet4",
///         },
///         PeerCompleteVnets = false,
///         RemoteSubnetNames = new[]
///         {
///             "Subnet2",
///         },
///         RemoteVirtualNetwork = new AzureNative.Network.Inputs.SubResourceArgs
///         {
///             Id = "/subscriptions/subid/resourceGroups/peerTest/providers/Microsoft.Network/virtualNetworks/vnet2",
///         },
///         ResourceGroupName = "peerTest",
///         UseRemoteGateways = false,
///         VirtualNetworkName = "vnet1",
///         VirtualNetworkPeeringName = "peer",
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewVirtualNetworkPeering(ctx, "virtualNetworkPeering", &network.VirtualNetworkPeeringArgs{
/// 			AllowForwardedTraffic:     pulumi.Bool(true),
/// 			AllowGatewayTransit:       pulumi.Bool(false),
/// 			AllowVirtualNetworkAccess: pulumi.Bool(true),
/// 			EnableOnlyIPv6Peering:     pulumi.Bool(true),
/// 			LocalSubnetNames: pulumi.StringArray{
/// 				pulumi.String("Subnet1"),
/// 				pulumi.String("Subnet4"),
/// 			},
/// 			PeerCompleteVnets: pulumi.Bool(false),
/// 			RemoteSubnetNames: pulumi.StringArray{
/// 				pulumi.String("Subnet2"),
/// 			},
/// 			RemoteVirtualNetwork: &network.SubResourceArgs{
/// 				Id: pulumi.String("/subscriptions/subid/resourceGroups/peerTest/providers/Microsoft.Network/virtualNetworks/vnet2"),
/// 			},
/// 			ResourceGroupName:         pulumi.String("peerTest"),
/// 			UseRemoteGateways:         pulumi.Bool(false),
/// 			VirtualNetworkName:        pulumi.String("vnet1"),
/// 			VirtualNetworkPeeringName: pulumi.String("peer"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_network_virtualnetworkpeering" "virtualNetworkPeering" {
///   allow_forwarded_traffic      = true
///   allow_gateway_transit        = false
///   allow_virtual_network_access = true
///   enable_only_i_pv6_peering    = true
///   local_subnet_names           = ["Subnet1", "Subnet4"]
///   peer_complete_vnets          = false
///   remote_subnet_names          = ["Subnet2"]
///   remote_virtual_network = {
///     id = "/subscriptions/subid/resourceGroups/peerTest/providers/Microsoft.Network/virtualNetworks/vnet2"
///   }
///   resource_group_name          = "peerTest"
///   use_remote_gateways          = false
///   virtual_network_name         = "vnet1"
///   virtual_network_peering_name = "peer"
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
/// import com.pulumi.azurenative.network.VirtualNetworkPeering;
/// import com.pulumi.azurenative.network.VirtualNetworkPeeringArgs;
/// import com.pulumi.azurenative.network.inputs.SubResourceArgs;
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
///         var virtualNetworkPeering = new VirtualNetworkPeering("virtualNetworkPeering", VirtualNetworkPeeringArgs.builder()
///             .allowForwardedTraffic(true)
///             .allowGatewayTransit(false)
///             .allowVirtualNetworkAccess(true)
///             .enableOnlyIPv6Peering(true)
///             .localSubnetNames(
///                 "Subnet1",
///                 "Subnet4")
///             .peerCompleteVnets(false)
///             .remoteSubnetNames("Subnet2")
///             .remoteVirtualNetwork(SubResourceArgs.builder()
///                 .id("/subscriptions/subid/resourceGroups/peerTest/providers/Microsoft.Network/virtualNetworks/vnet2")
///                 .build())
///             .resourceGroupName("peerTest")
///             .useRemoteGateways(false)
///             .virtualNetworkName("vnet1")
///             .virtualNetworkPeeringName("peer")
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
/// const virtualNetworkPeering = new azure_native.network.VirtualNetworkPeering("virtualNetworkPeering", {
///     allowForwardedTraffic: true,
///     allowGatewayTransit: false,
///     allowVirtualNetworkAccess: true,
///     enableOnlyIPv6Peering: true,
///     localSubnetNames: [
///         "Subnet1",
///         "Subnet4",
///     ],
///     peerCompleteVnets: false,
///     remoteSubnetNames: ["Subnet2"],
///     remoteVirtualNetwork: {
///         id: "/subscriptions/subid/resourceGroups/peerTest/providers/Microsoft.Network/virtualNetworks/vnet2",
///     },
///     resourceGroupName: "peerTest",
///     useRemoteGateways: false,
///     virtualNetworkName: "vnet1",
///     virtualNetworkPeeringName: "peer",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_network_peering = azure_native.network.VirtualNetworkPeering("virtualNetworkPeering",
///     allow_forwarded_traffic=True,
///     allow_gateway_transit=False,
///     allow_virtual_network_access=True,
///     enable_only_i_pv6_peering=True,
///     local_subnet_names=[
///         "Subnet1",
///         "Subnet4",
///     ],
///     peer_complete_vnets=False,
///     remote_subnet_names=["Subnet2"],
///     remote_virtual_network={
///         "id": "/subscriptions/subid/resourceGroups/peerTest/providers/Microsoft.Network/virtualNetworks/vnet2",
///     },
///     resource_group_name="peerTest",
///     use_remote_gateways=False,
///     virtual_network_name="vnet1",
///     virtual_network_peering_name="peer")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualNetworkPeering:
///     type: azure-native:network:VirtualNetworkPeering
///     properties:
///       allowForwardedTraffic: true
///       allowGatewayTransit: false
///       allowVirtualNetworkAccess: true
///       enableOnlyIPv6Peering: true
///       localSubnetNames:
///         - Subnet1
///         - Subnet4
///       peerCompleteVnets: false
///       remoteSubnetNames:
///         - Subnet2
///       remoteVirtualNetwork:
///         id: /subscriptions/subid/resourceGroups/peerTest/providers/Microsoft.Network/virtualNetworks/vnet2
///       resourceGroupName: peerTest
///       useRemoteGateways: false
///       virtualNetworkName: vnet1
///       virtualNetworkPeeringName: peer
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create peering
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualNetworkPeering = new AzureNative.Network.VirtualNetworkPeering("virtualNetworkPeering", new()
///     {
///         AllowForwardedTraffic = true,
///         AllowGatewayTransit = false,
///         AllowVirtualNetworkAccess = true,
///         RemoteVirtualNetwork = new AzureNative.Network.Inputs.SubResourceArgs
///         {
///             Id = "/subscriptions/subid/resourceGroups/peerTest/providers/Microsoft.Network/virtualNetworks/vnet2",
///         },
///         ResourceGroupName = "peerTest",
///         UseRemoteGateways = false,
///         VirtualNetworkName = "vnet1",
///         VirtualNetworkPeeringName = "peer",
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewVirtualNetworkPeering(ctx, "virtualNetworkPeering", &network.VirtualNetworkPeeringArgs{
/// 			AllowForwardedTraffic:     pulumi.Bool(true),
/// 			AllowGatewayTransit:       pulumi.Bool(false),
/// 			AllowVirtualNetworkAccess: pulumi.Bool(true),
/// 			RemoteVirtualNetwork: &network.SubResourceArgs{
/// 				Id: pulumi.String("/subscriptions/subid/resourceGroups/peerTest/providers/Microsoft.Network/virtualNetworks/vnet2"),
/// 			},
/// 			ResourceGroupName:         pulumi.String("peerTest"),
/// 			UseRemoteGateways:         pulumi.Bool(false),
/// 			VirtualNetworkName:        pulumi.String("vnet1"),
/// 			VirtualNetworkPeeringName: pulumi.String("peer"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_network_virtualnetworkpeering" "virtualNetworkPeering" {
///   allow_forwarded_traffic      = true
///   allow_gateway_transit        = false
///   allow_virtual_network_access = true
///   remote_virtual_network = {
///     id = "/subscriptions/subid/resourceGroups/peerTest/providers/Microsoft.Network/virtualNetworks/vnet2"
///   }
///   resource_group_name          = "peerTest"
///   use_remote_gateways          = false
///   virtual_network_name         = "vnet1"
///   virtual_network_peering_name = "peer"
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
/// import com.pulumi.azurenative.network.VirtualNetworkPeering;
/// import com.pulumi.azurenative.network.VirtualNetworkPeeringArgs;
/// import com.pulumi.azurenative.network.inputs.SubResourceArgs;
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
///         var virtualNetworkPeering = new VirtualNetworkPeering("virtualNetworkPeering", VirtualNetworkPeeringArgs.builder()
///             .allowForwardedTraffic(true)
///             .allowGatewayTransit(false)
///             .allowVirtualNetworkAccess(true)
///             .remoteVirtualNetwork(SubResourceArgs.builder()
///                 .id("/subscriptions/subid/resourceGroups/peerTest/providers/Microsoft.Network/virtualNetworks/vnet2")
///                 .build())
///             .resourceGroupName("peerTest")
///             .useRemoteGateways(false)
///             .virtualNetworkName("vnet1")
///             .virtualNetworkPeeringName("peer")
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
/// const virtualNetworkPeering = new azure_native.network.VirtualNetworkPeering("virtualNetworkPeering", {
///     allowForwardedTraffic: true,
///     allowGatewayTransit: false,
///     allowVirtualNetworkAccess: true,
///     remoteVirtualNetwork: {
///         id: "/subscriptions/subid/resourceGroups/peerTest/providers/Microsoft.Network/virtualNetworks/vnet2",
///     },
///     resourceGroupName: "peerTest",
///     useRemoteGateways: false,
///     virtualNetworkName: "vnet1",
///     virtualNetworkPeeringName: "peer",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_network_peering = azure_native.network.VirtualNetworkPeering("virtualNetworkPeering",
///     allow_forwarded_traffic=True,
///     allow_gateway_transit=False,
///     allow_virtual_network_access=True,
///     remote_virtual_network={
///         "id": "/subscriptions/subid/resourceGroups/peerTest/providers/Microsoft.Network/virtualNetworks/vnet2",
///     },
///     resource_group_name="peerTest",
///     use_remote_gateways=False,
///     virtual_network_name="vnet1",
///     virtual_network_peering_name="peer")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualNetworkPeering:
///     type: azure-native:network:VirtualNetworkPeering
///     properties:
///       allowForwardedTraffic: true
///       allowGatewayTransit: false
///       allowVirtualNetworkAccess: true
///       remoteVirtualNetwork:
///         id: /subscriptions/subid/resourceGroups/peerTest/providers/Microsoft.Network/virtualNetworks/vnet2
///       resourceGroupName: peerTest
///       useRemoteGateways: false
///       virtualNetworkName: vnet1
///       virtualNetworkPeeringName: peer
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create peering with remote virtual network encryption
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualNetworkPeering = new AzureNative.Network.VirtualNetworkPeering("virtualNetworkPeering", new()
///     {
///         AllowForwardedTraffic = true,
///         AllowGatewayTransit = false,
///         AllowVirtualNetworkAccess = true,
///         RemoteVirtualNetwork = new AzureNative.Network.Inputs.SubResourceArgs
///         {
///             Id = "/subscriptions/subid/resourceGroups/peerTest/providers/Microsoft.Network/virtualNetworks/vnet2",
///         },
///         ResourceGroupName = "peerTest",
///         UseRemoteGateways = false,
///         VirtualNetworkName = "vnet1",
///         VirtualNetworkPeeringName = "peer",
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewVirtualNetworkPeering(ctx, "virtualNetworkPeering", &network.VirtualNetworkPeeringArgs{
/// 			AllowForwardedTraffic:     pulumi.Bool(true),
/// 			AllowGatewayTransit:       pulumi.Bool(false),
/// 			AllowVirtualNetworkAccess: pulumi.Bool(true),
/// 			RemoteVirtualNetwork: &network.SubResourceArgs{
/// 				Id: pulumi.String("/subscriptions/subid/resourceGroups/peerTest/providers/Microsoft.Network/virtualNetworks/vnet2"),
/// 			},
/// 			ResourceGroupName:         pulumi.String("peerTest"),
/// 			UseRemoteGateways:         pulumi.Bool(false),
/// 			VirtualNetworkName:        pulumi.String("vnet1"),
/// 			VirtualNetworkPeeringName: pulumi.String("peer"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_network_virtualnetworkpeering" "virtualNetworkPeering" {
///   allow_forwarded_traffic      = true
///   allow_gateway_transit        = false
///   allow_virtual_network_access = true
///   remote_virtual_network = {
///     id = "/subscriptions/subid/resourceGroups/peerTest/providers/Microsoft.Network/virtualNetworks/vnet2"
///   }
///   resource_group_name          = "peerTest"
///   use_remote_gateways          = false
///   virtual_network_name         = "vnet1"
///   virtual_network_peering_name = "peer"
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
/// import com.pulumi.azurenative.network.VirtualNetworkPeering;
/// import com.pulumi.azurenative.network.VirtualNetworkPeeringArgs;
/// import com.pulumi.azurenative.network.inputs.SubResourceArgs;
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
///         var virtualNetworkPeering = new VirtualNetworkPeering("virtualNetworkPeering", VirtualNetworkPeeringArgs.builder()
///             .allowForwardedTraffic(true)
///             .allowGatewayTransit(false)
///             .allowVirtualNetworkAccess(true)
///             .remoteVirtualNetwork(SubResourceArgs.builder()
///                 .id("/subscriptions/subid/resourceGroups/peerTest/providers/Microsoft.Network/virtualNetworks/vnet2")
///                 .build())
///             .resourceGroupName("peerTest")
///             .useRemoteGateways(false)
///             .virtualNetworkName("vnet1")
///             .virtualNetworkPeeringName("peer")
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
/// const virtualNetworkPeering = new azure_native.network.VirtualNetworkPeering("virtualNetworkPeering", {
///     allowForwardedTraffic: true,
///     allowGatewayTransit: false,
///     allowVirtualNetworkAccess: true,
///     remoteVirtualNetwork: {
///         id: "/subscriptions/subid/resourceGroups/peerTest/providers/Microsoft.Network/virtualNetworks/vnet2",
///     },
///     resourceGroupName: "peerTest",
///     useRemoteGateways: false,
///     virtualNetworkName: "vnet1",
///     virtualNetworkPeeringName: "peer",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_network_peering = azure_native.network.VirtualNetworkPeering("virtualNetworkPeering",
///     allow_forwarded_traffic=True,
///     allow_gateway_transit=False,
///     allow_virtual_network_access=True,
///     remote_virtual_network={
///         "id": "/subscriptions/subid/resourceGroups/peerTest/providers/Microsoft.Network/virtualNetworks/vnet2",
///     },
///     resource_group_name="peerTest",
///     use_remote_gateways=False,
///     virtual_network_name="vnet1",
///     virtual_network_peering_name="peer")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualNetworkPeering:
///     type: azure-native:network:VirtualNetworkPeering
///     properties:
///       allowForwardedTraffic: true
///       allowGatewayTransit: false
///       allowVirtualNetworkAccess: true
///       remoteVirtualNetwork:
///         id: /subscriptions/subid/resourceGroups/peerTest/providers/Microsoft.Network/virtualNetworks/vnet2
///       resourceGroupName: peerTest
///       useRemoteGateways: false
///       virtualNetworkName: vnet1
///       virtualNetworkPeeringName: peer
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create subnet peering
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualNetworkPeering = new AzureNative.Network.VirtualNetworkPeering("virtualNetworkPeering", new()
///     {
///         AllowForwardedTraffic = true,
///         AllowGatewayTransit = false,
///         AllowVirtualNetworkAccess = true,
///         EnableOnlyIPv6Peering = false,
///         LocalSubnetNames = new[]
///         {
///             "Subnet1",
///             "Subnet4",
///         },
///         PeerCompleteVnets = false,
///         RemoteSubnetNames = new[]
///         {
///             "Subnet2",
///         },
///         RemoteVirtualNetwork = new AzureNative.Network.Inputs.SubResourceArgs
///         {
///             Id = "/subscriptions/subid/resourceGroups/peerTest/providers/Microsoft.Network/virtualNetworks/vnet2",
///         },
///         ResourceGroupName = "peerTest",
///         UseRemoteGateways = false,
///         VirtualNetworkName = "vnet1",
///         VirtualNetworkPeeringName = "peer",
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewVirtualNetworkPeering(ctx, "virtualNetworkPeering", &network.VirtualNetworkPeeringArgs{
/// 			AllowForwardedTraffic:     pulumi.Bool(true),
/// 			AllowGatewayTransit:       pulumi.Bool(false),
/// 			AllowVirtualNetworkAccess: pulumi.Bool(true),
/// 			EnableOnlyIPv6Peering:     pulumi.Bool(false),
/// 			LocalSubnetNames: pulumi.StringArray{
/// 				pulumi.String("Subnet1"),
/// 				pulumi.String("Subnet4"),
/// 			},
/// 			PeerCompleteVnets: pulumi.Bool(false),
/// 			RemoteSubnetNames: pulumi.StringArray{
/// 				pulumi.String("Subnet2"),
/// 			},
/// 			RemoteVirtualNetwork: &network.SubResourceArgs{
/// 				Id: pulumi.String("/subscriptions/subid/resourceGroups/peerTest/providers/Microsoft.Network/virtualNetworks/vnet2"),
/// 			},
/// 			ResourceGroupName:         pulumi.String("peerTest"),
/// 			UseRemoteGateways:         pulumi.Bool(false),
/// 			VirtualNetworkName:        pulumi.String("vnet1"),
/// 			VirtualNetworkPeeringName: pulumi.String("peer"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_network_virtualnetworkpeering" "virtualNetworkPeering" {
///   allow_forwarded_traffic      = true
///   allow_gateway_transit        = false
///   allow_virtual_network_access = true
///   enable_only_i_pv6_peering    = false
///   local_subnet_names           = ["Subnet1", "Subnet4"]
///   peer_complete_vnets          = false
///   remote_subnet_names          = ["Subnet2"]
///   remote_virtual_network = {
///     id = "/subscriptions/subid/resourceGroups/peerTest/providers/Microsoft.Network/virtualNetworks/vnet2"
///   }
///   resource_group_name          = "peerTest"
///   use_remote_gateways          = false
///   virtual_network_name         = "vnet1"
///   virtual_network_peering_name = "peer"
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
/// import com.pulumi.azurenative.network.VirtualNetworkPeering;
/// import com.pulumi.azurenative.network.VirtualNetworkPeeringArgs;
/// import com.pulumi.azurenative.network.inputs.SubResourceArgs;
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
///         var virtualNetworkPeering = new VirtualNetworkPeering("virtualNetworkPeering", VirtualNetworkPeeringArgs.builder()
///             .allowForwardedTraffic(true)
///             .allowGatewayTransit(false)
///             .allowVirtualNetworkAccess(true)
///             .enableOnlyIPv6Peering(false)
///             .localSubnetNames(
///                 "Subnet1",
///                 "Subnet4")
///             .peerCompleteVnets(false)
///             .remoteSubnetNames("Subnet2")
///             .remoteVirtualNetwork(SubResourceArgs.builder()
///                 .id("/subscriptions/subid/resourceGroups/peerTest/providers/Microsoft.Network/virtualNetworks/vnet2")
///                 .build())
///             .resourceGroupName("peerTest")
///             .useRemoteGateways(false)
///             .virtualNetworkName("vnet1")
///             .virtualNetworkPeeringName("peer")
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
/// const virtualNetworkPeering = new azure_native.network.VirtualNetworkPeering("virtualNetworkPeering", {
///     allowForwardedTraffic: true,
///     allowGatewayTransit: false,
///     allowVirtualNetworkAccess: true,
///     enableOnlyIPv6Peering: false,
///     localSubnetNames: [
///         "Subnet1",
///         "Subnet4",
///     ],
///     peerCompleteVnets: false,
///     remoteSubnetNames: ["Subnet2"],
///     remoteVirtualNetwork: {
///         id: "/subscriptions/subid/resourceGroups/peerTest/providers/Microsoft.Network/virtualNetworks/vnet2",
///     },
///     resourceGroupName: "peerTest",
///     useRemoteGateways: false,
///     virtualNetworkName: "vnet1",
///     virtualNetworkPeeringName: "peer",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_network_peering = azure_native.network.VirtualNetworkPeering("virtualNetworkPeering",
///     allow_forwarded_traffic=True,
///     allow_gateway_transit=False,
///     allow_virtual_network_access=True,
///     enable_only_i_pv6_peering=False,
///     local_subnet_names=[
///         "Subnet1",
///         "Subnet4",
///     ],
///     peer_complete_vnets=False,
///     remote_subnet_names=["Subnet2"],
///     remote_virtual_network={
///         "id": "/subscriptions/subid/resourceGroups/peerTest/providers/Microsoft.Network/virtualNetworks/vnet2",
///     },
///     resource_group_name="peerTest",
///     use_remote_gateways=False,
///     virtual_network_name="vnet1",
///     virtual_network_peering_name="peer")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualNetworkPeering:
///     type: azure-native:network:VirtualNetworkPeering
///     properties:
///       allowForwardedTraffic: true
///       allowGatewayTransit: false
///       allowVirtualNetworkAccess: true
///       enableOnlyIPv6Peering: false
///       localSubnetNames:
///         - Subnet1
///         - Subnet4
///       peerCompleteVnets: false
///       remoteSubnetNames:
///         - Subnet2
///       remoteVirtualNetwork:
///         id: /subscriptions/subid/resourceGroups/peerTest/providers/Microsoft.Network/virtualNetworks/vnet2
///       resourceGroupName: peerTest
///       useRemoteGateways: false
///       virtualNetworkName: vnet1
///       virtualNetworkPeeringName: peer
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Sync Peering
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualNetworkPeering = new AzureNative.Network.VirtualNetworkPeering("virtualNetworkPeering", new()
///     {
///         AllowForwardedTraffic = true,
///         AllowGatewayTransit = false,
///         AllowVirtualNetworkAccess = true,
///         RemoteVirtualNetwork = new AzureNative.Network.Inputs.SubResourceArgs
///         {
///             Id = "/subscriptions/subid/resourceGroups/peerTest/providers/Microsoft.Network/virtualNetworks/vnet2",
///         },
///         ResourceGroupName = "peerTest",
///         SyncRemoteAddressSpace = "true",
///         UseRemoteGateways = false,
///         VirtualNetworkName = "vnet1",
///         VirtualNetworkPeeringName = "peer",
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewVirtualNetworkPeering(ctx, "virtualNetworkPeering", &network.VirtualNetworkPeeringArgs{
/// 			AllowForwardedTraffic:     pulumi.Bool(true),
/// 			AllowGatewayTransit:       pulumi.Bool(false),
/// 			AllowVirtualNetworkAccess: pulumi.Bool(true),
/// 			RemoteVirtualNetwork: &network.SubResourceArgs{
/// 				Id: pulumi.String("/subscriptions/subid/resourceGroups/peerTest/providers/Microsoft.Network/virtualNetworks/vnet2"),
/// 			},
/// 			ResourceGroupName:         pulumi.String("peerTest"),
/// 			SyncRemoteAddressSpace:    pulumi.String("true"),
/// 			UseRemoteGateways:         pulumi.Bool(false),
/// 			VirtualNetworkName:        pulumi.String("vnet1"),
/// 			VirtualNetworkPeeringName: pulumi.String("peer"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_network_virtualnetworkpeering" "virtualNetworkPeering" {
///   allow_forwarded_traffic      = true
///   allow_gateway_transit        = false
///   allow_virtual_network_access = true
///   remote_virtual_network = {
///     id = "/subscriptions/subid/resourceGroups/peerTest/providers/Microsoft.Network/virtualNetworks/vnet2"
///   }
///   resource_group_name          = "peerTest"
///   sync_remote_address_space    = "true"
///   use_remote_gateways          = false
///   virtual_network_name         = "vnet1"
///   virtual_network_peering_name = "peer"
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
/// import com.pulumi.azurenative.network.VirtualNetworkPeering;
/// import com.pulumi.azurenative.network.VirtualNetworkPeeringArgs;
/// import com.pulumi.azurenative.network.inputs.SubResourceArgs;
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
///         var virtualNetworkPeering = new VirtualNetworkPeering("virtualNetworkPeering", VirtualNetworkPeeringArgs.builder()
///             .allowForwardedTraffic(true)
///             .allowGatewayTransit(false)
///             .allowVirtualNetworkAccess(true)
///             .remoteVirtualNetwork(SubResourceArgs.builder()
///                 .id("/subscriptions/subid/resourceGroups/peerTest/providers/Microsoft.Network/virtualNetworks/vnet2")
///                 .build())
///             .resourceGroupName("peerTest")
///             .syncRemoteAddressSpace("true")
///             .useRemoteGateways(false)
///             .virtualNetworkName("vnet1")
///             .virtualNetworkPeeringName("peer")
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
/// const virtualNetworkPeering = new azure_native.network.VirtualNetworkPeering("virtualNetworkPeering", {
///     allowForwardedTraffic: true,
///     allowGatewayTransit: false,
///     allowVirtualNetworkAccess: true,
///     remoteVirtualNetwork: {
///         id: "/subscriptions/subid/resourceGroups/peerTest/providers/Microsoft.Network/virtualNetworks/vnet2",
///     },
///     resourceGroupName: "peerTest",
///     syncRemoteAddressSpace: "true",
///     useRemoteGateways: false,
///     virtualNetworkName: "vnet1",
///     virtualNetworkPeeringName: "peer",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_network_peering = azure_native.network.VirtualNetworkPeering("virtualNetworkPeering",
///     allow_forwarded_traffic=True,
///     allow_gateway_transit=False,
///     allow_virtual_network_access=True,
///     remote_virtual_network={
///         "id": "/subscriptions/subid/resourceGroups/peerTest/providers/Microsoft.Network/virtualNetworks/vnet2",
///     },
///     resource_group_name="peerTest",
///     sync_remote_address_space="true",
///     use_remote_gateways=False,
///     virtual_network_name="vnet1",
///     virtual_network_peering_name="peer")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualNetworkPeering:
///     type: azure-native:network:VirtualNetworkPeering
///     properties:
///       allowForwardedTraffic: true
///       allowGatewayTransit: false
///       allowVirtualNetworkAccess: true
///       remoteVirtualNetwork:
///         id: /subscriptions/subid/resourceGroups/peerTest/providers/Microsoft.Network/virtualNetworks/vnet2
///       resourceGroupName: peerTest
///       syncRemoteAddressSpace: 'true'
///       useRemoteGateways: false
///       virtualNetworkName: vnet1
///       virtualNetworkPeeringName: peer
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Sync V6 Subnet Peering
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualNetworkPeering = new AzureNative.Network.VirtualNetworkPeering("virtualNetworkPeering", new()
///     {
///         AllowForwardedTraffic = true,
///         AllowGatewayTransit = false,
///         AllowVirtualNetworkAccess = true,
///         EnableOnlyIPv6Peering = true,
///         PeerCompleteVnets = false,
///         RemoteVirtualNetwork = new AzureNative.Network.Inputs.SubResourceArgs
///         {
///             Id = "/subscriptions/subid/resourceGroups/peerTest/providers/Microsoft.Network/virtualNetworks/vnet2",
///         },
///         ResourceGroupName = "peerTest",
///         SyncRemoteAddressSpace = "true",
///         UseRemoteGateways = false,
///         VirtualNetworkName = "vnet1",
///         VirtualNetworkPeeringName = "peer",
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewVirtualNetworkPeering(ctx, "virtualNetworkPeering", &network.VirtualNetworkPeeringArgs{
/// 			AllowForwardedTraffic:     pulumi.Bool(true),
/// 			AllowGatewayTransit:       pulumi.Bool(false),
/// 			AllowVirtualNetworkAccess: pulumi.Bool(true),
/// 			EnableOnlyIPv6Peering:     pulumi.Bool(true),
/// 			PeerCompleteVnets:         pulumi.Bool(false),
/// 			RemoteVirtualNetwork: &network.SubResourceArgs{
/// 				Id: pulumi.String("/subscriptions/subid/resourceGroups/peerTest/providers/Microsoft.Network/virtualNetworks/vnet2"),
/// 			},
/// 			ResourceGroupName:         pulumi.String("peerTest"),
/// 			SyncRemoteAddressSpace:    pulumi.String("true"),
/// 			UseRemoteGateways:         pulumi.Bool(false),
/// 			VirtualNetworkName:        pulumi.String("vnet1"),
/// 			VirtualNetworkPeeringName: pulumi.String("peer"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_network_virtualnetworkpeering" "virtualNetworkPeering" {
///   allow_forwarded_traffic      = true
///   allow_gateway_transit        = false
///   allow_virtual_network_access = true
///   enable_only_i_pv6_peering    = true
///   peer_complete_vnets          = false
///   remote_virtual_network = {
///     id = "/subscriptions/subid/resourceGroups/peerTest/providers/Microsoft.Network/virtualNetworks/vnet2"
///   }
///   resource_group_name          = "peerTest"
///   sync_remote_address_space    = "true"
///   use_remote_gateways          = false
///   virtual_network_name         = "vnet1"
///   virtual_network_peering_name = "peer"
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
/// import com.pulumi.azurenative.network.VirtualNetworkPeering;
/// import com.pulumi.azurenative.network.VirtualNetworkPeeringArgs;
/// import com.pulumi.azurenative.network.inputs.SubResourceArgs;
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
///         var virtualNetworkPeering = new VirtualNetworkPeering("virtualNetworkPeering", VirtualNetworkPeeringArgs.builder()
///             .allowForwardedTraffic(true)
///             .allowGatewayTransit(false)
///             .allowVirtualNetworkAccess(true)
///             .enableOnlyIPv6Peering(true)
///             .peerCompleteVnets(false)
///             .remoteVirtualNetwork(SubResourceArgs.builder()
///                 .id("/subscriptions/subid/resourceGroups/peerTest/providers/Microsoft.Network/virtualNetworks/vnet2")
///                 .build())
///             .resourceGroupName("peerTest")
///             .syncRemoteAddressSpace("true")
///             .useRemoteGateways(false)
///             .virtualNetworkName("vnet1")
///             .virtualNetworkPeeringName("peer")
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
/// const virtualNetworkPeering = new azure_native.network.VirtualNetworkPeering("virtualNetworkPeering", {
///     allowForwardedTraffic: true,
///     allowGatewayTransit: false,
///     allowVirtualNetworkAccess: true,
///     enableOnlyIPv6Peering: true,
///     peerCompleteVnets: false,
///     remoteVirtualNetwork: {
///         id: "/subscriptions/subid/resourceGroups/peerTest/providers/Microsoft.Network/virtualNetworks/vnet2",
///     },
///     resourceGroupName: "peerTest",
///     syncRemoteAddressSpace: "true",
///     useRemoteGateways: false,
///     virtualNetworkName: "vnet1",
///     virtualNetworkPeeringName: "peer",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_network_peering = azure_native.network.VirtualNetworkPeering("virtualNetworkPeering",
///     allow_forwarded_traffic=True,
///     allow_gateway_transit=False,
///     allow_virtual_network_access=True,
///     enable_only_i_pv6_peering=True,
///     peer_complete_vnets=False,
///     remote_virtual_network={
///         "id": "/subscriptions/subid/resourceGroups/peerTest/providers/Microsoft.Network/virtualNetworks/vnet2",
///     },
///     resource_group_name="peerTest",
///     sync_remote_address_space="true",
///     use_remote_gateways=False,
///     virtual_network_name="vnet1",
///     virtual_network_peering_name="peer")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualNetworkPeering:
///     type: azure-native:network:VirtualNetworkPeering
///     properties:
///       allowForwardedTraffic: true
///       allowGatewayTransit: false
///       allowVirtualNetworkAccess: true
///       enableOnlyIPv6Peering: true
///       peerCompleteVnets: false
///       remoteVirtualNetwork:
///         id: /subscriptions/subid/resourceGroups/peerTest/providers/Microsoft.Network/virtualNetworks/vnet2
///       resourceGroupName: peerTest
///       syncRemoteAddressSpace: 'true'
///       useRemoteGateways: false
///       virtualNetworkName: vnet1
///       virtualNetworkPeeringName: peer
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Sync subnet Peering
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualNetworkPeering = new AzureNative.Network.VirtualNetworkPeering("virtualNetworkPeering", new()
///     {
///         AllowForwardedTraffic = true,
///         AllowGatewayTransit = false,
///         AllowVirtualNetworkAccess = true,
///         EnableOnlyIPv6Peering = false,
///         PeerCompleteVnets = false,
///         RemoteVirtualNetwork = new AzureNative.Network.Inputs.SubResourceArgs
///         {
///             Id = "/subscriptions/subid/resourceGroups/peerTest/providers/Microsoft.Network/virtualNetworks/vnet2",
///         },
///         ResourceGroupName = "peerTest",
///         SyncRemoteAddressSpace = "true",
///         UseRemoteGateways = false,
///         VirtualNetworkName = "vnet1",
///         VirtualNetworkPeeringName = "peer",
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewVirtualNetworkPeering(ctx, "virtualNetworkPeering", &network.VirtualNetworkPeeringArgs{
/// 			AllowForwardedTraffic:     pulumi.Bool(true),
/// 			AllowGatewayTransit:       pulumi.Bool(false),
/// 			AllowVirtualNetworkAccess: pulumi.Bool(true),
/// 			EnableOnlyIPv6Peering:     pulumi.Bool(false),
/// 			PeerCompleteVnets:         pulumi.Bool(false),
/// 			RemoteVirtualNetwork: &network.SubResourceArgs{
/// 				Id: pulumi.String("/subscriptions/subid/resourceGroups/peerTest/providers/Microsoft.Network/virtualNetworks/vnet2"),
/// 			},
/// 			ResourceGroupName:         pulumi.String("peerTest"),
/// 			SyncRemoteAddressSpace:    pulumi.String("true"),
/// 			UseRemoteGateways:         pulumi.Bool(false),
/// 			VirtualNetworkName:        pulumi.String("vnet1"),
/// 			VirtualNetworkPeeringName: pulumi.String("peer"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_network_virtualnetworkpeering" "virtualNetworkPeering" {
///   allow_forwarded_traffic      = true
///   allow_gateway_transit        = false
///   allow_virtual_network_access = true
///   enable_only_i_pv6_peering    = false
///   peer_complete_vnets          = false
///   remote_virtual_network = {
///     id = "/subscriptions/subid/resourceGroups/peerTest/providers/Microsoft.Network/virtualNetworks/vnet2"
///   }
///   resource_group_name          = "peerTest"
///   sync_remote_address_space    = "true"
///   use_remote_gateways          = false
///   virtual_network_name         = "vnet1"
///   virtual_network_peering_name = "peer"
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
/// import com.pulumi.azurenative.network.VirtualNetworkPeering;
/// import com.pulumi.azurenative.network.VirtualNetworkPeeringArgs;
/// import com.pulumi.azurenative.network.inputs.SubResourceArgs;
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
///         var virtualNetworkPeering = new VirtualNetworkPeering("virtualNetworkPeering", VirtualNetworkPeeringArgs.builder()
///             .allowForwardedTraffic(true)
///             .allowGatewayTransit(false)
///             .allowVirtualNetworkAccess(true)
///             .enableOnlyIPv6Peering(false)
///             .peerCompleteVnets(false)
///             .remoteVirtualNetwork(SubResourceArgs.builder()
///                 .id("/subscriptions/subid/resourceGroups/peerTest/providers/Microsoft.Network/virtualNetworks/vnet2")
///                 .build())
///             .resourceGroupName("peerTest")
///             .syncRemoteAddressSpace("true")
///             .useRemoteGateways(false)
///             .virtualNetworkName("vnet1")
///             .virtualNetworkPeeringName("peer")
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
/// const virtualNetworkPeering = new azure_native.network.VirtualNetworkPeering("virtualNetworkPeering", {
///     allowForwardedTraffic: true,
///     allowGatewayTransit: false,
///     allowVirtualNetworkAccess: true,
///     enableOnlyIPv6Peering: false,
///     peerCompleteVnets: false,
///     remoteVirtualNetwork: {
///         id: "/subscriptions/subid/resourceGroups/peerTest/providers/Microsoft.Network/virtualNetworks/vnet2",
///     },
///     resourceGroupName: "peerTest",
///     syncRemoteAddressSpace: "true",
///     useRemoteGateways: false,
///     virtualNetworkName: "vnet1",
///     virtualNetworkPeeringName: "peer",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_network_peering = azure_native.network.VirtualNetworkPeering("virtualNetworkPeering",
///     allow_forwarded_traffic=True,
///     allow_gateway_transit=False,
///     allow_virtual_network_access=True,
///     enable_only_i_pv6_peering=False,
///     peer_complete_vnets=False,
///     remote_virtual_network={
///         "id": "/subscriptions/subid/resourceGroups/peerTest/providers/Microsoft.Network/virtualNetworks/vnet2",
///     },
///     resource_group_name="peerTest",
///     sync_remote_address_space="true",
///     use_remote_gateways=False,
///     virtual_network_name="vnet1",
///     virtual_network_peering_name="peer")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualNetworkPeering:
///     type: azure-native:network:VirtualNetworkPeering
///     properties:
///       allowForwardedTraffic: true
///       allowGatewayTransit: false
///       allowVirtualNetworkAccess: true
///       enableOnlyIPv6Peering: false
///       peerCompleteVnets: false
///       remoteVirtualNetwork:
///         id: /subscriptions/subid/resourceGroups/peerTest/providers/Microsoft.Network/virtualNetworks/vnet2
///       resourceGroupName: peerTest
///       syncRemoteAddressSpace: 'true'
///       useRemoteGateways: false
///       virtualNetworkName: vnet1
///       virtualNetworkPeeringName: peer
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
/// $ pulumi import azure-native:network:VirtualNetworkPeering peer /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/virtualNetworkPeerings/{virtualNetworkPeeringName}
/// ```
class VirtualNetworkPeeringNetwork extends pulumi.CustomResource {
  /// Whether the forwarded traffic from the VMs in the local virtual network will be allowed/disallowed in remote virtual network.
  late final pulumi.Output<bool?> allowForwardedTraffic;
  /// If gateway links can be used in remote virtual networking to link to this virtual network.
  late final pulumi.Output<bool?> allowGatewayTransit;
  /// Whether the VMs in the local virtual network space would be able to access the VMs in remote virtual network space.
  late final pulumi.Output<bool?> allowVirtualNetworkAccess;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// If we need to verify the provisioning state of the remote gateway.
  late final pulumi.Output<bool?> doNotVerifyRemoteGateways;
  /// Whether only Ipv6 address space is peered for subnet peering.
  late final pulumi.Output<bool?> enableOnlyIPv6Peering;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// The local address space of the local virtual network that is peered.
  late final pulumi.Output<AddressSpaceResponse?> localAddressSpace;
  /// List of local subnet names that are subnet peered with remote virtual network.
  late final pulumi.Output<List<String>?> localSubnetNames;
  /// The current local address space of the local virtual network that is peered.
  late final pulumi.Output<AddressSpaceResponse?> localVirtualNetworkAddressSpace;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  late final pulumi.Output<String?> name;
  /// Whether complete virtual network address space is peered.
  late final pulumi.Output<bool?> peerCompleteVnets;
  /// The status of the virtual network peering.
  late final pulumi.Output<String?> peeringState;
  /// The peering sync status of the virtual network peering.
  late final pulumi.Output<String?> peeringSyncLevel;
  /// The provisioning state of the virtual network peering resource.
  late final pulumi.Output<String> provisioningState;
  /// The reference to the address space peered with the remote virtual network.
  late final pulumi.Output<AddressSpaceResponse?> remoteAddressSpace;
  /// The reference to the remote virtual network's Bgp Communities.
  late final pulumi.Output<VirtualNetworkBgpCommunitiesResponse?> remoteBgpCommunities;
  /// List of remote subnet names from remote virtual network that are subnet peered.
  late final pulumi.Output<List<String>?> remoteSubnetNames;
  /// The reference to the remote virtual network. The remote virtual network can be in the same or different region (preview). See here to register for the preview and learn more (https://docs.microsoft.com/en-us/azure/virtual-network/virtual-network-create-peering).
  late final pulumi.Output<SubResourceResponse?> remoteVirtualNetwork;
  /// The reference to the current address space of the remote virtual network.
  late final pulumi.Output<AddressSpaceResponse?> remoteVirtualNetworkAddressSpace;
  /// The reference to the remote virtual network's encryption
  late final pulumi.Output<VirtualNetworkEncryptionResponse> remoteVirtualNetworkEncryption;
  /// The resourceGuid property of the Virtual Network peering resource.
  late final pulumi.Output<String> resourceGuid;
  /// Resource type.
  late final pulumi.Output<String?> type;
  /// If remote gateways can be used on this virtual network. If the flag is set to true, and allowGatewayTransit on remote peering is also true, virtual network will use gateways of remote virtual network for transit. Only one peering can have this flag set to true. This flag cannot be set if virtual network already has a gateway.
  late final pulumi.Output<bool?> useRemoteGateways;

  /// Creates a new [VirtualNetworkPeeringNetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualNetworkPeeringNetwork]. {@macro pulumi_network_virtual_network_peering_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualNetworkPeeringNetwork(
    String name, {
    VirtualNetworkPeeringArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:VirtualNetworkPeering',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowForwardedTraffic = registerOutput<bool?>('allowForwardedTraffic');
    allowGatewayTransit = registerOutput<bool?>('allowGatewayTransit');
    allowVirtualNetworkAccess = registerOutput<bool?>('allowVirtualNetworkAccess');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    doNotVerifyRemoteGateways = registerOutput<bool?>('doNotVerifyRemoteGateways');
    enableOnlyIPv6Peering = registerOutput<bool?>('enableOnlyIPv6Peering');
    etag = registerOutput<String>('etag');
    localAddressSpace = registerOutput<AddressSpaceResponse?>('localAddressSpace', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AddressSpaceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    localSubnetNames = registerOutput<List<String>?>('localSubnetNames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    localVirtualNetworkAddressSpace = registerOutput<AddressSpaceResponse?>('localVirtualNetworkAddressSpace', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AddressSpaceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String?>('name');
    peerCompleteVnets = registerOutput<bool?>('peerCompleteVnets');
    peeringState = registerOutput<String?>('peeringState');
    peeringSyncLevel = registerOutput<String?>('peeringSyncLevel');
    provisioningState = registerOutput<String>('provisioningState');
    remoteAddressSpace = registerOutput<AddressSpaceResponse?>('remoteAddressSpace', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AddressSpaceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    remoteBgpCommunities = registerOutput<VirtualNetworkBgpCommunitiesResponse?>('remoteBgpCommunities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualNetworkBgpCommunitiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    remoteSubnetNames = registerOutput<List<String>?>('remoteSubnetNames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    remoteVirtualNetwork = registerOutput<SubResourceResponse?>('remoteVirtualNetwork', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    remoteVirtualNetworkAddressSpace = registerOutput<AddressSpaceResponse?>('remoteVirtualNetworkAddressSpace', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AddressSpaceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    remoteVirtualNetworkEncryption = registerOutput<VirtualNetworkEncryptionResponse>('remoteVirtualNetworkEncryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualNetworkEncryptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceGuid = registerOutput<String>('resourceGuid');
    type = registerOutput<String?>('type');
    useRemoteGateways = registerOutput<bool?>('useRemoteGateways');
  }

  /// Creates a typed reference to an existing [VirtualNetworkPeeringNetwork] resource.
  VirtualNetworkPeeringNetwork.reference(String urn)
    : super(
        'azure-native:network:VirtualNetworkPeering',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    allowForwardedTraffic = registerOutput<bool?>('allowForwardedTraffic');
    allowGatewayTransit = registerOutput<bool?>('allowGatewayTransit');
    allowVirtualNetworkAccess = registerOutput<bool?>('allowVirtualNetworkAccess');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    doNotVerifyRemoteGateways = registerOutput<bool?>('doNotVerifyRemoteGateways');
    enableOnlyIPv6Peering = registerOutput<bool?>('enableOnlyIPv6Peering');
    etag = registerOutput<String>('etag');
    localAddressSpace = registerOutput<AddressSpaceResponse?>('localAddressSpace', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AddressSpaceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    localSubnetNames = registerOutput<List<String>?>('localSubnetNames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    localVirtualNetworkAddressSpace = registerOutput<AddressSpaceResponse?>('localVirtualNetworkAddressSpace', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AddressSpaceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String?>('name');
    peerCompleteVnets = registerOutput<bool?>('peerCompleteVnets');
    peeringState = registerOutput<String?>('peeringState');
    peeringSyncLevel = registerOutput<String?>('peeringSyncLevel');
    provisioningState = registerOutput<String>('provisioningState');
    remoteAddressSpace = registerOutput<AddressSpaceResponse?>('remoteAddressSpace', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AddressSpaceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    remoteBgpCommunities = registerOutput<VirtualNetworkBgpCommunitiesResponse?>('remoteBgpCommunities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualNetworkBgpCommunitiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    remoteSubnetNames = registerOutput<List<String>?>('remoteSubnetNames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    remoteVirtualNetwork = registerOutput<SubResourceResponse?>('remoteVirtualNetwork', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    remoteVirtualNetworkAddressSpace = registerOutput<AddressSpaceResponse?>('remoteVirtualNetworkAddressSpace', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AddressSpaceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    remoteVirtualNetworkEncryption = registerOutput<VirtualNetworkEncryptionResponse>('remoteVirtualNetworkEncryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualNetworkEncryptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceGuid = registerOutput<String>('resourceGuid');
    type = registerOutput<String?>('type');
    useRemoteGateways = registerOutput<bool?>('useRemoteGateways');
  }
}
