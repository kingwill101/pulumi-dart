import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_acl_args.dart';
import 'network_acl_private_endpoint.dart';
import 'network_acl_public_network.dart';
import 'network_acl_state.dart';

/// Manages the Network ACL for a Web Pubsub.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "terraform-webpubsub",
///     location: "east us",
/// });
/// const exampleService = new azure.webpubsub.Service("example", {
///     name: "tfex-webpubsub",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "Standard_S1",
///     capacity: 1,
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "example-vnet",
///     resourceGroupName: example.name,
///     location: example.location,
///     addressSpaces: ["10.5.0.0/16"],
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "example-subnet",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.5.2.0/24"],
///     enforcePrivateLinkEndpointNetworkPolicies: true,
/// });
/// const exampleEndpoint = new azure.privatelink.Endpoint("example", {
///     name: "example-privateendpoint",
///     resourceGroupName: example.name,
///     location: example.location,
///     subnetId: exampleSubnet.id,
///     privateServiceConnection: {
///         name: "psc-sig-test",
///         isManualConnection: false,
///         privateConnectionResourceId: exampleService.id,
///         subresourceNames: ["webpubsub"],
///     },
/// });
/// const exampleNetworkAcl = new azure.webpubsub.NetworkAcl("example", {
///     webPubsubId: exampleService.id,
///     defaultAction: "Allow",
///     publicNetwork: {
///         deniedRequestTypes: ["ClientConnection"],
///     },
///     privateEndpoints: [{
///         id: exampleEndpoint.id,
///         deniedRequestTypes: [
///             "RESTAPI",
///             "ClientConnection",
///         ],
///     }],
/// }, {
///     dependsOn: [exampleEndpoint],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="terraform-webpubsub",
///     location="east us")
/// example_service = azure.webpubsub.Service("example",
///     name="tfex-webpubsub",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="Standard_S1",
///     capacity=1)
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="example-vnet",
///     resource_group_name=example.name,
///     location=example.location,
///     address_spaces=["10.5.0.0/16"])
/// example_subnet = azure.network.Subnet("example",
///     name="example-subnet",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.5.2.0/24"],
///     enforce_private_link_endpoint_network_policies=True)
/// example_endpoint = azure.privatelink.Endpoint("example",
///     name="example-privateendpoint",
///     resource_group_name=example.name,
///     location=example.location,
///     subnet_id=example_subnet.id,
///     private_service_connection={
///         "name": "psc-sig-test",
///         "is_manual_connection": False,
///         "private_connection_resource_id": example_service.id,
///         "subresource_names": ["webpubsub"],
///     })
/// example_network_acl = azure.webpubsub.NetworkAcl("example",
///     web_pubsub_id=example_service.id,
///     default_action="Allow",
///     public_network={
///         "denied_request_types": ["ClientConnection"],
///     },
///     private_endpoints=[{
///         "id": example_endpoint.id,
///         "denied_request_types": [
///             "RESTAPI",
///             "ClientConnection",
///         ],
///     }],
///     opts = pulumi.ResourceOptions(depends_on=[example_endpoint]))
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
///         Name = "terraform-webpubsub",
///         Location = "east us",
///     });
///
///     var exampleService = new Azure.WebPubSub.Service("example", new()
///     {
///         Name = "tfex-webpubsub",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "Standard_S1",
///         Capacity = 1,
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "example-vnet",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AddressSpaces = new[]
///         {
///             "10.5.0.0/16",
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
///             "10.5.2.0/24",
///         },
///         EnforcePrivateLinkEndpointNetworkPolicies = true,
///     });
///
///     var exampleEndpoint = new Azure.PrivateLink.Endpoint("example", new()
///     {
///         Name = "example-privateendpoint",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         SubnetId = exampleSubnet.Id,
///         PrivateServiceConnection = new Azure.PrivateLink.Inputs.EndpointPrivateServiceConnectionArgs
///         {
///             Name = "psc-sig-test",
///             IsManualConnection = false,
///             PrivateConnectionResourceId = exampleService.Id,
///             SubresourceNames = new[]
///             {
///                 "webpubsub",
///             },
///         },
///     });
///
///     var exampleNetworkAcl = new Azure.WebPubSub.NetworkAcl("example", new()
///     {
///         WebPubsubId = exampleService.Id,
///         DefaultAction = "Allow",
///         PublicNetwork = new Azure.WebPubSub.Inputs.NetworkAclPublicNetworkArgs
///         {
///             DeniedRequestTypes = new[]
///             {
///                 "ClientConnection",
///             },
///         },
///         PrivateEndpoints = new[]
///         {
///             new Azure.WebPubSub.Inputs.NetworkAclPrivateEndpointArgs
///             {
///                 Id = exampleEndpoint.Id,
///                 DeniedRequestTypes = new[]
///                 {
///                     "RESTAPI",
///                     "ClientConnection",
///                 },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleEndpoint,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/privatelink"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/webpubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("terraform-webpubsub"),
/// 			Location: pulumi.String("east us"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleService, err := webpubsub.NewService(ctx, "example", &webpubsub.ServiceArgs{
/// 			Name:              pulumi.String("tfex-webpubsub"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("Standard_S1"),
/// 			Capacity:          pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name:              pulumi.String("example-vnet"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.5.0.0/16"),
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
/// 				pulumi.String("10.5.2.0/24"),
/// 			},
/// 			EnforcePrivateLinkEndpointNetworkPolicies: true,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleEndpoint, err := privatelink.NewEndpoint(ctx, "example", &privatelink.EndpointArgs{
/// 			Name:              pulumi.String("example-privateendpoint"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			SubnetId:          exampleSubnet.ID().ToIDOutput().ToStringOutput(),
/// 			PrivateServiceConnection: &privatelink.EndpointPrivateServiceConnectionArgs{
/// 				Name:                        pulumi.String("psc-sig-test"),
/// 				IsManualConnection:          pulumi.Bool(false),
/// 				PrivateConnectionResourceId: exampleService.ID().ToIDOutput().ToStringOutput(),
/// 				SubresourceNames: pulumi.StringArray{
/// 					pulumi.String("webpubsub"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = webpubsub.NewNetworkAcl(ctx, "example", &webpubsub.NetworkAclArgs{
/// 			WebPubsubId:   exampleService.ID().ToIDOutput().ToStringOutput(),
/// 			DefaultAction: pulumi.String("Allow"),
/// 			PublicNetwork: &webpubsub.NetworkAclPublicNetworkArgs{
/// 				DeniedRequestTypes: pulumi.StringArray{
/// 					pulumi.String("ClientConnection"),
/// 				},
/// 			},
/// 			PrivateEndpoints: webpubsub.NetworkAclPrivateEndpointArray{
/// 				&webpubsub.NetworkAclPrivateEndpointArgs{
/// 					Id: exampleEndpoint.ID().ToIDOutput().ToStringOutput(),
/// 					DeniedRequestTypes: pulumi.StringArray{
/// 						pulumi.String("RESTAPI"),
/// 						pulumi.String("ClientConnection"),
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleEndpoint,
/// 		}))
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
///   name     = "terraform-webpubsub"
///   location = "east us"
/// }
/// resource "azure_webpubsub_service" "example" {
///   name                = "tfex-webpubsub"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku                 = "Standard_S1"
///   capacity            = 1
/// }
/// resource "azure_network_virtualnetwork" "example" {
///   name                = "example-vnet"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   address_spaces      = ["10.5.0.0/16"]
/// }
/// resource "azure_network_subnet" "example" {
///   name                                           = "example-subnet"
///   resource_group_name                            = azure_core_resourcegroup.example.name
///   virtual_network_name                           = azure_network_virtualnetwork.example.name
///   address_prefixes                               = ["10.5.2.0/24"]
///   enforce_private_link_endpoint_network_policies = true
/// }
/// resource "azure_privatelink_endpoint" "example" {
///   name                = "example-privateendpoint"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   subnet_id           = azure_network_subnet.example.id
///   private_service_connection = {
///     name                           = "psc-sig-test"
///     is_manual_connection           = false
///     private_connection_resource_id = azure_webpubsub_service.example.id
///     subresource_names              = ["webpubsub"]
///   }
/// }
/// resource "azure_webpubsub_networkacl" "example" {
///   depends_on     = [azure_privatelink_endpoint.example]
///   web_pubsub_id  = azure_webpubsub_service.example.id
///   default_action = "Allow"
///   public_network = {
///     denied_request_types = ["ClientConnection"]
///   }
///   private_endpoints {
///     id                   = azure_privatelink_endpoint.example.id
///     denied_request_types = ["RESTAPI", "ClientConnection"]
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
/// import com.pulumi.azure.webpubsub.Service;
/// import com.pulumi.azure.webpubsub.ServiceArgs;
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.privatelink.Endpoint;
/// import com.pulumi.azure.privatelink.EndpointArgs;
/// import com.pulumi.azure.privatelink.inputs.EndpointPrivateServiceConnectionArgs;
/// import com.pulumi.azure.webpubsub.NetworkAcl;
/// import com.pulumi.azure.webpubsub.NetworkAclArgs;
/// import com.pulumi.azure.webpubsub.inputs.NetworkAclPublicNetworkArgs;
/// import com.pulumi.azure.webpubsub.inputs.NetworkAclPrivateEndpointArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///             .name("terraform-webpubsub")
///             .location("east us")
///             .build());
///
///         var exampleService = new Service("exampleService", ServiceArgs.builder()
///             .name("tfex-webpubsub")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("Standard_S1")
///             .capacity(1)
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("example-vnet")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .addressSpaces("10.5.0.0/16")
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("example-subnet")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.5.2.0/24")
///             .enforcePrivateLinkEndpointNetworkPolicies(true)
///             .build());
///
///         var exampleEndpoint = new Endpoint("exampleEndpoint", EndpointArgs.builder()
///             .name("example-privateendpoint")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .subnetId(exampleSubnet.id())
///             .privateServiceConnection(EndpointPrivateServiceConnectionArgs.builder()
///                 .name("psc-sig-test")
///                 .isManualConnection(false)
///                 .privateConnectionResourceId(exampleService.id())
///                 .subresourceNames("webpubsub")
///                 .build())
///             .build());
///
///         var exampleNetworkAcl = new NetworkAcl("exampleNetworkAcl", NetworkAclArgs.builder()
///             .webPubsubId(exampleService.id())
///             .defaultAction("Allow")
///             .publicNetwork(NetworkAclPublicNetworkArgs.builder()
///                 .deniedRequestTypes("ClientConnection")
///                 .build())
///             .privateEndpoints(NetworkAclPrivateEndpointArgs.builder()
///                 .id(exampleEndpoint.id())
///                 .deniedRequestTypes(
///                     "RESTAPI",
///                     "ClientConnection")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleEndpoint)
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
///       name: terraform-webpubsub
///       location: east us
///   exampleService:
///     type: azure:webpubsub:Service
///     name: example
///     properties:
///       name: tfex-webpubsub
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: Standard_S1
///       capacity: 1
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: example-vnet
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       addressSpaces:
///         - 10.5.0.0/16
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: example-subnet
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.5.2.0/24
///       enforcePrivateLinkEndpointNetworkPolicies: true
///   exampleEndpoint:
///     type: azure:privatelink:Endpoint
///     name: example
///     properties:
///       name: example-privateendpoint
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       subnetId: ${exampleSubnet.id}
///       privateServiceConnection:
///         name: psc-sig-test
///         isManualConnection: false
///         privateConnectionResourceId: ${exampleService.id}
///         subresourceNames:
///           - webpubsub
///   exampleNetworkAcl:
///     type: azure:webpubsub:NetworkAcl
///     name: example
///     properties:
///       webPubsubId: ${exampleService.id}
///       defaultAction: Allow
///       publicNetwork:
///         deniedRequestTypes:
///           - ClientConnection
///       privateEndpoints:
///         - id: ${exampleEndpoint.id}
///           deniedRequestTypes:
///             - RESTAPI
///             - ClientConnection
///     options:
///       dependsOn:
///         - ${exampleEndpoint}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.SignalRService` - 2024-03-01
///
/// ## Import
///
/// Network ACLs for a Web Pubsub service can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:webpubsub/networkAcl:NetworkAcl example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.SignalRService/webPubSub/webpubsub1
/// ```
class NetworkAcl extends pulumi.CustomResource {
  /// The default action to control the network access when no other rule matches. Possible values are `Allow` and `Deny`. Defaults to `Deny`.
  late final pulumi.Output<String?> defaultAction;
  /// A `privateEndpoint` block as defined below.
  late final pulumi.Output<List<NetworkAclPrivateEndpoint>?> privateEndpoints;
  /// A `publicNetwork` block as defined below.
  late final pulumi.Output<NetworkAclPublicNetwork> publicNetwork;
  /// The ID of the Web Pubsub service. Changing this forces a new resource to be created.
  late final pulumi.Output<String> webPubsubId;

