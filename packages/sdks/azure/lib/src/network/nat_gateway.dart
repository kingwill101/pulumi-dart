import 'package:pulumi/pulumi.dart' as pulumi;
import 'nat_gateway_args.dart';
import 'nat_gateway_state.dart';

/// Manages an Azure NAT Gateway.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "nat-gateway-example-rg",
///     location: "West Europe",
/// });
/// const exampleNatGateway = new azure.network.NatGateway("example", {
///     name: "nat-gateway",
///     location: example.location,
///     resourceGroupName: example.name,
///     skuName: "Standard",
///     idleTimeoutInMinutes: 10,
///     zones: ["1"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="nat-gateway-example-rg",
///     location="West Europe")
/// example_nat_gateway = azure.network.NatGateway("example",
///     name="nat-gateway",
///     location=example.location,
///     resource_group_name=example.name,
///     sku_name="Standard",
///     idle_timeout_in_minutes=10,
///     zones=["1"])
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
///         Name = "nat-gateway-example-rg",
///         Location = "West Europe",
///     });
///
///     var exampleNatGateway = new Azure.Network.NatGateway("example", new()
///     {
///         Name = "nat-gateway",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SkuName = "Standard",
///         IdleTimeoutInMinutes = 10,
///         Zones = new[]
///         {
///             "1",
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
/// 			Name:     pulumi.String("nat-gateway-example-rg"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewNatGateway(ctx, "example", &network.NatGatewayArgs{
/// 			Name:                 pulumi.String("nat-gateway"),
/// 			Location:             example.Location,
/// 			ResourceGroupName:    example.Name,
/// 			SkuName:              pulumi.String("Standard"),
/// 			IdleTimeoutInMinutes: pulumi.Int(10),
/// 			Zones: pulumi.StringArray{
/// 				pulumi.String("1"),
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
///   name     = "nat-gateway-example-rg"
///   location = "West Europe"
/// }
/// resource "azure_network_natgateway" "example" {
///   name                    = "nat-gateway"
///   location                = azure_core_resourcegroup.example.location
///   resource_group_name     = azure_core_resourcegroup.example.name
///   sku_name                = "Standard"
///   idle_timeout_in_minutes = 10
///   zones                   = ["1"]
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
/// import com.pulumi.azure.network.NatGateway;
/// import com.pulumi.azure.network.NatGatewayArgs;
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
///             .name("nat-gateway-example-rg")
///             .location("West Europe")
///             .build());
///
///         var exampleNatGateway = new NatGateway("exampleNatGateway", NatGatewayArgs.builder()
///             .name("nat-gateway")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .skuName("Standard")
///             .idleTimeoutInMinutes(10)
///             .zones("1")
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
///       name: nat-gateway-example-rg
///       location: West Europe
///   exampleNatGateway:
///     type: azure:network:NatGateway
///     name: example
///     properties:
///       name: nat-gateway
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       skuName: Standard
///       idleTimeoutInMinutes: 10
///       zones:
///         - '1'
/// ```
///
///
/// For more complete examples, please see the azure.network.NatGatewayPublicIpAssociation and azure.network.NatGatewayPublicIpPrefixAssociation resources.
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
/// A NAT Gateway can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/natGateway:NatGateway test /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Network/natGateways/gateway1
/// ```
class NatGateway extends pulumi.CustomResource {
  /// The idle timeout which should be used in minutes. Defaults to `4`.
  late final pulumi.Output<int?> idleTimeoutInMinutes;
  /// Specifies the supported Azure location where the NAT Gateway should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name of the NAT Gateway. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies the name of the Resource Group in which the NAT Gateway should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The resource GUID property of the NAT Gateway.
  late final pulumi.Output<String> resourceGuid;
  /// The SKU which should be used. Possible values are `Standard` and `StandardV2`. Defaults to `Standard`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> skuName;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A list of Availability Zones in which this NAT Gateway should be located. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** For `Standard`, `zones` may be omitted for a no-zone deployment or set to a single Availability Zone. For more information, please see the [Azure documentation](https://learn.microsoft.com/azure/nat-gateway/nat-overview#availability-zones).
  ///
  /// &gt; **Note:** `zones` must be omitted when `skuName` is set to `StandardV2`. `StandardV2` NAT Gateways are zone-redundant by default and Azure automatically deploys across all available zones. For more information, please see the [Azure documentation](https://learn.microsoft.com/azure/nat-gateway/nat-overview#standardv2-nat-gateway).
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [NatGateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NatGateway]. {@macro pulumi_network_nat_gateway_nat_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NatGateway(
    String name, {
    NatGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/natGateway:NatGateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    idleTimeoutInMinutes = registerOutput<int?>('idleTimeoutInMinutes');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    resourceGuid = registerOutput<String>('resourceGuid');
    skuName = registerOutput<String?>('skuName');
    tags = registerOutput<Map<String, String>?>('tags');
    zones = registerOutput<List<String>?>('zones');
  }

  /// Gets an existing [NatGateway] resource's state with the given [name] and [id].
  static NatGateway get(
    String name,
    pulumi.Input<String> id, {
    NatGatewayState? state,
  }) {
    return NatGateway._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NatGateway._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/natGateway:NatGateway',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    idleTimeoutInMinutes = registerOutput<int?>('idleTimeoutInMinutes');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    resourceGuid = registerOutput<String>('resourceGuid');
    skuName = registerOutput<String?>('skuName');
    tags = registerOutput<Map<String, String>?>('tags');
    zones = registerOutput<List<String>?>('zones');
  }
}
