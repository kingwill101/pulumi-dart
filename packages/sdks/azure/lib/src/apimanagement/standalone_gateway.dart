import 'package:pulumi/pulumi.dart' as pulumi;
import 'standalone_gateway_args.dart';
import 'standalone_gateway_sku.dart';
import 'standalone_gateway_state.dart';

/// Manages an Azure API Management Standalone Gateway.
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
///     name: "example-network",
///     location: example.location,
///     resourceGroupName: example.name,
///     addressSpaces: ["10.0.0.0/16"],
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "example-subnet",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.1.0/24"],
///     delegations: [{
///         name: "apim-delegation",
///         serviceDelegation: {
///             name: "Microsoft.Web/serverFarms",
///             actions: ["Microsoft.Network/virtualNetworks/subnets/action"],
///         },
///     }],
/// });
/// const exampleStandaloneGateway = new azure.apimanagement.StandaloneGateway("example", {
///     name: "example-gateway-flexible",
///     resourceGroupName: example.name,
///     location: example.location,
///     virtualNetworkType: "External",
///     backendSubnetId: exampleSubnet.id,
///     sku: {
///         capacity: 1,
///         name: "WorkspaceGatewayPremium",
///     },
///     tags: {
///         Hello: "World",
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
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="example-network",
///     location=example.location,
///     resource_group_name=example.name,
///     address_spaces=["10.0.0.0/16"])
/// example_subnet = azure.network.Subnet("example",
///     name="example-subnet",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.1.0/24"],
///     delegations=[{
///         "name": "apim-delegation",
///         "service_delegation": {
///             "name": "Microsoft.Web/serverFarms",
///             "actions": ["Microsoft.Network/virtualNetworks/subnets/action"],
///         },
///     }])
/// example_standalone_gateway = azure.apimanagement.StandaloneGateway("example",
///     name="example-gateway-flexible",
///     resource_group_name=example.name,
///     location=example.location,
///     virtual_network_type="External",
///     backend_subnet_id=example_subnet.id,
///     sku={
///         "capacity": 1,
///         "name": "WorkspaceGatewayPremium",
///     },
///     tags={
///         "Hello": "World",
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
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "example-network",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
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
///                 Name = "apim-delegation",
///                 ServiceDelegation = new Azure.Network.Inputs.SubnetDelegationServiceDelegationArgs
///                 {
///                     Name = "Microsoft.Web/serverFarms",
///                     Actions = new[]
///                     {
///                         "Microsoft.Network/virtualNetworks/subnets/action",
///                     },
///                 },
///             },
///         },
///     });
///
///     var exampleStandaloneGateway = new Azure.ApiManagement.StandaloneGateway("example", new()
///     {
///         Name = "example-gateway-flexible",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         VirtualNetworkType = "External",
///         BackendSubnetId = exampleSubnet.Id,
///         Sku = new Azure.ApiManagement.Inputs.StandaloneGatewaySkuArgs
///         {
///             Capacity = 1,
///             Name = "WorkspaceGatewayPremium",
///         },
///         Tags =
///         {
///             { "Hello", "World" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/apimanagement"
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
/// 			Name:              pulumi.String("example-network"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("example-subnet"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.1.0/24"),
/// 			},
/// 			Delegations: network.SubnetDelegationArray{
/// 				&network.SubnetDelegationArgs{
/// 					Name: pulumi.String("apim-delegation"),
/// 					ServiceDelegation: &network.SubnetDelegationServiceDelegationArgs{
/// 						Name: pulumi.String("Microsoft.Web/serverFarms"),
/// 						Actions: pulumi.StringArray{
/// 							pulumi.String("Microsoft.Network/virtualNetworks/subnets/action"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apimanagement.NewStandaloneGateway(ctx, "example", &apimanagement.StandaloneGatewayArgs{
/// 			Name:               pulumi.String("example-gateway-flexible"),
/// 			ResourceGroupName:  example.Name,
/// 			Location:           example.Location,
/// 			VirtualNetworkType: pulumi.String("External"),
/// 			BackendSubnetId:    exampleSubnet.ID(),
/// 			Sku: &apimanagement.StandaloneGatewaySkuArgs{
/// 				Capacity: pulumi.Int(1),
/// 				Name:     pulumi.String("WorkspaceGatewayPremium"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Hello": pulumi.String("World"),
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
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationServiceDelegationArgs;
/// import com.pulumi.azure.apimanagement.StandaloneGateway;
/// import com.pulumi.azure.apimanagement.StandaloneGatewayArgs;
/// import com.pulumi.azure.apimanagement.inputs.StandaloneGatewaySkuArgs;
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
///             .name("example-network")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .addressSpaces("10.0.0.0/16")
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("example-subnet")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.1.0/24")
///             .delegations(SubnetDelegationArgs.builder()
///                 .name("apim-delegation")
///                 .serviceDelegation(SubnetDelegationServiceDelegationArgs.builder()
///                     .name("Microsoft.Web/serverFarms")
///                     .actions("Microsoft.Network/virtualNetworks/subnets/action")
///                     .build())
///                 .build())
///             .build());
///
///         var exampleStandaloneGateway = new StandaloneGateway("exampleStandaloneGateway", StandaloneGatewayArgs.builder()
///             .name("example-gateway-flexible")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .virtualNetworkType("External")
///             .backendSubnetId(exampleSubnet.id())
///             .sku(StandaloneGatewaySkuArgs.builder()
///                 .capacity(1)
///                 .name("WorkspaceGatewayPremium")
///                 .build())
///             .tags(Map.of("Hello", "World"))
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
///       name: example-network
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       addressSpaces:
///         - 10.0.0.0/16
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
///         - name: apim-delegation
///           serviceDelegation:
///             name: Microsoft.Web/serverFarms
///             actions:
///               - Microsoft.Network/virtualNetworks/subnets/action
///   exampleStandaloneGateway:
///     type: azure:apimanagement:StandaloneGateway
///     name: example
///     properties:
///       name: example-gateway-flexible
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       virtualNetworkType: External
///       backendSubnetId: ${exampleSubnet.id}
///       sku:
///         capacity: 1
///         name: WorkspaceGatewayPremium
///       tags:
///         Hello: World
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ApiManagement` - 2024-05-01
///
/// ## Import
///
/// API Management Standalone Gateway can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:apimanagement/standaloneGateway:StandaloneGateway example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.ApiManagement/gateways/gateway1
/// ```
class StandaloneGateway extends pulumi.CustomResource {
  /// Specifies the subnet ID in which the backend systems are hosted. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> backendSubnetId;

