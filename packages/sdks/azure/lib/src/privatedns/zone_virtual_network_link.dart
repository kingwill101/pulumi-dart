import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_virtual_network_link_args.dart';
import 'zone_virtual_network_link_state.dart';

/// Enables you to manage Private DNS zone Virtual Network Links. These Links enable DNS resolution and registration inside Azure Virtual Networks using Azure Private DNS.
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
/// const exampleZone = new azure.privatedns.Zone("example", {
///     name: "mydomain.com",
///     resourceGroupName: example.name,
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "test-network",
///     addressSpaces: ["10.0.0.0/16"],
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleZoneVirtualNetworkLink = new azure.privatedns.ZoneVirtualNetworkLink("example", {
///     name: "test",
///     resourceGroupName: example.name,
///     privateDnsZoneName: exampleZone.name,
///     virtualNetworkId: exampleVirtualNetwork.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_zone = azure.privatedns.Zone("example",
///     name="mydomain.com",
///     resource_group_name=example.name)
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="test-network",
///     address_spaces=["10.0.0.0/16"],
///     location=example.location,
///     resource_group_name=example.name)
/// example_zone_virtual_network_link = azure.privatedns.ZoneVirtualNetworkLink("example",
///     name="test",
///     resource_group_name=example.name,
///     private_dns_zone_name=example_zone.name,
///     virtual_network_id=example_virtual_network.id)
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
///     var exampleZone = new Azure.PrivateDns.Zone("example", new()
///     {
///         Name = "mydomain.com",
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "test-network",
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleZoneVirtualNetworkLink = new Azure.PrivateDns.ZoneVirtualNetworkLink("example", new()
///     {
///         Name = "test",
///         ResourceGroupName = example.Name,
///         PrivateDnsZoneName = exampleZone.Name,
///         VirtualNetworkId = exampleVirtualNetwork.Id,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/privatedns"
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
/// 		exampleZone, err := privatedns.NewZone(ctx, "example", &privatedns.ZoneArgs{
/// 			Name:              pulumi.String("mydomain.com"),
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name: pulumi.String("test-network"),
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = privatedns.NewZoneVirtualNetworkLink(ctx, "example", &privatedns.ZoneVirtualNetworkLinkArgs{
/// 			Name:               pulumi.String("test"),
/// 			ResourceGroupName:  example.Name,
/// 			PrivateDnsZoneName: exampleZone.Name,
/// 			VirtualNetworkId:   exampleVirtualNetwork.ID(),
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
/// import com.pulumi.azure.privatedns.Zone;
/// import com.pulumi.azure.privatedns.ZoneArgs;
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.privatedns.ZoneVirtualNetworkLink;
/// import com.pulumi.azure.privatedns.ZoneVirtualNetworkLinkArgs;
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
///         var exampleZone = new Zone("exampleZone", ZoneArgs.builder()
///             .name("mydomain.com")
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("test-network")
///             .addressSpaces("10.0.0.0/16")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleZoneVirtualNetworkLink = new ZoneVirtualNetworkLink("exampleZoneVirtualNetworkLink", ZoneVirtualNetworkLinkArgs.builder()
///             .name("test")
///             .resourceGroupName(example.name())
///             .privateDnsZoneName(exampleZone.name())
///             .virtualNetworkId(exampleVirtualNetwork.id())
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
///   exampleZone:
///     type: azure:privatedns:Zone
///     name: example
///     properties:
///       name: mydomain.com
///       resourceGroupName: ${example.name}
///   exampleZoneVirtualNetworkLink:
///     type: azure:privatedns:ZoneVirtualNetworkLink
///     name: example
///     properties:
///       name: test
///       resourceGroupName: ${example.name}
///       privateDnsZoneName: ${exampleZone.name}
///       virtualNetworkId: ${exampleVirtualNetwork.id}
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: test-network
///       addressSpaces:
///         - 10.0.0.0/16
///       location: ${example.location}
///       resourceGroupName: ${example.name}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2024-06-01
///
/// ## Import
///
/// Private DNS Zone Virtual Network Links can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:privatedns/zoneVirtualNetworkLink:ZoneVirtualNetworkLink link1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/privateDnsZones/zone1.com/virtualNetworkLinks/myVnetLink1
/// ```
class ZoneVirtualNetworkLink extends pulumi.CustomResource {
  /// The name of the Private DNS Zone Virtual Network Link. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the Private DNS zone (without a terminating dot). Changing this forces a new resource to be created.
  late final pulumi.Output<String> privateDnsZoneName;
  /// Is auto-registration of virtual machine records in the virtual network in the Private DNS zone enabled? Defaults to `false`.
  late final pulumi.Output<bool?> registrationEnabled;
  /// Specifies the resolution policy of the Private DNS Zone Virtual Network Link. Possible values are `Default` and `NxDomainRedirect`.
  late final pulumi.Output<String> resolutionPolicy;
  /// Specifies the resource group where the Private DNS Zone exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The ID of the Virtual Network that should be linked to the DNS Zone. Changing this forces a new resource to be created.
  late final pulumi.Output<String> virtualNetworkId;

  /// Creates a new [ZoneVirtualNetworkLink].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZoneVirtualNetworkLink]. {@macro pulumi_privatedns_zone_virtual_network_link_zone_virtual_network_link_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZoneVirtualNetworkLink(
    String name, {
    ZoneVirtualNetworkLinkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:privatedns/zoneVirtualNetworkLink:ZoneVirtualNetworkLink',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.privateDnsZoneName = registerOutput<String>('privateDnsZoneName');
    this.registrationEnabled = registerOutput<bool?>('registrationEnabled');
    this.resolutionPolicy = registerOutput<String>('resolutionPolicy');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.virtualNetworkId = registerOutput<String>('virtualNetworkId');
  }

  /// Gets an existing [ZoneVirtualNetworkLink] resource's state with the given [name] and [id].
  static ZoneVirtualNetworkLink get(
    String name,
    pulumi.Input<String> id, {
    ZoneVirtualNetworkLinkState? state,
  }) {
    return ZoneVirtualNetworkLink._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ZoneVirtualNetworkLink._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:privatedns/zoneVirtualNetworkLink:ZoneVirtualNetworkLink',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.privateDnsZoneName = registerOutput<String>('privateDnsZoneName');
    this.registrationEnabled = registerOutput<bool?>('registrationEnabled');
    this.resolutionPolicy = registerOutput<String>('resolutionPolicy');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.virtualNetworkId = registerOutput<String>('virtualNetworkId');
  }
}
