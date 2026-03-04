import 'package:pulumi/pulumi.dart' as pulumi;
import 'next_generation_firewall_virtual_network_local_rulestack_args.dart';
import 'next_generation_firewall_virtual_network_local_rulestack_dns_settings.dart';
import 'next_generation_firewall_virtual_network_local_rulestack_network_profile.dart';
import 'next_generation_firewall_virtual_network_local_rulestack_state.dart';

/// Manages a Palo Alto Next Generation Firewall Deployed in a Virtual Network and configured via a Local Rulestack.
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
/// const exampleLocalRulestack = new azure.paloalto.LocalRulestack("example", {
///     name: "example-rulestack",
///     resourceGroupName: example.name,
///     location: example.locatio,
/// });
/// const exampleLocalRulestackRule = new azure.paloalto.LocalRulestackRule("example", {
///     name: "example-rulestack-rule",
///     rulestackId: exampleLocalRulestack.id,
///     priority: 1001,
///     action: "Allow",
///     applications: ["any"],
///     destination: {
///         cidrs: ["any"],
///     },
///     source: {
///         cidrs: ["any"],
///     },
/// });
/// const exampleNextGenerationFirewallVirtualNetworkLocalRulestack = new azure.paloalto.NextGenerationFirewallVirtualNetworkLocalRulestack("example", {
///     name: "example-ngfwvn",
///     resourceGroupName: example.name,
///     rulestackId: exampleLocalRulestack.id,
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
/// example_local_rulestack = azure.paloalto.LocalRulestack("example",
///     name="example-rulestack",
///     resource_group_name=example.name,
///     location=example.locatio)
/// example_local_rulestack_rule = azure.paloalto.LocalRulestackRule("example",
///     name="example-rulestack-rule",
///     rulestack_id=example_local_rulestack.id,
///     priority=1001,
///     action="Allow",
///     applications=["any"],
///     destination={
///         "cidrs": ["any"],
///     },
///     source={
///         "cidrs": ["any"],
///     })
/// example_next_generation_firewall_virtual_network_local_rulestack = azure.paloalto.NextGenerationFirewallVirtualNetworkLocalRulestack("example",
///     name="example-ngfwvn",
///     resource_group_name=example.name,
///     rulestack_id=example_local_rulestack.id,
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
///     var exampleLocalRulestack = new Azure.PaloAlto.LocalRulestack("example", new()
///     {
///         Name = "example-rulestack",
///         ResourceGroupName = example.Name,
///         Location = example.Locatio,
///     });
///
///     var exampleLocalRulestackRule = new Azure.PaloAlto.LocalRulestackRule("example", new()
///     {
///         Name = "example-rulestack-rule",
///         RulestackId = exampleLocalRulestack.Id,
///         Priority = 1001,
///         Action = "Allow",
///         Applications = new[]
///         {
///             "any",
///         },
///         Destination = new Azure.PaloAlto.Inputs.LocalRulestackRuleDestinationArgs
///         {
///             Cidrs = new[]
///             {
///                 "any",
///             },
///         },
///         Source = new Azure.PaloAlto.Inputs.LocalRulestackRuleSourceArgs
///         {
///             Cidrs = new[]
///             {
///                 "any",
///             },
///         },
///     });
///
///     var exampleNextGenerationFirewallVirtualNetworkLocalRulestack = new Azure.PaloAlto.NextGenerationFirewallVirtualNetworkLocalRulestack("example", new()
///     {
///         Name = "example-ngfwvn",
///         ResourceGroupName = example.Name,
///         RulestackId = exampleLocalRulestack.Id,
///         NetworkProfile = new Azure.PaloAlto.Inputs.NextGenerationFirewallVirtualNetworkLocalRulestackNetworkProfileArgs
///         {
///             PublicIpAddressIds = new[]
///             {
///                 examplePublicIp.Id,
///             },
///             VnetConfiguration = new Azure.PaloAlto.Inputs.NextGenerationFirewallVirtualNetworkLocalRulestackNetworkProfileVnetConfigurationArgs
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
/// 		exampleLocalRulestack, err := paloalto.NewLocalRulestack(ctx, "example", &paloalto.LocalRulestackArgs{
/// 			Name:              pulumi.String("example-rulestack"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Locatio,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = paloalto.NewLocalRulestackRule(ctx, "example", &paloalto.LocalRulestackRuleArgs{
/// 			Name:        pulumi.String("example-rulestack-rule"),
/// 			RulestackId: exampleLocalRulestack.ID(),
/// 			Priority:    pulumi.Int(1001),
/// 			Action:      pulumi.String("Allow"),
/// 			Applications: pulumi.StringArray{
/// 				pulumi.String("any"),
/// 			},
/// 			Destination: &paloalto.LocalRulestackRuleDestinationArgs{
/// 				Cidrs: pulumi.StringArray{
/// 					pulumi.String("any"),
/// 				},
/// 			},
/// 			Source: &paloalto.LocalRulestackRuleSourceArgs{
/// 				Cidrs: pulumi.StringArray{
/// 					pulumi.String("any"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = paloalto.NewNextGenerationFirewallVirtualNetworkLocalRulestack(ctx, "example", &paloalto.NextGenerationFirewallVirtualNetworkLocalRulestackArgs{
/// 			Name:              pulumi.String("example-ngfwvn"),
/// 			ResourceGroupName: example.Name,
/// 			RulestackId:       exampleLocalRulestack.ID(),
/// 			NetworkProfile: &paloalto.NextGenerationFirewallVirtualNetworkLocalRulestackNetworkProfileArgs{
/// 				PublicIpAddressIds: pulumi.StringArray{
/// 					examplePublicIp.ID(),
/// 				},
/// 				VnetConfiguration: &paloalto.NextGenerationFirewallVirtualNetworkLocalRulestackNetworkProfileVnetConfigurationArgs{
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
/// import com.pulumi.azure.paloalto.LocalRulestack;
/// import com.pulumi.azure.paloalto.LocalRulestackArgs;
/// import com.pulumi.azure.paloalto.LocalRulestackRule;
/// import com.pulumi.azure.paloalto.LocalRulestackRuleArgs;
/// import com.pulumi.azure.paloalto.inputs.LocalRulestackRuleDestinationArgs;
/// import com.pulumi.azure.paloalto.inputs.LocalRulestackRuleSourceArgs;
/// import com.pulumi.azure.paloalto.NextGenerationFirewallVirtualNetworkLocalRulestack;
/// import com.pulumi.azure.paloalto.NextGenerationFirewallVirtualNetworkLocalRulestackArgs;
/// import com.pulumi.azure.paloalto.inputs.NextGenerationFirewallVirtualNetworkLocalRulestackNetworkProfileArgs;
/// import com.pulumi.azure.paloalto.inputs.NextGenerationFirewallVirtualNetworkLocalRulestackNetworkProfileVnetConfigurationArgs;
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
///         var exampleLocalRulestack = new LocalRulestack("exampleLocalRulestack", LocalRulestackArgs.builder()
///             .name("example-rulestack")
///             .resourceGroupName(example.name())
///             .location(example.locatio())
///             .build());
///
///         var exampleLocalRulestackRule = new LocalRulestackRule("exampleLocalRulestackRule", LocalRulestackRuleArgs.builder()
///             .name("example-rulestack-rule")
///             .rulestackId(exampleLocalRulestack.id())
///             .priority(1001)
///             .action("Allow")
///             .applications("any")
///             .destination(LocalRulestackRuleDestinationArgs.builder()
///                 .cidrs("any")
///                 .build())
///             .source(LocalRulestackRuleSourceArgs.builder()
///                 .cidrs("any")
///                 .build())
///             .build());
///
///         var exampleNextGenerationFirewallVirtualNetworkLocalRulestack = new NextGenerationFirewallVirtualNetworkLocalRulestack("exampleNextGenerationFirewallVirtualNetworkLocalRulestack", NextGenerationFirewallVirtualNetworkLocalRulestackArgs.builder()
///             .name("example-ngfwvn")
///             .resourceGroupName(example.name())
///             .rulestackId(exampleLocalRulestack.id())
///             .networkProfile(NextGenerationFirewallVirtualNetworkLocalRulestackNetworkProfileArgs.builder()
///                 .publicIpAddressIds(examplePublicIp.id())
///                 .vnetConfiguration(NextGenerationFirewallVirtualNetworkLocalRulestackNetworkProfileVnetConfigurationArgs.builder()
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
///   exampleLocalRulestack:
///     type: azure:paloalto:LocalRulestack
///     name: example
///     properties:
///       name: example-rulestack
///       resourceGroupName: ${example.name}
///       location: ${example.locatio}
///   exampleLocalRulestackRule:
///     type: azure:paloalto:LocalRulestackRule
///     name: example
///     properties:
///       name: example-rulestack-rule
///       rulestackId: ${exampleLocalRulestack.id}
///       priority: 1001
///       action: Allow
///       applications:
///         - any
///       destination:
///         cidrs:
///           - any
///       source:
///         cidrs:
///           - any
///   exampleNextGenerationFirewallVirtualNetworkLocalRulestack:
///     type: azure:paloalto:NextGenerationFirewallVirtualNetworkLocalRulestack
///     name: example
///     properties:
///       name: example-ngfwvn
///       resourceGroupName: ${example.name}
///       rulestackId: ${exampleLocalRulestack.id}
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
/// * `PaloAltoNetworks.Cloudngfw` - 2025-05-23, 2022-08-29
///
/// ## Import
///
/// Palo Alto Next Generation Firewall Virtual Network Local Rulestacks can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:paloalto/nextGenerationFirewallVirtualNetworkLocalRulestack:NextGenerationFirewallVirtualNetworkLocalRulestack example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/PaloAltoNetworks.Cloudngfw/firewalls/myVNetRulestackFW
/// ```
class NextGenerationFirewallVirtualNetworkLocalRulestack
    extends pulumi.CustomResource {
  /// One or more `destination_nat` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> destinationNats;

  /// A `dns_settings` block as defined below.
  late final pulumi.Output<
    NextGenerationFirewallVirtualNetworkLocalRulestackDnsSettings?
  >
  dnsSettings;

  /// The marketplace offer ID. Defaults to `pan_swfw_cloud_ngfw`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> marketplaceOfferId;

  /// The name which should be used for this Palo Alto Next Generation Firewall Virtual Network Local Rulestack. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Local Rulestack to be created.
  late final pulumi.Output<String> name;

  /// A `network_profile` block as defined below.
  late final pulumi.Output<
    NextGenerationFirewallVirtualNetworkLocalRulestackNetworkProfile
  >
  networkProfile;

  /// The billing plan ID as published by Liftr.PAN. Defaults to `panw-cloud-ngfw-payg`.
  ///
  /// &gt; **Note:** The former `plan_id` `panw-cloud-ngfw-payg` is defined as stop sell, but has been set as the default to not break any existing resources that were originally provisioned with it. Users need to explicitly set `plan_id` to `panw-cngfw-payg` when creating new resources.
  late final pulumi.Output<String?> planId;

  /// The name of the Resource Group where the Palo Alto Next Generation Firewall Virtual Network Local Rulestack should exist. Changing this forces a new Palo Alto Next Generation Firewall Virtual Network Local Rulestack to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// The ID of the Local Rulestack which will be used to configure this Firewall Resource.
  late final pulumi.Output<String> rulestackId;

  /// A mapping of tags which should be assigned to the Palo Alto Next Generation Firewall Virtual Network Local Rulestack.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [NextGenerationFirewallVirtualNetworkLocalRulestack].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NextGenerationFirewallVirtualNetworkLocalRulestack]. {@macro pulumi_paloalto_next_generation_firewall_virtual_network_local_rulestack_next_generation_firewall_virtual_network_local_rulestack_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NextGenerationFirewallVirtualNetworkLocalRulestack(
    String name, {
    NextGenerationFirewallVirtualNetworkLocalRulestackArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:paloalto/nextGenerationFirewallVirtualNetworkLocalRulestack:NextGenerationFirewallVirtualNetworkLocalRulestack',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    destinationNats = registerOutput<List<Map<String, dynamic>>?>(
      'destinationNats',
    );
    dnsSettings =
        registerOutput<
          NextGenerationFirewallVirtualNetworkLocalRulestackDnsSettings?
        >('dnsSettings');
    marketplaceOfferId = registerOutput<String?>('marketplaceOfferId');
    this.name = registerOutput<String>('name');
    networkProfile =
        registerOutput<
          NextGenerationFirewallVirtualNetworkLocalRulestackNetworkProfile
        >('networkProfile');
    planId = registerOutput<String?>('planId');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    rulestackId = registerOutput<String>('rulestackId');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [NextGenerationFirewallVirtualNetworkLocalRulestack] resource's state with the given [name] and [id].
  static NextGenerationFirewallVirtualNetworkLocalRulestack get(
    String name,
    pulumi.Input<String> id, {
    NextGenerationFirewallVirtualNetworkLocalRulestackState? state,
  }) {
    return NextGenerationFirewallVirtualNetworkLocalRulestack._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NextGenerationFirewallVirtualNetworkLocalRulestack._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:paloalto/nextGenerationFirewallVirtualNetworkLocalRulestack:NextGenerationFirewallVirtualNetworkLocalRulestack',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    destinationNats = registerOutput<List<Map<String, dynamic>>?>(
      'destinationNats',
    );
    dnsSettings =
        registerOutput<
          NextGenerationFirewallVirtualNetworkLocalRulestackDnsSettings?
        >('dnsSettings');
    marketplaceOfferId = registerOutput<String?>('marketplaceOfferId');
    this.name = registerOutput<String>('name');
    networkProfile =
        registerOutput<
          NextGenerationFirewallVirtualNetworkLocalRulestackNetworkProfile
        >('networkProfile');
    planId = registerOutput<String?>('planId');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    rulestackId = registerOutput<String>('rulestackId');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
