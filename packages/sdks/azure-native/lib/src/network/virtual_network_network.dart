import 'package:pulumi/pulumi.dart' as pulumi;
import 'address_space_response.dart';
import 'dhcp_options_response.dart';
import 'extended_location_response.dart';
import 'flow_log_response.dart';
import 'sub_resource_response.dart';
import 'subnet_response.dart';
import 'virtual_network_args.dart';
import 'virtual_network_bgp_communities_response.dart';
import 'virtual_network_encryption_response.dart';
import 'virtual_network_peering_response.dart';

/// Virtual Network resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create virtual network
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualNetwork = new AzureNative.Network.VirtualNetwork("virtualNetwork", new()
///     {
///         AddressSpace = new AzureNative.Network.Inputs.AddressSpaceArgs
///         {
///             AddressPrefixes = new[]
///             {
///                 "10.0.0.0/16",
///             },
///         },
///         FlowTimeoutInMinutes = 10,
///         Location = "eastus",
///         ResourceGroupName = "rg1",
///         VirtualNetworkName = "test-vnet",
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
/// 		_, err := network.NewVirtualNetwork(ctx, "virtualNetwork", &network.VirtualNetworkArgs{
/// 			AddressSpace: &network.AddressSpaceArgs{
/// 				AddressPrefixes: pulumi.StringArray{
/// 					pulumi.String("10.0.0.0/16"),
/// 				},
/// 			},
/// 			FlowTimeoutInMinutes: pulumi.Int(10),
/// 			Location:             pulumi.String("eastus"),
/// 			ResourceGroupName:    pulumi.String("rg1"),
/// 			VirtualNetworkName:   pulumi.String("test-vnet"),
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
/// import com.pulumi.azurenative.network.VirtualNetwork;
/// import com.pulumi.azurenative.network.VirtualNetworkArgs;
/// import com.pulumi.azurenative.network.inputs.AddressSpaceArgs;
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
///         var virtualNetwork = new VirtualNetwork("virtualNetwork", VirtualNetworkArgs.builder()
///             .addressSpace(AddressSpaceArgs.builder()
///                 .addressPrefixes("10.0.0.0/16")
///                 .build())
///             .flowTimeoutInMinutes(10)
///             .location("eastus")
///             .resourceGroupName("rg1")
///             .virtualNetworkName("test-vnet")
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
/// const virtualNetwork = new azure_native.network.VirtualNetwork("virtualNetwork", {
///     addressSpace: {
///         addressPrefixes: ["10.0.0.0/16"],
///     },
///     flowTimeoutInMinutes: 10,
///     location: "eastus",
///     resourceGroupName: "rg1",
///     virtualNetworkName: "test-vnet",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_network = azure_native.network.VirtualNetwork("virtualNetwork",
///     address_space={
///         "address_prefixes": ["10.0.0.0/16"],
///     },
///     flow_timeout_in_minutes=10,
///     location="eastus",
///     resource_group_name="rg1",
///     virtual_network_name="test-vnet")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualNetwork:
///     type: azure-native:network:VirtualNetwork
///     properties:
///       addressSpace:
///         addressPrefixes:
///           - 10.0.0.0/16
///       flowTimeoutInMinutes: 10
///       location: eastus
///       resourceGroupName: rg1
///       virtualNetworkName: test-vnet
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create virtual network with Bgp Communities
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualNetwork = new AzureNative.Network.VirtualNetwork("virtualNetwork", new()
///     {
///         AddressSpace = new AzureNative.Network.Inputs.AddressSpaceArgs
///         {
///             AddressPrefixes = new[]
///             {
///                 "10.0.0.0/16",
///             },
///         },
///         BgpCommunities = new AzureNative.Network.Inputs.VirtualNetworkBgpCommunitiesArgs
///         {
///             VirtualNetworkCommunity = "12076:20000",
///         },
///         Location = "eastus",
///         ResourceGroupName = "rg1",
///         Subnets = new[]
///         {
///             new AzureNative.Network.Inputs.SubnetArgs
///             {
///                 AddressPrefix = "10.0.0.0/24",
///                 Name = "test-1",
///             },
///         },
///         VirtualNetworkName = "test-vnet",
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
/// 		_, err := network.NewVirtualNetwork(ctx, "virtualNetwork", &network.VirtualNetworkArgs{
/// 			AddressSpace: &network.AddressSpaceArgs{
/// 				AddressPrefixes: pulumi.StringArray{
/// 					pulumi.String("10.0.0.0/16"),
/// 				},
/// 			},
/// 			BgpCommunities: &network.VirtualNetworkBgpCommunitiesArgs{
/// 				VirtualNetworkCommunity: pulumi.String("12076:20000"),
/// 			},
/// 			Location:          pulumi.String("eastus"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Subnets: network.SubnetTypeArray{
/// 				&network.SubnetTypeArgs{
/// 					AddressPrefix: pulumi.String("10.0.0.0/24"),
/// 					Name:          pulumi.String("test-1"),
/// 				},
/// 			},
/// 			VirtualNetworkName: pulumi.String("test-vnet"),
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
/// import com.pulumi.azurenative.network.VirtualNetwork;
/// import com.pulumi.azurenative.network.VirtualNetworkArgs;
/// import com.pulumi.azurenative.network.inputs.AddressSpaceArgs;
/// import com.pulumi.azurenative.network.inputs.VirtualNetworkBgpCommunitiesArgs;
/// import com.pulumi.azurenative.network.inputs.SubnetArgs;
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
///         var virtualNetwork = new VirtualNetwork("virtualNetwork", VirtualNetworkArgs.builder()
///             .addressSpace(AddressSpaceArgs.builder()
///                 .addressPrefixes("10.0.0.0/16")
///                 .build())
///             .bgpCommunities(VirtualNetworkBgpCommunitiesArgs.builder()
///                 .virtualNetworkCommunity("12076:20000")
///                 .build())
///             .location("eastus")
///             .resourceGroupName("rg1")
///             .subnets(SubnetArgs.builder()
///                 .addressPrefix("10.0.0.0/24")
///                 .name("test-1")
///                 .build())
///             .virtualNetworkName("test-vnet")
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
/// const virtualNetwork = new azure_native.network.VirtualNetwork("virtualNetwork", {
///     addressSpace: {
///         addressPrefixes: ["10.0.0.0/16"],
///     },
///     bgpCommunities: {
///         virtualNetworkCommunity: "12076:20000",
///     },
///     location: "eastus",
///     resourceGroupName: "rg1",
///     subnets: [{
///         addressPrefix: "10.0.0.0/24",
///         name: "test-1",
///     }],
///     virtualNetworkName: "test-vnet",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_network = azure_native.network.VirtualNetwork("virtualNetwork",
///     address_space={
///         "address_prefixes": ["10.0.0.0/16"],
///     },
///     bgp_communities={
///         "virtual_network_community": "12076:20000",
///     },
///     location="eastus",
///     resource_group_name="rg1",
///     subnets=[{
///         "address_prefix": "10.0.0.0/24",
///         "name": "test-1",
///     }],
///     virtual_network_name="test-vnet")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualNetwork:
///     type: azure-native:network:VirtualNetwork
///     properties:
///       addressSpace:
///         addressPrefixes:
///           - 10.0.0.0/16
///       bgpCommunities:
///         virtualNetworkCommunity: 12076:20000
///       location: eastus
///       resourceGroupName: rg1
///       subnets:
///         - addressPrefix: 10.0.0.0/24
///           name: test-1
///       virtualNetworkName: test-vnet
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create virtual network with delegated subnets
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualNetwork = new AzureNative.Network.VirtualNetwork("virtualNetwork", new()
///     {
///         AddressSpace = new AzureNative.Network.Inputs.AddressSpaceArgs
///         {
///             AddressPrefixes = new[]
///             {
///                 "10.0.0.0/16",
///             },
///         },
///         Location = "westcentralus",
///         ResourceGroupName = "rg1",
///         Subnets = new[]
///         {
///             new AzureNative.Network.Inputs.SubnetArgs
///             {
///                 AddressPrefix = "10.0.0.0/24",
///                 Delegations = new[]
///                 {
///                     new AzureNative.Network.Inputs.DelegationArgs
///                     {
///                         Name = "myDelegation",
///                         ServiceName = "Microsoft.Sql/managedInstances",
///                     },
///                 },
///                 Name = "test-1",
///             },
///         },
///         VirtualNetworkName = "test-vnet",
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
/// 		_, err := network.NewVirtualNetwork(ctx, "virtualNetwork", &network.VirtualNetworkArgs{
/// 			AddressSpace: &network.AddressSpaceArgs{
/// 				AddressPrefixes: pulumi.StringArray{
/// 					pulumi.String("10.0.0.0/16"),
/// 				},
/// 			},
/// 			Location:          pulumi.String("westcentralus"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Subnets: network.SubnetTypeArray{
/// 				&network.SubnetTypeArgs{
/// 					AddressPrefix: pulumi.String("10.0.0.0/24"),
/// 					Delegations: network.DelegationArray{
/// 						&network.DelegationArgs{
/// 							Name:        pulumi.String("myDelegation"),
/// 							ServiceName: pulumi.String("Microsoft.Sql/managedInstances"),
/// 						},
/// 					},
/// 					Name: pulumi.String("test-1"),
/// 				},
/// 			},
/// 			VirtualNetworkName: pulumi.String("test-vnet"),
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
/// import com.pulumi.azurenative.network.VirtualNetwork;
/// import com.pulumi.azurenative.network.VirtualNetworkArgs;
/// import com.pulumi.azurenative.network.inputs.AddressSpaceArgs;
/// import com.pulumi.azurenative.network.inputs.SubnetArgs;
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
///         var virtualNetwork = new VirtualNetwork("virtualNetwork", VirtualNetworkArgs.builder()
///             .addressSpace(AddressSpaceArgs.builder()
///                 .addressPrefixes("10.0.0.0/16")
///                 .build())
///             .location("westcentralus")
///             .resourceGroupName("rg1")
///             .subnets(SubnetArgs.builder()
///                 .addressPrefix("10.0.0.0/24")
///                 .delegations(DelegationArgs.builder()
///                     .name("myDelegation")
///                     .serviceName("Microsoft.Sql/managedInstances")
///                     .build())
///                 .name("test-1")
///                 .build())
///             .virtualNetworkName("test-vnet")
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
/// const virtualNetwork = new azure_native.network.VirtualNetwork("virtualNetwork", {
///     addressSpace: {
///         addressPrefixes: ["10.0.0.0/16"],
///     },
///     location: "westcentralus",
///     resourceGroupName: "rg1",
///     subnets: [{
///         addressPrefix: "10.0.0.0/24",
///         delegations: [{
///             name: "myDelegation",
///             serviceName: "Microsoft.Sql/managedInstances",
///         }],
///         name: "test-1",
///     }],
///     virtualNetworkName: "test-vnet",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_network = azure_native.network.VirtualNetwork("virtualNetwork",
///     address_space={
///         "address_prefixes": ["10.0.0.0/16"],
///     },
///     location="westcentralus",
///     resource_group_name="rg1",
///     subnets=[{
///         "address_prefix": "10.0.0.0/24",
///         "delegations": [{
///             "name": "myDelegation",
///             "service_name": "Microsoft.Sql/managedInstances",
///         }],
///         "name": "test-1",
///     }],
///     virtual_network_name="test-vnet")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualNetwork:
///     type: azure-native:network:VirtualNetwork
///     properties:
///       addressSpace:
///         addressPrefixes:
///           - 10.0.0.0/16
///       location: westcentralus
///       resourceGroupName: rg1
///       subnets:
///         - addressPrefix: 10.0.0.0/24
///           delegations:
///             - name: myDelegation
///               serviceName: Microsoft.Sql/managedInstances
///           name: test-1
///       virtualNetworkName: test-vnet
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create virtual network with encryption
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualNetwork = new AzureNative.Network.VirtualNetwork("virtualNetwork", new()
///     {
///         AddressSpace = new AzureNative.Network.Inputs.AddressSpaceArgs
///         {
///             AddressPrefixes = new[]
///             {
///                 "10.0.0.0/16",
///             },
///         },
///         Encryption = new AzureNative.Network.Inputs.VirtualNetworkEncryptionArgs
///         {
///             Enabled = true,
///             Enforcement = AzureNative.Network.VirtualNetworkEncryptionEnforcement.AllowUnencrypted,
///         },
///         Location = "eastus",
///         ResourceGroupName = "rg1",
///         Subnets = new[]
///         {
///             new AzureNative.Network.Inputs.SubnetArgs
///             {
///                 AddressPrefix = "10.0.0.0/24",
///                 Name = "test-1",
///             },
///         },
///         VirtualNetworkName = "test-vnet",
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
/// 		_, err := network.NewVirtualNetwork(ctx, "virtualNetwork", &network.VirtualNetworkArgs{
/// 			AddressSpace: &network.AddressSpaceArgs{
/// 				AddressPrefixes: pulumi.StringArray{
/// 					pulumi.String("10.0.0.0/16"),
/// 				},
/// 			},
/// 			Encryption: &network.VirtualNetworkEncryptionArgs{
/// 				Enabled:     pulumi.Bool(true),
/// 				Enforcement: pulumi.String(network.VirtualNetworkEncryptionEnforcementAllowUnencrypted),
/// 			},
/// 			Location:          pulumi.String("eastus"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Subnets: network.SubnetTypeArray{
/// 				&network.SubnetTypeArgs{
/// 					AddressPrefix: pulumi.String("10.0.0.0/24"),
/// 					Name:          pulumi.String("test-1"),
/// 				},
/// 			},
/// 			VirtualNetworkName: pulumi.String("test-vnet"),
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
/// import com.pulumi.azurenative.network.VirtualNetwork;
/// import com.pulumi.azurenative.network.VirtualNetworkArgs;
/// import com.pulumi.azurenative.network.inputs.AddressSpaceArgs;
/// import com.pulumi.azurenative.network.inputs.VirtualNetworkEncryptionArgs;
/// import com.pulumi.azurenative.network.inputs.SubnetArgs;
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
///         var virtualNetwork = new VirtualNetwork("virtualNetwork", VirtualNetworkArgs.builder()
///             .addressSpace(AddressSpaceArgs.builder()
///                 .addressPrefixes("10.0.0.0/16")
///                 .build())
///             .encryption(VirtualNetworkEncryptionArgs.builder()
///                 .enabled(true)
///                 .enforcement("AllowUnencrypted")
///                 .build())
///             .location("eastus")
///             .resourceGroupName("rg1")
///             .subnets(SubnetArgs.builder()
///                 .addressPrefix("10.0.0.0/24")
///                 .name("test-1")
///                 .build())
///             .virtualNetworkName("test-vnet")
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
/// const virtualNetwork = new azure_native.network.VirtualNetwork("virtualNetwork", {
///     addressSpace: {
///         addressPrefixes: ["10.0.0.0/16"],
///     },
///     encryption: {
///         enabled: true,
///         enforcement: azure_native.network.VirtualNetworkEncryptionEnforcement.AllowUnencrypted,
///     },
///     location: "eastus",
///     resourceGroupName: "rg1",
///     subnets: [{
///         addressPrefix: "10.0.0.0/24",
///         name: "test-1",
///     }],
///     virtualNetworkName: "test-vnet",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_network = azure_native.network.VirtualNetwork("virtualNetwork",
///     address_space={
///         "address_prefixes": ["10.0.0.0/16"],
///     },
///     encryption={
///         "enabled": True,
///         "enforcement": azure_native.network.VirtualNetworkEncryptionEnforcement.ALLOW_UNENCRYPTED,
///     },
///     location="eastus",
///     resource_group_name="rg1",
///     subnets=[{
///         "address_prefix": "10.0.0.0/24",
///         "name": "test-1",
///     }],
///     virtual_network_name="test-vnet")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualNetwork:
///     type: azure-native:network:VirtualNetwork
///     properties:
///       addressSpace:
///         addressPrefixes:
///           - 10.0.0.0/16
///       encryption:
///         enabled: true
///         enforcement: AllowUnencrypted
///       location: eastus
///       resourceGroupName: rg1
///       subnets:
///         - addressPrefix: 10.0.0.0/24
///           name: test-1
///       virtualNetworkName: test-vnet
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create virtual network with ipamPool
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualNetwork = new AzureNative.Network.VirtualNetwork("virtualNetwork", new()
///     {
///         AddressSpace = new AzureNative.Network.Inputs.AddressSpaceArgs
///         {
///             IpamPoolPrefixAllocations = new[]
///             {
///                 new AzureNative.Network.Inputs.IpamPoolPrefixAllocationArgs
///                 {
///                     Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/nm1/ipamPools/testIpamPool",
///                     NumberOfIpAddresses = "65536",
///                 },
///             },
///         },
///         Location = "eastus",
///         ResourceGroupName = "rg1",
///         Subnets = new[]
///         {
///             new AzureNative.Network.Inputs.SubnetArgs
///             {
///                 IpamPoolPrefixAllocations = new[]
///                 {
///                     new AzureNative.Network.Inputs.IpamPoolPrefixAllocationArgs
///                     {
///                         Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/nm1/ipamPools/testIpamPool",
///                         NumberOfIpAddresses = "80",
///                     },
///                 },
///                 Name = "test-1",
///             },
///         },
///         VirtualNetworkName = "test-vnet",
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
/// 		_, err := network.NewVirtualNetwork(ctx, "virtualNetwork", &network.VirtualNetworkArgs{
/// 			AddressSpace: &network.AddressSpaceArgs{
/// 				IpamPoolPrefixAllocations: network.IpamPoolPrefixAllocationArray{
/// 					&network.IpamPoolPrefixAllocationArgs{
/// 						Id:                  pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/nm1/ipamPools/testIpamPool"),
/// 						NumberOfIpAddresses: pulumi.String("65536"),
/// 					},
/// 				},
/// 			},
/// 			Location:          pulumi.String("eastus"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Subnets: network.SubnetTypeArray{
/// 				&network.SubnetTypeArgs{
/// 					IpamPoolPrefixAllocations: network.IpamPoolPrefixAllocationArray{
/// 						&network.IpamPoolPrefixAllocationArgs{
/// 							Id:                  pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/nm1/ipamPools/testIpamPool"),
/// 							NumberOfIpAddresses: pulumi.String("80"),
/// 						},
/// 					},
/// 					Name: pulumi.String("test-1"),
/// 				},
/// 			},
/// 			VirtualNetworkName: pulumi.String("test-vnet"),
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
/// import com.pulumi.azurenative.network.VirtualNetwork;
/// import com.pulumi.azurenative.network.VirtualNetworkArgs;
/// import com.pulumi.azurenative.network.inputs.AddressSpaceArgs;
/// import com.pulumi.azurenative.network.inputs.SubnetArgs;
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
///         var virtualNetwork = new VirtualNetwork("virtualNetwork", VirtualNetworkArgs.builder()
///             .addressSpace(AddressSpaceArgs.builder()
///                 .ipamPoolPrefixAllocations(IpamPoolPrefixAllocationArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/nm1/ipamPools/testIpamPool")
///                     .numberOfIpAddresses("65536")
///                     .build())
///                 .build())
///             .location("eastus")
///             .resourceGroupName("rg1")
///             .subnets(SubnetArgs.builder()
///                 .ipamPoolPrefixAllocations(IpamPoolPrefixAllocationArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/nm1/ipamPools/testIpamPool")
///                     .numberOfIpAddresses("80")
///                     .build())
///                 .name("test-1")
///                 .build())
///             .virtualNetworkName("test-vnet")
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
/// const virtualNetwork = new azure_native.network.VirtualNetwork("virtualNetwork", {
///     addressSpace: {
///         ipamPoolPrefixAllocations: [{
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/nm1/ipamPools/testIpamPool",
///             numberOfIpAddresses: "65536",
///         }],
///     },
///     location: "eastus",
///     resourceGroupName: "rg1",
///     subnets: [{
///         ipamPoolPrefixAllocations: [{
///             id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/nm1/ipamPools/testIpamPool",
///             numberOfIpAddresses: "80",
///         }],
///         name: "test-1",
///     }],
///     virtualNetworkName: "test-vnet",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_network = azure_native.network.VirtualNetwork("virtualNetwork",
///     address_space={
///         "ipam_pool_prefix_allocations": [{
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/nm1/ipamPools/testIpamPool",
///             "number_of_ip_addresses": "65536",
///         }],
///     },
///     location="eastus",
///     resource_group_name="rg1",
///     subnets=[{
///         "ipam_pool_prefix_allocations": [{
///             "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/nm1/ipamPools/testIpamPool",
///             "number_of_ip_addresses": "80",
///         }],
///         "name": "test-1",
///     }],
///     virtual_network_name="test-vnet")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualNetwork:
///     type: azure-native:network:VirtualNetwork
///     properties:
///       addressSpace:
///         ipamPoolPrefixAllocations:
///           - id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/nm1/ipamPools/testIpamPool
///             numberOfIpAddresses: '65536'
///       location: eastus
///       resourceGroupName: rg1
///       subnets:
///         - ipamPoolPrefixAllocations:
///             - id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/nm1/ipamPools/testIpamPool
///               numberOfIpAddresses: '80'
///           name: test-1
///       virtualNetworkName: test-vnet
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create virtual network with service endpoints
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualNetwork = new AzureNative.Network.VirtualNetwork("virtualNetwork", new()
///     {
///         AddressSpace = new AzureNative.Network.Inputs.AddressSpaceArgs
///         {
///             AddressPrefixes = new[]
///             {
///                 "10.0.0.0/16",
///             },
///         },
///         Location = "eastus",
///         ResourceGroupName = "vnetTest",
///         Subnets = new[]
///         {
///             new AzureNative.Network.Inputs.SubnetArgs
///             {
///                 AddressPrefix = "10.0.0.0/16",
///                 Name = "test-1",
///                 ServiceEndpoints = new[]
///                 {
///                     new AzureNative.Network.Inputs.ServiceEndpointPropertiesFormatArgs
///                     {
///                         Service = "Microsoft.Storage",
///                     },
///                 },
///             },
///         },
///         VirtualNetworkName = "vnet1",
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
/// 		_, err := network.NewVirtualNetwork(ctx, "virtualNetwork", &network.VirtualNetworkArgs{
/// 			AddressSpace: &network.AddressSpaceArgs{
/// 				AddressPrefixes: pulumi.StringArray{
/// 					pulumi.String("10.0.0.0/16"),
/// 				},
/// 			},
/// 			Location:          pulumi.String("eastus"),
/// 			ResourceGroupName: pulumi.String("vnetTest"),
/// 			Subnets: network.SubnetTypeArray{
/// 				&network.SubnetTypeArgs{
/// 					AddressPrefix: pulumi.String("10.0.0.0/16"),
/// 					Name:          pulumi.String("test-1"),
/// 					ServiceEndpoints: network.ServiceEndpointPropertiesFormatArray{
/// 						&network.ServiceEndpointPropertiesFormatArgs{
/// 							Service: pulumi.String("Microsoft.Storage"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VirtualNetworkName: pulumi.String("vnet1"),
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
/// import com.pulumi.azurenative.network.VirtualNetwork;
/// import com.pulumi.azurenative.network.VirtualNetworkArgs;
/// import com.pulumi.azurenative.network.inputs.AddressSpaceArgs;
/// import com.pulumi.azurenative.network.inputs.SubnetArgs;
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
///         var virtualNetwork = new VirtualNetwork("virtualNetwork", VirtualNetworkArgs.builder()
///             .addressSpace(AddressSpaceArgs.builder()
///                 .addressPrefixes("10.0.0.0/16")
///                 .build())
///             .location("eastus")
///             .resourceGroupName("vnetTest")
///             .subnets(SubnetArgs.builder()
///                 .addressPrefix("10.0.0.0/16")
///                 .name("test-1")
///                 .serviceEndpoints(ServiceEndpointPropertiesFormatArgs.builder()
///                     .service("Microsoft.Storage")
///                     .build())
///                 .build())
///             .virtualNetworkName("vnet1")
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
/// const virtualNetwork = new azure_native.network.VirtualNetwork("virtualNetwork", {
///     addressSpace: {
///         addressPrefixes: ["10.0.0.0/16"],
///     },
///     location: "eastus",
///     resourceGroupName: "vnetTest",
///     subnets: [{
///         addressPrefix: "10.0.0.0/16",
///         name: "test-1",
///         serviceEndpoints: [{
///             service: "Microsoft.Storage",
///         }],
///     }],
///     virtualNetworkName: "vnet1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_network = azure_native.network.VirtualNetwork("virtualNetwork",
///     address_space={
///         "address_prefixes": ["10.0.0.0/16"],
///     },
///     location="eastus",
///     resource_group_name="vnetTest",
///     subnets=[{
///         "address_prefix": "10.0.0.0/16",
///         "name": "test-1",
///         "service_endpoints": [{
///             "service": "Microsoft.Storage",
///         }],
///     }],
///     virtual_network_name="vnet1")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualNetwork:
///     type: azure-native:network:VirtualNetwork
///     properties:
///       addressSpace:
///         addressPrefixes:
///           - 10.0.0.0/16
///       location: eastus
///       resourceGroupName: vnetTest
///       subnets:
///         - addressPrefix: 10.0.0.0/16
///           name: test-1
///           serviceEndpoints:
///             - service: Microsoft.Storage
///       virtualNetworkName: vnet1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create virtual network with service endpoints and service endpoint policy
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualNetwork = new AzureNative.Network.VirtualNetwork("virtualNetwork", new()
///     {
///         AddressSpace = new AzureNative.Network.Inputs.AddressSpaceArgs
///         {
///             AddressPrefixes = new[]
///             {
///                 "10.0.0.0/16",
///             },
///         },
///         Location = "eastus2euap",
///         ResourceGroupName = "vnetTest",
///         Subnets = new[]
///         {
///             new AzureNative.Network.Inputs.SubnetArgs
///             {
///                 AddressPrefix = "10.0.0.0/16",
///                 Name = "test-1",
///                 ServiceEndpointPolicies = new[]
///                 {
///                     new AzureNative.Network.Inputs.ServiceEndpointPolicyArgs
///                     {
///                         Id = "/subscriptions/subid/resourceGroups/vnetTest/providers/Microsoft.Network/serviceEndpointPolicies/ServiceEndpointPolicy1",
///                     },
///                 },
///                 ServiceEndpoints = new[]
///                 {
///                     new AzureNative.Network.Inputs.ServiceEndpointPropertiesFormatArgs
///                     {
///                         Service = "Microsoft.Storage",
///                     },
///                 },
///             },
///         },
///         VirtualNetworkName = "vnet1",
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
/// 		_, err := network.NewVirtualNetwork(ctx, "virtualNetwork", &network.VirtualNetworkArgs{
/// 			AddressSpace: &network.AddressSpaceArgs{
/// 				AddressPrefixes: pulumi.StringArray{
/// 					pulumi.String("10.0.0.0/16"),
/// 				},
/// 			},
/// 			Location:          pulumi.String("eastus2euap"),
/// 			ResourceGroupName: pulumi.String("vnetTest"),
/// 			Subnets: network.SubnetTypeArray{
/// 				&network.SubnetTypeArgs{
/// 					AddressPrefix: pulumi.String("10.0.0.0/16"),
/// 					Name:          pulumi.String("test-1"),
/// 					ServiceEndpointPolicies: network.ServiceEndpointPolicyTypeArray{
/// 						&network.ServiceEndpointPolicyTypeArgs{
/// 							Id: pulumi.String("/subscriptions/subid/resourceGroups/vnetTest/providers/Microsoft.Network/serviceEndpointPolicies/ServiceEndpointPolicy1"),
/// 						},
/// 					},
/// 					ServiceEndpoints: network.ServiceEndpointPropertiesFormatArray{
/// 						&network.ServiceEndpointPropertiesFormatArgs{
/// 							Service: pulumi.String("Microsoft.Storage"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			VirtualNetworkName: pulumi.String("vnet1"),
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
/// import com.pulumi.azurenative.network.VirtualNetwork;
/// import com.pulumi.azurenative.network.VirtualNetworkArgs;
/// import com.pulumi.azurenative.network.inputs.AddressSpaceArgs;
/// import com.pulumi.azurenative.network.inputs.SubnetArgs;
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
///         var virtualNetwork = new VirtualNetwork("virtualNetwork", VirtualNetworkArgs.builder()
///             .addressSpace(AddressSpaceArgs.builder()
///                 .addressPrefixes("10.0.0.0/16")
///                 .build())
///             .location("eastus2euap")
///             .resourceGroupName("vnetTest")
///             .subnets(SubnetArgs.builder()
///                 .addressPrefix("10.0.0.0/16")
///                 .name("test-1")
///                 .serviceEndpointPolicies(ServiceEndpointPolicyArgs.builder()
///                     .id("/subscriptions/subid/resourceGroups/vnetTest/providers/Microsoft.Network/serviceEndpointPolicies/ServiceEndpointPolicy1")
///                     .build())
///                 .serviceEndpoints(ServiceEndpointPropertiesFormatArgs.builder()
///                     .service("Microsoft.Storage")
///                     .build())
///                 .build())
///             .virtualNetworkName("vnet1")
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
/// const virtualNetwork = new azure_native.network.VirtualNetwork("virtualNetwork", {
///     addressSpace: {
///         addressPrefixes: ["10.0.0.0/16"],
///     },
///     location: "eastus2euap",
///     resourceGroupName: "vnetTest",
///     subnets: [{
///         addressPrefix: "10.0.0.0/16",
///         name: "test-1",
///         serviceEndpointPolicies: [{
///             id: "/subscriptions/subid/resourceGroups/vnetTest/providers/Microsoft.Network/serviceEndpointPolicies/ServiceEndpointPolicy1",
///         }],
///         serviceEndpoints: [{
///             service: "Microsoft.Storage",
///         }],
///     }],
///     virtualNetworkName: "vnet1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_network = azure_native.network.VirtualNetwork("virtualNetwork",
///     address_space={
///         "address_prefixes": ["10.0.0.0/16"],
///     },
///     location="eastus2euap",
///     resource_group_name="vnetTest",
///     subnets=[{
///         "address_prefix": "10.0.0.0/16",
///         "name": "test-1",
///         "service_endpoint_policies": [{
///             "id": "/subscriptions/subid/resourceGroups/vnetTest/providers/Microsoft.Network/serviceEndpointPolicies/ServiceEndpointPolicy1",
///         }],
///         "service_endpoints": [{
///             "service": "Microsoft.Storage",
///         }],
///     }],
///     virtual_network_name="vnet1")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualNetwork:
///     type: azure-native:network:VirtualNetwork
///     properties:
///       addressSpace:
///         addressPrefixes:
///           - 10.0.0.0/16
///       location: eastus2euap
///       resourceGroupName: vnetTest
///       subnets:
///         - addressPrefix: 10.0.0.0/16
///           name: test-1
///           serviceEndpointPolicies:
///             - id: /subscriptions/subid/resourceGroups/vnetTest/providers/Microsoft.Network/serviceEndpointPolicies/ServiceEndpointPolicy1
///           serviceEndpoints:
///             - service: Microsoft.Storage
///       virtualNetworkName: vnet1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create virtual network with subnet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualNetwork = new AzureNative.Network.VirtualNetwork("virtualNetwork", new()
///     {
///         AddressSpace = new AzureNative.Network.Inputs.AddressSpaceArgs
///         {
///             AddressPrefixes = new[]
///             {
///                 "10.0.0.0/16",
///             },
///         },
///         Location = "eastus",
///         ResourceGroupName = "rg1",
///         Subnets = new[]
///         {
///             new AzureNative.Network.Inputs.SubnetArgs
///             {
///                 AddressPrefix = "10.0.0.0/24",
///                 Name = "test-1",
///             },
///         },
///         VirtualNetworkName = "test-vnet",
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
/// 		_, err := network.NewVirtualNetwork(ctx, "virtualNetwork", &network.VirtualNetworkArgs{
/// 			AddressSpace: &network.AddressSpaceArgs{
/// 				AddressPrefixes: pulumi.StringArray{
/// 					pulumi.String("10.0.0.0/16"),
/// 				},
/// 			},
/// 			Location:          pulumi.String("eastus"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Subnets: network.SubnetTypeArray{
/// 				&network.SubnetTypeArgs{
/// 					AddressPrefix: pulumi.String("10.0.0.0/24"),
/// 					Name:          pulumi.String("test-1"),
/// 				},
/// 			},
/// 			VirtualNetworkName: pulumi.String("test-vnet"),
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
/// import com.pulumi.azurenative.network.VirtualNetwork;
/// import com.pulumi.azurenative.network.VirtualNetworkArgs;
/// import com.pulumi.azurenative.network.inputs.AddressSpaceArgs;
/// import com.pulumi.azurenative.network.inputs.SubnetArgs;
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
///         var virtualNetwork = new VirtualNetwork("virtualNetwork", VirtualNetworkArgs.builder()
///             .addressSpace(AddressSpaceArgs.builder()
///                 .addressPrefixes("10.0.0.0/16")
///                 .build())
///             .location("eastus")
///             .resourceGroupName("rg1")
///             .subnets(SubnetArgs.builder()
///                 .addressPrefix("10.0.0.0/24")
///                 .name("test-1")
///                 .build())
///             .virtualNetworkName("test-vnet")
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
/// const virtualNetwork = new azure_native.network.VirtualNetwork("virtualNetwork", {
///     addressSpace: {
///         addressPrefixes: ["10.0.0.0/16"],
///     },
///     location: "eastus",
///     resourceGroupName: "rg1",
///     subnets: [{
///         addressPrefix: "10.0.0.0/24",
///         name: "test-1",
///     }],
///     virtualNetworkName: "test-vnet",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_network = azure_native.network.VirtualNetwork("virtualNetwork",
///     address_space={
///         "address_prefixes": ["10.0.0.0/16"],
///     },
///     location="eastus",
///     resource_group_name="rg1",
///     subnets=[{
///         "address_prefix": "10.0.0.0/24",
///         "name": "test-1",
///     }],
///     virtual_network_name="test-vnet")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualNetwork:
///     type: azure-native:network:VirtualNetwork
///     properties:
///       addressSpace:
///         addressPrefixes:
///           - 10.0.0.0/16
///       location: eastus
///       resourceGroupName: rg1
///       subnets:
///         - addressPrefix: 10.0.0.0/24
///           name: test-1
///       virtualNetworkName: test-vnet
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create virtual network with subnet containing address prefixes
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualNetwork = new AzureNative.Network.VirtualNetwork("virtualNetwork", new()
///     {
///         AddressSpace = new AzureNative.Network.Inputs.AddressSpaceArgs
///         {
///             AddressPrefixes = new[]
///             {
///                 "10.0.0.0/16",
///             },
///         },
///         Location = "eastus",
///         ResourceGroupName = "rg1",
///         Subnets = new[]
///         {
///             new AzureNative.Network.Inputs.SubnetArgs
///             {
///                 AddressPrefixes = new[]
///                 {
///                     "10.0.0.0/28",
///                     "10.0.1.0/28",
///                 },
///                 Name = "test-2",
///             },
///         },
///         VirtualNetworkName = "test-vnet",
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
/// 		_, err := network.NewVirtualNetwork(ctx, "virtualNetwork", &network.VirtualNetworkArgs{
/// 			AddressSpace: &network.AddressSpaceArgs{
/// 				AddressPrefixes: pulumi.StringArray{
/// 					pulumi.String("10.0.0.0/16"),
/// 				},
/// 			},
/// 			Location:          pulumi.String("eastus"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Subnets: network.SubnetTypeArray{
/// 				&network.SubnetTypeArgs{
/// 					AddressPrefixes: pulumi.StringArray{
/// 						pulumi.String("10.0.0.0/28"),
/// 						pulumi.String("10.0.1.0/28"),
/// 					},
/// 					Name: pulumi.String("test-2"),
/// 				},
/// 			},
/// 			VirtualNetworkName: pulumi.String("test-vnet"),
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
/// import com.pulumi.azurenative.network.VirtualNetwork;
/// import com.pulumi.azurenative.network.VirtualNetworkArgs;
/// import com.pulumi.azurenative.network.inputs.AddressSpaceArgs;
/// import com.pulumi.azurenative.network.inputs.SubnetArgs;
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
///         var virtualNetwork = new VirtualNetwork("virtualNetwork", VirtualNetworkArgs.builder()
///             .addressSpace(AddressSpaceArgs.builder()
///                 .addressPrefixes("10.0.0.0/16")
///                 .build())
///             .location("eastus")
///             .resourceGroupName("rg1")
///             .subnets(SubnetArgs.builder()
///                 .addressPrefixes(
///                     "10.0.0.0/28",
///                     "10.0.1.0/28")
///                 .name("test-2")
///                 .build())
///             .virtualNetworkName("test-vnet")
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
/// const virtualNetwork = new azure_native.network.VirtualNetwork("virtualNetwork", {
///     addressSpace: {
///         addressPrefixes: ["10.0.0.0/16"],
///     },
///     location: "eastus",
///     resourceGroupName: "rg1",
///     subnets: [{
///         addressPrefixes: [
///             "10.0.0.0/28",
///             "10.0.1.0/28",
///         ],
///         name: "test-2",
///     }],
///     virtualNetworkName: "test-vnet",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_network = azure_native.network.VirtualNetwork("virtualNetwork",
///     address_space={
///         "address_prefixes": ["10.0.0.0/16"],
///     },
///     location="eastus",
///     resource_group_name="rg1",
///     subnets=[{
///         "address_prefixes": [
///             "10.0.0.0/28",
///             "10.0.1.0/28",
///         ],
///         "name": "test-2",
///     }],
///     virtual_network_name="test-vnet")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualNetwork:
///     type: azure-native:network:VirtualNetwork
///     properties:
///       addressSpace:
///         addressPrefixes:
///           - 10.0.0.0/16
///       location: eastus
///       resourceGroupName: rg1
///       subnets:
///         - addressPrefixes:
///             - 10.0.0.0/28
///             - 10.0.1.0/28
///           name: test-2
///       virtualNetworkName: test-vnet
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
/// $ pulumi import azure-native:network:VirtualNetwork test-vnet /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}
/// ```
class VirtualNetworkNetwork extends pulumi.CustomResource {
  /// The AddressSpace that contains an array of IP address ranges that can be used by subnets.
  late final pulumi.Output<AddressSpaceResponse?> addressSpace;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Bgp Communities sent over ExpressRoute with each route corresponding to a prefix in this VNET.
  late final pulumi.Output<VirtualNetworkBgpCommunitiesResponse?> bgpCommunities;
  /// The DDoS protection plan associated with the virtual network.
  late final pulumi.Output<SubResourceResponse?> ddosProtectionPlan;
  /// The dhcpOptions that contains an array of DNS servers available to VMs deployed in the virtual network.
  late final pulumi.Output<DhcpOptionsResponse?> dhcpOptions;
  /// Indicates if DDoS protection is enabled for all the protected resources in the virtual network. It requires a DDoS protection plan associated with the resource.
  late final pulumi.Output<bool?> enableDdosProtection;
  /// Indicates if VM protection is enabled for all the subnets in the virtual network.
  late final pulumi.Output<bool?> enableVmProtection;
  /// Indicates if encryption is enabled on virtual network and if VM without encryption is allowed in encrypted VNet.
  late final pulumi.Output<VirtualNetworkEncryptionResponse?> encryption;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// The extended location of the virtual network.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;
  /// A collection of references to flow log resources.
  late final pulumi.Output<List<FlowLogResponse>> flowLogs;
  /// The FlowTimeout value (in minutes) for the Virtual Network
  late final pulumi.Output<int?> flowTimeoutInMinutes;
  /// Array of IpAllocation which reference this VNET.
  late final pulumi.Output<List<SubResourceResponse>?> ipAllocations;
  /// Resource location.
  late final pulumi.Output<String?> location;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Private Endpoint VNet Policies.
  late final pulumi.Output<String?> privateEndpointVNetPolicies;
  /// The provisioning state of the virtual network resource.
  late final pulumi.Output<String> provisioningState;
  /// The resourceGuid property of the Virtual Network resource.
  late final pulumi.Output<String> resourceGuid;
  /// A list of subnets in a Virtual Network.
  late final pulumi.Output<List<SubnetResponse>?> subnets;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type.
  late final pulumi.Output<String> type;
  /// A list of peerings in a Virtual Network.
  late final pulumi.Output<List<VirtualNetworkPeeringResponse>?> virtualNetworkPeerings;

  /// Creates a new [VirtualNetworkNetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualNetworkNetwork]. {@macro pulumi_network_virtual_network_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualNetworkNetwork(
    String name, {
    VirtualNetworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:VirtualNetwork',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.addressSpace = registerOutput<AddressSpaceResponse?>('addressSpace');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.bgpCommunities = registerOutput<VirtualNetworkBgpCommunitiesResponse?>('bgpCommunities');
    this.ddosProtectionPlan = registerOutput<SubResourceResponse?>('ddosProtectionPlan');
    this.dhcpOptions = registerOutput<DhcpOptionsResponse?>('dhcpOptions');
    this.enableDdosProtection = registerOutput<bool?>('enableDdosProtection');
    this.enableVmProtection = registerOutput<bool?>('enableVmProtection');
    this.encryption = registerOutput<VirtualNetworkEncryptionResponse?>('encryption');
    this.etag = registerOutput<String>('etag');
    this.extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation');
    this.flowLogs = registerOutput<List<FlowLogResponse>>('flowLogs');
    this.flowTimeoutInMinutes = registerOutput<int?>('flowTimeoutInMinutes');
    this.ipAllocations = registerOutput<List<SubResourceResponse>?>('ipAllocations');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.privateEndpointVNetPolicies = registerOutput<String?>('privateEndpointVNetPolicies');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.resourceGuid = registerOutput<String>('resourceGuid');
    this.subnets = registerOutput<List<SubnetResponse>?>('subnets');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
    this.virtualNetworkPeerings = registerOutput<List<VirtualNetworkPeeringResponse>?>('virtualNetworkPeerings');
  }
}
