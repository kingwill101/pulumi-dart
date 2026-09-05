import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_nat_gateway_association_args.dart';
import 'subnet_nat_gateway_association_state.dart';

/// Associates a NAT Gateway with a Subnet within a Virtual Network.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-nat-gateway-rg",
///     location: "West Europe",
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "example-network",
///     addressSpaces: ["10.0.0.0/16"],
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "example-subnet",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.2.0/24"],
/// });
/// const exampleNatGateway = new azure.network.NatGateway("example", {
///     name: "example-natgateway",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleSubnetNatGatewayAssociation = new azure.network.SubnetNatGatewayAssociation("example", {
///     subnetId: exampleSubnet.id,
///     natGatewayId: exampleNatGateway.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-nat-gateway-rg",
///     location="West Europe")
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="example-network",
///     address_spaces=["10.0.0.0/16"],
///     location=example.location,
///     resource_group_name=example.name)
/// example_subnet = azure.network.Subnet("example",
///     name="example-subnet",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.2.0/24"])
/// example_nat_gateway = azure.network.NatGateway("example",
///     name="example-natgateway",
///     location=example.location,
///     resource_group_name=example.name)
/// example_subnet_nat_gateway_association = azure.network.SubnetNatGatewayAssociation("example",
///     subnet_id=example_subnet.id,
///     nat_gateway_id=example_nat_gateway.id)
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
///         Name = "example-nat-gateway-rg",
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
///         Name = "example-subnet",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.2.0/24",
///         },
///     });
///
///     var exampleNatGateway = new Azure.Network.NatGateway("example", new()
///     {
///         Name = "example-natgateway",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleSubnetNatGatewayAssociation = new Azure.Network.SubnetNatGatewayAssociation("example", new()
///     {
///         SubnetId = exampleSubnet.Id,
///         NatGatewayId = exampleNatGateway.Id,
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
/// 			Name:     pulumi.String("example-nat-gateway-rg"),
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
/// 			Name:               pulumi.String("example-subnet"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.2.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNatGateway, err := network.NewNatGateway(ctx, "example", &network.NatGatewayArgs{
/// 			Name:              pulumi.String("example-natgateway"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewSubnetNatGatewayAssociation(ctx, "example", &network.SubnetNatGatewayAssociationArgs{
/// 			SubnetId:     exampleSubnet.ID().ToIDOutput().ToStringOutput(),
/// 			NatGatewayId: exampleNatGateway.ID().ToIDOutput().ToStringOutput(),
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
///   name     = "example-nat-gateway-rg"
///   location = "West Europe"
/// }
/// resource "azure_network_virtualnetwork" "example" {
///   name                = "example-network"
///   address_spaces      = ["10.0.0.0/16"]
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_network_subnet" "example" {
///   name                 = "example-subnet"
///   resource_group_name  = azure_core_resourcegroup.example.name
///   virtual_network_name = azure_network_virtualnetwork.example.name
///   address_prefixes     = ["10.0.2.0/24"]
/// }
/// resource "azure_network_natgateway" "example" {
///   name                = "example-natgateway"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_network_subnetnatgatewayassociation" "example" {
///   subnet_id      = azure_network_subnet.example.id
///   nat_gateway_id = azure_network_natgateway.example.id
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
/// import com.pulumi.azure.network.NatGateway;
/// import com.pulumi.azure.network.NatGatewayArgs;
/// import com.pulumi.azure.network.SubnetNatGatewayAssociation;
/// import com.pulumi.azure.network.SubnetNatGatewayAssociationArgs;
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
///             .name("example-nat-gateway-rg")
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
///             .name("example-subnet")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.2.0/24")
///             .build());
///
///         var exampleNatGateway = new NatGateway("exampleNatGateway", NatGatewayArgs.builder()
///             .name("example-natgateway")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleSubnetNatGatewayAssociation = new SubnetNatGatewayAssociation("exampleSubnetNatGatewayAssociation", SubnetNatGatewayAssociationArgs.builder()
///             .subnetId(exampleSubnet.id())
///             .natGatewayId(exampleNatGateway.id())
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
///       name: example-nat-gateway-rg
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
///       name: example-subnet
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.2.0/24
///   exampleNatGateway:
///     type: azure:network:NatGateway
///     name: example
///     properties:
///       name: example-natgateway
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleSubnetNatGatewayAssociation:
///     type: azure:network:SubnetNatGatewayAssociation
///     name: example
///     properties:
///       subnetId: ${exampleSubnet.id}
///       natGatewayId: ${exampleNatGateway.id}
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
/// Subnet NAT Gateway Associations can be imported using the `resource id` of the Subnet, e.g.
///
/// ```sh
/// $ pulumi import azure:network/subnetNatGatewayAssociation:SubnetNatGatewayAssociation association1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/virtualNetworks/myvnet1/subnets/mysubnet1
/// ```
class SubnetNatGatewayAssociation extends pulumi.CustomResource {
  /// The ID of the NAT Gateway which should be associated with the Subnet. Changing this forces a new resource to be created.
  late final pulumi.Output<String> natGatewayId;
  /// The ID of the Subnet. Changing this forces a new resource to be created.
  late final pulumi.Output<String> subnetId;

  /// Creates a new [SubnetNatGatewayAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SubnetNatGatewayAssociation]. {@macro pulumi_network_subnet_nat_gateway_association_subnet_nat_gateway_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SubnetNatGatewayAssociation(
    String name, {
    SubnetNatGatewayAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/subnetNatGatewayAssociation:SubnetNatGatewayAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    natGatewayId = registerOutput<String>('natGatewayId');
    subnetId = registerOutput<String>('subnetId');
  }

  /// Gets an existing [SubnetNatGatewayAssociation] resource's state with the given [name] and [id].
  static SubnetNatGatewayAssociation get(
    String name,
    pulumi.Input<String> id, {
    SubnetNatGatewayAssociationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SubnetNatGatewayAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SubnetNatGatewayAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/subnetNatGatewayAssociation:SubnetNatGatewayAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    natGatewayId = registerOutput<String>('natGatewayId');
    subnetId = registerOutput<String>('subnetId');
  }

  /// Creates a typed reference to an existing [SubnetNatGatewayAssociation] resource.
  SubnetNatGatewayAssociation.reference(String urn)
    : super(
        'azure:network/subnetNatGatewayAssociation:SubnetNatGatewayAssociation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    natGatewayId = registerOutput<String>('natGatewayId');
    subnetId = registerOutput<String>('subnetId');
  }
}
