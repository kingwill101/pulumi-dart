import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_gateway_connection_args.dart';
import 'virtual_network_gateway_connection_custom_bgp_addresses.dart';
import 'virtual_network_gateway_connection_ipsec_policy.dart';
import 'virtual_network_gateway_connection_state.dart';
import 'virtual_network_gateway_connection_traffic_selector_policy.dart';

/// Manages a connection in an existing Virtual Network Gateway.
///
/// ## Example Usage
///
/// ### Site-to-Site connection
///
/// The following example shows a connection between an Azure virtual network
/// and an on-premises VPN device and network.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "test",
///     location: "West US",
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "test",
///     location: example.location,
///     resourceGroupName: example.name,
///     addressSpaces: ["10.0.0.0/16"],
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "GatewaySubnet",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.1.0/24"],
/// });
/// const onpremise = new azure.network.LocalNetworkGateway("onpremise", {
///     name: "onpremise",
///     location: example.location,
///     resourceGroupName: example.name,
///     gatewayAddress: "168.62.225.23",
///     addressSpaces: ["10.1.1.0/24"],
/// });
/// const examplePublicIp = new azure.network.PublicIp("example", {
///     name: "test",
///     location: example.location,
///     resourceGroupName: example.name,
///     allocationMethod: "Dynamic",
/// });
/// const exampleVirtualNetworkGateway = new azure.network.VirtualNetworkGateway("example", {
///     name: "test",
///     location: example.location,
///     resourceGroupName: example.name,
///     type: "Vpn",
///     vpnType: "RouteBased",
///     activeActive: false,
///     bgpEnabled: false,
///     sku: "Basic",
///     ipConfigurations: [{
///         publicIpAddressId: examplePublicIp.id,
///         privateIpAddressAllocation: "Dynamic",
///         subnetId: exampleSubnet.id,
///     }],
/// });
/// const onpremiseVirtualNetworkGatewayConnection = new azure.network.VirtualNetworkGatewayConnection("onpremise", {
///     name: "onpremise",
///     location: example.location,
///     resourceGroupName: example.name,
///     type: "IPsec",
///     virtualNetworkGatewayId: exampleVirtualNetworkGateway.id,
///     localNetworkGatewayId: onpremise.id,
///     sharedKey: "4-v3ry-53cr37-1p53c-5h4r3d-k3y",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="test",
///     location="West US")
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="test",
///     location=example.location,
///     resource_group_name=example.name,
///     address_spaces=["10.0.0.0/16"])
/// example_subnet = azure.network.Subnet("example",
///     name="GatewaySubnet",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.1.0/24"])
/// onpremise = azure.network.LocalNetworkGateway("onpremise",
///     name="onpremise",
///     location=example.location,
///     resource_group_name=example.name,
///     gateway_address="168.62.225.23",
///     address_spaces=["10.1.1.0/24"])
/// example_public_ip = azure.network.PublicIp("example",
///     name="test",
///     location=example.location,
///     resource_group_name=example.name,
///     allocation_method="Dynamic")
/// example_virtual_network_gateway = azure.network.VirtualNetworkGateway("example",
///     name="test",
///     location=example.location,
///     resource_group_name=example.name,
///     type="Vpn",
///     vpn_type="RouteBased",
///     active_active=False,
///     bgp_enabled=False,
///     sku="Basic",
///     ip_configurations=[{
///         "public_ip_address_id": example_public_ip.id,
///         "private_ip_address_allocation": "Dynamic",
///         "subnet_id": example_subnet.id,
///     }])
/// onpremise_virtual_network_gateway_connection = azure.network.VirtualNetworkGatewayConnection("onpremise",
///     name="onpremise",
///     location=example.location,
///     resource_group_name=example.name,
///     type="IPsec",
///     virtual_network_gateway_id=example_virtual_network_gateway.id,
///     local_network_gateway_id=onpremise.id,
///     shared_key="4-v3ry-53cr37-1p53c-5h4r3d-k3y")
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
///         Name = "test",
///         Location = "West US",
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "test",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "GatewaySubnet",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.1.0/24",
///         },
///     });
///
///     var onpremise = new Azure.Network.LocalNetworkGateway("onpremise", new()
///     {
///         Name = "onpremise",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         GatewayAddress = "168.62.225.23",
///         AddressSpaces = new[]
///         {
///             "10.1.1.0/24",
///         },
///     });
///
///     var examplePublicIp = new Azure.Network.PublicIp("example", new()
///     {
///         Name = "test",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AllocationMethod = "Dynamic",
///     });
///
///     var exampleVirtualNetworkGateway = new Azure.Network.VirtualNetworkGateway("example", new()
///     {
///         Name = "test",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Type = "Vpn",
///         VpnType = "RouteBased",
///         ActiveActive = false,
///         BgpEnabled = false,
///         Sku = "Basic",
///         IpConfigurations = new[]
///         {
///             new Azure.Network.Inputs.VirtualNetworkGatewayIpConfigurationArgs
///             {
///                 PublicIpAddressId = examplePublicIp.Id,
///                 PrivateIpAddressAllocation = "Dynamic",
///                 SubnetId = exampleSubnet.Id,
///             },
///         },
///     });
///
///     var onpremiseVirtualNetworkGatewayConnection = new Azure.Network.VirtualNetworkGatewayConnection("onpremise", new()
///     {
///         Name = "onpremise",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Type = "IPsec",
///         VirtualNetworkGatewayId = exampleVirtualNetworkGateway.Id,
///         LocalNetworkGatewayId = onpremise.Id,
///         SharedKey = "4-v3ry-53cr37-1p53c-5h4r3d-k3y",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("test"),
/// 			Location: pulumi.String("West US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name:              pulumi.String("test"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("GatewaySubnet"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.1.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		onpremise, err := network.NewLocalNetworkGateway(ctx, "onpremise", &network.LocalNetworkGatewayArgs{
/// 			Name:              pulumi.String("onpremise"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			GatewayAddress:    pulumi.String("168.62.225.23"),
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.1.1.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePublicIp, err := network.NewPublicIp(ctx, "example", &network.PublicIpArgs{
/// 			Name:              pulumi.String("test"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AllocationMethod:  pulumi.String("Dynamic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetworkGateway, err := network.NewVirtualNetworkGateway(ctx, "example", &network.VirtualNetworkGatewayArgs{
/// 			Name:              pulumi.String("test"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Type:              pulumi.String("Vpn"),
/// 			VpnType:           pulumi.String("RouteBased"),
/// 			ActiveActive:      pulumi.Bool(false),
/// 			BgpEnabled:        pulumi.Bool(false),
/// 			Sku:               pulumi.String("Basic"),
/// 			IpConfigurations: network.VirtualNetworkGatewayIpConfigurationArray{
/// 				&network.VirtualNetworkGatewayIpConfigurationArgs{
/// 					PublicIpAddressId:          examplePublicIp.ID().ToIDOutput().ToStringOutput(),
/// 					PrivateIpAddressAllocation: pulumi.String("Dynamic"),
/// 					SubnetId:                   exampleSubnet.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewVirtualNetworkGatewayConnection(ctx, "onpremise", &network.VirtualNetworkGatewayConnectionArgs{
/// 			Name:                    pulumi.String("onpremise"),
/// 			Location:                example.Location,
/// 			ResourceGroupName:       example.Name,
/// 			Type:                    pulumi.String("IPsec"),
/// 			VirtualNetworkGatewayId: exampleVirtualNetworkGateway.ID().ToIDOutput().ToStringOutput(),
/// 			LocalNetworkGatewayId:   onpremise.ID().ToIDOutput().ToStringOutput(),
/// 			SharedKey:               pulumi.String("4-v3ry-53cr37-1p53c-5h4r3d-k3y"),
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
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "test"
///   location = "West US"
/// }
/// resource "azure_network_virtualnetwork" "example" {
///   name                = "test"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   address_spaces      = ["10.0.0.0/16"]
/// }
/// resource "azure_network_subnet" "example" {
///   name                 = "GatewaySubnet"
///   resource_group_name  = azure_core_resourcegroup.example.name
///   virtual_network_name = azure_network_virtualnetwork.example.name
///   address_prefixes     = ["10.0.1.0/24"]
/// }
/// resource "azure_network_localnetworkgateway" "onpremise" {
///   name                = "onpremise"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   gateway_address     = "168.62.225.23"
///   address_spaces      = ["10.1.1.0/24"]
/// }
/// resource "azure_network_publicip" "example" {
///   name                = "test"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   allocation_method   = "Dynamic"
/// }
/// resource "azure_network_virtualnetworkgateway" "example" {
///   name                = "test"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   type                = "Vpn"
///   vpn_type            = "RouteBased"
///   active_active       = false
///   bgp_enabled         = false
///   sku                 = "Basic"
///   ip_configurations {
///     public_ip_address_id          = azure_network_publicip.example.id
///     private_ip_address_allocation = "Dynamic"
///     subnet_id                     = azure_network_subnet.example.id
///   }
/// }
/// resource "azure_network_virtualnetworkgatewayconnection" "onpremise" {
///   name                       = "onpremise"
///   location                   = azure_core_resourcegroup.example.location
///   resource_group_name        = azure_core_resourcegroup.example.name
///   type                       = "IPsec"
///   virtual_network_gateway_id = azure_network_virtualnetworkgateway.example.id
///   local_network_gateway_id   = azure_network_localnetworkgateway.onpremise.id
///   shared_key                 = "4-v3ry-53cr37-1p53c-5h4r3d-k3y"
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
/// import com.pulumi.azure.network.LocalNetworkGateway;
/// import com.pulumi.azure.network.LocalNetworkGatewayArgs;
/// import com.pulumi.azure.network.PublicIp;
/// import com.pulumi.azure.network.PublicIpArgs;
/// import com.pulumi.azure.network.VirtualNetworkGateway;
/// import com.pulumi.azure.network.VirtualNetworkGatewayArgs;
/// import com.pulumi.azure.network.inputs.VirtualNetworkGatewayIpConfigurationArgs;
/// import com.pulumi.azure.network.VirtualNetworkGatewayConnection;
/// import com.pulumi.azure.network.VirtualNetworkGatewayConnectionArgs;
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
///             .name("test")
///             .location("West US")
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("test")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .addressSpaces("10.0.0.0/16")
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("GatewaySubnet")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.1.0/24")
///             .build());
///
///         var onpremise = new LocalNetworkGateway("onpremise", LocalNetworkGatewayArgs.builder()
///             .name("onpremise")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .gatewayAddress("168.62.225.23")
///             .addressSpaces("10.1.1.0/24")
///             .build());
///
///         var examplePublicIp = new PublicIp("examplePublicIp", PublicIpArgs.builder()
///             .name("test")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .allocationMethod("Dynamic")
///             .build());
///
///         var exampleVirtualNetworkGateway = new VirtualNetworkGateway("exampleVirtualNetworkGateway", VirtualNetworkGatewayArgs.builder()
///             .name("test")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .type("Vpn")
///             .vpnType("RouteBased")
///             .activeActive(false)
///             .bgpEnabled(false)
///             .sku("Basic")
///             .ipConfigurations(VirtualNetworkGatewayIpConfigurationArgs.builder()
///                 .publicIpAddressId(examplePublicIp.id())
///                 .privateIpAddressAllocation("Dynamic")
///                 .subnetId(exampleSubnet.id())
///                 .build())
///             .build());
///
///         var onpremiseVirtualNetworkGatewayConnection = new VirtualNetworkGatewayConnection("onpremiseVirtualNetworkGatewayConnection", VirtualNetworkGatewayConnectionArgs.builder()
///             .name("onpremise")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .type("IPsec")
///             .virtualNetworkGatewayId(exampleVirtualNetworkGateway.id())
///             .localNetworkGatewayId(onpremise.id())
///             .sharedKey("4-v3ry-53cr37-1p53c-5h4r3d-k3y")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: test
///       location: West US
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: test
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       addressSpaces:
///         - 10.0.0.0/16
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: GatewaySubnet
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.1.0/24
///   onpremise:
///     type: azure:network:LocalNetworkGateway
///     properties:
///       name: onpremise
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       gatewayAddress: 168.62.225.23
///       addressSpaces:
///         - 10.1.1.0/24
///   examplePublicIp:
///     type: azure:network:PublicIp
///     name: example
///     properties:
///       name: test
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       allocationMethod: Dynamic
///   exampleVirtualNetworkGateway:
///     type: azure:network:VirtualNetworkGateway
///     name: example
///     properties:
///       name: test
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       type: Vpn
///       vpnType: RouteBased
///       activeActive: false
///       bgpEnabled: false
///       sku: Basic
///       ipConfigurations:
///         - publicIpAddressId: ${examplePublicIp.id}
///           privateIpAddressAllocation: Dynamic
///           subnetId: ${exampleSubnet.id}
///   onpremiseVirtualNetworkGatewayConnection:
///     type: azure:network:VirtualNetworkGatewayConnection
///     name: onpremise
///     properties:
///       name: onpremise
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       type: IPsec
///       virtualNetworkGatewayId: ${exampleVirtualNetworkGateway.id}
///       localNetworkGatewayId: ${onpremise.id}
///       sharedKey: 4-v3ry-53cr37-1p53c-5h4r3d-k3y
/// ```
///
///
/// ### VNet-to-VNet connection
///
/// The following example shows a connection between two Azure virtual network
/// in different locations/regions.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const us = new azure.core.ResourceGroup("us", {
///     name: "us",
///     location: "East US",
/// });
/// const usVirtualNetwork = new azure.network.VirtualNetwork("us", {
///     name: "us",
///     location: us.location,
///     resourceGroupName: us.name,
///     addressSpaces: ["10.0.0.0/16"],
/// });
/// const usGateway = new azure.network.Subnet("us_gateway", {
///     name: "GatewaySubnet",
///     resourceGroupName: us.name,
///     virtualNetworkName: usVirtualNetwork.name,
///     addressPrefixes: ["10.0.1.0/24"],
/// });
/// const usPublicIp = new azure.network.PublicIp("us", {
///     name: "us",
///     location: us.location,
///     resourceGroupName: us.name,
///     allocationMethod: "Dynamic",
/// });
/// const usVirtualNetworkGateway = new azure.network.VirtualNetworkGateway("us", {
///     name: "us-gateway",
///     location: us.location,
///     resourceGroupName: us.name,
///     type: "Vpn",
///     vpnType: "RouteBased",
///     sku: "Basic",
///     ipConfigurations: [{
///         publicIpAddressId: usPublicIp.id,
///         privateIpAddressAllocation: "Dynamic",
///         subnetId: usGateway.id,
///     }],
/// });
/// const europe = new azure.core.ResourceGroup("europe", {
///     name: "europe",
///     location: "West Europe",
/// });
/// const europeVirtualNetwork = new azure.network.VirtualNetwork("europe", {
///     name: "europe",
///     location: europe.location,
///     resourceGroupName: europe.name,
///     addressSpaces: ["10.1.0.0/16"],
/// });
/// const europeGateway = new azure.network.Subnet("europe_gateway", {
///     name: "GatewaySubnet",
///     resourceGroupName: europe.name,
///     virtualNetworkName: europeVirtualNetwork.name,
///     addressPrefixes: ["10.1.1.0/24"],
/// });
/// const europePublicIp = new azure.network.PublicIp("europe", {
///     name: "europe",
///     location: europe.location,
///     resourceGroupName: europe.name,
///     allocationMethod: "Dynamic",
/// });
/// const europeVirtualNetworkGateway = new azure.network.VirtualNetworkGateway("europe", {
///     name: "europe-gateway",
///     location: europe.location,
///     resourceGroupName: europe.name,
///     type: "Vpn",
///     vpnType: "RouteBased",
///     sku: "Basic",
///     ipConfigurations: [{
///         publicIpAddressId: europePublicIp.id,
///         privateIpAddressAllocation: "Dynamic",
///         subnetId: europeGateway.id,
///     }],
/// });
/// const usToEurope = new azure.network.VirtualNetworkGatewayConnection("us_to_europe", {
///     name: "us-to-europe",
///     location: us.location,
///     resourceGroupName: us.name,
///     type: "Vnet2Vnet",
///     virtualNetworkGatewayId: usVirtualNetworkGateway.id,
///     peerVirtualNetworkGatewayId: europeVirtualNetworkGateway.id,
///     sharedKey: "4-v3ry-53cr37-1p53c-5h4r3d-k3y",
/// });
/// const europeToUs = new azure.network.VirtualNetworkGatewayConnection("europe_to_us", {
///     name: "europe-to-us",
///     location: europe.location,
///     resourceGroupName: europe.name,
///     type: "Vnet2Vnet",
///     virtualNetworkGatewayId: europeVirtualNetworkGateway.id,
///     peerVirtualNetworkGatewayId: usVirtualNetworkGateway.id,
///     sharedKey: "4-v3ry-53cr37-1p53c-5h4r3d-k3y",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// us = azure.core.ResourceGroup("us",
///     name="us",
///     location="East US")
/// us_virtual_network = azure.network.VirtualNetwork("us",
///     name="us",
///     location=us.location,
///     resource_group_name=us.name,
///     address_spaces=["10.0.0.0/16"])
/// us_gateway = azure.network.Subnet("us_gateway",
///     name="GatewaySubnet",
///     resource_group_name=us.name,
///     virtual_network_name=us_virtual_network.name,
///     address_prefixes=["10.0.1.0/24"])
/// us_public_ip = azure.network.PublicIp("us",
///     name="us",
///     location=us.location,
///     resource_group_name=us.name,
///     allocation_method="Dynamic")
/// us_virtual_network_gateway = azure.network.VirtualNetworkGateway("us",
///     name="us-gateway",
///     location=us.location,
///     resource_group_name=us.name,
///     type="Vpn",
///     vpn_type="RouteBased",
///     sku="Basic",
///     ip_configurations=[{
///         "public_ip_address_id": us_public_ip.id,
///         "private_ip_address_allocation": "Dynamic",
///         "subnet_id": us_gateway.id,
///     }])
/// europe = azure.core.ResourceGroup("europe",
///     name="europe",
///     location="West Europe")
/// europe_virtual_network = azure.network.VirtualNetwork("europe",
///     name="europe",
///     location=europe.location,
///     resource_group_name=europe.name,
///     address_spaces=["10.1.0.0/16"])
/// europe_gateway = azure.network.Subnet("europe_gateway",
///     name="GatewaySubnet",
///     resource_group_name=europe.name,
///     virtual_network_name=europe_virtual_network.name,
///     address_prefixes=["10.1.1.0/24"])
/// europe_public_ip = azure.network.PublicIp("europe",
///     name="europe",
///     location=europe.location,
///     resource_group_name=europe.name,
///     allocation_method="Dynamic")
/// europe_virtual_network_gateway = azure.network.VirtualNetworkGateway("europe",
///     name="europe-gateway",
///     location=europe.location,
///     resource_group_name=europe.name,
///     type="Vpn",
///     vpn_type="RouteBased",
///     sku="Basic",
///     ip_configurations=[{
///         "public_ip_address_id": europe_public_ip.id,
///         "private_ip_address_allocation": "Dynamic",
///         "subnet_id": europe_gateway.id,
///     }])
/// us_to_europe = azure.network.VirtualNetworkGatewayConnection("us_to_europe",
///     name="us-to-europe",
///     location=us.location,
///     resource_group_name=us.name,
///     type="Vnet2Vnet",
///     virtual_network_gateway_id=us_virtual_network_gateway.id,
///     peer_virtual_network_gateway_id=europe_virtual_network_gateway.id,
///     shared_key="4-v3ry-53cr37-1p53c-5h4r3d-k3y")
/// europe_to_us = azure.network.VirtualNetworkGatewayConnection("europe_to_us",
///     name="europe-to-us",
///     location=europe.location,
///     resource_group_name=europe.name,
///     type="Vnet2Vnet",
///     virtual_network_gateway_id=europe_virtual_network_gateway.id,
///     peer_virtual_network_gateway_id=us_virtual_network_gateway.id,
///     shared_key="4-v3ry-53cr37-1p53c-5h4r3d-k3y")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var us = new Azure.Core.ResourceGroup("us", new()
///     {
///         Name = "us",
///         Location = "East US",
///     });
///
///     var usVirtualNetwork = new Azure.Network.VirtualNetwork("us", new()
///     {
///         Name = "us",
///         Location = us.Location,
///         ResourceGroupName = us.Name,
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///     });
///
///     var usGateway = new Azure.Network.Subnet("us_gateway", new()
///     {
///         Name = "GatewaySubnet",
///         ResourceGroupName = us.Name,
///         VirtualNetworkName = usVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.1.0/24",
///         },
///     });
///
///     var usPublicIp = new Azure.Network.PublicIp("us", new()
///     {
///         Name = "us",
///         Location = us.Location,
///         ResourceGroupName = us.Name,
///         AllocationMethod = "Dynamic",
///     });
///
///     var usVirtualNetworkGateway = new Azure.Network.VirtualNetworkGateway("us", new()
///     {
///         Name = "us-gateway",
///         Location = us.Location,
///         ResourceGroupName = us.Name,
///         Type = "Vpn",
///         VpnType = "RouteBased",
///         Sku = "Basic",
///         IpConfigurations = new[]
///         {
///             new Azure.Network.Inputs.VirtualNetworkGatewayIpConfigurationArgs
///             {
///                 PublicIpAddressId = usPublicIp.Id,
///                 PrivateIpAddressAllocation = "Dynamic",
///                 SubnetId = usGateway.Id,
///             },
///         },
///     });
///
///     var europe = new Azure.Core.ResourceGroup("europe", new()
///     {
///         Name = "europe",
///         Location = "West Europe",
///     });
///
///     var europeVirtualNetwork = new Azure.Network.VirtualNetwork("europe", new()
///     {
///         Name = "europe",
///         Location = europe.Location,
///         ResourceGroupName = europe.Name,
///         AddressSpaces = new[]
///         {
///             "10.1.0.0/16",
///         },
///     });
///
///     var europeGateway = new Azure.Network.Subnet("europe_gateway", new()
///     {
///         Name = "GatewaySubnet",
///         ResourceGroupName = europe.Name,
///         VirtualNetworkName = europeVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.1.1.0/24",
///         },
///     });
///
///     var europePublicIp = new Azure.Network.PublicIp("europe", new()
///     {
///         Name = "europe",
///         Location = europe.Location,
///         ResourceGroupName = europe.Name,
///         AllocationMethod = "Dynamic",
///     });
///
///     var europeVirtualNetworkGateway = new Azure.Network.VirtualNetworkGateway("europe", new()
///     {
///         Name = "europe-gateway",
///         Location = europe.Location,
///         ResourceGroupName = europe.Name,
///         Type = "Vpn",
///         VpnType = "RouteBased",
///         Sku = "Basic",
///         IpConfigurations = new[]
///         {
///             new Azure.Network.Inputs.VirtualNetworkGatewayIpConfigurationArgs
///             {
///                 PublicIpAddressId = europePublicIp.Id,
///                 PrivateIpAddressAllocation = "Dynamic",
///                 SubnetId = europeGateway.Id,
///             },
///         },
///     });
///
///     var usToEurope = new Azure.Network.VirtualNetworkGatewayConnection("us_to_europe", new()
///     {
///         Name = "us-to-europe",
///         Location = us.Location,
///         ResourceGroupName = us.Name,
///         Type = "Vnet2Vnet",
///         VirtualNetworkGatewayId = usVirtualNetworkGateway.Id,
///         PeerVirtualNetworkGatewayId = europeVirtualNetworkGateway.Id,
///         SharedKey = "4-v3ry-53cr37-1p53c-5h4r3d-k3y",
///     });
///
///     var europeToUs = new Azure.Network.VirtualNetworkGatewayConnection("europe_to_us", new()
///     {
///         Name = "europe-to-us",
///         Location = europe.Location,
///         ResourceGroupName = europe.Name,
///         Type = "Vnet2Vnet",
///         VirtualNetworkGatewayId = europeVirtualNetworkGateway.Id,
///         PeerVirtualNetworkGatewayId = usVirtualNetworkGateway.Id,
///         SharedKey = "4-v3ry-53cr37-1p53c-5h4r3d-k3y",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		us, err := core.NewResourceGroup(ctx, "us", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("us"),
/// 			Location: pulumi.String("East US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		usVirtualNetwork, err := network.NewVirtualNetwork(ctx, "us", &network.VirtualNetworkArgs{
/// 			Name:              pulumi.String("us"),
/// 			Location:          us.Location,
/// 			ResourceGroupName: us.Name,
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		usGateway, err := network.NewSubnet(ctx, "us_gateway", &network.SubnetArgs{
/// 			Name:               pulumi.String("GatewaySubnet"),
/// 			ResourceGroupName:  us.Name,
/// 			VirtualNetworkName: usVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.1.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		usPublicIp, err := network.NewPublicIp(ctx, "us", &network.PublicIpArgs{
/// 			Name:              pulumi.String("us"),
/// 			Location:          us.Location,
/// 			ResourceGroupName: us.Name,
/// 			AllocationMethod:  pulumi.String("Dynamic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		usVirtualNetworkGateway, err := network.NewVirtualNetworkGateway(ctx, "us", &network.VirtualNetworkGatewayArgs{
/// 			Name:              pulumi.String("us-gateway"),
/// 			Location:          us.Location,
/// 			ResourceGroupName: us.Name,
/// 			Type:              pulumi.String("Vpn"),
/// 			VpnType:           pulumi.String("RouteBased"),
/// 			Sku:               pulumi.String("Basic"),
/// 			IpConfigurations: network.VirtualNetworkGatewayIpConfigurationArray{
/// 				&network.VirtualNetworkGatewayIpConfigurationArgs{
/// 					PublicIpAddressId:          usPublicIp.ID().ToIDOutput().ToStringOutput(),
/// 					PrivateIpAddressAllocation: pulumi.String("Dynamic"),
/// 					SubnetId:                   usGateway.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		europe, err := core.NewResourceGroup(ctx, "europe", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("europe"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		europeVirtualNetwork, err := network.NewVirtualNetwork(ctx, "europe", &network.VirtualNetworkArgs{
/// 			Name:              pulumi.String("europe"),
/// 			Location:          europe.Location,
/// 			ResourceGroupName: europe.Name,
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.1.0.0/16"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		europeGateway, err := network.NewSubnet(ctx, "europe_gateway", &network.SubnetArgs{
/// 			Name:               pulumi.String("GatewaySubnet"),
/// 			ResourceGroupName:  europe.Name,
/// 			VirtualNetworkName: europeVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.1.1.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		europePublicIp, err := network.NewPublicIp(ctx, "europe", &network.PublicIpArgs{
/// 			Name:              pulumi.String("europe"),
/// 			Location:          europe.Location,
/// 			ResourceGroupName: europe.Name,
/// 			AllocationMethod:  pulumi.String("Dynamic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		europeVirtualNetworkGateway, err := network.NewVirtualNetworkGateway(ctx, "europe", &network.VirtualNetworkGatewayArgs{
/// 			Name:              pulumi.String("europe-gateway"),
/// 			Location:          europe.Location,
/// 			ResourceGroupName: europe.Name,
/// 			Type:              pulumi.String("Vpn"),
/// 			VpnType:           pulumi.String("RouteBased"),
/// 			Sku:               pulumi.String("Basic"),
/// 			IpConfigurations: network.VirtualNetworkGatewayIpConfigurationArray{
/// 				&network.VirtualNetworkGatewayIpConfigurationArgs{
/// 					PublicIpAddressId:          europePublicIp.ID().ToIDOutput().ToStringOutput(),
/// 					PrivateIpAddressAllocation: pulumi.String("Dynamic"),
/// 					SubnetId:                   europeGateway.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewVirtualNetworkGatewayConnection(ctx, "us_to_europe", &network.VirtualNetworkGatewayConnectionArgs{
/// 			Name:                        pulumi.String("us-to-europe"),
/// 			Location:                    us.Location,
/// 			ResourceGroupName:           us.Name,
/// 			Type:                        pulumi.String("Vnet2Vnet"),
/// 			VirtualNetworkGatewayId:     usVirtualNetworkGateway.ID().ToIDOutput().ToStringOutput(),
/// 			PeerVirtualNetworkGatewayId: europeVirtualNetworkGateway.ID().ToIDOutput().ToStringOutput(),
/// 			SharedKey:                   pulumi.String("4-v3ry-53cr37-1p53c-5h4r3d-k3y"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewVirtualNetworkGatewayConnection(ctx, "europe_to_us", &network.VirtualNetworkGatewayConnectionArgs{
/// 			Name:                        pulumi.String("europe-to-us"),
/// 			Location:                    europe.Location,
/// 			ResourceGroupName:           europe.Name,
/// 			Type:                        pulumi.String("Vnet2Vnet"),
/// 			VirtualNetworkGatewayId:     europeVirtualNetworkGateway.ID().ToIDOutput().ToStringOutput(),
/// 			PeerVirtualNetworkGatewayId: usVirtualNetworkGateway.ID().ToIDOutput().ToStringOutput(),
/// 			SharedKey:                   pulumi.String("4-v3ry-53cr37-1p53c-5h4r3d-k3y"),
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
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "us" {
///   name     = "us"
///   location = "East US"
/// }
/// resource "azure_network_virtualnetwork" "us" {
///   name                = "us"
///   location            = azure_core_resourcegroup.us.location
///   resource_group_name = azure_core_resourcegroup.us.name
///   address_spaces      = ["10.0.0.0/16"]
/// }
/// resource "azure_network_subnet" "us_gateway" {
///   name                 = "GatewaySubnet"
///   resource_group_name  = azure_core_resourcegroup.us.name
///   virtual_network_name = azure_network_virtualnetwork.us.name
///   address_prefixes     = ["10.0.1.0/24"]
/// }
/// resource "azure_network_publicip" "us" {
///   name                = "us"
///   location            = azure_core_resourcegroup.us.location
///   resource_group_name = azure_core_resourcegroup.us.name
///   allocation_method   = "Dynamic"
/// }
/// resource "azure_network_virtualnetworkgateway" "us" {
///   name                = "us-gateway"
///   location            = azure_core_resourcegroup.us.location
///   resource_group_name = azure_core_resourcegroup.us.name
///   type                = "Vpn"
///   vpn_type            = "RouteBased"
///   sku                 = "Basic"
///   ip_configurations {
///     public_ip_address_id          = azure_network_publicip.us.id
///     private_ip_address_allocation = "Dynamic"
///     subnet_id                     = azure_network_subnet.us_gateway.id
///   }
/// }
/// resource "azure_core_resourcegroup" "europe" {
///   name     = "europe"
///   location = "West Europe"
/// }
/// resource "azure_network_virtualnetwork" "europe" {
///   name                = "europe"
///   location            = azure_core_resourcegroup.europe.location
///   resource_group_name = azure_core_resourcegroup.europe.name
///   address_spaces      = ["10.1.0.0/16"]
/// }
/// resource "azure_network_subnet" "europe_gateway" {
///   name                 = "GatewaySubnet"
///   resource_group_name  = azure_core_resourcegroup.europe.name
///   virtual_network_name = azure_network_virtualnetwork.europe.name
///   address_prefixes     = ["10.1.1.0/24"]
/// }
/// resource "azure_network_publicip" "europe" {
///   name                = "europe"
///   location            = azure_core_resourcegroup.europe.location
///   resource_group_name = azure_core_resourcegroup.europe.name
///   allocation_method   = "Dynamic"
/// }
/// resource "azure_network_virtualnetworkgateway" "europe" {
///   name                = "europe-gateway"
///   location            = azure_core_resourcegroup.europe.location
///   resource_group_name = azure_core_resourcegroup.europe.name
///   type                = "Vpn"
///   vpn_type            = "RouteBased"
///   sku                 = "Basic"
///   ip_configurations {
///     public_ip_address_id          = azure_network_publicip.europe.id
///     private_ip_address_allocation = "Dynamic"
///     subnet_id                     = azure_network_subnet.europe_gateway.id
///   }
/// }
/// resource "azure_network_virtualnetworkgatewayconnection" "us_to_europe" {
///   name                            = "us-to-europe"
///   location                        = azure_core_resourcegroup.us.location
///   resource_group_name             = azure_core_resourcegroup.us.name
///   type                            = "Vnet2Vnet"
///   virtual_network_gateway_id      = azure_network_virtualnetworkgateway.us.id
///   peer_virtual_network_gateway_id = azure_network_virtualnetworkgateway.europe.id
///   shared_key                      = "4-v3ry-53cr37-1p53c-5h4r3d-k3y"
/// }
/// resource "azure_network_virtualnetworkgatewayconnection" "europe_to_us" {
///   name                            = "europe-to-us"
///   location                        = azure_core_resourcegroup.europe.location
///   resource_group_name             = azure_core_resourcegroup.europe.name
///   type                            = "Vnet2Vnet"
///   virtual_network_gateway_id      = azure_network_virtualnetworkgateway.europe.id
///   peer_virtual_network_gateway_id = azure_network_virtualnetworkgateway.us.id
///   shared_key                      = "4-v3ry-53cr37-1p53c-5h4r3d-k3y"
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
/// import com.pulumi.azure.network.PublicIp;
/// import com.pulumi.azure.network.PublicIpArgs;
/// import com.pulumi.azure.network.VirtualNetworkGateway;
/// import com.pulumi.azure.network.VirtualNetworkGatewayArgs;
/// import com.pulumi.azure.network.inputs.VirtualNetworkGatewayIpConfigurationArgs;
/// import com.pulumi.azure.network.VirtualNetworkGatewayConnection;
/// import com.pulumi.azure.network.VirtualNetworkGatewayConnectionArgs;
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
///         var us = new ResourceGroup("us", ResourceGroupArgs.builder()
///             .name("us")
///             .location("East US")
///             .build());
///
///         var usVirtualNetwork = new VirtualNetwork("usVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("us")
///             .location(us.location())
///             .resourceGroupName(us.name())
///             .addressSpaces("10.0.0.0/16")
///             .build());
///
///         var usGateway = new Subnet("usGateway", SubnetArgs.builder()
///             .name("GatewaySubnet")
///             .resourceGroupName(us.name())
///             .virtualNetworkName(usVirtualNetwork.name())
///             .addressPrefixes("10.0.1.0/24")
///             .build());
///
///         var usPublicIp = new PublicIp("usPublicIp", PublicIpArgs.builder()
///             .name("us")
///             .location(us.location())
///             .resourceGroupName(us.name())
///             .allocationMethod("Dynamic")
///             .build());
///
///         var usVirtualNetworkGateway = new VirtualNetworkGateway("usVirtualNetworkGateway", VirtualNetworkGatewayArgs.builder()
///             .name("us-gateway")
///             .location(us.location())
///             .resourceGroupName(us.name())
///             .type("Vpn")
///             .vpnType("RouteBased")
///             .sku("Basic")
///             .ipConfigurations(VirtualNetworkGatewayIpConfigurationArgs.builder()
///                 .publicIpAddressId(usPublicIp.id())
///                 .privateIpAddressAllocation("Dynamic")
///                 .subnetId(usGateway.id())
///                 .build())
///             .build());
///
///         var europe = new ResourceGroup("europe", ResourceGroupArgs.builder()
///             .name("europe")
///             .location("West Europe")
///             .build());
///
///         var europeVirtualNetwork = new VirtualNetwork("europeVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("europe")
///             .location(europe.location())
///             .resourceGroupName(europe.name())
///             .addressSpaces("10.1.0.0/16")
///             .build());
///
///         var europeGateway = new Subnet("europeGateway", SubnetArgs.builder()
///             .name("GatewaySubnet")
///             .resourceGroupName(europe.name())
///             .virtualNetworkName(europeVirtualNetwork.name())
///             .addressPrefixes("10.1.1.0/24")
///             .build());
///
///         var europePublicIp = new PublicIp("europePublicIp", PublicIpArgs.builder()
///             .name("europe")
///             .location(europe.location())
///             .resourceGroupName(europe.name())
///             .allocationMethod("Dynamic")
///             .build());
///
///         var europeVirtualNetworkGateway = new VirtualNetworkGateway("europeVirtualNetworkGateway", VirtualNetworkGatewayArgs.builder()
///             .name("europe-gateway")
///             .location(europe.location())
///             .resourceGroupName(europe.name())
///             .type("Vpn")
///             .vpnType("RouteBased")
///             .sku("Basic")
///             .ipConfigurations(VirtualNetworkGatewayIpConfigurationArgs.builder()
///                 .publicIpAddressId(europePublicIp.id())
///                 .privateIpAddressAllocation("Dynamic")
///                 .subnetId(europeGateway.id())
///                 .build())
///             .build());
///
///         var usToEurope = new VirtualNetworkGatewayConnection("usToEurope", VirtualNetworkGatewayConnectionArgs.builder()
///             .name("us-to-europe")
///             .location(us.location())
///             .resourceGroupName(us.name())
///             .type("Vnet2Vnet")
///             .virtualNetworkGatewayId(usVirtualNetworkGateway.id())
///             .peerVirtualNetworkGatewayId(europeVirtualNetworkGateway.id())
///             .sharedKey("4-v3ry-53cr37-1p53c-5h4r3d-k3y")
///             .build());
///
///         var europeToUs = new VirtualNetworkGatewayConnection("europeToUs", VirtualNetworkGatewayConnectionArgs.builder()
///             .name("europe-to-us")
///             .location(europe.location())
///             .resourceGroupName(europe.name())
///             .type("Vnet2Vnet")
///             .virtualNetworkGatewayId(europeVirtualNetworkGateway.id())
///             .peerVirtualNetworkGatewayId(usVirtualNetworkGateway.id())
///             .sharedKey("4-v3ry-53cr37-1p53c-5h4r3d-k3y")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   us:
///     type: azure:core:ResourceGroup
///     properties:
///       name: us
///       location: East US
///   usVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: us
///     properties:
///       name: us
///       location: ${us.location}
///       resourceGroupName: ${us.name}
///       addressSpaces:
///         - 10.0.0.0/16
///   usGateway:
///     type: azure:network:Subnet
///     name: us_gateway
///     properties:
///       name: GatewaySubnet
///       resourceGroupName: ${us.name}
///       virtualNetworkName: ${usVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.1.0/24
///   usPublicIp:
///     type: azure:network:PublicIp
///     name: us
///     properties:
///       name: us
///       location: ${us.location}
///       resourceGroupName: ${us.name}
///       allocationMethod: Dynamic
///   usVirtualNetworkGateway:
///     type: azure:network:VirtualNetworkGateway
///     name: us
///     properties:
///       name: us-gateway
///       location: ${us.location}
///       resourceGroupName: ${us.name}
///       type: Vpn
///       vpnType: RouteBased
///       sku: Basic
///       ipConfigurations:
///         - publicIpAddressId: ${usPublicIp.id}
///           privateIpAddressAllocation: Dynamic
///           subnetId: ${usGateway.id}
///   europe:
///     type: azure:core:ResourceGroup
///     properties:
///       name: europe
///       location: West Europe
///   europeVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: europe
///     properties:
///       name: europe
///       location: ${europe.location}
///       resourceGroupName: ${europe.name}
///       addressSpaces:
///         - 10.1.0.0/16
///   europeGateway:
///     type: azure:network:Subnet
///     name: europe_gateway
///     properties:
///       name: GatewaySubnet
///       resourceGroupName: ${europe.name}
///       virtualNetworkName: ${europeVirtualNetwork.name}
///       addressPrefixes:
///         - 10.1.1.0/24
///   europePublicIp:
///     type: azure:network:PublicIp
///     name: europe
///     properties:
///       name: europe
///       location: ${europe.location}
///       resourceGroupName: ${europe.name}
///       allocationMethod: Dynamic
///   europeVirtualNetworkGateway:
///     type: azure:network:VirtualNetworkGateway
///     name: europe
///     properties:
///       name: europe-gateway
///       location: ${europe.location}
///       resourceGroupName: ${europe.name}
///       type: Vpn
///       vpnType: RouteBased
///       sku: Basic
///       ipConfigurations:
///         - publicIpAddressId: ${europePublicIp.id}
///           privateIpAddressAllocation: Dynamic
///           subnetId: ${europeGateway.id}
///   usToEurope:
///     type: azure:network:VirtualNetworkGatewayConnection
///     name: us_to_europe
///     properties:
///       name: us-to-europe
///       location: ${us.location}
///       resourceGroupName: ${us.name}
///       type: Vnet2Vnet
///       virtualNetworkGatewayId: ${usVirtualNetworkGateway.id}
///       peerVirtualNetworkGatewayId: ${europeVirtualNetworkGateway.id}
///       sharedKey: 4-v3ry-53cr37-1p53c-5h4r3d-k3y
///   europeToUs:
///     type: azure:network:VirtualNetworkGatewayConnection
///     name: europe_to_us
///     properties:
///       name: europe-to-us
///       location: ${europe.location}
///       resourceGroupName: ${europe.name}
///       type: Vnet2Vnet
///       virtualNetworkGatewayId: ${europeVirtualNetworkGateway.id}
///       peerVirtualNetworkGatewayId: ${usVirtualNetworkGateway.id}
///       sharedKey: 4-v3ry-53cr37-1p53c-5h4r3d-k3y
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
///
/// ## Import
///
/// Virtual Network Gateway Connections can be imported using their `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/virtualNetworkGatewayConnection:VirtualNetworkGatewayConnection exampleConnection /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myGroup1/providers/Microsoft.Network/connections/myConnection1
/// ```
class VirtualNetworkGatewayConnection extends pulumi.CustomResource {
  /// The authorization key associated with the Express Route Circuit. This field is required only if the type is an ExpressRoute connection.
  late final pulumi.Output<String?> authorizationKey;
  /// If `true`, BGP (Border Gateway Protocol) is enabled for this connection. Defaults to `false`.
  late final pulumi.Output<bool> bgpEnabled;
  /// Connection mode to use. Possible values are `Default`, `InitiatorOnly` and `ResponderOnly`. Defaults to `Default`. Changing this value will force a resource to be created.
  late final pulumi.Output<String?> connectionMode;
  /// The IKE protocol version to use. Possible values are `IKEv1` and `IKEv2`, values are `IKEv1` and `IKEv2`. Defaults to `IKEv2`. Changing this forces a new resource to be created.
  /// &gt; **Note:** Only valid for `IPSec` connections on virtual network gateways with SKU `VpnGw1`, `VpnGw2`, `VpnGw3`, `VpnGw1AZ`, `VpnGw2AZ` or `VpnGw3AZ`.
  late final pulumi.Output<String> connectionProtocol;
  /// A `customBgpAddresses` block which is documented below.
  /// The block can only be used on `IPSec` / `activeactive` connections,
  /// For details about see [the relevant section in the Azure documentation](https://docs.microsoft.com/en-us/azure/vpn-gateway/vpn-gateway-howto-aws-bgp).
  late final pulumi.Output<VirtualNetworkGatewayConnectionCustomBgpAddresses?> customBgpAddresses;
  /// The dead peer detection timeout of this connection in seconds. Changing this forces a new resource to be created.
  late final pulumi.Output<int?> dpdTimeoutSeconds;
  /// A list of the egress NAT Rule Ids.
  late final pulumi.Output<List<String>?> egressNatRuleIds;
  late final pulumi.Output<bool> enableBgp;
  /// The ID of the Express Route Circuit when creating an ExpressRoute connection (i.e. when `type` is `ExpressRoute`). The Express Route Circuit can be in the same or in a different subscription. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> expressRouteCircuitId;
  /// If `true`, data packets will bypass ExpressRoute Gateway for data forwarding This is only valid for ExpressRoute connections.
  late final pulumi.Output<bool> expressRouteGatewayBypass;
  /// A list of the ingress NAT Rule Ids.
  late final pulumi.Output<List<String>?> ingressNatRuleIds;
  /// A `ipsecPolicy` block which is documented below.
  /// Only a single policy can be defined for a connection. For details on
  /// custom policies refer to [the relevant section in the Azure documentation](https://docs.microsoft.com/azure/vpn-gateway/vpn-gateway-ipsecikepolicy-rm-powershell).
  late final pulumi.Output<VirtualNetworkGatewayConnectionIpsecPolicy?> ipsecPolicy;
  /// Use private local Azure IP for the connection. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> localAzureIpAddressEnabled;
  /// The ID of the local network gateway when creating Site-to-Site connection (i.e. when `type` is `IPsec`).
  late final pulumi.Output<String?> localNetworkGatewayId;
  /// The location/region where the connection is located. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name of the connection. Changing the name forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The ID of the peer virtual network gateway when creating a VNet-to-VNet connection (i.e. when `type` is `Vnet2Vnet`). The peer Virtual Network Gateway can be in the same or in a different subscription. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> peerVirtualNetworkGatewayId;
  /// Bypass the Express Route gateway when accessing private-links. When enabled `expressRouteGatewayBypass` must be set to `true`. Defaults to `false`.
  late final pulumi.Output<bool?> privateLinkFastPathEnabled;
  /// The name of the resource group in which to create the connection Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The routing weight. Defaults to `10`.
  late final pulumi.Output<int> routingWeight;
  /// The shared IPSec key. A key could be provided if a Site-to-Site, VNet-to-VNet or ExpressRoute connection is created.
  late final pulumi.Output<String> sharedKey;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// One or more `trafficSelectorPolicy` blocks which are documented below.
  /// A `trafficSelectorPolicy` allows to specify a traffic selector policy proposal to be used in a virtual network gateway connection.
  /// For details about traffic selectors refer to [the relevant section in the Azure documentation](https://docs.microsoft.com/azure/vpn-gateway/vpn-gateway-connect-multiple-policybased-rm-ps).
  late final pulumi.Output<VirtualNetworkGatewayConnectionTrafficSelectorPolicy?> trafficSelectorPolicy;
  /// The type of connection. Valid options are `IPsec` (Site-to-Site), `ExpressRoute` (ExpressRoute), and `Vnet2Vnet` (VNet-to-VNet). Each connection type requires different mandatory arguments (refer to the examples above). Changing this forces a new resource to be created.
  late final pulumi.Output<String> type;
  /// If `true`, policy-based traffic selectors are enabled for this connection. Enabling policy-based traffic selectors requires an `ipsecPolicy` block. Defaults to `false`.
  late final pulumi.Output<bool> usePolicyBasedTrafficSelectors;
  /// The ID of the Virtual Network Gateway in which the connection will be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> virtualNetworkGatewayId;

  /// Creates a new [VirtualNetworkGatewayConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualNetworkGatewayConnection]. {@macro pulumi_network_virtual_network_gateway_connection_virtual_network_gateway_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualNetworkGatewayConnection(
    String name, {
    VirtualNetworkGatewayConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/virtualNetworkGatewayConnection:VirtualNetworkGatewayConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
          additionalSecretOutputs: const ['authorizationKey', 'sharedKey'],
        ) {
    authorizationKey = registerOutput<String?>('authorizationKey', isSecret: true);
    bgpEnabled = registerOutput<bool>('bgpEnabled');
    connectionMode = registerOutput<String?>('connectionMode');
    connectionProtocol = registerOutput<String>('connectionProtocol');
    customBgpAddresses = registerOutput<VirtualNetworkGatewayConnectionCustomBgpAddresses?>('customBgpAddresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualNetworkGatewayConnectionCustomBgpAddresses.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dpdTimeoutSeconds = registerOutput<int?>('dpdTimeoutSeconds');
    egressNatRuleIds = registerOutput<List<String>?>('egressNatRuleIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    enableBgp = registerOutput<bool>('enableBgp');
    expressRouteCircuitId = registerOutput<String?>('expressRouteCircuitId');
    expressRouteGatewayBypass = registerOutput<bool>('expressRouteGatewayBypass');
    ingressNatRuleIds = registerOutput<List<String>?>('ingressNatRuleIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    ipsecPolicy = registerOutput<VirtualNetworkGatewayConnectionIpsecPolicy?>('ipsecPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualNetworkGatewayConnectionIpsecPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    localAzureIpAddressEnabled = registerOutput<bool?>('localAzureIpAddressEnabled');
    localNetworkGatewayId = registerOutput<String?>('localNetworkGatewayId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    peerVirtualNetworkGatewayId = registerOutput<String?>('peerVirtualNetworkGatewayId');
    privateLinkFastPathEnabled = registerOutput<bool?>('privateLinkFastPathEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    routingWeight = registerOutput<int>('routingWeight');
    sharedKey = registerOutput<String>('sharedKey', isSecret: true);
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    trafficSelectorPolicy = registerOutput<VirtualNetworkGatewayConnectionTrafficSelectorPolicy?>('trafficSelectorPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualNetworkGatewayConnectionTrafficSelectorPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    usePolicyBasedTrafficSelectors = registerOutput<bool>('usePolicyBasedTrafficSelectors');
    virtualNetworkGatewayId = registerOutput<String>('virtualNetworkGatewayId');
  }

  /// Gets an existing [VirtualNetworkGatewayConnection] resource's state with the given [name] and [id].
  static VirtualNetworkGatewayConnection get(
    String name,
    pulumi.Input<String> id, {
    VirtualNetworkGatewayConnectionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return VirtualNetworkGatewayConnection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  VirtualNetworkGatewayConnection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/virtualNetworkGatewayConnection:VirtualNetworkGatewayConnection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authorizationKey = registerOutput<String?>('authorizationKey', isSecret: true);
    bgpEnabled = registerOutput<bool>('bgpEnabled');
    connectionMode = registerOutput<String?>('connectionMode');
    connectionProtocol = registerOutput<String>('connectionProtocol');
    customBgpAddresses = registerOutput<VirtualNetworkGatewayConnectionCustomBgpAddresses?>('customBgpAddresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualNetworkGatewayConnectionCustomBgpAddresses.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dpdTimeoutSeconds = registerOutput<int?>('dpdTimeoutSeconds');
    egressNatRuleIds = registerOutput<List<String>?>('egressNatRuleIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    enableBgp = registerOutput<bool>('enableBgp');
    expressRouteCircuitId = registerOutput<String?>('expressRouteCircuitId');
    expressRouteGatewayBypass = registerOutput<bool>('expressRouteGatewayBypass');
    ingressNatRuleIds = registerOutput<List<String>?>('ingressNatRuleIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    ipsecPolicy = registerOutput<VirtualNetworkGatewayConnectionIpsecPolicy?>('ipsecPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualNetworkGatewayConnectionIpsecPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    localAzureIpAddressEnabled = registerOutput<bool?>('localAzureIpAddressEnabled');
    localNetworkGatewayId = registerOutput<String?>('localNetworkGatewayId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    peerVirtualNetworkGatewayId = registerOutput<String?>('peerVirtualNetworkGatewayId');
    privateLinkFastPathEnabled = registerOutput<bool?>('privateLinkFastPathEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    routingWeight = registerOutput<int>('routingWeight');
    sharedKey = registerOutput<String>('sharedKey', isSecret: true);
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    trafficSelectorPolicy = registerOutput<VirtualNetworkGatewayConnectionTrafficSelectorPolicy?>('trafficSelectorPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualNetworkGatewayConnectionTrafficSelectorPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    usePolicyBasedTrafficSelectors = registerOutput<bool>('usePolicyBasedTrafficSelectors');
    virtualNetworkGatewayId = registerOutput<String>('virtualNetworkGatewayId');
  }

  /// Creates a typed reference to an existing [VirtualNetworkGatewayConnection] resource.
  VirtualNetworkGatewayConnection.reference(String urn)
    : super(
        'azure:network/virtualNetworkGatewayConnection:VirtualNetworkGatewayConnection',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['authorizationKey', 'sharedKey'],
        isResourceReference: true,
      ) {
    authorizationKey = registerOutput<String?>('authorizationKey', isSecret: true);
    bgpEnabled = registerOutput<bool>('bgpEnabled');
    connectionMode = registerOutput<String?>('connectionMode');
    connectionProtocol = registerOutput<String>('connectionProtocol');
    customBgpAddresses = registerOutput<VirtualNetworkGatewayConnectionCustomBgpAddresses?>('customBgpAddresses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualNetworkGatewayConnectionCustomBgpAddresses.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dpdTimeoutSeconds = registerOutput<int?>('dpdTimeoutSeconds');
    egressNatRuleIds = registerOutput<List<String>?>('egressNatRuleIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    enableBgp = registerOutput<bool>('enableBgp');
    expressRouteCircuitId = registerOutput<String?>('expressRouteCircuitId');
    expressRouteGatewayBypass = registerOutput<bool>('expressRouteGatewayBypass');
    ingressNatRuleIds = registerOutput<List<String>?>('ingressNatRuleIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    ipsecPolicy = registerOutput<VirtualNetworkGatewayConnectionIpsecPolicy?>('ipsecPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualNetworkGatewayConnectionIpsecPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    localAzureIpAddressEnabled = registerOutput<bool?>('localAzureIpAddressEnabled');
    localNetworkGatewayId = registerOutput<String?>('localNetworkGatewayId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    peerVirtualNetworkGatewayId = registerOutput<String?>('peerVirtualNetworkGatewayId');
    privateLinkFastPathEnabled = registerOutput<bool?>('privateLinkFastPathEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    routingWeight = registerOutput<int>('routingWeight');
    sharedKey = registerOutput<String>('sharedKey', isSecret: true);
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    trafficSelectorPolicy = registerOutput<VirtualNetworkGatewayConnectionTrafficSelectorPolicy?>('trafficSelectorPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualNetworkGatewayConnectionTrafficSelectorPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    usePolicyBasedTrafficSelectors = registerOutput<bool>('usePolicyBasedTrafficSelectors');
    virtualNetworkGatewayId = registerOutput<String>('virtualNetworkGatewayId');
  }
}