  /// Creates a new [NetworkAcl].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkAcl]. {@macro pulumi_webpubsub_network_acl_network_acl_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkAcl(
    String name, {
    NetworkAclArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:webpubsub/networkAcl:NetworkAcl',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    defaultAction = registerOutput<String?>('defaultAction');
    privateEndpoints = registerOutput<List<NetworkAclPrivateEndpoint>?>('privateEndpoints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkAclPrivateEndpoint>(guardedValue, (value) => NetworkAclPrivateEndpoint.fromMap((value as Map).cast<String, dynamic>())); });
    publicNetwork = registerOutput<NetworkAclPublicNetwork>('publicNetwork', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkAclPublicNetwork.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    webPubsubId = registerOutput<String>('webPubsubId');
  }

  /// Gets an existing [NetworkAcl] resource's state with the given [name] and [id].
  static NetworkAcl get(
    String name,
    pulumi.Input<String> id, {
    NetworkAclState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return NetworkAcl._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  NetworkAcl._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:webpubsub/networkAcl:NetworkAcl',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    defaultAction = registerOutput<String?>('defaultAction');
    privateEndpoints = registerOutput<List<NetworkAclPrivateEndpoint>?>('privateEndpoints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkAclPrivateEndpoint>(guardedValue, (value) => NetworkAclPrivateEndpoint.fromMap((value as Map).cast<String, dynamic>())); });
    publicNetwork = registerOutput<NetworkAclPublicNetwork>('publicNetwork', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkAclPublicNetwork.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    webPubsubId = registerOutput<String>('webPubsubId');
  }

  /// Creates a typed reference to an existing [NetworkAcl] resource.
  NetworkAcl.reference(String urn)
    : super(
        'azure:webpubsub/networkAcl:NetworkAcl',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    defaultAction = registerOutput<String?>('defaultAction');
    privateEndpoints = registerOutput<List<NetworkAclPrivateEndpoint>?>('privateEndpoints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkAclPrivateEndpoint>(guardedValue, (value) => NetworkAclPrivateEndpoint.fromMap((value as Map).cast<String, dynamic>())); });
    publicNetwork = registerOutput<NetworkAclPublicNetwork>('publicNetwork', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkAclPublicNetwork.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    webPubsubId = registerOutput<String>('webPubsubId');
  }
}
