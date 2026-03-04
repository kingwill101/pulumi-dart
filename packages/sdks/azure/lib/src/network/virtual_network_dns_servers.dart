import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_dns_servers_args.dart';
import 'virtual_network_dns_servers_state.dart';

/// Manages the DNS servers associated with a virtual network.
///
/// &gt; **Note:** Terraform currently provides both a standalone virtual network DNS Servers resource, and allows for DNS servers to be defined in-line within the Virtual Network resource.
/// At this time you cannot use a Virtual Network with in-line DNS servers in conjunction with any Virtual Network DNS Servers resources. Doing so will cause a conflict of Virtual Network DNS Servers configurations and will overwrite virtual networks DNS servers.
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
///     subnets: [{
///         name: "subnet1",
///         addressPrefix: "10.0.1.0/24",
///     }],
/// });
/// const exampleVirtualNetworkDnsServers = new azure.network.VirtualNetworkDnsServers("example", {
///     virtualNetworkId: exampleVirtualNetwork.id,
///     dnsServers: [
///         "10.7.7.2",
///         "10.7.7.7",
///         "10.7.7.1",
///     ],
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
///     resource_group_name=example.name,
///     subnets=[{
///         "name": "subnet1",
///         "address_prefix": "10.0.1.0/24",
///     }])
/// example_virtual_network_dns_servers = azure.network.VirtualNetworkDnsServers("example",
///     virtual_network_id=example_virtual_network.id,
///     dns_servers=[
///         "10.7.7.2",
///         "10.7.7.7",
///         "10.7.7.1",
///     ])
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
///         Subnets = new[]
///         {
///             new Azure.Network.Inputs.VirtualNetworkSubnetArgs
///             {
///                 Name = "subnet1",
///                 AddressPrefix = "10.0.1.0/24",
///             },
///         },
///     });
///
///     var exampleVirtualNetworkDnsServers = new Azure.Network.VirtualNetworkDnsServers("example", new()
///     {
///         VirtualNetworkId = exampleVirtualNetwork.Id,
///         DnsServers = new[]
///         {
///             "10.7.7.2",
///             "10.7.7.7",
///             "10.7.7.1",
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
/// 			Subnets: network.VirtualNetworkSubnetArray{
/// 				&network.VirtualNetworkSubnetArgs{
/// 					Name:          pulumi.String("subnet1"),
/// 					AddressPrefix: "10.0.1.0/24",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewVirtualNetworkDnsServers(ctx, "example", &network.VirtualNetworkDnsServersArgs{
/// 			VirtualNetworkId: exampleVirtualNetwork.ID(),
/// 			DnsServers: pulumi.StringArray{
/// 				pulumi.String("10.7.7.2"),
/// 				pulumi.String("10.7.7.7"),
/// 				pulumi.String("10.7.7.1"),
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
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.inputs.VirtualNetworkSubnetArgs;
/// import com.pulumi.azure.network.VirtualNetworkDnsServers;
/// import com.pulumi.azure.network.VirtualNetworkDnsServersArgs;
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
///             .name("example-vnet")
///             .addressSpaces("10.0.0.0/16")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .subnets(VirtualNetworkSubnetArgs.builder()
///                 .name("subnet1")
///                 .addressPrefix("10.0.1.0/24")
///                 .build())
///             .build());
///
///         var exampleVirtualNetworkDnsServers = new VirtualNetworkDnsServers("exampleVirtualNetworkDnsServers", VirtualNetworkDnsServersArgs.builder()
///             .virtualNetworkId(exampleVirtualNetwork.id())
///             .dnsServers(
///                 "10.7.7.2",
///                 "10.7.7.7",
///                 "10.7.7.1")
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
///       subnets:
///         - name: subnet1
///           addressPrefix: 10.0.1.0/24
///   exampleVirtualNetworkDnsServers:
///     type: azure:network:VirtualNetworkDnsServers
///     name: example
///     properties:
///       virtualNetworkId: ${exampleVirtualNetwork.id}
///       dnsServers:
///         - 10.7.7.2
///         - 10.7.7.7
///         - 10.7.7.1
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
/// Virtual Network DNS Servers can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/virtualNetworkDnsServers:VirtualNetworkDnsServers exampleNetwork /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/virtualNetworks/myvnet1/dnsServers/default
/// ```
class VirtualNetworkDnsServers extends pulumi.CustomResource {
  /// List of IP addresses of DNS servers
  late final pulumi.Output<List<String>?> dnsServers;

  /// The ID of the Virtual Network that should be linked to the DNS Zone. Changing this forces a new resource to be created.
  late final pulumi.Output<String> virtualNetworkId;

  /// Creates a new [VirtualNetworkDnsServers].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualNetworkDnsServers]. {@macro pulumi_network_virtual_network_dns_servers_virtual_network_dns_servers_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualNetworkDnsServers(
    String name, {
    VirtualNetworkDnsServersArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:network/virtualNetworkDnsServers:VirtualNetworkDnsServers',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    dnsServers = registerOutput<List<String>?>('dnsServers');
    virtualNetworkId = registerOutput<String>('virtualNetworkId');
  }

  /// Gets an existing [VirtualNetworkDnsServers] resource's state with the given [name] and [id].
  static VirtualNetworkDnsServers get(
    String name,
    pulumi.Input<String> id, {
    VirtualNetworkDnsServersState? state,
  }) {
    return VirtualNetworkDnsServers._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VirtualNetworkDnsServers._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:network/virtualNetworkDnsServers:VirtualNetworkDnsServers',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    dnsServers = registerOutput<List<String>?>('dnsServers');
    virtualNetworkId = registerOutput<String>('virtualNetworkId');
  }
}
