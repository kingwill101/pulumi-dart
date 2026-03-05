import 'package:pulumi/pulumi.dart' as pulumi;
import 'next_generation_firewall_virtual_hub_strata_cloud_manager_args.dart';
import 'next_generation_firewall_virtual_hub_strata_cloud_manager_dns_settings.dart';
import 'next_generation_firewall_virtual_hub_strata_cloud_manager_identity.dart';
import 'next_generation_firewall_virtual_hub_strata_cloud_manager_network_profile.dart';
import 'next_generation_firewall_virtual_hub_strata_cloud_manager_state.dart';

/// Manages a Palo Alto Next Generation Firewall Virtual Hub Strata Cloud Manager.
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
///     name: "example-public-ip",
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
/// const exampleNextGenerationFirewallVirtualHubStrataCloudManager = new azure.paloalto.NextGenerationFirewallVirtualHubStrataCloudManager("example", {
///     name: "example",
///     resourceGroupName: "example",
///     location: "West Europe",
///     strataCloudManagerTenantName: "example",
///     networkProfile: {
///         publicIpAddressIds: [examplePublicIp.id],
///         virtualHubId: exampleVirtualHub.id,
///         networkVirtualApplianceId: exampleVirtualNetworkAppliance.id,
///     },
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
///     name="example-public-ip",
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
/// example_next_generation_firewall_virtual_hub_strata_cloud_manager = azure.paloalto.NextGenerationFirewallVirtualHubStrataCloudManager("example",
///     name="example",
///     resource_group_name="example",
///     location="West Europe",
///     strata_cloud_manager_tenant_name="example",
///     network_profile={
///         "public_ip_address_ids": [example_public_ip.id],
///         "virtual_hub_id": example_virtual_hub.id,
///         "network_virtual_appliance_id": example_virtual_network_appliance.id,
///     })
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
///         Name = "example-public-ip",
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
///     var exampleNextGenerationFirewallVirtualHubStrataCloudManager = new Azure.PaloAlto.NextGenerationFirewallVirtualHubStrataCloudManager("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = "example",
///         Location = "West Europe",
///         StrataCloudManagerTenantName = "example",
///         NetworkProfile = new Azure.PaloAlto.Inputs.NextGenerationFirewallVirtualHubStrataCloudManagerNetworkProfileArgs
///         {
///             PublicIpAddressIds = new[]
///             {
///                 examplePublicIp.Id,
///             },
///             VirtualHubId = exampleVirtualHub.Id,
///             NetworkVirtualApplianceId = exampleVirtualNetworkAppliance.Id,
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
/// 			Name:              pulumi.String("example-public-ip"),
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
/// 		_, err = paloalto.NewNextGenerationFirewallVirtualHubStrataCloudManager(ctx, "example", &paloalto.NextGenerationFirewallVirtualHubStrataCloudManagerArgs{
/// 			Name:                         pulumi.String("example"),
/// 			ResourceGroupName:            pulumi.String("example"),
/// 			Location:                     pulumi.String("West Europe"),
/// 			StrataCloudManagerTenantName: pulumi.String("example"),
/// 			NetworkProfile: &paloalto.NextGenerationFirewallVirtualHubStrataCloudManagerNetworkProfileArgs{
/// 				PublicIpAddressIds: pulumi.StringArray{
/// 					examplePublicIp.ID(),
/// 				},
/// 				VirtualHubId:              exampleVirtualHub.ID(),
/// 				NetworkVirtualApplianceId: exampleVirtualNetworkAppliance.ID(),
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
/// import com.pulumi.azure.network.PublicIp;
/// import com.pulumi.azure.network.PublicIpArgs;
/// import com.pulumi.azure.network.VirtualWan;
/// import com.pulumi.azure.network.VirtualWanArgs;
/// import com.pulumi.azure.network.VirtualHub;
/// import com.pulumi.azure.network.VirtualHubArgs;
/// import com.pulumi.azure.paloalto.VirtualNetworkAppliance;
/// import com.pulumi.azure.paloalto.VirtualNetworkApplianceArgs;
/// import com.pulumi.azure.paloalto.NextGenerationFirewallVirtualHubStrataCloudManager;
/// import com.pulumi.azure.paloalto.NextGenerationFirewallVirtualHubStrataCloudManagerArgs;
/// import com.pulumi.azure.paloalto.inputs.NextGenerationFirewallVirtualHubStrataCloudManagerNetworkProfileArgs;
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
///             .name("example-public-ip")
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
///         var exampleNextGenerationFirewallVirtualHubStrataCloudManager = new NextGenerationFirewallVirtualHubStrataCloudManager("exampleNextGenerationFirewallVirtualHubStrataCloudManager", NextGenerationFirewallVirtualHubStrataCloudManagerArgs.builder()
///             .name("example")
///             .resourceGroupName("example")
///             .location("West Europe")
///             .strataCloudManagerTenantName("example")
///             .networkProfile(NextGenerationFirewallVirtualHubStrataCloudManagerNetworkProfileArgs.builder()
///                 .publicIpAddressIds(examplePublicIp.id())
///                 .virtualHubId(exampleVirtualHub.id())
///                 .networkVirtualApplianceId(exampleVirtualNetworkAppliance.id())
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
///   examplePublicIp:
///     type: azure:network:PublicIp
///     name: example
///     properties:
///       name: example-public-ip
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
///   exampleNextGenerationFirewallVirtualHubStrataCloudManager:
///     type: azure:paloalto:NextGenerationFirewallVirtualHubStrataCloudManager
///     name: example
///     properties:
///       name: example
///       resourceGroupName: example
///       location: West Europe
///       strataCloudManagerTenantName: example
///       networkProfile:
///         publicIpAddressIds:
///           - ${examplePublicIp.id}
///         virtualHubId: ${exampleVirtualHub.id}
///         networkVirtualApplianceId: ${exampleVirtualNetworkAppliance.id}
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
/// Palo Alto Next Generation Firewall Virtual Hub Strata Cloud Managers can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:paloalto/nextGenerationFirewallVirtualHubStrataCloudManager:NextGenerationFirewallVirtualHubStrataCloudManager example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/PaloAltoNetworks.Cloudngfw/firewalls/myVNetStrataCloudManagerFW
/// ```
class NextGenerationFirewallVirtualHubStrataCloudManager
    extends pulumi.CustomResource {
  /// One or more `destination_nat` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> destinationNats;

  /// A `dns_settings` block as defined below.
  late final pulumi.Output<
    NextGenerationFirewallVirtualHubStrataCloudManagerDnsSettings?
  >
  dnsSettings;

  /// A `identity` block as defined below.
  late final pulumi.Output<
    NextGenerationFirewallVirtualHubStrataCloudManagerIdentity?
  >
  identity;

  /// The Azure Region where the Palo Alto Next Generation Firewall Virtual Hub Strata Cloud Manager should exist. Changing this forces a new Palo Alto Next Generation Firewall Virtual Hub Strata Cloud Manager to be created.
  late final pulumi.Output<String> location;

  /// The ID of the marketplace offer. Defaults to `pan_swfw_cloud_ngfw`. Changing this forces a new Palo Alto Next Generation Firewall Virtual Hub Strata Cloud Manager to be created.
  late final pulumi.Output<String?> marketplaceOfferId;

  /// The name which should be used for this Palo Alto Next Generation Firewall Virtual Hub Strata Cloud Manager. Changing this forces a new Palo Alto Next Generation Firewall Virtual Hub Strata Cloud Manager to be created.
  late final pulumi.Output<String> name;

  /// A `network_profile` block as defined below.
  late final pulumi.Output<
    NextGenerationFirewallVirtualHubStrataCloudManagerNetworkProfile
  >
  networkProfile;

  /// The ID of the billing plan. Defaults to `panw-cngfw-payg`.
  late final pulumi.Output<String?> planId;

  /// The name of the Resource Group where the Palo Alto Next Generation Firewall Virtual Hub Strata Cloud Manager should exist. Changing this forces a new Palo Alto Next Generation Firewall Virtual Hub Strata Cloud Manager to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// Strata Cloud Manager name which is intended to manage the policy for this firewall.
  late final pulumi.Output<String> strataCloudManagerTenantName;

  /// A mapping of tags which should be assigned to the Palo Alto Next Generation Firewall Virtual Hub Strata Cloud Manager.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [NextGenerationFirewallVirtualHubStrataCloudManager].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NextGenerationFirewallVirtualHubStrataCloudManager]. {@macro pulumi_paloalto_next_generation_firewall_virtual_hub_strata_cloud_manager_next_generation_firewall_virtual_hub_strata_cloud_manager_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NextGenerationFirewallVirtualHubStrataCloudManager(
    String name, {
    NextGenerationFirewallVirtualHubStrataCloudManagerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:paloalto/nextGenerationFirewallVirtualHubStrataCloudManager:NextGenerationFirewallVirtualHubStrataCloudManager',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    destinationNats = registerOutput<List<Map<String, dynamic>>?>(
      'destinationNats',
    );
    dnsSettings =
        registerOutput<
          NextGenerationFirewallVirtualHubStrataCloudManagerDnsSettings?
        >(
          'dnsSettings',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return NextGenerationFirewallVirtualHubStrataCloudManagerDnsSettings.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    identity =
        registerOutput<
          NextGenerationFirewallVirtualHubStrataCloudManagerIdentity?
        >(
          'identity',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return NextGenerationFirewallVirtualHubStrataCloudManagerIdentity.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    location = registerOutput<String>('location');
    marketplaceOfferId = registerOutput<String?>('marketplaceOfferId');
    this.name = registerOutput<String>('name');
    networkProfile =
        registerOutput<
          NextGenerationFirewallVirtualHubStrataCloudManagerNetworkProfile
        >(
          'networkProfile',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return NextGenerationFirewallVirtualHubStrataCloudManagerNetworkProfile.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    planId = registerOutput<String?>('planId');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    strataCloudManagerTenantName = registerOutput<String>(
      'strataCloudManagerTenantName',
    );
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [NextGenerationFirewallVirtualHubStrataCloudManager] resource's state with the given [name] and [id].
  static NextGenerationFirewallVirtualHubStrataCloudManager get(
    String name,
    pulumi.Input<String> id, {
    NextGenerationFirewallVirtualHubStrataCloudManagerState? state,
  }) {
    return NextGenerationFirewallVirtualHubStrataCloudManager._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NextGenerationFirewallVirtualHubStrataCloudManager._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:paloalto/nextGenerationFirewallVirtualHubStrataCloudManager:NextGenerationFirewallVirtualHubStrataCloudManager',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    destinationNats = registerOutput<List<Map<String, dynamic>>?>(
      'destinationNats',
    );
    dnsSettings =
        registerOutput<
          NextGenerationFirewallVirtualHubStrataCloudManagerDnsSettings?
        >(
          'dnsSettings',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return NextGenerationFirewallVirtualHubStrataCloudManagerDnsSettings.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    identity =
        registerOutput<
          NextGenerationFirewallVirtualHubStrataCloudManagerIdentity?
        >(
          'identity',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return NextGenerationFirewallVirtualHubStrataCloudManagerIdentity.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    location = registerOutput<String>('location');
    marketplaceOfferId = registerOutput<String?>('marketplaceOfferId');
    this.name = registerOutput<String>('name');
    networkProfile =
        registerOutput<
          NextGenerationFirewallVirtualHubStrataCloudManagerNetworkProfile
        >(
          'networkProfile',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return NextGenerationFirewallVirtualHubStrataCloudManagerNetworkProfile.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    planId = registerOutput<String?>('planId');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    strataCloudManagerTenantName = registerOutput<String>(
      'strataCloudManagerTenantName',
    );
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
