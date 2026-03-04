import 'package:pulumi/pulumi.dart' as pulumi;
import 'next_generation_firewall_virtual_hub_panorama_args.dart';
import 'next_generation_firewall_virtual_hub_panorama_dns_settings.dart';
import 'next_generation_firewall_virtual_hub_panorama_network_profile.dart';
import 'next_generation_firewall_virtual_hub_panorama_state.dart';

/// Manages a Palo Alto Next Generation Firewall VHub Panorama.
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
/// const examplePublicIp = new azure.network.PublicIp("example", {
///     name: "acceptanceTestPublicIp1",
///     resourceGroupName: example.name,
///     location: example.location,
///     allocationMethod: "Static",
///     tags: {
///         environment: "Production",
///     },
/// });
/// const exampleVirtualWan = new azure.network.VirtualWan("example", {
///     name: "example-virtualwan",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const exampleVirtualHub = new azure.network.VirtualHub("example", {
///     name: "example-virtualhub",
///     resourceGroupName: example.name,
///     location: example.location,
///     virtualWanId: exampleVirtualWan.id,
///     addressPrefix: "10.0.0.0/23",
///     tags: {
///         hubSaaSPreview: "true",
///     },
/// });
/// const exampleVirtualNetworkAppliance = new azure.paloalto.VirtualNetworkAppliance("example", {
///     name: "example-appliance",
///     virtualHubId: exampleVirtualHub.id,
/// });
/// const exampleNextGenerationFirewallVirtualHubPanorama = new azure.paloalto.NextGenerationFirewallVirtualHubPanorama("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
///     networkProfile: {
///         publicIpAddressIds: [examplePublicIp.id],
///         virtualHubId: exampleVirtualHub.id,
///         networkVirtualApplianceId: exampleVirtualNetworkAppliance.id,
///     },
///     panoramaBase64Config: "VGhpcyBpcyBub3QgYSByZWFsIGNvbmZpZywgcGxlYXNlIHVzZSB5b3VyIFBhbm9yYW1hIHNlcnZlciB0byBnZW5lcmF0ZSBhIHJlYWwgdmFsdWUgZm9yIHRoaXMgcHJvcGVydHkhCg==",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_public_ip = azure.network.PublicIp("example",
///     name="acceptanceTestPublicIp1",
///     resource_group_name=example.name,
///     location=example.location,
///     allocation_method="Static",
///     tags={
///         "environment": "Production",
///     })
/// example_virtual_wan = azure.network.VirtualWan("example",
///     name="example-virtualwan",
///     resource_group_name=example.name,
///     location=example.location)
/// example_virtual_hub = azure.network.VirtualHub("example",
///     name="example-virtualhub",
///     resource_group_name=example.name,
///     location=example.location,
///     virtual_wan_id=example_virtual_wan.id,
///     address_prefix="10.0.0.0/23",
///     tags={
///         "hubSaaSPreview": "true",
///     })
/// example_virtual_network_appliance = azure.paloalto.VirtualNetworkAppliance("example",
///     name="example-appliance",
///     virtual_hub_id=example_virtual_hub.id)
/// example_next_generation_firewall_virtual_hub_panorama = azure.paloalto.NextGenerationFirewallVirtualHubPanorama("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location,
///     network_profile={
///         "public_ip_address_ids": [example_public_ip.id],
///         "virtual_hub_id": example_virtual_hub.id,
///         "network_virtual_appliance_id": example_virtual_network_appliance.id,
///     },
///     panorama_base64_config="VGhpcyBpcyBub3QgYSByZWFsIGNvbmZpZywgcGxlYXNlIHVzZSB5b3VyIFBhbm9yYW1hIHNlcnZlciB0byBnZW5lcmF0ZSBhIHJlYWwgdmFsdWUgZm9yIHRoaXMgcHJvcGVydHkhCg==")
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
///     var examplePublicIp = new Azure.Network.PublicIp("example", new()
///     {
///         Name = "acceptanceTestPublicIp1",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AllocationMethod = "Static",
///         Tags =
///         {
///             { "environment", "Production" },
///         },
///     });
///
///     var exampleVirtualWan = new Azure.Network.VirtualWan("example", new()
///     {
///         Name = "example-virtualwan",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var exampleVirtualHub = new Azure.Network.VirtualHub("example", new()
///     {
///         Name = "example-virtualhub",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         VirtualWanId = exampleVirtualWan.Id,
///         AddressPrefix = "10.0.0.0/23",
///         Tags =
///         {
///             { "hubSaaSPreview", "true" },
///         },
///     });
///
///     var exampleVirtualNetworkAppliance = new Azure.PaloAlto.VirtualNetworkAppliance("example", new()
///     {
///         Name = "example-appliance",
///         VirtualHubId = exampleVirtualHub.Id,
///     });
///
///     var exampleNextGenerationFirewallVirtualHubPanorama = new Azure.PaloAlto.NextGenerationFirewallVirtualHubPanorama("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         NetworkProfile = new Azure.PaloAlto.Inputs.NextGenerationFirewallVirtualHubPanoramaNetworkProfileArgs
///         {
///             PublicIpAddressIds = new[]
///             {
///                 examplePublicIp.Id,
///             },
///             VirtualHubId = exampleVirtualHub.Id,
///             NetworkVirtualApplianceId = exampleVirtualNetworkAppliance.Id,
///         },
///         PanoramaBase64Config = "VGhpcyBpcyBub3QgYSByZWFsIGNvbmZpZywgcGxlYXNlIHVzZSB5b3VyIFBhbm9yYW1hIHNlcnZlciB0byBnZW5lcmF0ZSBhIHJlYWwgdmFsdWUgZm9yIHRoaXMgcHJvcGVydHkhCg==",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/paloalto"
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
/// 		examplePublicIp, err := network.NewPublicIp(ctx, "example", &network.PublicIpArgs{
/// 			Name:              pulumi.String("acceptanceTestPublicIp1"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			AllocationMethod:  pulumi.String("Static"),
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("Production"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualWan, err := network.NewVirtualWan(ctx, "example", &network.VirtualWanArgs{
/// 			Name:              pulumi.String("example-virtualwan"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualHub, err := network.NewVirtualHub(ctx, "example", &network.VirtualHubArgs{
/// 			Name:              pulumi.String("example-virtualhub"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			VirtualWanId:      exampleVirtualWan.ID(),
/// 			AddressPrefix:     pulumi.String("10.0.0.0/23"),
/// 			Tags: pulumi.StringMap{
/// 				"hubSaaSPreview": pulumi.String("true"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetworkAppliance, err := paloalto.NewVirtualNetworkAppliance(ctx, "example", &paloalto.VirtualNetworkApplianceArgs{
/// 			Name:         pulumi.String("example-appliance"),
/// 			VirtualHubId: exampleVirtualHub.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = paloalto.NewNextGenerationFirewallVirtualHubPanorama(ctx, "example", &paloalto.NextGenerationFirewallVirtualHubPanoramaArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			NetworkProfile: &paloalto.NextGenerationFirewallVirtualHubPanoramaNetworkProfileArgs{
/// 				PublicIpAddressIds: pulumi.StringArray{
/// 					examplePublicIp.ID(),
/// 				},
/// 				VirtualHubId:              exampleVirtualHub.ID(),
/// 				NetworkVirtualApplianceId: exampleVirtualNetworkAppliance.ID(),
/// 			},
/// 			PanoramaBase64Config: pulumi.String("VGhpcyBpcyBub3QgYSByZWFsIGNvbmZpZywgcGxlYXNlIHVzZSB5b3VyIFBhbm9yYW1hIHNlcnZlciB0byBnZW5lcmF0ZSBhIHJlYWwgdmFsdWUgZm9yIHRoaXMgcHJvcGVydHkhCg=="),
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
/// import com.pulumi.azure.network.PublicIp;
/// import com.pulumi.azure.network.PublicIpArgs;
/// import com.pulumi.azure.network.VirtualWan;
/// import com.pulumi.azure.network.VirtualWanArgs;
/// import com.pulumi.azure.network.VirtualHub;
/// import com.pulumi.azure.network.VirtualHubArgs;
/// import com.pulumi.azure.paloalto.VirtualNetworkAppliance;
/// import com.pulumi.azure.paloalto.VirtualNetworkApplianceArgs;
/// import com.pulumi.azure.paloalto.NextGenerationFirewallVirtualHubPanorama;
/// import com.pulumi.azure.paloalto.NextGenerationFirewallVirtualHubPanoramaArgs;
/// import com.pulumi.azure.paloalto.inputs.NextGenerationFirewallVirtualHubPanoramaNetworkProfileArgs;
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
///         var examplePublicIp = new PublicIp("examplePublicIp", PublicIpArgs.builder()
///             .name("acceptanceTestPublicIp1")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .allocationMethod("Static")
///             .tags(Map.of("environment", "Production"))
///             .build());
///
///         var exampleVirtualWan = new VirtualWan("exampleVirtualWan", VirtualWanArgs.builder()
///             .name("example-virtualwan")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var exampleVirtualHub = new VirtualHub("exampleVirtualHub", VirtualHubArgs.builder()
///             .name("example-virtualhub")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .virtualWanId(exampleVirtualWan.id())
///             .addressPrefix("10.0.0.0/23")
///             .tags(Map.of("hubSaaSPreview", "true"))
///             .build());
///
///         var exampleVirtualNetworkAppliance = new VirtualNetworkAppliance("exampleVirtualNetworkAppliance", VirtualNetworkApplianceArgs.builder()
///             .name("example-appliance")
///             .virtualHubId(exampleVirtualHub.id())
///             .build());
///
///         var exampleNextGenerationFirewallVirtualHubPanorama = new NextGenerationFirewallVirtualHubPanorama("exampleNextGenerationFirewallVirtualHubPanorama", NextGenerationFirewallVirtualHubPanoramaArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .networkProfile(NextGenerationFirewallVirtualHubPanoramaNetworkProfileArgs.builder()
///                 .publicIpAddressIds(examplePublicIp.id())
///                 .virtualHubId(exampleVirtualHub.id())
///                 .networkVirtualApplianceId(exampleVirtualNetworkAppliance.id())
///                 .build())
///             .panoramaBase64Config("VGhpcyBpcyBub3QgYSByZWFsIGNvbmZpZywgcGxlYXNlIHVzZSB5b3VyIFBhbm9yYW1hIHNlcnZlciB0byBnZW5lcmF0ZSBhIHJlYWwgdmFsdWUgZm9yIHRoaXMgcHJvcGVydHkhCg==")
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
///   examplePublicIp:
///     type: azure:network:PublicIp
///     name: example
///     properties:
///       name: acceptanceTestPublicIp1
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       allocationMethod: Static
///       tags:
///         environment: Production
///   exampleVirtualWan:
///     type: azure:network:VirtualWan
///     name: example
///     properties:
///       name: example-virtualwan
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   exampleVirtualHub:
///     type: azure:network:VirtualHub
///     name: example
///     properties:
///       name: example-virtualhub
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       virtualWanId: ${exampleVirtualWan.id}
///       addressPrefix: 10.0.0.0/23
///       tags:
///         hubSaaSPreview: 'true'
///   exampleVirtualNetworkAppliance:
///     type: azure:paloalto:VirtualNetworkAppliance
///     name: example
///     properties:
///       name: example-appliance
///       virtualHubId: ${exampleVirtualHub.id}
///   exampleNextGenerationFirewallVirtualHubPanorama:
///     type: azure:paloalto:NextGenerationFirewallVirtualHubPanorama
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       networkProfile:
///         publicIpAddressIds:
///           - ${examplePublicIp.id}
///         virtualHubId: ${exampleVirtualHub.id}
///         networkVirtualApplianceId: ${exampleVirtualNetworkAppliance.id}
///       panoramaBase64Config: VGhpcyBpcyBub3QgYSByZWFsIGNvbmZpZywgcGxlYXNlIHVzZSB5b3VyIFBhbm9yYW1hIHNlcnZlciB0byBnZW5lcmF0ZSBhIHJlYWwgdmFsdWUgZm9yIHRoaXMgcHJvcGVydHkhCg==
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `PaloAltoNetworks.Cloudngfw` - 2025-05-23
///
/// ## Import
///
/// Palo Alto Next Generation Firewall VHub Panoramas can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:paloalto/nextGenerationFirewallVirtualHubPanorama:NextGenerationFirewallVirtualHubPanorama example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/PaloAltoNetworks.Cloudngfw/firewalls/myVhubPanoramaFW
/// ```
class NextGenerationFirewallVirtualHubPanorama extends pulumi.CustomResource {
  /// One or more `destination_nat` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> destinationNats;

  /// A `dns_settings` block as defined below.
  late final pulumi.Output<NextGenerationFirewallVirtualHubPanoramaDnsSettings?>
  dnsSettings;

  /// The Azure Region where the Palo Alto Next Generation Firewall VHub Panorama should exist. Changing this forces a new Palo Alto Next Generation Firewall VHub Panorama to be created.
  late final pulumi.Output<String> location;

  /// The marketplace offer ID. Defaults to `pan_swfw_cloud_ngfw`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> marketplaceOfferId;

  /// The name which should be used for this Palo Alto Next Generation Firewall VHub Panorama. Changing this forces a new Palo Alto Next Generation Firewall VHub Panorama to be created.
  late final pulumi.Output<String> name;

  /// A `network_profile` block as defined below.
  late final pulumi.Output<
    NextGenerationFirewallVirtualHubPanoramaNetworkProfile
  >
  networkProfile;

  /// The Base64 Encoded configuration value for connecting to the Panorama Configuration server.
  late final pulumi.Output<String> panoramaBase64Config;
  late final pulumi.Output<List<Map<String, dynamic>>> panoramas;

  /// The billing plan ID as published by Liftr.PAN. Defaults to `panw-cloud-ngfw-payg`.
  ///
  /// &gt; **Note:** The former `plan_id` `panw-cloud-ngfw-payg` is defined as stop sell, but has been set as the default to not break any existing resources that were originally provisioned with it. Users need to explicitly set `plan_id` to `panw-cngfw-payg` when creating new resources.
  late final pulumi.Output<String?> planId;

  /// The name of the Resource Group where the Palo Alto Next Generation Firewall VHub Panorama should exist. Changing this forces a new Palo Alto Next Generation Firewall VHub Panorama to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// A mapping of tags which should be assigned to the Palo Alto Next Generation Firewall VHub Panorama.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [NextGenerationFirewallVirtualHubPanorama].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NextGenerationFirewallVirtualHubPanorama]. {@macro pulumi_paloalto_next_generation_firewall_virtual_hub_panorama_next_generation_firewall_virtual_hub_panorama_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NextGenerationFirewallVirtualHubPanorama(
    String name, {
    NextGenerationFirewallVirtualHubPanoramaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:paloalto/nextGenerationFirewallVirtualHubPanorama:NextGenerationFirewallVirtualHubPanorama',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    destinationNats = registerOutput<List<Map<String, dynamic>>?>(
      'destinationNats',
    );
    dnsSettings =
        registerOutput<NextGenerationFirewallVirtualHubPanoramaDnsSettings?>(
          'dnsSettings',
        );
    location = registerOutput<String>('location');
    marketplaceOfferId = registerOutput<String?>('marketplaceOfferId');
    this.name = registerOutput<String>('name');
    networkProfile =
        registerOutput<NextGenerationFirewallVirtualHubPanoramaNetworkProfile>(
          'networkProfile',
        );
    panoramaBase64Config = registerOutput<String>('panoramaBase64Config');
    panoramas = registerOutput<List<Map<String, dynamic>>>('panoramas');
    planId = registerOutput<String?>('planId');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [NextGenerationFirewallVirtualHubPanorama] resource's state with the given [name] and [id].
  static NextGenerationFirewallVirtualHubPanorama get(
    String name,
    pulumi.Input<String> id, {
    NextGenerationFirewallVirtualHubPanoramaState? state,
  }) {
    return NextGenerationFirewallVirtualHubPanorama._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NextGenerationFirewallVirtualHubPanorama._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:paloalto/nextGenerationFirewallVirtualHubPanorama:NextGenerationFirewallVirtualHubPanorama',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    destinationNats = registerOutput<List<Map<String, dynamic>>?>(
      'destinationNats',
    );
    dnsSettings =
        registerOutput<NextGenerationFirewallVirtualHubPanoramaDnsSettings?>(
          'dnsSettings',
        );
    location = registerOutput<String>('location');
    marketplaceOfferId = registerOutput<String?>('marketplaceOfferId');
    this.name = registerOutput<String>('name');
    networkProfile =
        registerOutput<NextGenerationFirewallVirtualHubPanoramaNetworkProfile>(
          'networkProfile',
        );
    panoramaBase64Config = registerOutput<String>('panoramaBase64Config');
    panoramas = registerOutput<List<Map<String, dynamic>>>('panoramas');
    planId = registerOutput<String?>('planId');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
