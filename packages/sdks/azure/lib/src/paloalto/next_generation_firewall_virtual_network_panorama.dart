import 'package:pulumi/pulumi.dart' as pulumi;
import 'next_generation_firewall_virtual_network_panorama_args.dart';
import 'next_generation_firewall_virtual_network_panorama_dns_settings.dart';
import 'next_generation_firewall_virtual_network_panorama_network_profile.dart';
import 'next_generation_firewall_virtual_network_panorama_state.dart';

/// Manages a Palo Alto Next Generation Firewall Virtual Network Panorama.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resource-group",
///     location: "westeurope",
/// });
/// const examplePublicIp = new azure.network.PublicIp("example", {
///     name: "example-public-ip",
///     location: example.location,
///     resourceGroupName: example.name,
///     allocationMethod: "Static",
///     sku: "Standard",
/// });
/// const exampleNetworkSecurityGroup = new azure.network.NetworkSecurityGroup("example", {
///     name: "example-nsg",
///     location: test.location,
///     resourceGroupName: test.name,
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "example-vnet",
///     addressSpaces: ["10.0.0.0/16"],
///     location: example.location,
///     resourceGroupName: example.name,
///     tags: {
///         environment: "Production",
///     },
/// });
/// const trust = new azure.network.Subnet("trust", {
///     name: "example-trust-subnet",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.1.0/24"],
///     delegations: [{
///         name: "trusted",
///         serviceDelegation: {
///             name: "PaloAltoNetworks.Cloudngfw/firewalls",
///             actions: ["Microsoft.Network/virtualNetworks/subnets/join/action"],
///         },
///     }],
/// });
/// const trustSubnetNetworkSecurityGroupAssociation = new azure.network.SubnetNetworkSecurityGroupAssociation("trust", {
///     subnetId: trust.id,
///     networkSecurityGroupId: exampleNetworkSecurityGroup.id,
/// });
/// const untrust = new azure.network.Subnet("untrust", {
///     name: "example-untrust-subnet",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.2.0/24"],
///     delegations: [{
///         name: "untrusted",
///         serviceDelegation: {
///             name: "PaloAltoNetworks.Cloudngfw/firewalls",
///             actions: ["Microsoft.Network/virtualNetworks/subnets/join/action"],
///         },
///     }],
/// });
/// const untrustSubnetNetworkSecurityGroupAssociation = new azure.network.SubnetNetworkSecurityGroupAssociation("untrust", {
///     subnetId: untrust.id,
///     networkSecurityGroupId: exampleNetworkSecurityGroup.id,
/// });
/// const exampleNextGenerationFirewallVirtualNetworkPanorama = new azure.paloalto.NextGenerationFirewallVirtualNetworkPanorama("example", {
///     name: "example-ngfwvh",
///     resourceGroupName: example.name,
///     location: example.location,
///     panoramaBase64Config: "e2RnbmFtZTogY25nZnctYXotZXhhbXBsZSwgdHBsbmFtZTogY25nZnctZXhhbXBsZS10ZW1wbGF0ZS1zdGFjaywgZXhhbXBsZS1wYW5vcmFtYS1zZXJ2ZXI6IDE5Mi4xNjguMC4xLCB2bS1hdXRoLWtleTogMDAwMDAwMDAwMDAwMDAwLCBleHBpcnk6IDIwMjQvMDcvMzF9Cg==",
///     networkProfile: {
///         publicIpAddressIds: [examplePublicIp.id],
///         vnetConfiguration: {
///             virtualNetworkId: exampleVirtualNetwork.id,
///             trustedSubnetId: trust.id,
///             untrustedSubnetId: untrust.id,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resource-group",
///     location="westeurope")
/// example_public_ip = azure.network.PublicIp("example",
///     name="example-public-ip",
///     location=example.location,
///     resource_group_name=example.name,
///     allocation_method="Static",
///     sku="Standard")
/// example_network_security_group = azure.network.NetworkSecurityGroup("example",
///     name="example-nsg",
///     location=test["location"],
///     resource_group_name=test["name"])
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="example-vnet",
///     address_spaces=["10.0.0.0/16"],
///     location=example.location,
///     resource_group_name=example.name,
///     tags={
///         "environment": "Production",
///     })
/// trust = azure.network.Subnet("trust",
///     name="example-trust-subnet",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.1.0/24"],
///     delegations=[{
///         "name": "trusted",
///         "service_delegation": {
///             "name": "PaloAltoNetworks.Cloudngfw/firewalls",
///             "actions": ["Microsoft.Network/virtualNetworks/subnets/join/action"],
///         },
///     }])
/// trust_subnet_network_security_group_association = azure.network.SubnetNetworkSecurityGroupAssociation("trust",
///     subnet_id=trust.id,
///     network_security_group_id=example_network_security_group.id)
/// untrust = azure.network.Subnet("untrust",
///     name="example-untrust-subnet",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.2.0/24"],
///     delegations=[{
///         "name": "untrusted",
///         "service_delegation": {
///             "name": "PaloAltoNetworks.Cloudngfw/firewalls",
///             "actions": ["Microsoft.Network/virtualNetworks/subnets/join/action"],
///         },
///     }])
/// untrust_subnet_network_security_group_association = azure.network.SubnetNetworkSecurityGroupAssociation("untrust",
///     subnet_id=untrust.id,
///     network_security_group_id=example_network_security_group.id)
/// example_next_generation_firewall_virtual_network_panorama = azure.paloalto.NextGenerationFirewallVirtualNetworkPanorama("example",
///     name="example-ngfwvh",
///     resource_group_name=example.name,
///     location=example.location,
///     panorama_base64_config="e2RnbmFtZTogY25nZnctYXotZXhhbXBsZSwgdHBsbmFtZTogY25nZnctZXhhbXBsZS10ZW1wbGF0ZS1zdGFjaywgZXhhbXBsZS1wYW5vcmFtYS1zZXJ2ZXI6IDE5Mi4xNjguMC4xLCB2bS1hdXRoLWtleTogMDAwMDAwMDAwMDAwMDAwLCBleHBpcnk6IDIwMjQvMDcvMzF9Cg==",
///     network_profile={
///         "public_ip_address_ids": [example_public_ip.id],
///         "vnet_configuration": {
///             "virtual_network_id": example_virtual_network.id,
///             "trusted_subnet_id": trust.id,
///             "untrusted_subnet_id": untrust.id,
///         },
///     })
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
///         Name = "example-resource-group",
///         Location = "westeurope",
///     });
///
///     var examplePublicIp = new Azure.Network.PublicIp("example", new()
///     {
///         Name = "example-public-ip",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AllocationMethod = "Static",
///         Sku = "Standard",
///     });
///
///     var exampleNetworkSecurityGroup = new Azure.Network.NetworkSecurityGroup("example", new()
///     {
///         Name = "example-nsg",
///         Location = test.Location,
///         ResourceGroupName = test.Name,
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "example-vnet",
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Tags =
///         {
///             { "environment", "Production" },
///         },
///     });
///
///     var trust = new Azure.Network.Subnet("trust", new()
///     {
///         Name = "example-trust-subnet",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.1.0/24",
///         },
///         Delegations = new[]
///         {
///             new Azure.Network.Inputs.SubnetDelegationArgs
///             {
///                 Name = "trusted",
///                 ServiceDelegation = new Azure.Network.Inputs.SubnetDelegationServiceDelegationArgs
///                 {
///                     Name = "PaloAltoNetworks.Cloudngfw/firewalls",
///                     Actions = new[]
///                     {
///                         "Microsoft.Network/virtualNetworks/subnets/join/action",
///                     },
///                 },
///             },
///         },
///     });
///
///     var trustSubnetNetworkSecurityGroupAssociation = new Azure.Network.SubnetNetworkSecurityGroupAssociation("trust", new()
///     {
///         SubnetId = trust.Id,
///         NetworkSecurityGroupId = exampleNetworkSecurityGroup.Id,
///     });
///
///     var untrust = new Azure.Network.Subnet("untrust", new()
///     {
///         Name = "example-untrust-subnet",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.2.0/24",
///         },
///         Delegations = new[]
///         {
///             new Azure.Network.Inputs.SubnetDelegationArgs
///             {
///                 Name = "untrusted",
///                 ServiceDelegation = new Azure.Network.Inputs.SubnetDelegationServiceDelegationArgs
///                 {
///                     Name = "PaloAltoNetworks.Cloudngfw/firewalls",
///                     Actions = new[]
///                     {
///                         "Microsoft.Network/virtualNetworks/subnets/join/action",
///                     },
///                 },
///             },
///         },
///     });
///
///     var untrustSubnetNetworkSecurityGroupAssociation = new Azure.Network.SubnetNetworkSecurityGroupAssociation("untrust", new()
///     {
///         SubnetId = untrust.Id,
///         NetworkSecurityGroupId = exampleNetworkSecurityGroup.Id,
///     });
///
///     var exampleNextGenerationFirewallVirtualNetworkPanorama = new Azure.PaloAlto.NextGenerationFirewallVirtualNetworkPanorama("example", new()
///     {
///         Name = "example-ngfwvh",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         PanoramaBase64Config = "e2RnbmFtZTogY25nZnctYXotZXhhbXBsZSwgdHBsbmFtZTogY25nZnctZXhhbXBsZS10ZW1wbGF0ZS1zdGFjaywgZXhhbXBsZS1wYW5vcmFtYS1zZXJ2ZXI6IDE5Mi4xNjguMC4xLCB2bS1hdXRoLWtleTogMDAwMDAwMDAwMDAwMDAwLCBleHBpcnk6IDIwMjQvMDcvMzF9Cg==",
///         NetworkProfile = new Azure.PaloAlto.Inputs.NextGenerationFirewallVirtualNetworkPanoramaNetworkProfileArgs
///         {
///             PublicIpAddressIds = new[]
///             {
///                 examplePublicIp.Id,
///             },
///             VnetConfiguration = new Azure.PaloAlto.Inputs.NextGenerationFirewallVirtualNetworkPanoramaNetworkProfileVnetConfigurationArgs
///             {
///                 VirtualNetworkId = exampleVirtualNetwork.Id,
///                 TrustedSubnetId = trust.Id,
///                 UntrustedSubnetId = untrust.Id,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/paloalto"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resource-group"),
/// 			Location: pulumi.String("westeurope"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePublicIp, err := network.NewPublicIp(ctx, "example", &network.PublicIpArgs{
/// 			Name:              pulumi.String("example-public-ip"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AllocationMethod:  pulumi.String("Static"),
/// 			Sku:               pulumi.String("Standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetworkSecurityGroup, err := network.NewNetworkSecurityGroup(ctx, "example", &network.NetworkSecurityGroupArgs{
/// 			Name:              pulumi.String("example-nsg"),
/// 			Location:          pulumi.Any(test.Location),
/// 			ResourceGroupName: pulumi.Any(test.Name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name: pulumi.String("example-vnet"),
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("Production"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		trust, err := network.NewSubnet(ctx, "trust", &network.SubnetArgs{
/// 			Name:               pulumi.String("example-trust-subnet"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.1.0/24"),
/// 			},
/// 			Delegations: network.SubnetDelegationArray{
/// 				&network.SubnetDelegationArgs{
/// 					Name: pulumi.String("trusted"),
/// 					ServiceDelegation: &network.SubnetDelegationServiceDelegationArgs{
/// 						Name: pulumi.String("PaloAltoNetworks.Cloudngfw/firewalls"),
/// 						Actions: pulumi.StringArray{
/// 							pulumi.String("Microsoft.Network/virtualNetworks/subnets/join/action"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewSubnetNetworkSecurityGroupAssociation(ctx, "trust", &network.SubnetNetworkSecurityGroupAssociationArgs{
/// 			SubnetId:               trust.ID(),
/// 			NetworkSecurityGroupId: exampleNetworkSecurityGroup.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		untrust, err := network.NewSubnet(ctx, "untrust", &network.SubnetArgs{
/// 			Name:               pulumi.String("example-untrust-subnet"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.2.0/24"),
/// 			},
/// 			Delegations: network.SubnetDelegationArray{
/// 				&network.SubnetDelegationArgs{
/// 					Name: pulumi.String("untrusted"),
/// 					ServiceDelegation: &network.SubnetDelegationServiceDelegationArgs{
/// 						Name: pulumi.String("PaloAltoNetworks.Cloudngfw/firewalls"),
/// 						Actions: pulumi.StringArray{
/// 							pulumi.String("Microsoft.Network/virtualNetworks/subnets/join/action"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewSubnetNetworkSecurityGroupAssociation(ctx, "untrust", &network.SubnetNetworkSecurityGroupAssociationArgs{
/// 			SubnetId:               untrust.ID(),
/// 			NetworkSecurityGroupId: exampleNetworkSecurityGroup.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = paloalto.NewNextGenerationFirewallVirtualNetworkPanorama(ctx, "example", &paloalto.NextGenerationFirewallVirtualNetworkPanoramaArgs{
/// 			Name:                 pulumi.String("example-ngfwvh"),
/// 			ResourceGroupName:    example.Name,
/// 			Location:             example.Location,
/// 			PanoramaBase64Config: pulumi.String("e2RnbmFtZTogY25nZnctYXotZXhhbXBsZSwgdHBsbmFtZTogY25nZnctZXhhbXBsZS10ZW1wbGF0ZS1zdGFjaywgZXhhbXBsZS1wYW5vcmFtYS1zZXJ2ZXI6IDE5Mi4xNjguMC4xLCB2bS1hdXRoLWtleTogMDAwMDAwMDAwMDAwMDAwLCBleHBpcnk6IDIwMjQvMDcvMzF9Cg=="),
/// 			NetworkProfile: &paloalto.NextGenerationFirewallVirtualNetworkPanoramaNetworkProfileArgs{
/// 				PublicIpAddressIds: pulumi.StringArray{
/// 					examplePublicIp.ID(),
/// 				},
/// 				VnetConfiguration: &paloalto.NextGenerationFirewallVirtualNetworkPanoramaNetworkProfileVnetConfigurationArgs{
/// 					VirtualNetworkId:  exampleVirtualNetwork.ID(),
/// 					TrustedSubnetId:   trust.ID(),
/// 					UntrustedSubnetId: untrust.ID(),
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
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resource-group"
///   location = "westeurope"
/// }
/// resource "azure_network_publicip" "example" {
///   name                = "example-public-ip"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   allocation_method   = "Static"
///   sku                 = "Standard"
/// }
/// resource "azure_network_networksecuritygroup" "example" {
///   name                = "example-nsg"
///   location            = test.location
///   resource_group_name = test.name
/// }
/// resource "azure_network_virtualnetwork" "example" {
///   name                = "example-vnet"
///   address_spaces      = ["10.0.0.0/16"]
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   tags = {
///     "environment" = "Production"
///   }
/// }
/// resource "azure_network_subnet" "trust" {
///   name                 = "example-trust-subnet"
///   resource_group_name  = azure_core_resourcegroup.example.name
///   virtual_network_name = azure_network_virtualnetwork.example.name
///   address_prefixes     = ["10.0.1.0/24"]
///   delegations {
///     name = "trusted"
///     service_delegation = {
///       name    = "PaloAltoNetworks.Cloudngfw/firewalls"
///       actions = ["Microsoft.Network/virtualNetworks/subnets/join/action"]
///     }
///   }
/// }
/// resource "azure_network_subnetnetworksecuritygroupassociation" "trust" {
///   subnet_id                 = azure_network_subnet.trust.id
///   network_security_group_id = azure_network_networksecuritygroup.example.id
/// }
/// resource "azure_network_subnet" "untrust" {
///   name                 = "example-untrust-subnet"
///   resource_group_name  = azure_core_resourcegroup.example.name
///   virtual_network_name = azure_network_virtualnetwork.example.name
///   address_prefixes     = ["10.0.2.0/24"]
///   delegations {
///     name = "untrusted"
///     service_delegation = {
///       name    = "PaloAltoNetworks.Cloudngfw/firewalls"
///       actions = ["Microsoft.Network/virtualNetworks/subnets/join/action"]
///     }
///   }
/// }
/// resource "azure_network_subnetnetworksecuritygroupassociation" "untrust" {
///   subnet_id                 = azure_network_subnet.untrust.id
///   network_security_group_id = azure_network_networksecuritygroup.example.id
/// }
/// resource "azure_paloalto_nextgenerationfirewallvirtualnetworkpanorama" "example" {
///   name                   = "example-ngfwvh"
///   resource_group_name    = azure_core_resourcegroup.example.name
///   location               = azure_core_resourcegroup.example.location
///   panorama_base64_config = "e2RnbmFtZTogY25nZnctYXotZXhhbXBsZSwgdHBsbmFtZTogY25nZnctZXhhbXBsZS10ZW1wbGF0ZS1zdGFjaywgZXhhbXBsZS1wYW5vcmFtYS1zZXJ2ZXI6IDE5Mi4xNjguMC4xLCB2bS1hdXRoLWtleTogMDAwMDAwMDAwMDAwMDAwLCBleHBpcnk6IDIwMjQvMDcvMzF9Cg=="
///   network_profile = {
///     public_ip_address_ids = [azure_network_publicip.example.id]
///     vnet_configuration = {
///       virtual_network_id  = azure_network_virtualnetwork.example.id
///       trusted_subnet_id   = azure_network_subnet.trust.id
///       untrusted_subnet_id = azure_network_subnet.untrust.id
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.network.PublicIp;
/// import com.pulumi.azure.network.PublicIpArgs;
/// import com.pulumi.azure.network.NetworkSecurityGroup;
/// import com.pulumi.azure.network.NetworkSecurityGroupArgs;
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationServiceDelegationArgs;
/// import com.pulumi.azure.network.SubnetNetworkSecurityGroupAssociation;
/// import com.pulumi.azure.network.SubnetNetworkSecurityGroupAssociationArgs;
/// import com.pulumi.azure.paloalto.NextGenerationFirewallVirtualNetworkPanorama;
/// import com.pulumi.azure.paloalto.NextGenerationFirewallVirtualNetworkPanoramaArgs;
/// import com.pulumi.azure.paloalto.inputs.NextGenerationFirewallVirtualNetworkPanoramaNetworkProfileArgs;
/// import com.pulumi.azure.paloalto.inputs.NextGenerationFirewallVirtualNetworkPanoramaNetworkProfileVnetConfigurationArgs;
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
///             .name("example-resource-group")
///             .location("westeurope")
///             .build());
///
///         var examplePublicIp = new PublicIp("examplePublicIp", PublicIpArgs.builder()
///             .name("example-public-ip")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .allocationMethod("Static")
///             .sku("Standard")
///             .build());
///
///         var exampleNetworkSecurityGroup = new NetworkSecurityGroup("exampleNetworkSecurityGroup", NetworkSecurityGroupArgs.builder()
///             .name("example-nsg")
///             .location(test.location())
///             .resourceGroupName(test.name())
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("example-vnet")
///             .addressSpaces("10.0.0.0/16")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .tags(Map.of("environment", "Production"))
///             .build());
///
///         var trust = new Subnet("trust", SubnetArgs.builder()
///             .name("example-trust-subnet")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.1.0/24")
///             .delegations(SubnetDelegationArgs.builder()
///                 .name("trusted")
///                 .serviceDelegation(SubnetDelegationServiceDelegationArgs.builder()
///                     .name("PaloAltoNetworks.Cloudngfw/firewalls")
///                     .actions("Microsoft.Network/virtualNetworks/subnets/join/action")
///                     .build())
///                 .build())
///             .build());
///
///         var trustSubnetNetworkSecurityGroupAssociation = new SubnetNetworkSecurityGroupAssociation("trustSubnetNetworkSecurityGroupAssociation", SubnetNetworkSecurityGroupAssociationArgs.builder()
///             .subnetId(trust.id())
///             .networkSecurityGroupId(exampleNetworkSecurityGroup.id())
///             .build());
///
///         var untrust = new Subnet("untrust", SubnetArgs.builder()
///             .name("example-untrust-subnet")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.2.0/24")
///             .delegations(SubnetDelegationArgs.builder()
///                 .name("untrusted")
///                 .serviceDelegation(SubnetDelegationServiceDelegationArgs.builder()
///                     .name("PaloAltoNetworks.Cloudngfw/firewalls")
///                     .actions("Microsoft.Network/virtualNetworks/subnets/join/action")
///                     .build())
///                 .build())
///             .build());
///
///         var untrustSubnetNetworkSecurityGroupAssociation = new SubnetNetworkSecurityGroupAssociation("untrustSubnetNetworkSecurityGroupAssociation", SubnetNetworkSecurityGroupAssociationArgs.builder()
///             .subnetId(untrust.id())
///             .networkSecurityGroupId(exampleNetworkSecurityGroup.id())
///             .build());
///
///         var exampleNextGenerationFirewallVirtualNetworkPanorama = new NextGenerationFirewallVirtualNetworkPanorama("exampleNextGenerationFirewallVirtualNetworkPanorama", NextGenerationFirewallVirtualNetworkPanoramaArgs.builder()
///             .name("example-ngfwvh")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .panoramaBase64Config("e2RnbmFtZTogY25nZnctYXotZXhhbXBsZSwgdHBsbmFtZTogY25nZnctZXhhbXBsZS10ZW1wbGF0ZS1zdGFjaywgZXhhbXBsZS1wYW5vcmFtYS1zZXJ2ZXI6IDE5Mi4xNjguMC4xLCB2bS1hdXRoLWtleTogMDAwMDAwMDAwMDAwMDAwLCBleHBpcnk6IDIwMjQvMDcvMzF9Cg==")
///             .networkProfile(NextGenerationFirewallVirtualNetworkPanoramaNetworkProfileArgs.builder()
///                 .publicIpAddressIds(examplePublicIp.id())
///                 .vnetConfiguration(NextGenerationFirewallVirtualNetworkPanoramaNetworkProfileVnetConfigurationArgs.builder()
///                     .virtualNetworkId(exampleVirtualNetwork.id())
///                     .trustedSubnetId(trust.id())
///                     .untrustedSubnetId(untrust.id())
///                     .build())
///                 .build())
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
///       name: example-resource-group
///       location: westeurope
///   examplePublicIp:
///     type: azure:network:PublicIp
///     name: example
///     properties:
///       name: example-public-ip
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       allocationMethod: Static
///       sku: Standard
///   exampleNetworkSecurityGroup:
///     type: azure:network:NetworkSecurityGroup
///     name: example
///     properties:
///       name: example-nsg
///       location: ${test.location}
///       resourceGroupName: ${test.name}
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: example-vnet
///       addressSpaces:
///         - 10.0.0.0/16
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       tags:
///         environment: Production
///   trust:
///     type: azure:network:Subnet
///     properties:
///       name: example-trust-subnet
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.1.0/24
///       delegations:
///         - name: trusted
///           serviceDelegation:
///             name: PaloAltoNetworks.Cloudngfw/firewalls
///             actions:
///               - Microsoft.Network/virtualNetworks/subnets/join/action
///   trustSubnetNetworkSecurityGroupAssociation:
///     type: azure:network:SubnetNetworkSecurityGroupAssociation
///     name: trust
///     properties:
///       subnetId: ${trust.id}
///       networkSecurityGroupId: ${exampleNetworkSecurityGroup.id}
///   untrust:
///     type: azure:network:Subnet
///     properties:
///       name: example-untrust-subnet
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.2.0/24
///       delegations:
///         - name: untrusted
///           serviceDelegation:
///             name: PaloAltoNetworks.Cloudngfw/firewalls
///             actions:
///               - Microsoft.Network/virtualNetworks/subnets/join/action
///   untrustSubnetNetworkSecurityGroupAssociation:
///     type: azure:network:SubnetNetworkSecurityGroupAssociation
///     name: untrust
///     properties:
///       subnetId: ${untrust.id}
///       networkSecurityGroupId: ${exampleNetworkSecurityGroup.id}
///   exampleNextGenerationFirewallVirtualNetworkPanorama:
///     type: azure:paloalto:NextGenerationFirewallVirtualNetworkPanorama
///     name: example
///     properties:
///       name: example-ngfwvh
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       panoramaBase64Config: e2RnbmFtZTogY25nZnctYXotZXhhbXBsZSwgdHBsbmFtZTogY25nZnctZXhhbXBsZS10ZW1wbGF0ZS1zdGFjaywgZXhhbXBsZS1wYW5vcmFtYS1zZXJ2ZXI6IDE5Mi4xNjguMC4xLCB2bS1hdXRoLWtleTogMDAwMDAwMDAwMDAwMDAwLCBleHBpcnk6IDIwMjQvMDcvMzF9Cg==
///       networkProfile:
///         publicIpAddressIds:
///           - ${examplePublicIp.id}
///         vnetConfiguration:
///           virtualNetworkId: ${exampleVirtualNetwork.id}
///           trustedSubnetId: ${trust.id}
///           untrustedSubnetId: ${untrust.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `PaloAltoNetworks.Cloudngfw` - 2025-10-08
///
/// ## Import
///
/// Palo Alto Next Generation Firewall Virtual Network Panoramas can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:paloalto/nextGenerationFirewallVirtualNetworkPanorama:NextGenerationFirewallVirtualNetworkPanorama example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/PaloAltoNetworks.Cloudngfw/firewalls/myVNetPanoramaFW
/// ```
class NextGenerationFirewallVirtualNetworkPanorama extends pulumi.CustomResource {
  /// One or more `destinationNat` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> destinationNats;
  /// A `dnsSettings` block as defined below.
  late final pulumi.Output<NextGenerationFirewallVirtualNetworkPanoramaDnsSettings?> dnsSettings;
  /// The Azure Region where the Palo Alto Next Generation Firewall Virtual Network Panorama should exist. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Panorama to be created.
  late final pulumi.Output<String> location;
  /// The marketplace offer ID. Defaults to `panSwfwCloudNgfw`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> marketplaceOfferId;
  /// The name which should be used for this Palo Alto Next Generation Firewall Virtual Network Panorama. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Panorama to be created.
  late final pulumi.Output<String> name;
  /// A `networkProfile` block as defined below.
  late final pulumi.Output<NextGenerationFirewallVirtualNetworkPanoramaNetworkProfile> networkProfile;
  /// The base64 encoded configuration registration string as defined by your Panorama Server for your Cloud Device Group.
  late final pulumi.Output<String> panoramaBase64Config;
  /// A `panorama` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> panoramas;
  /// The billing plan ID as published by Liftr.PAN. Defaults to `panw-cloud-ngfw-payg`.
  ///
  /// &gt; **Note:** The former `planId` `panw-cloud-ngfw-payg` is defined as stop sell, but has been set as the default to not break any existing resources that were originally provisioned with it. Users need to explicitly set `planId` to `panw-cngfw-payg` when creating new resources.
  late final pulumi.Output<String?> planId;
  /// The name of the Resource Group where the Palo Alto Next Generation Firewall Virtual Network Panorama should exist. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Panorama to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Palo Alto Next Generation Firewall Virtual Network Panorama.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [NextGenerationFirewallVirtualNetworkPanorama].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NextGenerationFirewallVirtualNetworkPanorama]. {@macro pulumi_paloalto_next_generation_firewall_virtual_network_panorama_next_generation_firewall_virtual_network_panorama_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NextGenerationFirewallVirtualNetworkPanorama(
    String name, {
    NextGenerationFirewallVirtualNetworkPanoramaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:paloalto/nextGenerationFirewallVirtualNetworkPanorama:NextGenerationFirewallVirtualNetworkPanorama',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    destinationNats = registerOutput<List<Map<String, dynamic>>?>('destinationNats');
    dnsSettings = registerOutput<NextGenerationFirewallVirtualNetworkPanoramaDnsSettings?>('dnsSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NextGenerationFirewallVirtualNetworkPanoramaDnsSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    marketplaceOfferId = registerOutput<String?>('marketplaceOfferId');
    this.name = registerOutput<String>('name');
    networkProfile = registerOutput<NextGenerationFirewallVirtualNetworkPanoramaNetworkProfile>('networkProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NextGenerationFirewallVirtualNetworkPanoramaNetworkProfile.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    panoramaBase64Config = registerOutput<String>('panoramaBase64Config');
    panoramas = registerOutput<List<Map<String, dynamic>>>('panoramas');
    planId = registerOutput<String?>('planId');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [NextGenerationFirewallVirtualNetworkPanorama] resource's state with the given [name] and [id].
  static NextGenerationFirewallVirtualNetworkPanorama get(
    String name,
    pulumi.Input<String> id, {
    NextGenerationFirewallVirtualNetworkPanoramaState? state,
  }) {
    return NextGenerationFirewallVirtualNetworkPanorama._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NextGenerationFirewallVirtualNetworkPanorama._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:paloalto/nextGenerationFirewallVirtualNetworkPanorama:NextGenerationFirewallVirtualNetworkPanorama',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    destinationNats = registerOutput<List<Map<String, dynamic>>?>('destinationNats');
    dnsSettings = registerOutput<NextGenerationFirewallVirtualNetworkPanoramaDnsSettings?>('dnsSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NextGenerationFirewallVirtualNetworkPanoramaDnsSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    marketplaceOfferId = registerOutput<String?>('marketplaceOfferId');
    this.name = registerOutput<String>('name');
    networkProfile = registerOutput<NextGenerationFirewallVirtualNetworkPanoramaNetworkProfile>('networkProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NextGenerationFirewallVirtualNetworkPanoramaNetworkProfile.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    panoramaBase64Config = registerOutput<String>('panoramaBase64Config');
    panoramas = registerOutput<List<Map<String, dynamic>>>('panoramas');
    planId = registerOutput<String?>('planId');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