  /// Specifies the Azure Region where the API Management Standalone Gateway should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;

  /// Specifies the name which should be used for this API Management Standalone Gateway. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// Specifies the name of the Resource Group where the API Management Standalone Gateway should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// A `sku` block as defined below.
  late final pulumi.Output<StandaloneGatewaySku> sku;

  /// A mapping of tags which should be assigned to the API Management Standalone Gateway. Changing this forces a new resource to be created.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Specifies the type of VPN in which API Management gateway needs to be configured. Possible values are `External` and `Internal`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> virtualNetworkType;

  /// Creates a new [StandaloneGateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StandaloneGateway]. {@macro pulumi_apimanagement_standalone_gateway_standalone_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StandaloneGateway(
    String name, {
    StandaloneGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:apimanagement/standaloneGateway:StandaloneGateway',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    backendSubnetId = registerOutput<String?>('backendSubnetId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sku = registerOutput<StandaloneGatewaySku>(
      'sku',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return StandaloneGatewaySku.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    virtualNetworkType = registerOutput<String?>('virtualNetworkType');
  }

  /// Gets an existing [StandaloneGateway] resource's state with the given [name] and [id].
  static StandaloneGateway get(
    String name,
    pulumi.Input<String> id, {
    StandaloneGatewayState? state,
  }) {
    return StandaloneGateway._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  StandaloneGateway._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:apimanagement/standaloneGateway:StandaloneGateway',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    backendSubnetId = registerOutput<String?>('backendSubnetId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sku = registerOutput<StandaloneGatewaySku>(
      'sku',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return StandaloneGatewaySku.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    virtualNetworkType = registerOutput<String?>('virtualNetworkType');
  }
}
