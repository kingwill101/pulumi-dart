import 'package:pulumi/pulumi.dart' as pulumi;
import 'module_args.dart';
import 'module_management_network_profile.dart';
import 'module_network_profile.dart';
import 'module_state.dart';

/// Manages a Dedicated Hardware Security Module.
///
/// &gt; **Note:** Before using this resource, it's required to submit the request of registering the providers and features with Azure CLI `az provider register --namespace Microsoft.HardwareSecurityModules && az feature register --namespace Microsoft.HardwareSecurityModules --name AzureDedicatedHSM && az provider register --namespace Microsoft.Network && az feature register --namespace Microsoft.Network --name AllowBaremetalServers` and ask service team (hsmrequest@microsoft.com) to approve. See more details from &lt;https://docs.microsoft.com/azure/dedicated-hsm/tutorial-deploy-hsm-cli#prerequisites&gt;.
///
/// &gt; **Note:** If the quota is not enough in some region, please submit the quota request to service team.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "example-vnet",
///     addressSpaces: ["10.2.0.0/16"],
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "example-compute",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.2.0.0/24"],
/// });
/// const example2 = new azure.network.Subnet("example2", {
///     name: "example-hsmsubnet",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.2.1.0/24"],
///     delegations: [{
///         name: "first",
///         serviceDelegation: {
///             name: "Microsoft.HardwareSecurityModules/dedicatedHSMs",
///             actions: [
///                 "Microsoft.Network/networkinterfaces/*",
///                 "Microsoft.Network/virtualNetworks/subnets/join/action",
///             ],
///         },
///     }],
/// });
/// const example3 = new azure.network.Subnet("example3", {
///     name: "gatewaysubnet",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.2.255.0/26"],
/// });
/// const examplePublicIp = new azure.network.PublicIp("example", {
///     name: "example-pip",
///     location: example.location,
///     resourceGroupName: example.name,
///     allocationMethod: "Static",
/// });
/// const exampleVirtualNetworkGateway = new azure.network.VirtualNetworkGateway("example", {
///     name: "example-vnetgateway",
///     location: example.location,
///     resourceGroupName: example.name,
///     type: "ExpressRoute",
///     vpnType: "PolicyBased",
///     sku: "Standard",
///     ipConfigurations: [{
///         publicIpAddressId: examplePublicIp.id,
///         privateIpAddressAllocation: "Dynamic",
///         subnetId: example3.id,
///     }],
/// });
/// const exampleModule = new azure.hsm.Module("example", {
///     name: "example-hsm",
///     location: example.location,
///     resourceGroupName: example.name,
///     skuName: "payShield10K_LMK1_CPS60",
///     managementNetworkProfile: {
///         networkInterfacePrivateIpAddresses: ["10.2.1.7"],
///         subnetId: example2.id,
///     },
///     networkProfile: {
///         networkInterfacePrivateIpAddresses: ["10.2.1.8"],
///         subnetId: example2.id,
///     },
///     stampId: "stamp2",
///     tags: {
///         env: "Test",
///     },
/// }, {
///     dependsOn: [exampleVirtualNetworkGateway],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="example-vnet",
///     address_spaces=["10.2.0.0/16"],
///     location=example.location,
///     resource_group_name=example.name)
/// example_subnet = azure.network.Subnet("example",
///     name="example-compute",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.2.0.0/24"])
/// example2 = azure.network.Subnet("example2",
///     name="example-hsmsubnet",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.2.1.0/24"],
///     delegations=[{
///         "name": "first",
///         "service_delegation": {
///             "name": "Microsoft.HardwareSecurityModules/dedicatedHSMs",
///             "actions": [
///                 "Microsoft.Network/networkinterfaces/*",
///                 "Microsoft.Network/virtualNetworks/subnets/join/action",
///             ],
///         },
///     }])
/// example3 = azure.network.Subnet("example3",
///     name="gatewaysubnet",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.2.255.0/26"])
/// example_public_ip = azure.network.PublicIp("example",
///     name="example-pip",
///     location=example.location,
///     resource_group_name=example.name,
///     allocation_method="Static")
/// example_virtual_network_gateway = azure.network.VirtualNetworkGateway("example",
///     name="example-vnetgateway",
///     location=example.location,
///     resource_group_name=example.name,
///     type="ExpressRoute",
///     vpn_type="PolicyBased",
///     sku="Standard",
///     ip_configurations=[{
///         "public_ip_address_id": example_public_ip.id,
///         "private_ip_address_allocation": "Dynamic",
///         "subnet_id": example3.id,
///     }])
/// example_module = azure.hsm.Module("example",
///     name="example-hsm",
///     location=example.location,
///     resource_group_name=example.name,
///     sku_name="payShield10K_LMK1_CPS60",
///     management_network_profile={
///         "network_interface_private_ip_addresses": ["10.2.1.7"],
///         "subnet_id": example2.id,
///     },
///     network_profile={
///         "network_interface_private_ip_addresses": ["10.2.1.8"],
///         "subnet_id": example2.id,
///     },
///     stamp_id="stamp2",
///     tags={
///         "env": "Test",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[example_virtual_network_gateway]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "example-vnet",
///         AddressSpaces = new[]
///         {
///             "10.2.0.0/16",
///         },
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "example-compute",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.2.0.0/24",
///         },
///     });
///
///     var example2 = new Azure.Network.Subnet("example2", new()
///     {
///         Name = "example-hsmsubnet",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.2.1.0/24",
///         },
///         Delegations = new[]
///         {
///             new Azure.Network.Inputs.SubnetDelegationArgs
///             {
///                 Name = "first",
///                 ServiceDelegation = new Azure.Network.Inputs.SubnetDelegationServiceDelegationArgs
///                 {
///                     Name = "Microsoft.HardwareSecurityModules/dedicatedHSMs",
///                     Actions = new[]
///                     {
///                         "Microsoft.Network/networkinterfaces/*",
///                         "Microsoft.Network/virtualNetworks/subnets/join/action",
///                     },
///                 },
///             },
///         },
///     });
///
///     var example3 = new Azure.Network.Subnet("example3", new()
///     {
///         Name = "gatewaysubnet",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.2.255.0/26",
///         },
///     });
///
///     var examplePublicIp = new Azure.Network.PublicIp("example", new()
///     {
///         Name = "example-pip",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AllocationMethod = "Static",
///     });
///
///     var exampleVirtualNetworkGateway = new Azure.Network.VirtualNetworkGateway("example", new()
///     {
///         Name = "example-vnetgateway",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Type = "ExpressRoute",
///         VpnType = "PolicyBased",
///         Sku = "Standard",
///         IpConfigurations = new[]
///         {
///             new Azure.Network.Inputs.VirtualNetworkGatewayIpConfigurationArgs
///             {
///                 PublicIpAddressId = examplePublicIp.Id,
///                 PrivateIpAddressAllocation = "Dynamic",
///                 SubnetId = example3.Id,
///             },
///         },
///     });
///
///     var exampleModule = new Azure.Hsm.Module("example", new()
///     {
///         Name = "example-hsm",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SkuName = "payShield10K_LMK1_CPS60",
///         ManagementNetworkProfile = new Azure.Hsm.Inputs.ModuleManagementNetworkProfileArgs
///         {
///             NetworkInterfacePrivateIpAddresses = new[]
///             {
///                 "10.2.1.7",
///             },
///             SubnetId = example2.Id,
///         },
///         NetworkProfile = new Azure.Hsm.Inputs.ModuleNetworkProfileArgs
///         {
///             NetworkInterfacePrivateIpAddresses = new[]
///             {
///                 "10.2.1.8",
///             },
///             SubnetId = example2.Id,
///         },
///         StampId = "stamp2",
///         Tags =
///         {
///             { "env", "Test" },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleVirtualNetworkGateway,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/hsm"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name: pulumi.String("example-vnet"),
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.2.0.0/16"),
/// 			},
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("example-compute"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.2.0.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example2, err := network.NewSubnet(ctx, "example2", &network.SubnetArgs{
/// 			Name:               pulumi.String("example-hsmsubnet"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.2.1.0/24"),
/// 			},
/// 			Delegations: network.SubnetDelegationArray{
/// 				&network.SubnetDelegationArgs{
/// 					Name: pulumi.String("first"),
/// 					ServiceDelegation: &network.SubnetDelegationServiceDelegationArgs{
/// 						Name: pulumi.String("Microsoft.HardwareSecurityModules/dedicatedHSMs"),
/// 						Actions: pulumi.StringArray{
/// 							pulumi.String("Microsoft.Network/networkinterfaces/*"),
/// 							pulumi.String("Microsoft.Network/virtualNetworks/subnets/join/action"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example3, err := network.NewSubnet(ctx, "example3", &network.SubnetArgs{
/// 			Name:               pulumi.String("gatewaysubnet"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.2.255.0/26"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePublicIp, err := network.NewPublicIp(ctx, "example", &network.PublicIpArgs{
/// 			Name:              pulumi.String("example-pip"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AllocationMethod:  pulumi.String("Static"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetworkGateway, err := network.NewVirtualNetworkGateway(ctx, "example", &network.VirtualNetworkGatewayArgs{
/// 			Name:              pulumi.String("example-vnetgateway"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Type:              pulumi.String("ExpressRoute"),
/// 			VpnType:           pulumi.String("PolicyBased"),
/// 			Sku:               pulumi.String("Standard"),
/// 			IpConfigurations: network.VirtualNetworkGatewayIpConfigurationArray{
/// 				&network.VirtualNetworkGatewayIpConfigurationArgs{
/// 					PublicIpAddressId:          examplePublicIp.ID(),
/// 					PrivateIpAddressAllocation: pulumi.String("Dynamic"),
/// 					SubnetId:                   example3.ID(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hsm.NewModule(ctx, "example", &hsm.ModuleArgs{
/// 			Name:              pulumi.String("example-hsm"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("payShield10K_LMK1_CPS60"),
/// 			ManagementNetworkProfile: &hsm.ModuleManagementNetworkProfileArgs{
/// 				NetworkInterfacePrivateIpAddresses: pulumi.StringArray{
/// 					pulumi.String("10.2.1.7"),
/// 				},
/// 				SubnetId: example2.ID(),
/// 			},
/// 			NetworkProfile: &hsm.ModuleNetworkProfileArgs{
/// 				NetworkInterfacePrivateIpAddresses: pulumi.StringArray{
/// 					pulumi.String("10.2.1.8"),
/// 				},
/// 				SubnetId: example2.ID(),
/// 			},
/// 			StampId: pulumi.String("stamp2"),
/// 			Tags: pulumi.StringMap{
/// 				"env": pulumi.String("Test"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleVirtualNetworkGateway,
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
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_network_virtualnetwork" "example" {
///   name                = "example-vnet"
///   address_spaces      = ["10.2.0.0/16"]
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_network_subnet" "example" {
///   name                 = "example-compute"
///   resource_group_name  = azure_core_resourcegroup.example.name
///   virtual_network_name = azure_network_virtualnetwork.example.name
///   address_prefixes     = ["10.2.0.0/24"]
/// }
/// resource "azure_network_subnet" "example2" {
///   name                 = "example-hsmsubnet"
///   resource_group_name  = azure_core_resourcegroup.example.name
///   virtual_network_name = azure_network_virtualnetwork.example.name
///   address_prefixes     = ["10.2.1.0/24"]
///   delegations {
///     name = "first"
///     service_delegation = {
///       name    = "Microsoft.HardwareSecurityModules/dedicatedHSMs"
///       actions = ["Microsoft.Network/networkinterfaces/*", "Microsoft.Network/virtualNetworks/subnets/join/action"]
///     }
///   }
/// }
/// resource "azure_network_subnet" "example3" {
///   name                 = "gatewaysubnet"
///   resource_group_name  = azure_core_resourcegroup.example.name
///   virtual_network_name = azure_network_virtualnetwork.example.name
///   address_prefixes     = ["10.2.255.0/26"]
/// }
/// resource "azure_network_publicip" "example" {
///   name                = "example-pip"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   allocation_method   = "Static"
/// }
/// resource "azure_network_virtualnetworkgateway" "example" {
///   name                = "example-vnetgateway"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   type                = "ExpressRoute"
///   vpn_type            = "PolicyBased"
///   sku                 = "Standard"
///   ip_configurations {
///     public_ip_address_id          = azure_network_publicip.example.id
///     private_ip_address_allocation = "Dynamic"
///     subnet_id                     = azure_network_subnet.example3.id
///   }
/// }
/// resource "azure_hsm_module" "example" {
///   depends_on          = [azure_network_virtualnetworkgateway.example]
///   name                = "example-hsm"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku_name            = "payShield10K_LMK1_CPS60"
///   management_network_profile = {
///     network_interface_private_ip_addresses = ["10.2.1.7"]
///     subnet_id                              = azure_network_subnet.example2.id
///   }
///   network_profile = {
///     network_interface_private_ip_addresses = ["10.2.1.8"]
///     subnet_id                              = azure_network_subnet.example2.id
///   }
///   stamp_id = "stamp2"
///   tags = {
///     "env" = "Test"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationServiceDelegationArgs;
/// import com.pulumi.azure.network.PublicIp;
/// import com.pulumi.azure.network.PublicIpArgs;
/// import com.pulumi.azure.network.VirtualNetworkGateway;
/// import com.pulumi.azure.network.VirtualNetworkGatewayArgs;
/// import com.pulumi.azure.network.inputs.VirtualNetworkGatewayIpConfigurationArgs;
/// import com.pulumi.azure.hsm.Module;
/// import com.pulumi.azure.hsm.ModuleArgs;
/// import com.pulumi.azure.hsm.inputs.ModuleManagementNetworkProfileArgs;
/// import com.pulumi.azure.hsm.inputs.ModuleNetworkProfileArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("example-vnet")
///             .addressSpaces("10.2.0.0/16")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("example-compute")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.2.0.0/24")
///             .build());
///
///         var example2 = new Subnet("example2", SubnetArgs.builder()
///             .name("example-hsmsubnet")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.2.1.0/24")
///             .delegations(SubnetDelegationArgs.builder()
///                 .name("first")
///                 .serviceDelegation(SubnetDelegationServiceDelegationArgs.builder()
///                     .name("Microsoft.HardwareSecurityModules/dedicatedHSMs")
///                     .actions(
///                         "Microsoft.Network/networkinterfaces/*",
///                         "Microsoft.Network/virtualNetworks/subnets/join/action")
///                     .build())
///                 .build())
///             .build());
///
///         var example3 = new Subnet("example3", SubnetArgs.builder()
///             .name("gatewaysubnet")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.2.255.0/26")
///             .build());
///
///         var examplePublicIp = new PublicIp("examplePublicIp", PublicIpArgs.builder()
///             .name("example-pip")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .allocationMethod("Static")
///             .build());
///
///         var exampleVirtualNetworkGateway = new VirtualNetworkGateway("exampleVirtualNetworkGateway", VirtualNetworkGatewayArgs.builder()
///             .name("example-vnetgateway")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .type("ExpressRoute")
///             .vpnType("PolicyBased")
///             .sku("Standard")
///             .ipConfigurations(VirtualNetworkGatewayIpConfigurationArgs.builder()
///                 .publicIpAddressId(examplePublicIp.id())
///                 .privateIpAddressAllocation("Dynamic")
///                 .subnetId(example3.id())
///                 .build())
///             .build());
///
///         var exampleModule = new Module("exampleModule", ModuleArgs.builder()
///             .name("example-hsm")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .skuName("payShield10K_LMK1_CPS60")
///             .managementNetworkProfile(ModuleManagementNetworkProfileArgs.builder()
///                 .networkInterfacePrivateIpAddresses("10.2.1.7")
///                 .subnetId(example2.id())
///                 .build())
///             .networkProfile(ModuleNetworkProfileArgs.builder()
///                 .networkInterfacePrivateIpAddresses("10.2.1.8")
///                 .subnetId(example2.id())
///                 .build())
///             .stampId("stamp2")
///             .tags(Map.of("env", "Test"))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleVirtualNetworkGateway)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: example-vnet
///       addressSpaces:
///         - 10.2.0.0/16
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: example-compute
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.2.0.0/24
///   example2:
///     type: azure:network:Subnet
///     properties:
///       name: example-hsmsubnet
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.2.1.0/24
///       delegations:
///         - name: first
///           serviceDelegation:
///             name: Microsoft.HardwareSecurityModules/dedicatedHSMs
///             actions:
///               - Microsoft.Network/networkinterfaces/*
///               - Microsoft.Network/virtualNetworks/subnets/join/action
///   example3:
///     type: azure:network:Subnet
///     properties:
///       name: gatewaysubnet
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.2.255.0/26
///   examplePublicIp:
///     type: azure:network:PublicIp
///     name: example
///     properties:
///       name: example-pip
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       allocationMethod: Static
///   exampleVirtualNetworkGateway:
///     type: azure:network:VirtualNetworkGateway
///     name: example
///     properties:
///       name: example-vnetgateway
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       type: ExpressRoute
///       vpnType: PolicyBased
///       sku: Standard
///       ipConfigurations:
///         - publicIpAddressId: ${examplePublicIp.id}
///           privateIpAddressAllocation: Dynamic
///           subnetId: ${example3.id}
///   exampleModule:
///     type: azure:hsm:Module
///     name: example
///     properties:
///       name: example-hsm
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       skuName: payShield10K_LMK1_CPS60
///       managementNetworkProfile:
///         networkInterfacePrivateIpAddresses:
///           - 10.2.1.7
///         subnetId: ${example2.id}
///       networkProfile:
///         networkInterfacePrivateIpAddresses:
///           - 10.2.1.8
///         subnetId: ${example2.id}
///       stampId: stamp2
///       tags:
///         env: Test
///     options:
///       dependsOn:
///         - ${exampleVirtualNetworkGateway}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.HardwareSecurityModules` - 2021-11-30
///
/// ## Import
///
/// Dedicated Hardware Security Module can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:hsm/module:Module example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.HardwareSecurityModules/dedicatedHSMs/hsm1
/// ```
class Module extends pulumi.CustomResource {
  /// The Azure Region where the Dedicated Hardware Security Module should exist. Changing this forces a new Dedicated Hardware Security Module to be created.
  late final pulumi.Output<String> location;
  /// A `managementNetworkProfile` block as defined below.
  ///
  /// &gt; **Note:** The `managementNetworkProfile` should not be specified when `skuName` is `SafeNet Luna Network HSM A790`.
  late final pulumi.Output<ModuleManagementNetworkProfile?> managementNetworkProfile;
  /// The name which should be used for this Dedicated Hardware Security Module. Changing this forces a new Dedicated Hardware Security Module to be created.
  late final pulumi.Output<String> name;
  /// A `networkProfile` block as defined below.
  late final pulumi.Output<ModuleNetworkProfile> networkProfile;
  /// The name of the Resource Group where the Dedicated Hardware Security Module should exist. Changing this forces a new Dedicated Hardware Security Module to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The SKU name of the dedicated hardware security module. Possible values are `payShield10K_LMK1_CPS60`,`payShield10K_LMK1_CPS250`,`payShield10K_LMK1_CPS2500`,`payShield10K_LMK2_CPS60`,`payShield10K_LMK2_CPS250`,`payShield10K_LMK2_CPS2500` and `SafeNet Luna Network HSM A790`. Changing this forces a new Dedicated Hardware Security Module to be created.
  late final pulumi.Output<String> skuName;
  /// The ID of the stamp. Possible values are `stamp1` or `stamp2`. Changing this forces a new Dedicated Hardware Security Module to be created.
  late final pulumi.Output<String?> stampId;
  /// A mapping of tags which should be assigned to the Dedicated Hardware Security Module.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Specifies a list of Availability Zones in which this Dedicated Hardware Security Module should be located. Changing this forces a new Dedicated Hardware Security Module to be created.
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [Module].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Module]. {@macro pulumi_hsm_module_module_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Module(
    String name, {
    ModuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:hsm/module:Module',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    location = registerOutput<String>('location');
    managementNetworkProfile = registerOutput<ModuleManagementNetworkProfile?>('managementNetworkProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ModuleManagementNetworkProfile.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    networkProfile = registerOutput<ModuleNetworkProfile>('networkProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ModuleNetworkProfile.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    skuName = registerOutput<String>('skuName');
    stampId = registerOutput<String?>('stampId');
    tags = registerOutput<Map<String, String>?>('tags');
    zones = registerOutput<List<String>?>('zones');
  }

  /// Gets an existing [Module] resource's state with the given [name] and [id].
  static Module get(
    String name,
    pulumi.Input<String> id, {
    ModuleState? state,
  }) {
    return Module._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Module._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:hsm/module:Module',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    location = registerOutput<String>('location');
    managementNetworkProfile = registerOutput<ModuleManagementNetworkProfile?>('managementNetworkProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ModuleManagementNetworkProfile.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    networkProfile = registerOutput<ModuleNetworkProfile>('networkProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ModuleNetworkProfile.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    skuName = registerOutput<String>('skuName');
    stampId = registerOutput<String?>('stampId');
    tags = registerOutput<Map<String, String>?>('tags');
    zones = registerOutput<List<String>?>('zones');
  }
}
