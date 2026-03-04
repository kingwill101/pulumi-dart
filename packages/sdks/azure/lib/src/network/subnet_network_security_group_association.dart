import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_network_security_group_association_args.dart';
import 'subnet_network_security_group_association_state.dart';

/// Associates a Network Security Group with a Subnet within a Virtual Network.
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
///     name: "frontend",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.2.0/24"],
/// });
/// const exampleNetworkSecurityGroup = new azure.network.NetworkSecurityGroup("example", {
///     name: "example-nsg",
///     location: example.location,
///     resourceGroupName: example.name,
///     securityRules: [{
///         name: "test123",
///         priority: 100,
///         direction: "Inbound",
///         access: "Allow",
///         protocol: "Tcp",
///         sourcePortRange: "*",
///         destinationPortRange: "*",
///         sourceAddressPrefix: "*",
///         destinationAddressPrefix: "*",
///     }],
/// });
/// const exampleSubnetNetworkSecurityGroupAssociation = new azure.network.SubnetNetworkSecurityGroupAssociation("example", {
///     subnetId: exampleSubnet.id,
///     networkSecurityGroupId: exampleNetworkSecurityGroup.id,
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
///     name="frontend",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.2.0/24"])
/// example_network_security_group = azure.network.NetworkSecurityGroup("example",
///     name="example-nsg",
///     location=example.location,
///     resource_group_name=example.name,
///     security_rules=[{
///         "name": "test123",
///         "priority": 100,
///         "direction": "Inbound",
///         "access": "Allow",
///         "protocol": "Tcp",
///         "source_port_range": "*",
///         "destination_port_range": "*",
///         "source_address_prefix": "*",
///         "destination_address_prefix": "*",
///     }])
/// example_subnet_network_security_group_association = azure.network.SubnetNetworkSecurityGroupAssociation("example",
///     subnet_id=example_subnet.id,
///     network_security_group_id=example_network_security_group.id)
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
///         Name = "frontend",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.2.0/24",
///         },
///     });
///
///     var exampleNetworkSecurityGroup = new Azure.Network.NetworkSecurityGroup("example", new()
///     {
///         Name = "example-nsg",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SecurityRules = new[]
///         {
///             new Azure.Network.Inputs.NetworkSecurityGroupSecurityRuleArgs
///             {
///                 Name = "test123",
///                 Priority = 100,
///                 Direction = "Inbound",
///                 Access = "Allow",
///                 Protocol = "Tcp",
///                 SourcePortRange = "*",
///                 DestinationPortRange = "*",
///                 SourceAddressPrefix = "*",
///                 DestinationAddressPrefix = "*",
///             },
///         },
///     });
///
///     var exampleSubnetNetworkSecurityGroupAssociation = new Azure.Network.SubnetNetworkSecurityGroupAssociation("example", new()
///     {
///         SubnetId = exampleSubnet.Id,
///         NetworkSecurityGroupId = exampleNetworkSecurityGroup.Id,
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
/// 			Name:               pulumi.String("frontend"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.2.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetworkSecurityGroup, err := network.NewNetworkSecurityGroup(ctx, "example", &network.NetworkSecurityGroupArgs{
/// 			Name:              pulumi.String("example-nsg"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			SecurityRules: network.NetworkSecurityGroupSecurityRuleArray{
/// 				&network.NetworkSecurityGroupSecurityRuleArgs{
/// 					Name:                     pulumi.String("test123"),
/// 					Priority:                 pulumi.Int(100),
/// 					Direction:                pulumi.String("Inbound"),
/// 					Access:                   pulumi.String("Allow"),
/// 					Protocol:                 pulumi.String("Tcp"),
/// 					SourcePortRange:          pulumi.String("*"),
/// 					DestinationPortRange:     pulumi.String("*"),
/// 					SourceAddressPrefix:      pulumi.String("*"),
/// 					DestinationAddressPrefix: pulumi.String("*"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewSubnetNetworkSecurityGroupAssociation(ctx, "example", &network.SubnetNetworkSecurityGroupAssociationArgs{
/// 			SubnetId:               exampleSubnet.ID(),
/// 			NetworkSecurityGroupId: exampleNetworkSecurityGroup.ID(),
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
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.network.NetworkSecurityGroup;
/// import com.pulumi.azure.network.NetworkSecurityGroupArgs;
/// import com.pulumi.azure.network.inputs.NetworkSecurityGroupSecurityRuleArgs;
/// import com.pulumi.azure.network.SubnetNetworkSecurityGroupAssociation;
/// import com.pulumi.azure.network.SubnetNetworkSecurityGroupAssociationArgs;
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
///             .name("frontend")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.2.0/24")
///             .build());
///
///         var exampleNetworkSecurityGroup = new NetworkSecurityGroup("exampleNetworkSecurityGroup", NetworkSecurityGroupArgs.builder()
///             .name("example-nsg")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .securityRules(NetworkSecurityGroupSecurityRuleArgs.builder()
///                 .name("test123")
///                 .priority(100)
///                 .direction("Inbound")
///                 .access("Allow")
///                 .protocol("Tcp")
///                 .sourcePortRange("*")
///                 .destinationPortRange("*")
///                 .sourceAddressPrefix("*")
///                 .destinationAddressPrefix("*")
///                 .build())
///             .build());
///
///         var exampleSubnetNetworkSecurityGroupAssociation = new SubnetNetworkSecurityGroupAssociation("exampleSubnetNetworkSecurityGroupAssociation", SubnetNetworkSecurityGroupAssociationArgs.builder()
///             .subnetId(exampleSubnet.id())
///             .networkSecurityGroupId(exampleNetworkSecurityGroup.id())
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
///       name: frontend
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.2.0/24
///   exampleNetworkSecurityGroup:
///     type: azure:network:NetworkSecurityGroup
///     name: example
///     properties:
///       name: example-nsg
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       securityRules:
///         - name: test123
///           priority: 100
///           direction: Inbound
///           access: Allow
///           protocol: Tcp
///           sourcePortRange: '*'
///           destinationPortRange: '*'
///           sourceAddressPrefix: '*'
///           destinationAddressPrefix: '*'
///   exampleSubnetNetworkSecurityGroupAssociation:
///     type: azure:network:SubnetNetworkSecurityGroupAssociation
///     name: example
///     properties:
///       subnetId: ${exampleSubnet.id}
///       networkSecurityGroupId: ${exampleNetworkSecurityGroup.id}
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
/// Subnet `&lt;-&gt;` Network Security Group Associations can be imported using the `resource id` of the Subnet, e.g.
///
/// ```sh
/// $ pulumi import azure:network/subnetNetworkSecurityGroupAssociation:SubnetNetworkSecurityGroupAssociation association1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/virtualNetworks/myvnet1/subnets/mysubnet1
/// ```
class SubnetNetworkSecurityGroupAssociation extends pulumi.CustomResource {
  /// The ID of the Network Security Group which should be associated with the Subnet. Changing this forces a new resource to be created.
  late final pulumi.Output<String> networkSecurityGroupId;

