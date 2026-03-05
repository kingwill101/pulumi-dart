import 'package:pulumi/pulumi.dart' as pulumi;
import 'lication_load_balancer_subnet_association_args.dart';
import 'lication_load_balancer_subnet_association_state.dart';

/// Manages an association between an Application Gateway for Containers and a Subnet.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-rg",
///     location: "westeurope",
/// });
/// const exampleLicationLoadBalancer = new azure.appconfiguration.LicationLoadBalancer("example", {
///     name: "example-alb",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "example-vnet",
///     addressSpaces: ["10.0.0.0/16"],
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "example-subnet",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.1.0/24"],
///     delegations: [{
///         name: "delegation",
///         serviceDelegation: {
///             name: "Microsoft.ServiceNetworking/trafficControllers",
///             actions: ["Microsoft.Network/virtualNetworks/subnets/join/action"],
///         },
///     }],
/// });
/// const exampleLicationLoadBalancerSubnetAssociation = new azure.appconfiguration.LicationLoadBalancerSubnetAssociation("example", {
///     name: "example",
///     applicationLoadBalancerId: exampleLicationLoadBalancer.id,
///     subnetId: exampleSubnet.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="westeurope")
/// example_lication_load_balancer = azure.appconfiguration.LicationLoadBalancer("example",
///     name="example-alb",
///     location=example.location,
///     resource_group_name=example.name)
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="example-vnet",
///     address_spaces=["10.0.0.0/16"],
///     location=example.location,
///     resource_group_name=example.name)
/// example_subnet = azure.network.Subnet("example",
///     name="example-subnet",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.1.0/24"],
///     delegations=[{
///         "name": "delegation",
///         "service_delegation": {
///             "name": "Microsoft.ServiceNetworking/trafficControllers",
///             "actions": ["Microsoft.Network/virtualNetworks/subnets/join/action"],
///         },
///     }])
/// example_lication_load_balancer_subnet_association = azure.appconfiguration.LicationLoadBalancerSubnetAssociation("example",
///     name="example",
///     application_load_balancer_id=example_lication_load_balancer.id,
///     subnet_id=example_subnet.id)
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
///         Name = "example-rg",
///         Location = "westeurope",
///     });
///
///     var exampleLicationLoadBalancer = new Azure.AppConfiguration.LicationLoadBalancer("example", new()
///     {
///         Name = "example-alb",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
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
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "example-subnet",
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
///                 Name = "delegation",
///                 ServiceDelegation = new Azure.Network.Inputs.SubnetDelegationServiceDelegationArgs
///                 {
///                     Name = "Microsoft.ServiceNetworking/trafficControllers",
///                     Actions = new[]
///                     {
///                         "Microsoft.Network/virtualNetworks/subnets/join/action",
///                     },
///                 },
///             },
///         },
///     });
///
///     var exampleLicationLoadBalancerSubnetAssociation = new Azure.AppConfiguration.LicationLoadBalancerSubnetAssociation("example", new()
///     {
///         Name = "example",
///         ApplicationLoadBalancerId = exampleLicationLoadBalancer.Id,
///         SubnetId = exampleSubnet.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appconfiguration"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-rg"),
/// 			Location: pulumi.String("westeurope"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLicationLoadBalancer, err := appconfiguration.NewLicationLoadBalancer(ctx, "example", &appconfiguration.LicationLoadBalancerArgs{
/// 			Name:              pulumi.String("example-alb"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
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
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("example-subnet"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.1.0/24"),
/// 			},
/// 			Delegations: network.SubnetDelegationArray{
/// 				&network.SubnetDelegationArgs{
/// 					Name: pulumi.String("delegation"),
/// 					ServiceDelegation: &network.SubnetDelegationServiceDelegationArgs{
/// 						Name: pulumi.String("Microsoft.ServiceNetworking/trafficControllers"),
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
/// 		_, err = appconfiguration.NewLicationLoadBalancerSubnetAssociation(ctx, "example", &appconfiguration.LicationLoadBalancerSubnetAssociationArgs{
/// 			Name:                      pulumi.String("example"),
/// 			ApplicationLoadBalancerId: exampleLicationLoadBalancer.ID(),
/// 			SubnetId:                  exampleSubnet.ID(),
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
/// import com.pulumi.azure.appconfiguration.LicationLoadBalancer;
/// import com.pulumi.azure.appconfiguration.LicationLoadBalancerArgs;
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationServiceDelegationArgs;
/// import com.pulumi.azure.appconfiguration.LicationLoadBalancerSubnetAssociation;
/// import com.pulumi.azure.appconfiguration.LicationLoadBalancerSubnetAssociationArgs;
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
///             .name("example-rg")
///             .location("westeurope")
///             .build());
///
///         var exampleLicationLoadBalancer = new LicationLoadBalancer("exampleLicationLoadBalancer", LicationLoadBalancerArgs.builder()
///             .name("example-alb")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("example-vnet")
///             .addressSpaces("10.0.0.0/16")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("example-subnet")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.1.0/24")
///             .delegations(SubnetDelegationArgs.builder()
///                 .name("delegation")
///                 .serviceDelegation(SubnetDelegationServiceDelegationArgs.builder()
///                     .name("Microsoft.ServiceNetworking/trafficControllers")
///                     .actions("Microsoft.Network/virtualNetworks/subnets/join/action")
///                     .build())
///                 .build())
///             .build());
///
///         var exampleLicationLoadBalancerSubnetAssociation = new LicationLoadBalancerSubnetAssociation("exampleLicationLoadBalancerSubnetAssociation", LicationLoadBalancerSubnetAssociationArgs.builder()
///             .name("example")
///             .applicationLoadBalancerId(exampleLicationLoadBalancer.id())
///             .subnetId(exampleSubnet.id())
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
///       name: example-rg
///       location: westeurope
///   exampleLicationLoadBalancer:
///     type: azure:appconfiguration:LicationLoadBalancer
///     name: example
///     properties:
///       name: example-alb
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: example-vnet
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
///         - 10.0.1.0/24
///       delegations:
///         - name: delegation
///           serviceDelegation:
///             name: Microsoft.ServiceNetworking/trafficControllers
///             actions:
///               - Microsoft.Network/virtualNetworks/subnets/join/action
///   exampleLicationLoadBalancerSubnetAssociation:
///     type: azure:appconfiguration:LicationLoadBalancerSubnetAssociation
///     name: example
///     properties:
///       name: example
///       applicationLoadBalancerId: ${exampleLicationLoadBalancer.id}
///       subnetId: ${exampleSubnet.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ServiceNetworking` - 2025-01-01
///
/// ## Import
///
/// Application Gateway for Containers Associations can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:appconfiguration/licationLoadBalancerSubnetAssociation:LicationLoadBalancerSubnetAssociation example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.ServiceNetworking/trafficControllers/alb1/associations/association1
/// ```
class LicationLoadBalancerSubnetAssociation extends pulumi.CustomResource {
  /// The ID of the Application Gateway for Containers. Changing this forces a new resource to be created.
  late final pulumi.Output<String> applicationLoadBalancerId;
  /// The name which should be used for this Application Gateway for Containers Association. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The ID of the subnet which the Application Gateway for Containers associated to.
  ///
  /// &gt; **Note:** The subnet to be used must have a delegation for  `Microsoft.ServiceNetworking/trafficControllers` as shown in the example above.
  late final pulumi.Output<String> subnetId;
  /// A mapping of tags which should be assigned to the Application Gateway for Containers Association.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [LicationLoadBalancerSubnetAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LicationLoadBalancerSubnetAssociation]. {@macro pulumi_appconfiguration_lication_load_balancer_subnet_association_lication_load_balancer_subnet_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LicationLoadBalancerSubnetAssociation(
    String name, {
    LicationLoadBalancerSubnetAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appconfiguration/licationLoadBalancerSubnetAssociation:LicationLoadBalancerSubnetAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationLoadBalancerId = registerOutput<String>('applicationLoadBalancerId');
    this.name = registerOutput<String>('name');
    subnetId = registerOutput<String>('subnetId');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [LicationLoadBalancerSubnetAssociation] resource's state with the given [name] and [id].
  static LicationLoadBalancerSubnetAssociation get(
    String name,
    pulumi.Input<String> id, {
    LicationLoadBalancerSubnetAssociationState? state,
  }) {
    return LicationLoadBalancerSubnetAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LicationLoadBalancerSubnetAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:appconfiguration/licationLoadBalancerSubnetAssociation:LicationLoadBalancerSubnetAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationLoadBalancerId = registerOutput<String>('applicationLoadBalancerId');
    this.name = registerOutput<String>('name');
    subnetId = registerOutput<String>('subnetId');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
