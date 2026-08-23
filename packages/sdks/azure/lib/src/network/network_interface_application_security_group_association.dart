import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_interface_application_security_group_association_args.dart';
import 'network_interface_application_security_group_association_state.dart';

/// Manages the association between a Network Interface and a Application Security Group.
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
///     addressPrefixes: ["10.0.1.0/24"],
/// });
/// const exampleApplicationSecurityGroup = new azure.network.ApplicationSecurityGroup("example", {
///     name: "example-asg",
///     location: example.location,
///     resourceGroupName: example.name,
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
/// const exampleNetworkInterfaceApplicationSecurityGroupAssociation = new azure.network.NetworkInterfaceApplicationSecurityGroupAssociation("example", {
///     networkInterfaceId: exampleNetworkInterface.id,
///     applicationSecurityGroupId: exampleApplicationSecurityGroup.id,
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
///     address_prefixes=["10.0.1.0/24"])
/// example_application_security_group = azure.network.ApplicationSecurityGroup("example",
///     name="example-asg",
///     location=example.location,
///     resource_group_name=example.name)
/// example_network_interface = azure.network.NetworkInterface("example",
///     name="example-nic",
///     location=example.location,
///     resource_group_name=example.name,
///     ip_configurations=[{
///         "name": "testconfiguration1",
///         "subnet_id": example_subnet.id,
///         "private_ip_address_allocation": "Dynamic",
///     }])
/// example_network_interface_application_security_group_association = azure.network.NetworkInterfaceApplicationSecurityGroupAssociation("example",
///     network_interface_id=example_network_interface.id,
///     application_security_group_id=example_application_security_group.id)
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
///             "10.0.1.0/24",
///         },
///     });
///
///     var exampleApplicationSecurityGroup = new Azure.Network.ApplicationSecurityGroup("example", new()
///     {
///         Name = "example-asg",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
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
///     var exampleNetworkInterfaceApplicationSecurityGroupAssociation = new Azure.Network.NetworkInterfaceApplicationSecurityGroupAssociation("example", new()
///     {
///         NetworkInterfaceId = exampleNetworkInterface.Id,
///         ApplicationSecurityGroupId = exampleApplicationSecurityGroup.Id,
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
/// 			Name:               pulumi.String("internal"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.1.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleApplicationSecurityGroup, err := network.NewApplicationSecurityGroup(ctx, "example", &network.ApplicationSecurityGroupArgs{
/// 			Name:              pulumi.String("example-asg"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
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
/// 					SubnetId:                   exampleSubnet.ID(),
/// 					PrivateIpAddressAllocation: pulumi.String("Dynamic"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewNetworkInterfaceApplicationSecurityGroupAssociation(ctx, "example", &network.NetworkInterfaceApplicationSecurityGroupAssociationArgs{
/// 			NetworkInterfaceId:         exampleNetworkInterface.ID(),
/// 			ApplicationSecurityGroupId: exampleApplicationSecurityGroup.ID(),
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
///   address_prefixes     = ["10.0.1.0/24"]
/// }
/// resource "azure_network_applicationsecuritygroup" "example" {
///   name                = "example-asg"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
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
/// resource "azure_network_networkinterfaceapplicationsecuritygroupassociation" "example" {
///   network_interface_id          = azure_network_networkinterface.example.id
///   application_security_group_id = azure_network_applicationsecuritygroup.example.id
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
/// import com.pulumi.azure.network.ApplicationSecurityGroup;
/// import com.pulumi.azure.network.ApplicationSecurityGroupArgs;
/// import com.pulumi.azure.network.NetworkInterface;
/// import com.pulumi.azure.network.NetworkInterfaceArgs;
/// import com.pulumi.azure.network.inputs.NetworkInterfaceIpConfigurationArgs;
/// import com.pulumi.azure.network.NetworkInterfaceApplicationSecurityGroupAssociation;
/// import com.pulumi.azure.network.NetworkInterfaceApplicationSecurityGroupAssociationArgs;
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
///             .addressPrefixes("10.0.1.0/24")
///             .build());
///
///         var exampleApplicationSecurityGroup = new ApplicationSecurityGroup("exampleApplicationSecurityGroup", ApplicationSecurityGroupArgs.builder()
///             .name("example-asg")
///             .location(example.location())
///             .resourceGroupName(example.name())
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
///         var exampleNetworkInterfaceApplicationSecurityGroupAssociation = new NetworkInterfaceApplicationSecurityGroupAssociation("exampleNetworkInterfaceApplicationSecurityGroupAssociation", NetworkInterfaceApplicationSecurityGroupAssociationArgs.builder()
///             .networkInterfaceId(exampleNetworkInterface.id())
///             .applicationSecurityGroupId(exampleApplicationSecurityGroup.id())
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
///         - 10.0.1.0/24
///   exampleApplicationSecurityGroup:
///     type: azure:network:ApplicationSecurityGroup
///     name: example
///     properties:
///       name: example-asg
///       location: ${example.location}
///       resourceGroupName: ${example.name}
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
///   exampleNetworkInterfaceApplicationSecurityGroupAssociation:
///     type: azure:network:NetworkInterfaceApplicationSecurityGroupAssociation
///     name: example
///     properties:
///       networkInterfaceId: ${exampleNetworkInterface.id}
///       applicationSecurityGroupId: ${exampleApplicationSecurityGroup.id}
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
/// Associations between Network Interfaces and Application Security Groups can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/networkInterfaceApplicationSecurityGroupAssociation:NetworkInterfaceApplicationSecurityGroupAssociation association1 "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/networkInterfaces/nic1|/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Network/applicationSecurityGroups/securityGroup1"
/// ```
///
/// &gt; **Note:** This ID is specific to this provider - and is of the format `{networkInterfaceId}|{applicationSecurityGroupId}`.
class NetworkInterfaceApplicationSecurityGroupAssociation extends pulumi.CustomResource {
  /// The ID of the Application Security Group which this Network Interface which should be connected to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> applicationSecurityGroupId;
  /// The ID of the Network Interface. Changing this forces a new resource to be created.
  late final pulumi.Output<String> networkInterfaceId;

  /// Creates a new [NetworkInterfaceApplicationSecurityGroupAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkInterfaceApplicationSecurityGroupAssociation]. {@macro pulumi_network_network_interface_application_security_group_association_network_interface_application_security_group_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkInterfaceApplicationSecurityGroupAssociation(
    String name, {
    NetworkInterfaceApplicationSecurityGroupAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/networkInterfaceApplicationSecurityGroupAssociation:NetworkInterfaceApplicationSecurityGroupAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationSecurityGroupId = registerOutput<String>('applicationSecurityGroupId');
    networkInterfaceId = registerOutput<String>('networkInterfaceId');
  }

  /// Gets an existing [NetworkInterfaceApplicationSecurityGroupAssociation] resource's state with the given [name] and [id].
  static NetworkInterfaceApplicationSecurityGroupAssociation get(
    String name,
    pulumi.Input<String> id, {
    NetworkInterfaceApplicationSecurityGroupAssociationState? state,
  }) {
    return NetworkInterfaceApplicationSecurityGroupAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkInterfaceApplicationSecurityGroupAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/networkInterfaceApplicationSecurityGroupAssociation:NetworkInterfaceApplicationSecurityGroupAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationSecurityGroupId = registerOutput<String>('applicationSecurityGroupId');
    networkInterfaceId = registerOutput<String>('networkInterfaceId');
  }
}
