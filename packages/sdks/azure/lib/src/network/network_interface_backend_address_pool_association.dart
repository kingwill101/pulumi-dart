import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_interface_backend_address_pool_association_args.dart';
import 'network_interface_backend_address_pool_association_state.dart';

/// Manages the association between a Network Interface and a Load Balancer's Backend Address Pool.
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
/// const exampleBackendAddressPool = new azure.lb.BackendAddressPool("example", {
///     loadbalancerId: exampleLoadBalancer.id,
///     name: "acctestpool",
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
/// const exampleNetworkInterfaceBackendAddressPoolAssociation = new azure.network.NetworkInterfaceBackendAddressPoolAssociation("example", {
///     networkInterfaceId: exampleNetworkInterface.id,
///     ipConfigurationName: "testconfiguration1",
///     backendAddressPoolId: exampleBackendAddressPool.id,
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
/// example_backend_address_pool = azure.lb.BackendAddressPool("example",
///     loadbalancer_id=example_load_balancer.id,
///     name="acctestpool")
/// example_network_interface = azure.network.NetworkInterface("example",
///     name="example-nic",
///     location=example.location,
///     resource_group_name=example.name,
///     ip_configurations=[{
///         "name": "testconfiguration1",
///         "subnet_id": example_subnet.id,
///         "private_ip_address_allocation": "Dynamic",
///     }])
/// example_network_interface_backend_address_pool_association = azure.network.NetworkInterfaceBackendAddressPoolAssociation("example",
///     network_interface_id=example_network_interface.id,
///     ip_configuration_name="testconfiguration1",
///     backend_address_pool_id=example_backend_address_pool.id)
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
///     var exampleBackendAddressPool = new Azure.Lb.BackendAddressPool("example", new()
///     {
///         LoadbalancerId = exampleLoadBalancer.Id,
///         Name = "acctestpool",
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
///     var exampleNetworkInterfaceBackendAddressPoolAssociation = new Azure.Network.NetworkInterfaceBackendAddressPoolAssociation("example", new()
///     {
///         NetworkInterfaceId = exampleNetworkInterface.Id,
///         IpConfigurationName = "testconfiguration1",
///         BackendAddressPoolId = exampleBackendAddressPool.Id,
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
/// 					PublicIpAddressId: examplePublicIp.ID(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBackendAddressPool, err := lb.NewBackendAddressPool(ctx, "example", &lb.BackendAddressPoolArgs{
/// 			LoadbalancerId: exampleLoadBalancer.ID(),
/// 			Name:           pulumi.String("acctestpool"),
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
/// 		_, err = network.NewNetworkInterfaceBackendAddressPoolAssociation(ctx, "example", &network.NetworkInterfaceBackendAddressPoolAssociationArgs{
/// 			NetworkInterfaceId:   exampleNetworkInterface.ID(),
/// 			IpConfigurationName:  pulumi.String("testconfiguration1"),
/// 			BackendAddressPoolId: exampleBackendAddressPool.ID(),
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
/// import com.pulumi.azure.network.PublicIp;
/// import com.pulumi.azure.network.PublicIpArgs;
/// import com.pulumi.azure.lb.LoadBalancer;
/// import com.pulumi.azure.lb.LoadBalancerArgs;
/// import com.pulumi.azure.lb.inputs.LoadBalancerFrontendIpConfigurationArgs;
/// import com.pulumi.azure.lb.BackendAddressPool;
/// import com.pulumi.azure.lb.BackendAddressPoolArgs;
/// import com.pulumi.azure.network.NetworkInterface;
/// import com.pulumi.azure.network.NetworkInterfaceArgs;
/// import com.pulumi.azure.network.inputs.NetworkInterfaceIpConfigurationArgs;
/// import com.pulumi.azure.network.NetworkInterfaceBackendAddressPoolAssociation;
/// import com.pulumi.azure.network.NetworkInterfaceBackendAddressPoolAssociationArgs;
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
///         var exampleBackendAddressPool = new BackendAddressPool("exampleBackendAddressPool", BackendAddressPoolArgs.builder()
///             .loadbalancerId(exampleLoadBalancer.id())
///             .name("acctestpool")
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
///         var exampleNetworkInterfaceBackendAddressPoolAssociation = new NetworkInterfaceBackendAddressPoolAssociation("exampleNetworkInterfaceBackendAddressPoolAssociation", NetworkInterfaceBackendAddressPoolAssociationArgs.builder()
///             .networkInterfaceId(exampleNetworkInterface.id())
///             .ipConfigurationName("testconfiguration1")
///             .backendAddressPoolId(exampleBackendAddressPool.id())
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
///   exampleBackendAddressPool:
///     type: azure:lb:BackendAddressPool
///     name: example
///     properties:
///       loadbalancerId: ${exampleLoadBalancer.id}
///       name: acctestpool
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
///   exampleNetworkInterfaceBackendAddressPoolAssociation:
///     type: azure:network:NetworkInterfaceBackendAddressPoolAssociation
///     name: example
///     properties:
///       networkInterfaceId: ${exampleNetworkInterface.id}
///       ipConfigurationName: testconfiguration1
///       backendAddressPoolId: ${exampleBackendAddressPool.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
///
/// ## Import
///
/// Associations between Network Interfaces and Load Balancer Backend Address Pools can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/networkInterfaceBackendAddressPoolAssociation:NetworkInterfaceBackendAddressPoolAssociation association1 "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/networkInterfaces/nic1/ipConfigurations/example|/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Network/loadBalancers/lb1/backendAddressPools/pool1"
/// ```
///
/// > **Note:** This ID is specific to this provider - and is of the format `{networkInterfaceId}/ipConfigurations/{ipConfigurationName}|{backendAddressPoolId}`.
class NetworkInterfaceBackendAddressPoolAssociation extends pulumi.CustomResource {
  /// The ID of the Load Balancer Backend Address Pool which this Network Interface should be connected to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> backendAddressPoolId;
  /// The Name of the IP Configuration within the Network Interface which should be connected to the Backend Address Pool. Changing this forces a new resource to be created.
  late final pulumi.Output<String> ipConfigurationName;
  /// The ID of the Network Interface. Changing this forces a new resource to be created.
  late final pulumi.Output<String> networkInterfaceId;

