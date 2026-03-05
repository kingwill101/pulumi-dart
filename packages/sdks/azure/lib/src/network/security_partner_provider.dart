import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_partner_provider_args.dart';
import 'security_partner_provider_state.dart';

/// Manages a Security Partner Provider which could be associated to virtual hub.
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
/// const exampleVirtualWan = new azure.network.VirtualWan("example", {
///     name: "example-vwan",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const exampleVirtualHub = new azure.network.VirtualHub("example", {
///     name: "example-vhub",
///     resourceGroupName: example.name,
///     location: example.location,
///     virtualWanId: exampleVirtualWan.id,
///     addressPrefix: "10.0.2.0/24",
/// });
/// const exampleVpnGateway = new azure.network.VpnGateway("example", {
///     name: "example-vpngw",
///     location: example.location,
///     resourceGroupName: example.name,
///     virtualHubId: exampleVirtualHub.id,
/// });
/// const exampleSecurityPartnerProvider = new azure.network.SecurityPartnerProvider("example", {
///     name: "example-spp",
///     resourceGroupName: example.name,
///     location: example.location,
///     virtualHubId: exampleVirtualHub.id,
///     securityProviderName: "IBoss",
///     tags: {
///         ENV: "Prod",
///     },
/// }, {
///     dependsOn: [exampleVpnGateway],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_virtual_wan = azure.network.VirtualWan("example",
///     name="example-vwan",
///     resource_group_name=example.name,
///     location=example.location)
/// example_virtual_hub = azure.network.VirtualHub("example",
///     name="example-vhub",
///     resource_group_name=example.name,
///     location=example.location,
///     virtual_wan_id=example_virtual_wan.id,
///     address_prefix="10.0.2.0/24")
/// example_vpn_gateway = azure.network.VpnGateway("example",
///     name="example-vpngw",
///     location=example.location,
///     resource_group_name=example.name,
///     virtual_hub_id=example_virtual_hub.id)
/// example_security_partner_provider = azure.network.SecurityPartnerProvider("example",
///     name="example-spp",
///     resource_group_name=example.name,
///     location=example.location,
///     virtual_hub_id=example_virtual_hub.id,
///     security_provider_name="IBoss",
///     tags={
///         "ENV": "Prod",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[example_vpn_gateway]))
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
///     var exampleVirtualWan = new Azure.Network.VirtualWan("example", new()
///     {
///         Name = "example-vwan",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var exampleVirtualHub = new Azure.Network.VirtualHub("example", new()
///     {
///         Name = "example-vhub",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         VirtualWanId = exampleVirtualWan.Id,
///         AddressPrefix = "10.0.2.0/24",
///     });
///
///     var exampleVpnGateway = new Azure.Network.VpnGateway("example", new()
///     {
///         Name = "example-vpngw",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         VirtualHubId = exampleVirtualHub.Id,
///     });
///
///     var exampleSecurityPartnerProvider = new Azure.Network.SecurityPartnerProvider("example", new()
///     {
///         Name = "example-spp",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         VirtualHubId = exampleVirtualHub.Id,
///         SecurityProviderName = "IBoss",
///         Tags =
///         {
///             { "ENV", "Prod" },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleVpnGateway,
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
/// 		exampleVirtualWan, err := network.NewVirtualWan(ctx, "example", &network.VirtualWanArgs{
/// 			Name:              pulumi.String("example-vwan"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualHub, err := network.NewVirtualHub(ctx, "example", &network.VirtualHubArgs{
/// 			Name:              pulumi.String("example-vhub"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			VirtualWanId:      exampleVirtualWan.ID(),
/// 			AddressPrefix:     pulumi.String("10.0.2.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVpnGateway, err := network.NewVpnGateway(ctx, "example", &network.VpnGatewayArgs{
/// 			Name:              pulumi.String("example-vpngw"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			VirtualHubId:      exampleVirtualHub.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewSecurityPartnerProvider(ctx, "example", &network.SecurityPartnerProviderArgs{
/// 			Name:                 pulumi.String("example-spp"),
/// 			ResourceGroupName:    example.Name,
/// 			Location:             example.Location,
/// 			VirtualHubId:         exampleVirtualHub.ID(),
/// 			SecurityProviderName: pulumi.String("IBoss"),
/// 			Tags: pulumi.StringMap{
/// 				"ENV": pulumi.String("Prod"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleVpnGateway,
/// 		}))
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
/// import com.pulumi.azure.network.VirtualWan;
/// import com.pulumi.azure.network.VirtualWanArgs;
/// import com.pulumi.azure.network.VirtualHub;
/// import com.pulumi.azure.network.VirtualHubArgs;
/// import com.pulumi.azure.network.VpnGateway;
/// import com.pulumi.azure.network.VpnGatewayArgs;
/// import com.pulumi.azure.network.SecurityPartnerProvider;
/// import com.pulumi.azure.network.SecurityPartnerProviderArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var exampleVirtualWan = new VirtualWan("exampleVirtualWan", VirtualWanArgs.builder()
///             .name("example-vwan")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var exampleVirtualHub = new VirtualHub("exampleVirtualHub", VirtualHubArgs.builder()
///             .name("example-vhub")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .virtualWanId(exampleVirtualWan.id())
///             .addressPrefix("10.0.2.0/24")
///             .build());
///
///         var exampleVpnGateway = new VpnGateway("exampleVpnGateway", VpnGatewayArgs.builder()
///             .name("example-vpngw")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .virtualHubId(exampleVirtualHub.id())
///             .build());
///
///         var exampleSecurityPartnerProvider = new SecurityPartnerProvider("exampleSecurityPartnerProvider", SecurityPartnerProviderArgs.builder()
///             .name("example-spp")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .virtualHubId(exampleVirtualHub.id())
///             .securityProviderName("IBoss")
///             .tags(Map.of("ENV", "Prod"))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleVpnGateway)
///                 .build());
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
///   exampleVirtualWan:
///     type: azure:network:VirtualWan
///     name: example
///     properties:
///       name: example-vwan
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   exampleVirtualHub:
///     type: azure:network:VirtualHub
///     name: example
///     properties:
///       name: example-vhub
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       virtualWanId: ${exampleVirtualWan.id}
///       addressPrefix: 10.0.2.0/24
///   exampleVpnGateway:
///     type: azure:network:VpnGateway
///     name: example
///     properties:
///       name: example-vpngw
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       virtualHubId: ${exampleVirtualHub.id}
///   exampleSecurityPartnerProvider:
///     type: azure:network:SecurityPartnerProvider
///     name: example
///     properties:
///       name: example-spp
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       virtualHubId: ${exampleVirtualHub.id}
///       securityProviderName: IBoss
///       tags:
///         ENV: Prod
///     options:
///       dependsOn:
///         - ${exampleVpnGateway}
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
/// Security Partner Providers can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/securityPartnerProvider:SecurityPartnerProvider example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Network/securityPartnerProviders/securityPartnerProvider1
/// ```
class SecurityPartnerProvider extends pulumi.CustomResource {
  /// The Azure Region where the Security Partner Provider should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name which should be used for this Security Partner Provider. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group where the Security Partner Provider should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The security provider name. Possible values are `ZScaler`, `IBoss` and `Checkpoint` is allowed. Changing this forces a new resource to be created.
  late final pulumi.Output<String> securityProviderName;
  /// A mapping of tags which should be assigned to the Security Partner Provider.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The ID of the Virtual Hub within which this Security Partner Provider should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> virtualHubId;

  /// Creates a new [SecurityPartnerProvider].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecurityPartnerProvider]. {@macro pulumi_network_security_partner_provider_security_partner_provider_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecurityPartnerProvider(
    String name, {
    SecurityPartnerProviderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/securityPartnerProvider:SecurityPartnerProvider',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    securityProviderName = registerOutput<String>('securityProviderName');
    tags = registerOutput<Map<String, String>?>('tags');
    virtualHubId = registerOutput<String?>('virtualHubId');
  }

  /// Gets an existing [SecurityPartnerProvider] resource's state with the given [name] and [id].
  static SecurityPartnerProvider get(
    String name,
    pulumi.Input<String> id, {
    SecurityPartnerProviderState? state,
  }) {
    return SecurityPartnerProvider._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SecurityPartnerProvider._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/securityPartnerProvider:SecurityPartnerProvider',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    securityProviderName = registerOutput<String>('securityProviderName');
    tags = registerOutput<Map<String, String>?>('tags');
    virtualHubId = registerOutput<String?>('virtualHubId');
  }
}
