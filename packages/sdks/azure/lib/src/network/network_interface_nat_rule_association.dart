import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_interface_nat_rule_association_args.dart';
import 'network_interface_nat_rule_association_state.dart';

/// Manages the association between a Network Interface and a Load Balancer's NAT Rule.
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
///     name: "example-network",
///     addressSpaces: ["10.0.0.0/16"],
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "internal",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.2.0/24"],
/// });
/// const examplePublicIp = new azure.network.PublicIp("example", {
///     name: "example-pip",
///     location: example.location,
///     resourceGroupName: example.name,
///     allocationMethod: "Static",
/// });
/// const exampleLoadBalancer = new azure.lb.LoadBalancer("example", {
///     name: "example-lb",
///     location: example.location,
///     resourceGroupName: example.name,
///     frontendIpConfigurations: [{
///         name: "primary",
///         publicIpAddressId: examplePublicIp.id,
///     }],
/// });
/// const exampleNatRule = new azure.lb.NatRule("example", {
///     resourceGroupName: example.name,
///     loadbalancerId: exampleLoadBalancer.id,
///     name: "RDPAccess",
///     protocol: "Tcp",
///     frontendPort: 3389,
///     backendPort: 3389,
///     frontendIpConfigurationName: "primary",
/// });
/// const exampleNetworkInterface = new azure.network.NetworkInterface("example", {
///     name: "example-nic",
///     location: example.location,
///     resourceGroupName: example.name,
///     ipConfigurations: [{
///         name: "testconfiguration1",
///         subnetId: exampleSubnet.id,
///         privateIpAddressAllocation: "Dynamic",
///     }],
/// });
/// const exampleNetworkInterfaceNatRuleAssociation = new azure.network.NetworkInterfaceNatRuleAssociation("example", {
///     networkInterfaceId: exampleNetworkInterface.id,
///     ipConfigurationName: "testconfiguration1",
///     natRuleId: exampleNatRule.id,
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
///     name="example-network",
///     address_spaces=["10.0.0.0/16"],
///     location=example.location,
///     resource_group_name=example.name)
/// example_subnet = azure.network.Subnet("example",
///     name="internal",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.2.0/24"])
/// example_public_ip = azure.network.PublicIp("example",
///     name="example-pip",
///     location=example.location,
///     resource_group_name=example.name,
///     allocation_method="Static")
/// example_load_balancer = azure.lb.LoadBalancer("example",
///     name="example-lb",
///     location=example.location,
///     resource_group_name=example.name,
///     frontend_ip_configurations=[{
///         "name": "primary",
///         "public_ip_address_id": example_public_ip.id,
///     }])
/// example_nat_rule = azure.lb.NatRule("example",
///     resource_group_name=example.name,
///     loadbalancer_id=example_load_balancer.id,
///     name="RDPAccess",
///     protocol="Tcp",
///     frontend_port=3389,
///     backend_port=3389,
///     frontend_ip_configuration_name="primary")
/// example_network_interface = azure.network.NetworkInterface("example",
///     name="example-nic",
///     location=example.location,
///     resource_group_name=example.name,
///     ip_configurations=[{
///         "name": "testconfiguration1",
///         "subnet_id": example_subnet.id,
///         "private_ip_address_allocation": "Dynamic",
///     }])
/// example_network_interface_nat_rule_association = azure.network.NetworkInterfaceNatRuleAssociation("example",
///     network_interface_id=example_network_interface.id,
///     ip_configuration_name="testconfiguration1",
///     nat_rule_id=example_nat_rule.id)
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
///         Name = "example-network",
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "internal",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.2.0/24",
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
///     var exampleLoadBalancer = new Azure.Lb.LoadBalancer("example", new()
///     {
///         Name = "example-lb",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         FrontendIpConfigurations = new[]
///         {
///             new Azure.Lb.Inputs.LoadBalancerFrontendIpConfigurationArgs
///             {
///                 Name = "primary",
///                 PublicIpAddressId = examplePublicIp.Id,
///             },
///         },
///     });
///
///     var exampleNatRule = new Azure.Lb.NatRule("example", new()
///     {
///         ResourceGroupName = example.Name,
///         LoadbalancerId = exampleLoadBalancer.Id,
///         Name = "RDPAccess",
///         Protocol = "Tcp",
///         FrontendPort = 3389,
///         BackendPort = 3389,
///         FrontendIpConfigurationName = "primary",
///     });
///
///     var exampleNetworkInterface = new Azure.Network.NetworkInterface("example", new()
///     {
///         Name = "example-nic",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         IpConfigurations = new[]
///         {
///             new Azure.Network.Inputs.NetworkInterfaceIpConfigurationArgs
///             {
///                 Name = "testconfiguration1",
///                 SubnetId = exampleSubnet.Id,
///                 PrivateIpAddressAllocation = "Dynamic",
///             },
///         },
///     });
///
///     var exampleNetworkInterfaceNatRuleAssociation = new Azure.Network.NetworkInterfaceNatRuleAssociation("example", new()
///     {
///         NetworkInterfaceId = exampleNetworkInterface.Id,
///         IpConfigurationName = "testconfiguration1",
///         NatRuleId = exampleNatRule.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/lb"
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
/// 			Name: pulumi.String("example-network"),
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("internal"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.2.0/24"),
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
/// 		exampleLoadBalancer, err := lb.NewLoadBalancer(ctx, "example", &lb.LoadBalancerArgs{
/// 			Name:              pulumi.String("example-lb"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			FrontendIpConfigurations: lb.LoadBalancerFrontendIpConfigurationArray{
/// 				&lb.LoadBalancerFrontendIpConfigurationArgs{
/// 					Name:              pulumi.String("primary"),
/// 					PublicIpAddressId: examplePublicIp.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNatRule, err := lb.NewNatRule(ctx, "example", &lb.NatRuleArgs{
/// 			ResourceGroupName:           example.Name,
/// 			LoadbalancerId:              exampleLoadBalancer.ID().ToIDOutput().ToStringOutput(),
/// 			Name:                        pulumi.String("RDPAccess"),
/// 			Protocol:                    pulumi.String("Tcp"),
/// 			FrontendPort:                pulumi.Int(3389),
/// 			BackendPort:                 pulumi.Int(3389),
/// 			FrontendIpConfigurationName: pulumi.String("primary"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetworkInterface, err := network.NewNetworkInterface(ctx, "example", &network.NetworkInterfaceArgs{
/// 			Name:              pulumi.String("example-nic"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			IpConfigurations: network.NetworkInterfaceIpConfigurationArray{
/// 				&network.NetworkInterfaceIpConfigurationArgs{
/// 					Name:                       pulumi.String("testconfiguration1"),
/// 					SubnetId:                   exampleSubnet.ID().ToIDOutput().ToStringOutput(),
/// 					PrivateIpAddressAllocation: pulumi.String("Dynamic"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewNetworkInterfaceNatRuleAssociation(ctx, "example", &network.NetworkInterfaceNatRuleAssociationArgs{
/// 			NetworkInterfaceId:  exampleNetworkInterface.ID().ToIDOutput().ToStringOutput(),
/// 			IpConfigurationName: pulumi.String("testconfiguration1"),
/// 			NatRuleId:           exampleNatRule.ID().ToIDOutput().ToStringOutput(),
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
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_network_virtualnetwork" "example" {
///   name                = "example-network"
///   address_spaces      = ["10.0.0.0/16"]
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_network_subnet" "example" {
///   name                 = "internal"
///   resource_group_name  = azure_core_resourcegroup.example.name
///   virtual_network_name = azure_network_virtualnetwork.example.name
///   address_prefixes     = ["10.0.2.0/24"]
/// }
/// resource "azure_network_publicip" "example" {
///   name                = "example-pip"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   allocation_method   = "Static"
/// }
/// resource "azure_lb_loadbalancer" "example" {
///   name                = "example-lb"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   frontend_ip_configurations {
///     name                 = "primary"
///     public_ip_address_id = azure_network_publicip.example.id
///   }
/// }
/// resource "azure_lb_natrule" "example" {
///   resource_group_name            = azure_core_resourcegroup.example.name
///   loadbalancer_id                = azure_lb_loadbalancer.example.id
///   name                           = "RDPAccess"
///   protocol                       = "Tcp"
///   frontend_port                  = 3389
///   backend_port                   = 3389
///   frontend_ip_configuration_name = "primary"
/// }
/// resource "azure_network_networkinterface" "example" {
///   name                = "example-nic"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   ip_configurations {
///     name                          = "testconfiguration1"
///     subnet_id                     = azure_network_subnet.example.id
///     private_ip_address_allocation = "Dynamic"
///   }
/// }
/// resource "azure_network_networkinterfacenatruleassociation" "example" {
///   network_interface_id  = azure_network_networkinterface.example.id
///   ip_configuration_name = "testconfiguration1"
///   nat_rule_id           = azure_lb_natrule.example.id
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
/// import com.pulumi.azure.lb.LoadBalancer;
/// import com.pulumi.azure.lb.LoadBalancerArgs;
/// import com.pulumi.azure.lb.inputs.LoadBalancerFrontendIpConfigurationArgs;
/// import com.pulumi.azure.lb.NatRule;
/// import com.pulumi.azure.lb.NatRuleArgs;
/// import com.pulumi.azure.network.NetworkInterface;
/// import com.pulumi.azure.network.NetworkInterfaceArgs;
/// import com.pulumi.azure.network.inputs.NetworkInterfaceIpConfigurationArgs;
/// import com.pulumi.azure.network.NetworkInterfaceNatRuleAssociation;
/// import com.pulumi.azure.network.NetworkInterfaceNatRuleAssociationArgs;
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
///             .name("example-network")
///             .addressSpaces("10.0.0.0/16")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("internal")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.2.0/24")
///             .build());
///
///         var examplePublicIp = new PublicIp("examplePublicIp", PublicIpArgs.builder()
///             .name("example-pip")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .allocationMethod("Static")
///             .build());
///
///         var exampleLoadBalancer = new LoadBalancer("exampleLoadBalancer", LoadBalancerArgs.builder()
///             .name("example-lb")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .frontendIpConfigurations(LoadBalancerFrontendIpConfigurationArgs.builder()
///                 .name("primary")
///                 .publicIpAddressId(examplePublicIp.id())
///                 .build())
///             .build());
///
///         var exampleNatRule = new NatRule("exampleNatRule", NatRuleArgs.builder()
///             .resourceGroupName(example.name())
///             .loadbalancerId(exampleLoadBalancer.id())
///             .name("RDPAccess")
///             .protocol("Tcp")
///             .frontendPort(3389)
///             .backendPort(3389)
///             .frontendIpConfigurationName("primary")
///             .build());
///
///         var exampleNetworkInterface = new NetworkInterface("exampleNetworkInterface", NetworkInterfaceArgs.builder()
///             .name("example-nic")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .ipConfigurations(NetworkInterfaceIpConfigurationArgs.builder()
///                 .name("testconfiguration1")
///                 .subnetId(exampleSubnet.id())
///                 .privateIpAddressAllocation("Dynamic")
///                 .build())
///             .build());
///
///         var exampleNetworkInterfaceNatRuleAssociation = new NetworkInterfaceNatRuleAssociation("exampleNetworkInterfaceNatRuleAssociation", NetworkInterfaceNatRuleAssociationArgs.builder()
///             .networkInterfaceId(exampleNetworkInterface.id())
///             .ipConfigurationName("testconfiguration1")
///             .natRuleId(exampleNatRule.id())
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
///       name: example-resources
///       location: West Europe
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: example-network
///       addressSpaces:
///         - 10.0.0.0/16
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: internal
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.2.0/24
///   examplePublicIp:
///     type: azure:network:PublicIp
///     name: example
///     properties:
///       name: example-pip
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       allocationMethod: Static
///   exampleLoadBalancer:
///     type: azure:lb:LoadBalancer
///     name: example
///     properties:
///       name: example-lb
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       frontendIpConfigurations:
///         - name: primary
///           publicIpAddressId: ${examplePublicIp.id}
///   exampleNatRule:
///     type: azure:lb:NatRule
///     name: example
///     properties:
///       resourceGroupName: ${example.name}
///       loadbalancerId: ${exampleLoadBalancer.id}
///       name: RDPAccess
///       protocol: Tcp
///       frontendPort: 3389
///       backendPort: 3389
///       frontendIpConfigurationName: primary
///   exampleNetworkInterface:
///     type: azure:network:NetworkInterface
///     name: example
///     properties:
///       name: example-nic
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       ipConfigurations:
///         - name: testconfiguration1
///           subnetId: ${exampleSubnet.id}
///           privateIpAddressAllocation: Dynamic
///   exampleNetworkInterfaceNatRuleAssociation:
///     type: azure:network:NetworkInterfaceNatRuleAssociation
///     name: example
///     properties:
///       networkInterfaceId: ${exampleNetworkInterface.id}
///       ipConfigurationName: testconfiguration1
///       natRuleId: ${exampleNatRule.id}
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
/// Associations between Network Interfaces and Load Balancer NAT Rule can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/networkInterfaceNatRuleAssociation:NetworkInterfaceNatRuleAssociation association1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/networkInterfaces/nic1/ipConfigurations/example|/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Network/loadBalancers/lb1/inboundNatRules/rule1
/// ```
///
/// &gt; **Note:** This ID is specific to this provider - and is of the format `{networkInterfaceId}/ipConfigurations/{ipConfigurationName}|{natRuleId}`.
class NetworkInterfaceNatRuleAssociation extends pulumi.CustomResource {
  /// The Name of the IP Configuration within the Network Interface which should be connected to the NAT Rule. Changing this forces a new resource to be created.
  late final pulumi.Output<String> ipConfigurationName;
  /// The ID of the Load Balancer NAT Rule which this Network Interface which should be connected to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> natRuleId;
  /// The ID of the Network Interface. Changing this forces a new resource to be created.
  late final pulumi.Output<String> networkInterfaceId;

  /// Creates a new [NetworkInterfaceNatRuleAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkInterfaceNatRuleAssociation]. {@macro pulumi_network_network_interface_nat_rule_association_network_interface_nat_rule_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkInterfaceNatRuleAssociation(
    String name, {
    NetworkInterfaceNatRuleAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/networkInterfaceNatRuleAssociation:NetworkInterfaceNatRuleAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    ipConfigurationName = registerOutput<String>('ipConfigurationName');
    natRuleId = registerOutput<String>('natRuleId');
    networkInterfaceId = registerOutput<String>('networkInterfaceId');
  }

  /// Gets an existing [NetworkInterfaceNatRuleAssociation] resource's state with the given [name] and [id].
  static NetworkInterfaceNatRuleAssociation get(
    String name,
    pulumi.Input<String> id, {
    NetworkInterfaceNatRuleAssociationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return NetworkInterfaceNatRuleAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  NetworkInterfaceNatRuleAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/networkInterfaceNatRuleAssociation:NetworkInterfaceNatRuleAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    ipConfigurationName = registerOutput<String>('ipConfigurationName');
    natRuleId = registerOutput<String>('natRuleId');
    networkInterfaceId = registerOutput<String>('networkInterfaceId');
  }

  /// Creates a typed reference to an existing [NetworkInterfaceNatRuleAssociation] resource.
  NetworkInterfaceNatRuleAssociation.reference(String urn)
    : super(
        'azure:network/networkInterfaceNatRuleAssociation:NetworkInterfaceNatRuleAssociation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    ipConfigurationName = registerOutput<String>('ipConfigurationName');
    natRuleId = registerOutput<String>('natRuleId');
    networkInterfaceId = registerOutput<String>('networkInterfaceId');
  }
}
