import 'package:pulumi/pulumi.dart' as pulumi;
import 'nat_gateway_public_ip_prefix_association_args.dart';
import 'nat_gateway_public_ip_prefix_association_state.dart';

/// Manages a NAT Gateway Public IP Prefix association.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resource-group",
///     location: "West Europe",
/// });
/// const examplePublicIpPrefix = new azure.network.PublicIpPrefix("example", {
///     name: "example-public-ip-prefix",
///     location: example.location,
///     resourceGroupName: example.name,
///     prefixLength: 30,
///     zones: ["1"],
/// });
/// const exampleNatGateway = new azure.network.NatGateway("example", {
///     name: "example-nat-gateway",
///     location: example.location,
///     resourceGroupName: example.name,
///     skuName: "Standard",
/// });
/// const exampleNatGatewayPublicIpPrefixAssociation = new azure.network.NatGatewayPublicIpPrefixAssociation("example", {
///     natGatewayId: exampleNatGateway.id,
///     publicIpPrefixId: examplePublicIpPrefix.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resource-group",
///     location="West Europe")
/// example_public_ip_prefix = azure.network.PublicIpPrefix("example",
///     name="example-public-ip-prefix",
///     location=example.location,
///     resource_group_name=example.name,
///     prefix_length=30,
///     zones=["1"])
/// example_nat_gateway = azure.network.NatGateway("example",
///     name="example-nat-gateway",
///     location=example.location,
///     resource_group_name=example.name,
///     sku_name="Standard")
/// example_nat_gateway_public_ip_prefix_association = azure.network.NatGatewayPublicIpPrefixAssociation("example",
///     nat_gateway_id=example_nat_gateway.id,
///     public_ip_prefix_id=example_public_ip_prefix.id)
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
///         Name = "example-resource-group",
///         Location = "West Europe",
///     });
///
///     var examplePublicIpPrefix = new Azure.Network.PublicIpPrefix("example", new()
///     {
///         Name = "example-public-ip-prefix",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         PrefixLength = 30,
///         Zones = new[]
///         {
///             "1",
///         },
///     });
///
///     var exampleNatGateway = new Azure.Network.NatGateway("example", new()
///     {
///         Name = "example-nat-gateway",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SkuName = "Standard",
///     });
///
///     var exampleNatGatewayPublicIpPrefixAssociation = new Azure.Network.NatGatewayPublicIpPrefixAssociation("example", new()
///     {
///         NatGatewayId = exampleNatGateway.Id,
///         PublicIpPrefixId = examplePublicIpPrefix.Id,
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
/// 			Name:     pulumi.String("example-resource-group"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePublicIpPrefix, err := network.NewPublicIpPrefix(ctx, "example", &network.PublicIpPrefixArgs{
/// 			Name:              pulumi.String("example-public-ip-prefix"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			PrefixLength:      pulumi.Int(30),
/// 			Zones: pulumi.StringArray{
/// 				pulumi.String("1"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNatGateway, err := network.NewNatGateway(ctx, "example", &network.NatGatewayArgs{
/// 			Name:              pulumi.String("example-nat-gateway"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("Standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewNatGatewayPublicIpPrefixAssociation(ctx, "example", &network.NatGatewayPublicIpPrefixAssociationArgs{
/// 			NatGatewayId:     exampleNatGateway.ID(),
/// 			PublicIpPrefixId: examplePublicIpPrefix.ID(),
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
///   name     = "example-resource-group"
///   location = "West Europe"
/// }
/// resource "azure_network_publicipprefix" "example" {
///   name                = "example-public-ip-prefix"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   prefix_length       = 30
///   zones               = ["1"]
/// }
/// resource "azure_network_natgateway" "example" {
///   name                = "example-nat-gateway"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku_name            = "Standard"
/// }
/// resource "azure_network_natgatewaypublicipprefixassociation" "example" {
///   nat_gateway_id      = azure_network_natgateway.example.id
///   public_ip_prefix_id = azure_network_publicipprefix.example.id
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
/// import com.pulumi.azure.network.PublicIpPrefix;
/// import com.pulumi.azure.network.PublicIpPrefixArgs;
/// import com.pulumi.azure.network.NatGateway;
/// import com.pulumi.azure.network.NatGatewayArgs;
/// import com.pulumi.azure.network.NatGatewayPublicIpPrefixAssociation;
/// import com.pulumi.azure.network.NatGatewayPublicIpPrefixAssociationArgs;
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
///             .name("example-resource-group")
///             .location("West Europe")
///             .build());
///
///         var examplePublicIpPrefix = new PublicIpPrefix("examplePublicIpPrefix", PublicIpPrefixArgs.builder()
///             .name("example-public-ip-prefix")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .prefixLength(30)
///             .zones("1")
///             .build());
///
///         var exampleNatGateway = new NatGateway("exampleNatGateway", NatGatewayArgs.builder()
///             .name("example-nat-gateway")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .skuName("Standard")
///             .build());
///
///         var exampleNatGatewayPublicIpPrefixAssociation = new NatGatewayPublicIpPrefixAssociation("exampleNatGatewayPublicIpPrefixAssociation", NatGatewayPublicIpPrefixAssociationArgs.builder()
///             .natGatewayId(exampleNatGateway.id())
///             .publicIpPrefixId(examplePublicIpPrefix.id())
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
///       name: example-resource-group
///       location: West Europe
///   examplePublicIpPrefix:
///     type: azure:network:PublicIpPrefix
///     name: example
///     properties:
///       name: example-public-ip-prefix
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       prefixLength: 30
///       zones:
///         - '1'
///   exampleNatGateway:
///     type: azure:network:NatGateway
///     name: example
///     properties:
///       name: example-nat-gateway
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       skuName: Standard
///   exampleNatGatewayPublicIpPrefixAssociation:
///     type: azure:network:NatGatewayPublicIpPrefixAssociation
///     name: example
///     properties:
///       natGatewayId: ${exampleNatGateway.id}
///       publicIpPrefixId: ${examplePublicIpPrefix.id}
/// ```
///
///
///
/// ### IPv6
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resource-group",
///     location: "West Europe",
/// });
/// const examplePublicIpPrefix = new azure.network.PublicIpPrefix("example", {
///     name: "example-public-ip-prefix",
///     location: example.location,
///     resourceGroupName: example.name,
///     ipVersion: "IPv6",
///     prefixLength: 127,
///     sku: "StandardV2",
/// });
/// const exampleNatGateway = new azure.network.NatGateway("example", {
///     name: "example-nat-gateway",
///     location: example.location,
///     resourceGroupName: example.name,
///     skuName: "StandardV2",
/// });
/// const exampleNatGatewayPublicIpPrefixAssociation = new azure.network.NatGatewayPublicIpPrefixAssociation("example", {
///     natGatewayId: exampleNatGateway.id,
///     publicIpPrefixId: examplePublicIpPrefix.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resource-group",
///     location="West Europe")
/// example_public_ip_prefix = azure.network.PublicIpPrefix("example",
///     name="example-public-ip-prefix",
///     location=example.location,
///     resource_group_name=example.name,
///     ip_version="IPv6",
///     prefix_length=127,
///     sku="StandardV2")
/// example_nat_gateway = azure.network.NatGateway("example",
///     name="example-nat-gateway",
///     location=example.location,
///     resource_group_name=example.name,
///     sku_name="StandardV2")
/// example_nat_gateway_public_ip_prefix_association = azure.network.NatGatewayPublicIpPrefixAssociation("example",
///     nat_gateway_id=example_nat_gateway.id,
///     public_ip_prefix_id=example_public_ip_prefix.id)
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
///         Name = "example-resource-group",
///         Location = "West Europe",
///     });
///
///     var examplePublicIpPrefix = new Azure.Network.PublicIpPrefix("example", new()
///     {
///         Name = "example-public-ip-prefix",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         IpVersion = "IPv6",
///         PrefixLength = 127,
///         Sku = "StandardV2",
///     });
///
///     var exampleNatGateway = new Azure.Network.NatGateway("example", new()
///     {
///         Name = "example-nat-gateway",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SkuName = "StandardV2",
///     });
///
///     var exampleNatGatewayPublicIpPrefixAssociation = new Azure.Network.NatGatewayPublicIpPrefixAssociation("example", new()
///     {
///         NatGatewayId = exampleNatGateway.Id,
///         PublicIpPrefixId = examplePublicIpPrefix.Id,
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
/// 			Name:     pulumi.String("example-resource-group"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePublicIpPrefix, err := network.NewPublicIpPrefix(ctx, "example", &network.PublicIpPrefixArgs{
/// 			Name:              pulumi.String("example-public-ip-prefix"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			IpVersion:         pulumi.String("IPv6"),
/// 			PrefixLength:      pulumi.Int(127),
/// 			Sku:               pulumi.String("StandardV2"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNatGateway, err := network.NewNatGateway(ctx, "example", &network.NatGatewayArgs{
/// 			Name:              pulumi.String("example-nat-gateway"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("StandardV2"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewNatGatewayPublicIpPrefixAssociation(ctx, "example", &network.NatGatewayPublicIpPrefixAssociationArgs{
/// 			NatGatewayId:     exampleNatGateway.ID(),
/// 			PublicIpPrefixId: examplePublicIpPrefix.ID(),
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
///   name     = "example-resource-group"
///   location = "West Europe"
/// }
/// resource "azure_network_publicipprefix" "example" {
///   name                = "example-public-ip-prefix"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   ip_version          = "IPv6"
///   prefix_length       = 127
///   sku                 = "StandardV2"
/// }
/// resource "azure_network_natgateway" "example" {
///   name                = "example-nat-gateway"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku_name            = "StandardV2"
/// }
/// resource "azure_network_natgatewaypublicipprefixassociation" "example" {
///   nat_gateway_id      = azure_network_natgateway.example.id
///   public_ip_prefix_id = azure_network_publicipprefix.example.id
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
/// import com.pulumi.azure.network.PublicIpPrefix;
/// import com.pulumi.azure.network.PublicIpPrefixArgs;
/// import com.pulumi.azure.network.NatGateway;
/// import com.pulumi.azure.network.NatGatewayArgs;
/// import com.pulumi.azure.network.NatGatewayPublicIpPrefixAssociation;
/// import com.pulumi.azure.network.NatGatewayPublicIpPrefixAssociationArgs;
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
///             .name("example-resource-group")
///             .location("West Europe")
///             .build());
///
///         var examplePublicIpPrefix = new PublicIpPrefix("examplePublicIpPrefix", PublicIpPrefixArgs.builder()
///             .name("example-public-ip-prefix")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .ipVersion("IPv6")
///             .prefixLength(127)
///             .sku("StandardV2")
///             .build());
///
///         var exampleNatGateway = new NatGateway("exampleNatGateway", NatGatewayArgs.builder()
///             .name("example-nat-gateway")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .skuName("StandardV2")
///             .build());
///
///         var exampleNatGatewayPublicIpPrefixAssociation = new NatGatewayPublicIpPrefixAssociation("exampleNatGatewayPublicIpPrefixAssociation", NatGatewayPublicIpPrefixAssociationArgs.builder()
///             .natGatewayId(exampleNatGateway.id())
///             .publicIpPrefixId(examplePublicIpPrefix.id())
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
///       name: example-resource-group
///       location: West Europe
///   examplePublicIpPrefix:
///     type: azure:network:PublicIpPrefix
///     name: example
///     properties:
///       name: example-public-ip-prefix
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       ipVersion: IPv6
///       prefixLength: 127
///       sku: StandardV2
///   exampleNatGateway:
///     type: azure:network:NatGateway
///     name: example
///     properties:
///       name: example-nat-gateway
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       skuName: StandardV2
///   exampleNatGatewayPublicIpPrefixAssociation:
///     type: azure:network:NatGatewayPublicIpPrefixAssociation
///     name: example
///     properties:
///       natGatewayId: ${exampleNatGateway.id}
///       publicIpPrefixId: ${examplePublicIpPrefix.id}
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
/// A NAT Gateway Public IP Prefix association can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/natGatewayPublicIpPrefixAssociation:NatGatewayPublicIpPrefixAssociation example "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.Network/natGateways/natGateway1|/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.Network/publicIPPrefixes/publicIPPrefix1"
/// ```
///
/// &gt; **Note:** This is a Terraform-specific ID in the format `{natGatewayID}|{publicIPPrefixID}`.
class NatGatewayPublicIpPrefixAssociation extends pulumi.CustomResource {
  /// The ID of the NAT Gateway. Changing this forces a new resource to be created.
  late final pulumi.Output<String> natGatewayId;
  /// The ID of the Public IP Prefix which this NAT Gateway should be connected to. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** When `natGatewayId` references a NAT Gateway with SKU `Standard`, `publicIpPrefixId` must reference a Public IP Prefix with SKU `Standard`. When `natGatewayId` references a NAT Gateway with SKU `StandardV2`, `publicIpPrefixId` must reference a Public IP Prefix with SKU `StandardV2`.
  ///
  /// &gt; **Note:** When `publicIpPrefixId` references an `IPv6` Public IP Prefix, `natGatewayId` must reference a NAT Gateway with SKU `StandardV2`, and `publicIpPrefixId` must reference an `IPv6` Public IP Prefix with SKU `StandardV2`.
  late final pulumi.Output<String> publicIpPrefixId;

  /// Creates a new [NatGatewayPublicIpPrefixAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NatGatewayPublicIpPrefixAssociation]. {@macro pulumi_network_nat_gateway_public_ip_prefix_association_nat_gateway_public_ip_prefix_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NatGatewayPublicIpPrefixAssociation(
    String name, {
    NatGatewayPublicIpPrefixAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/natGatewayPublicIpPrefixAssociation:NatGatewayPublicIpPrefixAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    natGatewayId = registerOutput<String>('natGatewayId');
    publicIpPrefixId = registerOutput<String>('publicIpPrefixId');
  }

  /// Gets an existing [NatGatewayPublicIpPrefixAssociation] resource's state with the given [name] and [id].
  static NatGatewayPublicIpPrefixAssociation get(
    String name,
    pulumi.Input<String> id, {
    NatGatewayPublicIpPrefixAssociationState? state,
  }) {
    return NatGatewayPublicIpPrefixAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NatGatewayPublicIpPrefixAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/natGatewayPublicIpPrefixAssociation:NatGatewayPublicIpPrefixAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    natGatewayId = registerOutput<String>('natGatewayId');
    publicIpPrefixId = registerOutput<String>('publicIpPrefixId');
  }
}
