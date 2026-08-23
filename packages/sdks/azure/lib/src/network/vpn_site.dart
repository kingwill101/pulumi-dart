import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_site_args.dart';
import 'vpn_site_o365_policy.dart';
import 'vpn_site_state.dart';

/// Manages a VPN Site.
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
///     location: "West Europe",
/// });
/// const exampleVirtualWan = new azure.network.VirtualWan("example", {
///     name: "example-vwan",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const exampleVpnSite = new azure.network.VpnSite("example", {
///     name: "site1",
///     resourceGroupName: example.name,
///     location: example.location,
///     virtualWanId: exampleVirtualWan.id,
///     addressCidrs: ["10.0.0.0/24"],
///     links: [{
///         name: "link1",
///         ipAddress: "10.0.0.1",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="West Europe")
/// example_virtual_wan = azure.network.VirtualWan("example",
///     name="example-vwan",
///     resource_group_name=example.name,
///     location=example.location)
/// example_vpn_site = azure.network.VpnSite("example",
///     name="site1",
///     resource_group_name=example.name,
///     location=example.location,
///     virtual_wan_id=example_virtual_wan.id,
///     address_cidrs=["10.0.0.0/24"],
///     links=[{
///         "name": "link1",
///         "ip_address": "10.0.0.1",
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
///         Name = "example-rg",
///         Location = "West Europe",
///     });
///
///     var exampleVirtualWan = new Azure.Network.VirtualWan("example", new()
///     {
///         Name = "example-vwan",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var exampleVpnSite = new Azure.Network.VpnSite("example", new()
///     {
///         Name = "site1",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         VirtualWanId = exampleVirtualWan.Id,
///         AddressCidrs = new[]
///         {
///             "10.0.0.0/24",
///         },
///         Links = new[]
///         {
///             new Azure.Network.Inputs.VpnSiteLinkArgs
///             {
///                 Name = "link1",
///                 IpAddress = "10.0.0.1",
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
/// 			Name:     pulumi.String("example-rg"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualWan, err := network.NewVirtualWan(ctx, "example", &network.VirtualWanArgs{
/// 			Name:              pulumi.String("example-vwan"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewVpnSite(ctx, "example", &network.VpnSiteArgs{
/// 			Name:              pulumi.String("site1"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			VirtualWanId:      exampleVirtualWan.ID(),
/// 			AddressCidrs: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/24"),
/// 			},
/// 			Links: network.VpnSiteLinkArray{
/// 				&network.VpnSiteLinkArgs{
/// 					Name:      pulumi.String("link1"),
/// 					IpAddress: pulumi.String("10.0.0.1"),
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
///   name     = "example-rg"
///   location = "West Europe"
/// }
/// resource "azure_network_virtualwan" "example" {
///   name                = "example-vwan"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
/// }
/// resource "azure_network_vpnsite" "example" {
///   name                = "site1"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   virtual_wan_id      = azure_network_virtualwan.example.id
///   address_cidrs       = ["10.0.0.0/24"]
///   links {
///     name       = "link1"
///     ip_address = "10.0.0.1"
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
/// import com.pulumi.azure.network.VirtualWan;
/// import com.pulumi.azure.network.VirtualWanArgs;
/// import com.pulumi.azure.network.VpnSite;
/// import com.pulumi.azure.network.VpnSiteArgs;
/// import com.pulumi.azure.network.inputs.VpnSiteLinkArgs;
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
///             .name("example-rg")
///             .location("West Europe")
///             .build());
///
///         var exampleVirtualWan = new VirtualWan("exampleVirtualWan", VirtualWanArgs.builder()
///             .name("example-vwan")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var exampleVpnSite = new VpnSite("exampleVpnSite", VpnSiteArgs.builder()
///             .name("site1")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .virtualWanId(exampleVirtualWan.id())
///             .addressCidrs("10.0.0.0/24")
///             .links(VpnSiteLinkArgs.builder()
///                 .name("link1")
///                 .ipAddress("10.0.0.1")
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
///       name: example-rg
///       location: West Europe
///   exampleVirtualWan:
///     type: azure:network:VirtualWan
///     name: example
///     properties:
///       name: example-vwan
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   exampleVpnSite:
///     type: azure:network:VpnSite
///     name: example
///     properties:
///       name: site1
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       virtualWanId: ${exampleVirtualWan.id}
///       addressCidrs:
///         - 10.0.0.0/24
///       links:
///         - name: link1
///           ipAddress: 10.0.0.1
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
/// VPN Sites can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/vpnSite:VpnSite example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/vpnSites/site1
/// ```
class VpnSite extends pulumi.CustomResource {
  /// Specifies a list of IP address CIDRs that are located on your on-premises site. Traffic destined for these address spaces is routed to your local site.
  ///
  /// &gt; **Note:** The `addressCidrs` has to be set when the `link.bgp` isn't specified.
  late final pulumi.Output<List<String>?> addressCidrs;
  /// The model of the VPN device.
  late final pulumi.Output<String?> deviceModel;
  /// The name of the VPN device vendor.
  late final pulumi.Output<String?> deviceVendor;
  /// One or more `link` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> links;
  /// The Azure Region where the VPN Site should exist. Changing this forces a new VPN Site to be created.
  late final pulumi.Output<String> location;
  /// The name which should be used for this VPN Site. Changing this forces a new VPN Site to be created.
  late final pulumi.Output<String> name;
  /// An `o365Policy` block as defined below.
  late final pulumi.Output<VpnSiteO365Policy> o365Policy;
  /// The name of the Resource Group where the VPN Site should exist. Changing this forces a new VPN Site to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the VPN Site.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The ID of the Virtual Wan where this VPN site resides in. Changing this forces a new VPN Site to be created.
  late final pulumi.Output<String> virtualWanId;

  /// Creates a new [VpnSite].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpnSite]. {@macro pulumi_network_vpn_site_vpn_site_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpnSite(
    String name, {
    VpnSiteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/vpnSite:VpnSite',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addressCidrs = registerOutput<List<String>?>('addressCidrs');
    deviceModel = registerOutput<String?>('deviceModel');
    deviceVendor = registerOutput<String?>('deviceVendor');
    links = registerOutput<List<Map<String, dynamic>>?>('links');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    o365Policy = registerOutput<VpnSiteO365Policy>('o365Policy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VpnSiteO365Policy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
    virtualWanId = registerOutput<String>('virtualWanId');
  }

  /// Gets an existing [VpnSite] resource's state with the given [name] and [id].
  static VpnSite get(
    String name,
    pulumi.Input<String> id, {
    VpnSiteState? state,
  }) {
    return VpnSite._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VpnSite._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/vpnSite:VpnSite',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addressCidrs = registerOutput<List<String>?>('addressCidrs');
    deviceModel = registerOutput<String?>('deviceModel');
    deviceVendor = registerOutput<String?>('deviceVendor');
    links = registerOutput<List<Map<String, dynamic>>?>('links');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    o365Policy = registerOutput<VpnSiteO365Policy>('o365Policy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VpnSiteO365Policy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
    virtualWanId = registerOutput<String>('virtualWanId');
  }
}