  /// Creates a new [NetworkInterfaceBackendAddressPoolAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkInterfaceBackendAddressPoolAssociation]. {@macro pulumi_network_network_interface_backend_address_pool_association_network_interface_backend_address_pool_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkInterfaceBackendAddressPoolAssociation(
    String name, {
    NetworkInterfaceBackendAddressPoolAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/networkInterfaceBackendAddressPoolAssociation:NetworkInterfaceBackendAddressPoolAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backendAddressPoolId = registerOutput<String>('backendAddressPoolId');
    this.ipConfigurationName = registerOutput<String>('ipConfigurationName');
    this.networkInterfaceId = registerOutput<String>('networkInterfaceId');
  }

  /// Gets an existing [NetworkInterfaceBackendAddressPoolAssociation] resource's state with the given [name] and [id].
  static NetworkInterfaceBackendAddressPoolAssociation get(
    String name,
    pulumi.Input<String> id, {
    NetworkInterfaceBackendAddressPoolAssociationState? state,
  }) {
    return NetworkInterfaceBackendAddressPoolAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkInterfaceBackendAddressPoolAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/networkInterfaceBackendAddressPoolAssociation:NetworkInterfaceBackendAddressPoolAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backendAddressPoolId = registerOutput<String>('backendAddressPoolId');
    this.ipConfigurationName = registerOutput<String>('ipConfigurationName');
    this.networkInterfaceId = registerOutput<String>('networkInterfaceId');
  }
}
