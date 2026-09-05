import 'package:pulumi/pulumi.dart' as pulumi;
import 'nat_gateway_public_ip_association_args.dart';
import 'nat_gateway_public_ip_association_state.dart';

/// Manages a NAT Gateway Public IP Address association.
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
///     name: "example-PIP",
///     location: example.location,
///     resourceGroupName: example.name,
///     allocationMethod: "Static",
///     sku: "Standard",
/// });
/// const exampleNatGateway = new azure.network.NatGateway("example", {
///     name: "example-NatGateway",
///     location: example.location,
///     resourceGroupName: example.name,
///     skuName: "Standard",
/// });
/// const exampleNatGatewayPublicIpAssociation = new azure.network.NatGatewayPublicIpAssociation("example", {
///     natGatewayId: exampleNatGateway.id,
///     publicIpAddressId: examplePublicIp.id,
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
///     name="example-PIP",
///     location=example.location,
///     resource_group_name=example.name,
///     allocation_method="Static",
///     sku="Standard")
/// example_nat_gateway = azure.network.NatGateway("example",
///     name="example-NatGateway",
///     location=example.location,
///     resource_group_name=example.name,
///     sku_name="Standard")
/// example_nat_gateway_public_ip_association = azure.network.NatGatewayPublicIpAssociation("example",
///     nat_gateway_id=example_nat_gateway.id,
///     public_ip_address_id=example_public_ip.id)
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
///         Name = "example-PIP",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AllocationMethod = "Static",
///         Sku = "Standard",
///     });
///
///     var exampleNatGateway = new Azure.Network.NatGateway("example", new()
///     {
///         Name = "example-NatGateway",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SkuName = "Standard",
///     });
///
///     var exampleNatGatewayPublicIpAssociation = new Azure.Network.NatGatewayPublicIpAssociation("example", new()
///     {
///         NatGatewayId = exampleNatGateway.Id,
///         PublicIpAddressId = examplePublicIp.Id,
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
/// 		examplePublicIp, err := network.NewPublicIp(ctx, "example", &network.PublicIpArgs{
/// 			Name:              pulumi.String("example-PIP"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AllocationMethod:  pulumi.String("Static"),
/// 			Sku:               pulumi.String("Standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNatGateway, err := network.NewNatGateway(ctx, "example", &network.NatGatewayArgs{
/// 			Name:              pulumi.String("example-NatGateway"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("Standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewNatGatewayPublicIpAssociation(ctx, "example", &network.NatGatewayPublicIpAssociationArgs{
/// 			NatGatewayId:      exampleNatGateway.ID().ToIDOutput().ToStringOutput(),
/// 			PublicIpAddressId: examplePublicIp.ID().ToIDOutput().ToStringOutput(),
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
/// resource "azure_network_publicip" "example" {
///   name                = "example-PIP"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   allocation_method   = "Static"
///   sku                 = "Standard"
/// }
/// resource "azure_network_natgateway" "example" {
///   name                = "example-NatGateway"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku_name            = "Standard"
/// }
/// resource "azure_network_natgatewaypublicipassociation" "example" {
///   nat_gateway_id       = azure_network_natgateway.example.id
///   public_ip_address_id = azure_network_publicip.example.id
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
/// import com.pulumi.azure.network.NatGateway;
/// import com.pulumi.azure.network.NatGatewayArgs;
/// import com.pulumi.azure.network.NatGatewayPublicIpAssociation;
/// import com.pulumi.azure.network.NatGatewayPublicIpAssociationArgs;
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
///         var examplePublicIp = new PublicIp("examplePublicIp", PublicIpArgs.builder()
///             .name("example-PIP")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .allocationMethod("Static")
///             .sku("Standard")
///             .build());
///
///         var exampleNatGateway = new NatGateway("exampleNatGateway", NatGatewayArgs.builder()
///             .name("example-NatGateway")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .skuName("Standard")
///             .build());
///
///         var exampleNatGatewayPublicIpAssociation = new NatGatewayPublicIpAssociation("exampleNatGatewayPublicIpAssociation", NatGatewayPublicIpAssociationArgs.builder()
///             .natGatewayId(exampleNatGateway.id())
///             .publicIpAddressId(examplePublicIp.id())
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
///       name: example-PIP
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       allocationMethod: Static
///       sku: Standard
///   exampleNatGateway:
///     type: azure:network:NatGateway
///     name: example
///     properties:
///       name: example-NatGateway
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       skuName: Standard
///   exampleNatGatewayPublicIpAssociation:
///     type: azure:network:NatGatewayPublicIpAssociation
///     name: example
///     properties:
///       natGatewayId: ${exampleNatGateway.id}
///       publicIpAddressId: ${examplePublicIp.id}
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
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const examplePublicIp = new azure.network.PublicIp("example", {
///     name: "example-pip-v6",
///     location: example.location,
///     resourceGroupName: example.name,
///     allocationMethod: "Static",
///     sku: "StandardV2",
///     ipVersion: "IPv6",
/// });
/// const exampleNatGateway = new azure.network.NatGateway("example", {
///     name: "example-nat-gateway-v6",
///     location: example.location,
///     resourceGroupName: example.name,
///     skuName: "StandardV2",
/// });
/// const exampleNatGatewayPublicIpAssociation = new azure.network.NatGatewayPublicIpAssociation("example", {
///     natGatewayId: exampleNatGateway.id,
///     publicIpAddressId: examplePublicIp.id,
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
///     name="example-pip-v6",
///     location=example.location,
///     resource_group_name=example.name,
///     allocation_method="Static",
///     sku="StandardV2",
///     ip_version="IPv6")
/// example_nat_gateway = azure.network.NatGateway("example",
///     name="example-nat-gateway-v6",
///     location=example.location,
///     resource_group_name=example.name,
///     sku_name="StandardV2")
/// example_nat_gateway_public_ip_association = azure.network.NatGatewayPublicIpAssociation("example",
///     nat_gateway_id=example_nat_gateway.id,
///     public_ip_address_id=example_public_ip.id)
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
///         Name = "example-pip-v6",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AllocationMethod = "Static",
///         Sku = "StandardV2",
///         IpVersion = "IPv6",
///     });
///
///     var exampleNatGateway = new Azure.Network.NatGateway("example", new()
///     {
///         Name = "example-nat-gateway-v6",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SkuName = "StandardV2",
///     });
///
///     var exampleNatGatewayPublicIpAssociation = new Azure.Network.NatGatewayPublicIpAssociation("example", new()
///     {
///         NatGatewayId = exampleNatGateway.Id,
///         PublicIpAddressId = examplePublicIp.Id,
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
/// 		examplePublicIp, err := network.NewPublicIp(ctx, "example", &network.PublicIpArgs{
/// 			Name:              pulumi.String("example-pip-v6"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AllocationMethod:  pulumi.String("Static"),
/// 			Sku:               pulumi.String("StandardV2"),
/// 			IpVersion:         pulumi.String("IPv6"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNatGateway, err := network.NewNatGateway(ctx, "example", &network.NatGatewayArgs{
/// 			Name:              pulumi.String("example-nat-gateway-v6"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("StandardV2"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewNatGatewayPublicIpAssociation(ctx, "example", &network.NatGatewayPublicIpAssociationArgs{
/// 			NatGatewayId:      exampleNatGateway.ID().ToIDOutput().ToStringOutput(),
/// 			PublicIpAddressId: examplePublicIp.ID().ToIDOutput().ToStringOutput(),
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
/// resource "azure_network_publicip" "example" {
///   name                = "example-pip-v6"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   allocation_method   = "Static"
///   sku                 = "StandardV2"
///   ip_version          = "IPv6"
/// }
/// resource "azure_network_natgateway" "example" {
///   name                = "example-nat-gateway-v6"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku_name            = "StandardV2"
/// }
/// resource "azure_network_natgatewaypublicipassociation" "example" {
///   nat_gateway_id       = azure_network_natgateway.example.id
///   public_ip_address_id = azure_network_publicip.example.id
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
/// import com.pulumi.azure.network.NatGateway;
/// import com.pulumi.azure.network.NatGatewayArgs;
/// import com.pulumi.azure.network.NatGatewayPublicIpAssociation;
/// import com.pulumi.azure.network.NatGatewayPublicIpAssociationArgs;
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
///         var examplePublicIp = new PublicIp("examplePublicIp", PublicIpArgs.builder()
///             .name("example-pip-v6")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .allocationMethod("Static")
///             .sku("StandardV2")
///             .ipVersion("IPv6")
///             .build());
///
///         var exampleNatGateway = new NatGateway("exampleNatGateway", NatGatewayArgs.builder()
///             .name("example-nat-gateway-v6")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .skuName("StandardV2")
///             .build());
///
///         var exampleNatGatewayPublicIpAssociation = new NatGatewayPublicIpAssociation("exampleNatGatewayPublicIpAssociation", NatGatewayPublicIpAssociationArgs.builder()
///             .natGatewayId(exampleNatGateway.id())
///             .publicIpAddressId(examplePublicIp.id())
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
///       name: example-pip-v6
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       allocationMethod: Static
///       sku: StandardV2
///       ipVersion: IPv6
///   exampleNatGateway:
///     type: azure:network:NatGateway
///     name: example
///     properties:
///       name: example-nat-gateway-v6
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       skuName: StandardV2
///   exampleNatGatewayPublicIpAssociation:
///     type: azure:network:NatGatewayPublicIpAssociation
///     name: example
///     properties:
///       natGatewayId: ${exampleNatGateway.id}
///       publicIpAddressId: ${examplePublicIp.id}
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
/// A NAT Gateway Public IP Address association can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/natGatewayPublicIpAssociation:NatGatewayPublicIpAssociation example "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.Network/natGateways/natGateway1|/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.Network/publicIPAddresses/publicIPAddress1"
/// ```
///
/// &gt; **Note:** This is a provider-specific ID in the format `{natGatewayID}|{publicIPAddressID}`.
class NatGatewayPublicIpAssociation extends pulumi.CustomResource {
  /// The ID of the NAT Gateway. Changing this forces a new resource to be created.
  late final pulumi.Output<String> natGatewayId;
  /// The ID of the Public IP Address which this NAT Gateway should be connected to. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** When `natGatewayId` references a NAT Gateway with SKU `Standard`, `publicIpAddressId` must reference a Public IP Address with SKU `Standard`. When `natGatewayId` references a NAT Gateway with SKU `StandardV2`, `publicIpAddressId` must reference a Public IP Address with SKU `StandardV2`.
  ///
  /// &gt; **Note:** When `publicIpAddressId` references an `IPv6` Public IP Address, `natGatewayId` must reference a NAT Gateway with SKU `StandardV2`, and `publicIpAddressId` must reference an `IPv6` Public IP Address with SKU `StandardV2`.
  late final pulumi.Output<String> publicIpAddressId;

  /// Creates a new [NatGatewayPublicIpAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NatGatewayPublicIpAssociation]. {@macro pulumi_network_nat_gateway_public_ip_association_nat_gateway_public_ip_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NatGatewayPublicIpAssociation(
    String name, {
    NatGatewayPublicIpAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/natGatewayPublicIpAssociation:NatGatewayPublicIpAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    natGatewayId = registerOutput<String>('natGatewayId');
    publicIpAddressId = registerOutput<String>('publicIpAddressId');
  }

  /// Gets an existing [NatGatewayPublicIpAssociation] resource's state with the given [name] and [id].
  static NatGatewayPublicIpAssociation get(
    String name,
    pulumi.Input<String> id, {
    NatGatewayPublicIpAssociationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return NatGatewayPublicIpAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  NatGatewayPublicIpAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/natGatewayPublicIpAssociation:NatGatewayPublicIpAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    natGatewayId = registerOutput<String>('natGatewayId');
    publicIpAddressId = registerOutput<String>('publicIpAddressId');
  }

  /// Creates a typed reference to an existing [NatGatewayPublicIpAssociation] resource.
  NatGatewayPublicIpAssociation.reference(String urn)
    : super(
        'azure:network/natGatewayPublicIpAssociation:NatGatewayPublicIpAssociation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    natGatewayId = registerOutput<String>('natGatewayId');
    publicIpAddressId = registerOutput<String>('publicIpAddressId');
  }
}
