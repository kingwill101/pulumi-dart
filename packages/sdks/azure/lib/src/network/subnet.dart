import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_args.dart';
import 'subnet_ip_address_pool.dart';
import 'subnet_state.dart';

/// Manages a subnet. Subnets represent network segments within the IP space defined by the virtual network.
///
/// &gt; **NOTE on Virtual Networks and Subnet's:** This provider currently
/// provides both a standalone Subnet resource, and allows for Subnets to be defined in-line within the Virtual Network resource.
/// At this time you cannot use a Virtual Network with in-line Subnets in conjunction with any Subnet resources. Doing so will cause a conflict of Subnet configurations and will overwrite Subnets.
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
///             name: "Microsoft.ContainerInstance/containerGroups",
///             actions: [
///                 "Microsoft.Network/virtualNetworks/subnets/join/action",
///                 "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action",
///             ],
///         },
///     }],
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
///             "name": "Microsoft.ContainerInstance/containerGroups",
///             "actions": [
///                 "Microsoft.Network/virtualNetworks/subnets/join/action",
///                 "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action",
///             ],
///         },
///     }])
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
///                     Name = "Microsoft.ContainerInstance/containerGroups",
///                     Actions = new[]
///                     {
///                         "Microsoft.Network/virtualNetworks/subnets/join/action",
///                         "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action",
///                     },
///                 },
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
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewSubnet(ctx, "example", &network.SubnetArgs{
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
/// 						Name: pulumi.String("Microsoft.ContainerInstance/containerGroups"),
/// 						Actions: pulumi.StringArray{
/// 							pulumi.String("Microsoft.Network/virtualNetworks/subnets/join/action"),
/// 							pulumi.String("Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action"),
/// 						},
/// 					},
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
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_network_virtualnetwork" "example" {
///   name                = "example-vnet"
///   address_spaces      = ["10.0.0.0/16"]
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_network_subnet" "example" {
///   name                 = "example-subnet"
///   resource_group_name  = azure_core_resourcegroup.example.name
///   virtual_network_name = azure_network_virtualnetwork.example.name
///   address_prefixes     = ["10.0.1.0/24"]
///   delegations {
///     name = "delegation"
///     service_delegation = {
///       name    = "Microsoft.ContainerInstance/containerGroups"
///       actions = ["Microsoft.Network/virtualNetworks/subnets/join/action", "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action"]
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
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationServiceDelegationArgs;
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
///                     .name("Microsoft.ContainerInstance/containerGroups")
///                     .actions(
///                         "Microsoft.Network/virtualNetworks/subnets/join/action",
///                         "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action")
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
///       name: example-resources
///       location: West Europe
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
///             name: Microsoft.ContainerInstance/containerGroups
///             actions:
///               - Microsoft.Network/virtualNetworks/subnets/join/action
///               - Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action
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
/// Subnets can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/subnet:Subnet exampleSubnet /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/virtualNetworks/myvnet1/subnets/mysubnet1
/// ```
class Subnet extends pulumi.CustomResource {
  /// The address prefixes to use for the subnet.
  ///
  /// &gt; **Note:** Exactly one of `addressPrefixes` or `ipAddressPool` must be specified.
  late final pulumi.Output<List<String>?> addressPrefixes;
  /// Enable default outbound access to the internet for the subnet. Defaults to `true`.
  late final pulumi.Output<bool?> defaultOutboundAccessEnabled;
  /// One or more `delegation` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> delegations;
  /// An `ipAddressPool` block as defined below.
  ///
  /// &gt; **Note:** Exactly one of `addressPrefixes` or `ipAddressPool` must be specified.
  late final pulumi.Output<SubnetIpAddressPool?> ipAddressPool;
  /// The name of the subnet. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Enable or Disable network policies for the private endpoint on the subnet. Possible values are `Disabled`, `Enabled`, `NetworkSecurityGroupEnabled` and `RouteTableEnabled`. Defaults to `Disabled`.
  ///
  /// &gt; **NOTE:** If you don't want to use network policies like user-defined Routes and Network Security Groups, you need to set `privateEndpointNetworkPolicies` in the subnet to `Disabled`. This setting only applies to Private Endpoints in the Subnet and affects all Private Endpoints in the Subnet. For other resources in the Subnet, access is controlled based via the Network Security Group which can be configured using the `azure.network.SubnetNetworkSecurityGroupAssociation` resource.
  ///
  /// &gt; **NOTE:** If you want to use network policies like user-defined Routes and Network Security Groups, you need to set the `privateEndpointNetworkPolicies` in the Subnet to `Enabled`/`NetworkSecurityGroupEnabled`/`RouteTableEnabled`. This setting only applies to Private Endpoints in the Subnet and affects all Private Endpoints in the Subnet. For other resources in the Subnet, access is controlled based via the Network Security Group which can be configured using the `azure.network.SubnetNetworkSecurityGroupAssociation` resource.
  ///
  /// &gt; **NOTE:** See more details from [Manage network policies for Private Endpoints](https://learn.microsoft.com/en-gb/azure/private-link/disable-private-endpoint-network-policy?tabs=network-policy-portal).
  late final pulumi.Output<String?> privateEndpointNetworkPolicies;
  /// Enable or Disable network policies for the private link service on the subnet. Defaults to `true`.
  ///
  /// &gt; **NOTE:** When configuring Azure Private Link service, the explicit setting `privateLinkServiceNetworkPoliciesEnabled` must be set to `false` in the subnet since Private Link Service does not support network policies like user-defined Routes and Network Security Groups. This setting only affects the Private Link service. For other resources in the subnet, access is controlled based on the Network Security Group which can be configured using the `azure.network.SubnetNetworkSecurityGroupAssociation` resource. See more details from [Manage network policies for Private Link Services](https://learn.microsoft.com/en-gb/azure/private-link/disable-private-link-service-network-policy?tabs=private-link-network-policy-powershell).
  late final pulumi.Output<bool?> privateLinkServiceNetworkPoliciesEnabled;
  /// The name of the resource group in which to create the subnet. This must be the resource group that the virtual network resides in. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The list of IDs of Service Endpoint Policies to associate with the subnet.
  late final pulumi.Output<List<String>?> serviceEndpointPolicyIds;
  /// The list of Service endpoints to associate with the subnet. Possible values include: `Microsoft.AzureActiveDirectory`, `Microsoft.AzureCosmosDB`, `Microsoft.ContainerRegistry`, `Microsoft.EventHub`, `Microsoft.KeyVault`, `Microsoft.ServiceBus`, `Microsoft.Sql`, `Microsoft.Storage`, `Microsoft.Storage.Global` and `Microsoft.Web`.
  ///
  /// &gt; **NOTE:** In order to use `Microsoft.Storage.Global` service endpoint (which allows access to virtual networks in other regions), you must enable the `AllowGlobalTagsForStorage` feature in your subscription. This is currently a preview feature, please see the [official documentation](https://learn.microsoft.com/en-us/azure/storage/common/storage-network-security?tabs=azure-cli#enabling-access-to-virtual-networks-in-other-regions-preview) for more information.
  late final pulumi.Output<List<String>?> serviceEndpoints;
  /// The sharing scope of the subnet. Possible value is `Tenant`.
  ///
  /// &gt; **Note:** This property cannot be set if `defaultOutboundAccessEnabled` is set to `true`.
  ///
  /// &gt; **Note:** The `sharingScope` property is only available to users who have been explicitly registered and granted access by the Azure Networking Product Group.
  late final pulumi.Output<String?> sharingScope;
  /// The name of the virtual network to which to attach the subnet. Changing this forces a new resource to be created.
  late final pulumi.Output<String> virtualNetworkName;

  /// Creates a new [Subnet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Subnet]. {@macro pulumi_network_subnet_subnet_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Subnet(
    String name, {
    SubnetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/subnet:Subnet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addressPrefixes = registerOutput<List<String>?>('addressPrefixes');
    defaultOutboundAccessEnabled = registerOutput<bool?>('defaultOutboundAccessEnabled');
    delegations = registerOutput<List<Map<String, dynamic>>?>('delegations');
    ipAddressPool = registerOutput<SubnetIpAddressPool?>('ipAddressPool', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubnetIpAddressPool.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    privateEndpointNetworkPolicies = registerOutput<String?>('privateEndpointNetworkPolicies');
    privateLinkServiceNetworkPoliciesEnabled = registerOutput<bool?>('privateLinkServiceNetworkPoliciesEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    serviceEndpointPolicyIds = registerOutput<List<String>?>('serviceEndpointPolicyIds');
    serviceEndpoints = registerOutput<List<String>?>('serviceEndpoints');
    sharingScope = registerOutput<String?>('sharingScope');
    virtualNetworkName = registerOutput<String>('virtualNetworkName');
  }

  /// Gets an existing [Subnet] resource's state with the given [name] and [id].
  static Subnet get(
    String name,
    pulumi.Input<String> id, {
    SubnetState? state,
  }) {
    return Subnet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Subnet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/subnet:Subnet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addressPrefixes = registerOutput<List<String>?>('addressPrefixes');
    defaultOutboundAccessEnabled = registerOutput<bool?>('defaultOutboundAccessEnabled');
    delegations = registerOutput<List<Map<String, dynamic>>?>('delegations');
    ipAddressPool = registerOutput<SubnetIpAddressPool?>('ipAddressPool', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubnetIpAddressPool.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    privateEndpointNetworkPolicies = registerOutput<String?>('privateEndpointNetworkPolicies');
    privateLinkServiceNetworkPoliciesEnabled = registerOutput<bool?>('privateLinkServiceNetworkPoliciesEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    serviceEndpointPolicyIds = registerOutput<List<String>?>('serviceEndpointPolicyIds');
    serviceEndpoints = registerOutput<List<String>?>('serviceEndpoints');
    sharingScope = registerOutput<String?>('sharingScope');
    virtualNetworkName = registerOutput<String>('virtualNetworkName');
  }
}