  /// The ID of the Subnet. Changing this forces a new resource to be created.
  late final pulumi.Output<String> subnetId;

  /// Creates a new [SubnetNetworkSecurityGroupAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SubnetNetworkSecurityGroupAssociation]. {@macro pulumi_network_subnet_network_security_group_association_subnet_network_security_group_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SubnetNetworkSecurityGroupAssociation(
    String name, {
    SubnetNetworkSecurityGroupAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:network/subnetNetworkSecurityGroupAssociation:SubnetNetworkSecurityGroupAssociation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    networkSecurityGroupId = registerOutput<String>('networkSecurityGroupId');
    subnetId = registerOutput<String>('subnetId');
  }

  /// Gets an existing [SubnetNetworkSecurityGroupAssociation] resource's state with the given [name] and [id].
  static SubnetNetworkSecurityGroupAssociation get(
    String name,
    pulumi.Input<String> id, {
    SubnetNetworkSecurityGroupAssociationState? state,
  }) {
    return SubnetNetworkSecurityGroupAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SubnetNetworkSecurityGroupAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:network/subnetNetworkSecurityGroupAssociation:SubnetNetworkSecurityGroupAssociation',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    networkSecurityGroupId = registerOutput<String>('networkSecurityGroupId');
    subnetId = registerOutput<String>('subnetId');
  }
}
