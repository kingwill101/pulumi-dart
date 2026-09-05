import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_network_acl_args.dart';
import 'service_network_acl_private_endpoint.dart';
import 'service_network_acl_public_network.dart';
import 'service_network_acl_state.dart';

/// Manages the Network ACL for a SignalR service.
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
/// const exampleService = new azure.signalr.Service("example", {
///     name: "example-signalr",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: {
///         name: "Standard_S1",
///         capacity: 1,
///     },
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
///         subresourceNames: ["signalr"],
///     },
/// });
/// const exampleServiceNetworkAcl = new azure.signalr.ServiceNetworkAcl("example", {
///     signalrServiceId: exampleService.id,
///     defaultAction: "Deny",
///     publicNetwork: {
///         allowedRequestTypes: ["ClientConnection"],
///     },
///     privateEndpoints: [{
///         id: exampleEndpoint.id,
///         allowedRequestTypes: ["ServerConnection"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_service = azure.signalr.Service("example",
///     name="example-signalr",
///     location=example.location,
///     resource_group_name=example.name,
///     sku={
///         "name": "Standard_S1",
///         "capacity": 1,
///     })
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
///         "subresource_names": ["signalr"],
///     })
/// example_service_network_acl = azure.signalr.ServiceNetworkAcl("example",
///     signalr_service_id=example_service.id,
///     default_action="Deny",
///     public_network={
///         "allowed_request_types": ["ClientConnection"],
///     },
///     private_endpoints=[{
///         "id": example_endpoint.id,
///         "allowed_request_types": ["ServerConnection"],
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
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleService = new Azure.SignalR.Service("example", new()
///     {
///         Name = "example-signalr",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = new Azure.SignalR.Inputs.ServiceSkuArgs
///         {
///             Name = "Standard_S1",
///             Capacity = 1,
///         },
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
///                 "signalr",
///             },
///         },
///     });
///
///     var exampleServiceNetworkAcl = new Azure.SignalR.ServiceNetworkAcl("example", new()
///     {
///         SignalrServiceId = exampleService.Id,
///         DefaultAction = "Deny",
///         PublicNetwork = new Azure.SignalR.Inputs.ServiceNetworkAclPublicNetworkArgs
///         {
///             AllowedRequestTypes = new[]
///             {
///                 "ClientConnection",
///             },
///         },
///         PrivateEndpoints = new[]
///         {
///             new Azure.SignalR.Inputs.ServiceNetworkAclPrivateEndpointArgs
///             {
///                 Id = exampleEndpoint.Id,
///                 AllowedRequestTypes = new[]
///                 {
///                     "ServerConnection",
///                 },
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/privatelink"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/signalr"
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
/// 		exampleService, err := signalr.NewService(ctx, "example", &signalr.ServiceArgs{
/// 			Name:              pulumi.String("example-signalr"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku: &signalr.ServiceSkuArgs{
/// 				Name:     pulumi.String("Standard_S1"),
/// 				Capacity: pulumi.Int(1),
/// 			},
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
/// 					pulumi.String("signalr"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = signalr.NewServiceNetworkAcl(ctx, "example", &signalr.ServiceNetworkAclArgs{
/// 			SignalrServiceId: exampleService.ID().ToIDOutput().ToStringOutput(),
/// 			DefaultAction:    pulumi.String("Deny"),
/// 			PublicNetwork: &signalr.ServiceNetworkAclPublicNetworkArgs{
/// 				AllowedRequestTypes: pulumi.StringArray{
/// 					pulumi.String("ClientConnection"),
/// 				},
/// 			},
/// 			PrivateEndpoints: signalr.ServiceNetworkAclPrivateEndpointArray{
/// 				&signalr.ServiceNetworkAclPrivateEndpointArgs{
/// 					Id: exampleEndpoint.ID().ToIDOutput().ToStringOutput(),
/// 					AllowedRequestTypes: pulumi.StringArray{
/// 						pulumi.String("ServerConnection"),
/// 					},
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
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_signalr_service" "example" {
///   name                = "example-signalr"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku = {
///     name     = "Standard_S1"
///     capacity = 1
///   }
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
///     private_connection_resource_id = azure_signalr_service.example.id
///     subresource_names              = ["signalr"]
///   }
/// }
/// resource "azure_signalr_servicenetworkacl" "example" {
///   signalr_service_id = azure_signalr_service.example.id
///   default_action     = "Deny"
///   public_network = {
///     allowed_request_types = ["ClientConnection"]
///   }
///   private_endpoints {
///     id                    = azure_privatelink_endpoint.example.id
///     allowed_request_types = ["ServerConnection"]
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
/// import com.pulumi.azure.signalr.Service;
/// import com.pulumi.azure.signalr.ServiceArgs;
/// import com.pulumi.azure.signalr.inputs.ServiceSkuArgs;
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.privatelink.Endpoint;
/// import com.pulumi.azure.privatelink.EndpointArgs;
/// import com.pulumi.azure.privatelink.inputs.EndpointPrivateServiceConnectionArgs;
/// import com.pulumi.azure.signalr.ServiceNetworkAcl;
/// import com.pulumi.azure.signalr.ServiceNetworkAclArgs;
/// import com.pulumi.azure.signalr.inputs.ServiceNetworkAclPublicNetworkArgs;
/// import com.pulumi.azure.signalr.inputs.ServiceNetworkAclPrivateEndpointArgs;
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
///         var exampleService = new Service("exampleService", ServiceArgs.builder()
///             .name("example-signalr")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku(ServiceSkuArgs.builder()
///                 .name("Standard_S1")
///                 .capacity(1)
///                 .build())
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
///                 .subresourceNames("signalr")
///                 .build())
///             .build());
///
///         var exampleServiceNetworkAcl = new ServiceNetworkAcl("exampleServiceNetworkAcl", ServiceNetworkAclArgs.builder()
///             .signalrServiceId(exampleService.id())
///             .defaultAction("Deny")
///             .publicNetwork(ServiceNetworkAclPublicNetworkArgs.builder()
///                 .allowedRequestTypes("ClientConnection")
///                 .build())
///             .privateEndpoints(ServiceNetworkAclPrivateEndpointArgs.builder()
///                 .id(exampleEndpoint.id())
///                 .allowedRequestTypes("ServerConnection")
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
///   exampleService:
///     type: azure:signalr:Service
///     name: example
///     properties:
///       name: example-signalr
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku:
///         name: Standard_S1
///         capacity: 1
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
///           - signalr
///   exampleServiceNetworkAcl:
///     type: azure:signalr:ServiceNetworkAcl
///     name: example
///     properties:
///       signalrServiceId: ${exampleService.id}
///       defaultAction: Deny
///       publicNetwork:
///         allowedRequestTypes:
///           - ClientConnection
///       privateEndpoints:
///         - id: ${exampleEndpoint.id}
///           allowedRequestTypes:
///             - ServerConnection
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
/// Network ACLs for a SignalR service can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:signalr/serviceNetworkAcl:ServiceNetworkAcl example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.SignalRService/signalR/signalr1
/// ```
class ServiceNetworkAcl extends pulumi.CustomResource {
  /// The default action to control the network access when no other rule matches. Possible values are `Allow` and `Deny`.
  late final pulumi.Output<String> defaultAction;
  /// A `privateEndpoint` block as defined below.
  late final pulumi.Output<List<ServiceNetworkAclPrivateEndpoint>?> privateEndpoints;
  /// A `publicNetwork` block as defined below.
  late final pulumi.Output<ServiceNetworkAclPublicNetwork> publicNetwork;
  /// The ID of the SignalR service. Changing this forces a new resource to be created.
  late final pulumi.Output<String> signalrServiceId;

  /// Creates a new [ServiceNetworkAcl].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceNetworkAcl]. {@macro pulumi_signalr_service_network_acl_service_network_acl_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceNetworkAcl(
    String name, {
    ServiceNetworkAclArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:signalr/serviceNetworkAcl:ServiceNetworkAcl',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    defaultAction = registerOutput<String>('defaultAction');
    privateEndpoints = registerOutput<List<ServiceNetworkAclPrivateEndpoint>?>('privateEndpoints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ServiceNetworkAclPrivateEndpoint>(guardedValue, (value) => ServiceNetworkAclPrivateEndpoint.fromMap((value as Map).cast<String, dynamic>())); });
    publicNetwork = registerOutput<ServiceNetworkAclPublicNetwork>('publicNetwork', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceNetworkAclPublicNetwork.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    signalrServiceId = registerOutput<String>('signalrServiceId');
  }

  /// Gets an existing [ServiceNetworkAcl] resource's state with the given [name] and [id].
  static ServiceNetworkAcl get(
    String name,
    pulumi.Input<String> id, {
    ServiceNetworkAclState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ServiceNetworkAcl._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ServiceNetworkAcl._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:signalr/serviceNetworkAcl:ServiceNetworkAcl',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    defaultAction = registerOutput<String>('defaultAction');
    privateEndpoints = registerOutput<List<ServiceNetworkAclPrivateEndpoint>?>('privateEndpoints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ServiceNetworkAclPrivateEndpoint>(guardedValue, (value) => ServiceNetworkAclPrivateEndpoint.fromMap((value as Map).cast<String, dynamic>())); });
    publicNetwork = registerOutput<ServiceNetworkAclPublicNetwork>('publicNetwork', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceNetworkAclPublicNetwork.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    signalrServiceId = registerOutput<String>('signalrServiceId');
  }

  /// Creates a typed reference to an existing [ServiceNetworkAcl] resource.
  ServiceNetworkAcl.reference(String urn)
    : super(
        'azure:signalr/serviceNetworkAcl:ServiceNetworkAcl',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    defaultAction = registerOutput<String>('defaultAction');
    privateEndpoints = registerOutput<List<ServiceNetworkAclPrivateEndpoint>?>('privateEndpoints', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ServiceNetworkAclPrivateEndpoint>(guardedValue, (value) => ServiceNetworkAclPrivateEndpoint.fromMap((value as Map).cast<String, dynamic>())); });
    publicNetwork = registerOutput<ServiceNetworkAclPublicNetwork>('publicNetwork', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceNetworkAclPublicNetwork.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    signalrServiceId = registerOutput<String>('signalrServiceId');
  }
}
