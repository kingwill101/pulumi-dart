import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_args.dart';
import 'endpoint_custom_dns_config.dart';
import 'endpoint_ip_configuration.dart';
import 'endpoint_network_interface.dart';
import 'endpoint_private_dns_zone_config.dart';
import 'endpoint_private_dns_zone_group.dart';
import 'endpoint_private_service_connection.dart';
import 'endpoint_state.dart';

/// Manages a Private Endpoint.
///
/// Azure Private Endpoint is a network interface that connects you privately and securely to a service powered by Azure Private Link. Private Endpoint uses a private IP address from your VNet, effectively bringing the service into your VNet. The service could be an Azure service such as Azure Storage, SQL, etc. or your own Private Link Service.
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
///     addressSpaces: ["10.0.0.0/16"],
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const service = new azure.network.Subnet("service", {
///     name: "service",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.1.0/24"],
///     enforcePrivateLinkServiceNetworkPolicies: true,
/// });
/// const endpoint = new azure.network.Subnet("endpoint", {
///     name: "endpoint",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.2.0/24"],
///     enforcePrivateLinkEndpointNetworkPolicies: true,
/// });
/// const examplePublicIp = new azure.network.PublicIp("example", {
///     name: "example-pip",
///     sku: "Standard",
///     location: example.location,
///     resourceGroupName: example.name,
///     allocationMethod: "Static",
/// });
/// const exampleLoadBalancer = new azure.lb.LoadBalancer("example", {
///     name: "example-lb",
///     sku: "Standard",
///     location: example.location,
///     resourceGroupName: example.name,
///     frontendIpConfigurations: [{
///         name: examplePublicIp.name,
///         publicIpAddressId: examplePublicIp.id,
///     }],
/// });
/// const exampleLinkService = new azure.privatedns.LinkService("example", {
///     name: "example-privatelink",
///     location: example.location,
///     resourceGroupName: example.name,
///     natIpConfigurations: [{
///         name: examplePublicIp.name,
///         primary: true,
///         subnetId: service.id,
///     }],
///     loadBalancerFrontendIpConfigurationIds: [exampleLoadBalancer.frontendIpConfigurations.apply(frontendIpConfigurations => frontendIpConfigurations?.[0]?.id)],
/// });
/// const exampleEndpoint = new azure.privatelink.Endpoint("example", {
///     name: "example-endpoint",
///     location: example.location,
///     resourceGroupName: example.name,
///     subnetId: endpoint.id,
///     privateServiceConnection: {
///         name: "example-privateserviceconnection",
///         privateConnectionResourceId: exampleLinkService.id,
///         isManualConnection: false,
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
///     address_spaces=["10.0.0.0/16"],
///     location=example.location,
///     resource_group_name=example.name)
/// service = azure.network.Subnet("service",
///     name="service",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.1.0/24"],
///     enforce_private_link_service_network_policies=True)
/// endpoint = azure.network.Subnet("endpoint",
///     name="endpoint",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.2.0/24"],
///     enforce_private_link_endpoint_network_policies=True)
/// example_public_ip = azure.network.PublicIp("example",
///     name="example-pip",
///     sku="Standard",
///     location=example.location,
///     resource_group_name=example.name,
///     allocation_method="Static")
/// example_load_balancer = azure.lb.LoadBalancer("example",
///     name="example-lb",
///     sku="Standard",
///     location=example.location,
///     resource_group_name=example.name,
///     frontend_ip_configurations=[{
///         "name": example_public_ip.name,
///         "public_ip_address_id": example_public_ip.id,
///     }])
/// example_link_service = azure.privatedns.LinkService("example",
///     name="example-privatelink",
///     location=example.location,
///     resource_group_name=example.name,
///     nat_ip_configurations=[{
///         "name": example_public_ip.name,
///         "primary": True,
///         "subnet_id": service.id,
///     }],
///     load_balancer_frontend_ip_configuration_ids=[example_load_balancer.frontend_ip_configurations[0].id])
/// example_endpoint = azure.privatelink.Endpoint("example",
///     name="example-endpoint",
///     location=example.location,
///     resource_group_name=example.name,
///     subnet_id=endpoint.id,
///     private_service_connection={
///         "name": "example-privateserviceconnection",
///         "private_connection_resource_id": example_link_service.id,
///         "is_manual_connection": False,
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
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var service = new Azure.Network.Subnet("service", new()
///     {
///         Name = "service",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.1.0/24",
///         },
///         EnforcePrivateLinkServiceNetworkPolicies = true,
///     });
///
///     var endpoint = new Azure.Network.Subnet("endpoint", new()
///     {
///         Name = "endpoint",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.2.0/24",
///         },
///         EnforcePrivateLinkEndpointNetworkPolicies = true,
///     });
///
///     var examplePublicIp = new Azure.Network.PublicIp("example", new()
///     {
///         Name = "example-pip",
///         Sku = "Standard",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AllocationMethod = "Static",
///     });
///
///     var exampleLoadBalancer = new Azure.Lb.LoadBalancer("example", new()
///     {
///         Name = "example-lb",
///         Sku = "Standard",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         FrontendIpConfigurations = new[]
///         {
///             new Azure.Lb.Inputs.LoadBalancerFrontendIpConfigurationArgs
///             {
///                 Name = examplePublicIp.Name,
///                 PublicIpAddressId = examplePublicIp.Id,
///             },
///         },
///     });
///
///     var exampleLinkService = new Azure.PrivateDns.LinkService("example", new()
///     {
///         Name = "example-privatelink",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         NatIpConfigurations = new[]
///         {
///             new Azure.PrivateDns.Inputs.LinkServiceNatIpConfigurationArgs
///             {
///                 Name = examplePublicIp.Name,
///                 Primary = true,
///                 SubnetId = service.Id,
///             },
///         },
///         LoadBalancerFrontendIpConfigurationIds = new[]
///         {
///             exampleLoadBalancer.FrontendIpConfigurations.Apply(frontendIpConfigurations => frontendIpConfigurations[0]?.Id),
///         },
///     });
///
///     var exampleEndpoint = new Azure.PrivateLink.Endpoint("example", new()
///     {
///         Name = "example-endpoint",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SubnetId = endpoint.Id,
///         PrivateServiceConnection = new Azure.PrivateLink.Inputs.EndpointPrivateServiceConnectionArgs
///         {
///             Name = "example-privateserviceconnection",
///             PrivateConnectionResourceId = exampleLinkService.Id,
///             IsManualConnection = false,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/lb"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/privatedns"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/privatelink"
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
/// 			Name: pulumi.String("example-network"),
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		service, err := network.NewSubnet(ctx, "service", &network.SubnetArgs{
/// 			Name:               pulumi.String("service"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.1.0/24"),
/// 			},
/// 			EnforcePrivateLinkServiceNetworkPolicies: true,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		endpoint, err := network.NewSubnet(ctx, "endpoint", &network.SubnetArgs{
/// 			Name:               pulumi.String("endpoint"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.2.0/24"),
/// 			},
/// 			EnforcePrivateLinkEndpointNetworkPolicies: true,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePublicIp, err := network.NewPublicIp(ctx, "example", &network.PublicIpArgs{
/// 			Name:              pulumi.String("example-pip"),
/// 			Sku:               pulumi.String("Standard"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AllocationMethod:  pulumi.String("Static"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLoadBalancer, err := lb.NewLoadBalancer(ctx, "example", &lb.LoadBalancerArgs{
/// 			Name:              pulumi.String("example-lb"),
/// 			Sku:               pulumi.String("Standard"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			FrontendIpConfigurations: lb.LoadBalancerFrontendIpConfigurationArray{
/// 				&lb.LoadBalancerFrontendIpConfigurationArgs{
/// 					Name:              examplePublicIp.Name,
/// 					PublicIpAddressId: examplePublicIp.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLinkService, err := privatedns.NewLinkService(ctx, "example", &privatedns.LinkServiceArgs{
/// 			Name:              pulumi.String("example-privatelink"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			NatIpConfigurations: privatedns.LinkServiceNatIpConfigurationArray{
/// 				&privatedns.LinkServiceNatIpConfigurationArgs{
/// 					Name:     examplePublicIp.Name,
/// 					Primary:  pulumi.Bool(true),
/// 					SubnetId: service.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 			},
/// 			LoadBalancerFrontendIpConfigurationIds: pulumi.StringArray{
/// 				exampleLoadBalancer.FrontendIpConfigurations.ApplyT(func(frontendIpConfigurations []lb.LoadBalancerFrontendIpConfiguration) (*string, error) {
/// 					return frontendIpConfigurations[0].Id, nil
/// 				}).(pulumi.StringPtrOutput),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = privatelink.NewEndpoint(ctx, "example", &privatelink.EndpointArgs{
/// 			Name:              pulumi.String("example-endpoint"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			SubnetId:          endpoint.ID().ToIDOutput().ToStringOutput(),
/// 			PrivateServiceConnection: &privatelink.EndpointPrivateServiceConnectionArgs{
/// 				Name:                        pulumi.String("example-privateserviceconnection"),
/// 				PrivateConnectionResourceId: exampleLinkService.ID().ToIDOutput().ToStringOutput(),
/// 				IsManualConnection:          pulumi.Bool(false),
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
/// resource "azure_network_virtualnetwork" "example" {
///   name                = "example-network"
///   address_spaces      = ["10.0.0.0/16"]
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_network_subnet" "service" {
///   name                                          = "service"
///   resource_group_name                           = azure_core_resourcegroup.example.name
///   virtual_network_name                          = azure_network_virtualnetwork.example.name
///   address_prefixes                              = ["10.0.1.0/24"]
///   enforce_private_link_service_network_policies = true
/// }
/// resource "azure_network_subnet" "endpoint" {
///   name                                           = "endpoint"
///   resource_group_name                            = azure_core_resourcegroup.example.name
///   virtual_network_name                           = azure_network_virtualnetwork.example.name
///   address_prefixes                               = ["10.0.2.0/24"]
///   enforce_private_link_endpoint_network_policies = true
/// }
/// resource "azure_network_publicip" "example" {
///   name                = "example-pip"
///   sku                 = "Standard"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   allocation_method   = "Static"
/// }
/// resource "azure_lb_loadbalancer" "example" {
///   name                = "example-lb"
///   sku                 = "Standard"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   frontend_ip_configurations {
///     name                 = azure_network_publicip.example.name
///     public_ip_address_id = azure_network_publicip.example.id
///   }
/// }
/// resource "azure_privatedns_linkservice" "example" {
///   name                = "example-privatelink"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   nat_ip_configurations {
///     name      = azure_network_publicip.example.name
///     primary   = true
///     subnet_id = azure_network_subnet.service.id
///   }
///   load_balancer_frontend_ip_configuration_ids = [azure_lb_loadbalancer.example.frontend_ip_configurations[0].id]
/// }
/// resource "azure_privatelink_endpoint" "example" {
///   name                = "example-endpoint"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   subnet_id           = azure_network_subnet.endpoint.id
///   private_service_connection = {
///     name                           = "example-privateserviceconnection"
///     private_connection_resource_id = azure_privatedns_linkservice.example.id
///     is_manual_connection           = false
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
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.network.PublicIp;
/// import com.pulumi.azure.network.PublicIpArgs;
/// import com.pulumi.azure.lb.LoadBalancer;
/// import com.pulumi.azure.lb.LoadBalancerArgs;
/// import com.pulumi.azure.lb.inputs.LoadBalancerFrontendIpConfigurationArgs;
/// import com.pulumi.azure.privatedns.LinkService;
/// import com.pulumi.azure.privatedns.LinkServiceArgs;
/// import com.pulumi.azure.privatedns.inputs.LinkServiceNatIpConfigurationArgs;
/// import com.pulumi.azure.privatelink.Endpoint;
/// import com.pulumi.azure.privatelink.EndpointArgs;
/// import com.pulumi.azure.privatelink.inputs.EndpointPrivateServiceConnectionArgs;
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
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("example-network")
///             .addressSpaces("10.0.0.0/16")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var service = new Subnet("service", SubnetArgs.builder()
///             .name("service")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.1.0/24")
///             .enforcePrivateLinkServiceNetworkPolicies(true)
///             .build());
///
///         var endpoint = new Subnet("endpoint", SubnetArgs.builder()
///             .name("endpoint")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.2.0/24")
///             .enforcePrivateLinkEndpointNetworkPolicies(true)
///             .build());
///
///         var examplePublicIp = new PublicIp("examplePublicIp", PublicIpArgs.builder()
///             .name("example-pip")
///             .sku("Standard")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .allocationMethod("Static")
///             .build());
///
///         var exampleLoadBalancer = new LoadBalancer("exampleLoadBalancer", LoadBalancerArgs.builder()
///             .name("example-lb")
///             .sku("Standard")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .frontendIpConfigurations(LoadBalancerFrontendIpConfigurationArgs.builder()
///                 .name(examplePublicIp.name())
///                 .publicIpAddressId(examplePublicIp.id())
///                 .build())
///             .build());
///
///         var exampleLinkService = new LinkService("exampleLinkService", LinkServiceArgs.builder()
///             .name("example-privatelink")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .natIpConfigurations(LinkServiceNatIpConfigurationArgs.builder()
///                 .name(examplePublicIp.name())
///                 .primary(true)
///                 .subnetId(service.id())
///                 .build())
///             .loadBalancerFrontendIpConfigurationIds(exampleLoadBalancer.frontendIpConfigurations().applyValue(_frontendIpConfigurations -> _frontendIpConfigurations[0].id()))
///             .build());
///
///         var exampleEndpoint = new Endpoint("exampleEndpoint", EndpointArgs.builder()
///             .name("example-endpoint")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .subnetId(endpoint.id())
///             .privateServiceConnection(EndpointPrivateServiceConnectionArgs.builder()
///                 .name("example-privateserviceconnection")
///                 .privateConnectionResourceId(exampleLinkService.id())
///                 .isManualConnection(false)
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
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: example-network
///       addressSpaces:
///         - 10.0.0.0/16
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   service:
///     type: azure:network:Subnet
///     properties:
///       name: service
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.1.0/24
///       enforcePrivateLinkServiceNetworkPolicies: true
///   endpoint:
///     type: azure:network:Subnet
///     properties:
///       name: endpoint
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.2.0/24
///       enforcePrivateLinkEndpointNetworkPolicies: true
///   examplePublicIp:
///     type: azure:network:PublicIp
///     name: example
///     properties:
///       name: example-pip
///       sku: Standard
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       allocationMethod: Static
///   exampleLoadBalancer:
///     type: azure:lb:LoadBalancer
///     name: example
///     properties:
///       name: example-lb
///       sku: Standard
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       frontendIpConfigurations:
///         - name: ${examplePublicIp.name}
///           publicIpAddressId: ${examplePublicIp.id}
///   exampleLinkService:
///     type: azure:privatedns:LinkService
///     name: example
///     properties:
///       name: example-privatelink
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       natIpConfigurations:
///         - name: ${examplePublicIp.name}
///           primary: true
///           subnetId: ${service.id}
///       loadBalancerFrontendIpConfigurationIds:
///         - ${exampleLoadBalancer.frontendIpConfigurations[0].id}
///   exampleEndpoint:
///     type: azure:privatelink:Endpoint
///     name: example
///     properties:
///       name: example-endpoint
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       subnetId: ${endpoint.id}
///       privateServiceConnection:
///         name: example-privateserviceconnection
///         privateConnectionResourceId: ${exampleLinkService.id}
///         isManualConnection: false
/// ```
///
///
/// Using a Private Link Service Alias with existing resources:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = azure.core.getResourceGroup({
///     name: "example-resources",
/// });
/// const vnet = example.then(example => azure.network.getVirtualNetwork({
///     name: "example-network",
///     resourceGroupName: example.name,
/// }));
/// const subnet = Promise.all([vnet, example]).then(([vnet, example]) => azure.network.getSubnet({
///     name: "default",
///     virtualNetworkName: vnet.name,
///     resourceGroupName: example.name,
/// }));
/// const exampleEndpoint = new azure.privatelink.Endpoint("example", {
///     name: "example-endpoint",
///     location: example.then(example => example.location),
///     resourceGroupName: example.then(example => example.name),
///     subnetId: subnet.then(subnet => subnet.id),
///     privateServiceConnection: {
///         name: "example-privateserviceconnection",
///         privateConnectionResourceAlias: "example-privatelinkservice.d20286c8-4ea5-11eb-9584-8f53157226c6.centralus.azure.privatelinkservice",
///         isManualConnection: true,
///         requestMessage: "PL",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.get_resource_group(name="example-resources")
/// vnet = azure.network.get_virtual_network(name="example-network",
///     resource_group_name=example.name)
/// subnet = azure.network.get_subnet(name="default",
///     virtual_network_name=vnet.name,
///     resource_group_name=example.name)
/// example_endpoint = azure.privatelink.Endpoint("example",
///     name="example-endpoint",
///     location=example.location,
///     resource_group_name=example.name,
///     subnet_id=subnet.id,
///     private_service_connection={
///         "name": "example-privateserviceconnection",
///         "private_connection_resource_alias": "example-privatelinkservice.d20286c8-4ea5-11eb-9584-8f53157226c6.centralus.azure.privatelinkservice",
///         "is_manual_connection": True,
///         "request_message": "PL",
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
///     var example = Azure.Core.GetResourceGroup.Invoke(new()
///     {
///         Name = "example-resources",
///     });
///
///     var vnet = Azure.Network.GetVirtualNetwork.Invoke(new()
///     {
///         Name = "example-network",
///         ResourceGroupName = example.Apply(getResourceGroupResult => getResourceGroupResult.Name),
///     });
///
///     var subnet = Azure.Network.GetSubnet.Invoke(new()
///     {
///         Name = "default",
///         VirtualNetworkName = vnet.Apply(getVirtualNetworkResult => getVirtualNetworkResult.Name),
///         ResourceGroupName = example.Apply(getResourceGroupResult => getResourceGroupResult.Name),
///     });
///
///     var exampleEndpoint = new Azure.PrivateLink.Endpoint("example", new()
///     {
///         Name = "example-endpoint",
///         Location = example.Apply(getResourceGroupResult => getResourceGroupResult.Location),
///         ResourceGroupName = example.Apply(getResourceGroupResult => getResourceGroupResult.Name),
///         SubnetId = subnet.Apply(getSubnetResult => getSubnetResult.Id),
///         PrivateServiceConnection = new Azure.PrivateLink.Inputs.EndpointPrivateServiceConnectionArgs
///         {
///             Name = "example-privateserviceconnection",
///             PrivateConnectionResourceAlias = "example-privatelinkservice.d20286c8-4ea5-11eb-9584-8f53157226c6.centralus.azure.privatelinkservice",
///             IsManualConnection = true,
///             RequestMessage = "PL",
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.LookupResourceGroup(ctx, &core.LookupResourceGroupArgs{
/// 			Name: "example-resources",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vnet, err := network.LookupVirtualNetwork(ctx, &network.LookupVirtualNetworkArgs{
/// 			Name:              "example-network",
/// 			ResourceGroupName: example.Name,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		subnet, err := network.LookupSubnet(ctx, &network.LookupSubnetArgs{
/// 			Name:               "default",
/// 			VirtualNetworkName: vnet.Name,
/// 			ResourceGroupName:  example.Name,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = privatelink.NewEndpoint(ctx, "example", &privatelink.EndpointArgs{
/// 			Name:              pulumi.String("example-endpoint"),
/// 			Location:          pulumi.String(example.Location),
/// 			ResourceGroupName: pulumi.String(example.Name),
/// 			SubnetId:          pulumi.String(subnet.Id),
/// 			PrivateServiceConnection: &privatelink.EndpointPrivateServiceConnectionArgs{
/// 				Name:                           pulumi.String("example-privateserviceconnection"),
/// 				PrivateConnectionResourceAlias: pulumi.String("example-privatelinkservice.d20286c8-4ea5-11eb-9584-8f53157226c6.centralus.azure.privatelinkservice"),
/// 				IsManualConnection:             pulumi.Bool(true),
/// 				RequestMessage:                 pulumi.String("PL"),
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
/// data "azure_core_getresourcegroup" "example" {
///   name = "example-resources"
/// }
/// data "azure_network_getvirtualnetwork" "vnet" {
///   name                = "example-network"
///   resource_group_name = data.azure_core_getresourcegroup.example.name
/// }
/// data "azure_network_getsubnet" "subnet" {
///   name                 = "default"
///   virtual_network_name = data.azure_network_getvirtualnetwork.vnet.name
///   resource_group_name  = data.azure_core_getresourcegroup.example.name
/// }
///
/// resource "azure_privatelink_endpoint" "example" {
///   name                = "example-endpoint"
///   location            = data.azure_core_getresourcegroup.example.location
///   resource_group_name = data.azure_core_getresourcegroup.example.name
///   subnet_id           = data.azure_network_getsubnet.subnet.id
///   private_service_connection = {
///     name                              = "example-privateserviceconnection"
///     private_connection_resource_alias = "example-privatelinkservice.d20286c8-4ea5-11eb-9584-8f53157226c6.centralus.azure.privatelinkservice"
///     is_manual_connection              = true
///     request_message                   = "PL"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.inputs.GetResourceGroupArgs;
/// import com.pulumi.azure.network.NetworkFunctions;
/// import com.pulumi.azure.network.inputs.GetVirtualNetworkArgs;
/// import com.pulumi.azure.network.inputs.GetSubnetArgs;
/// import com.pulumi.azure.privatelink.Endpoint;
/// import com.pulumi.azure.privatelink.EndpointArgs;
/// import com.pulumi.azure.privatelink.inputs.EndpointPrivateServiceConnectionArgs;
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
///         final var example = CoreFunctions.getResourceGroup(GetResourceGroupArgs.builder()
///             .name("example-resources")
///             .build());
///
///         final var vnet = NetworkFunctions.getVirtualNetwork(GetVirtualNetworkArgs.builder()
///             .name("example-network")
///             .resourceGroupName(example.name())
///             .build());
///
///         final var subnet = NetworkFunctions.getSubnet(GetSubnetArgs.builder()
///             .name("default")
///             .virtualNetworkName(vnet.name())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleEndpoint = new Endpoint("exampleEndpoint", EndpointArgs.builder()
///             .name("example-endpoint")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .subnetId(subnet.id())
///             .privateServiceConnection(EndpointPrivateServiceConnectionArgs.builder()
///                 .name("example-privateserviceconnection")
///                 .privateConnectionResourceAlias("example-privatelinkservice.d20286c8-4ea5-11eb-9584-8f53157226c6.centralus.azure.privatelinkservice")
///                 .isManualConnection(true)
///                 .requestMessage("PL")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleEndpoint:
///     type: azure:privatelink:Endpoint
///     name: example
///     properties:
///       name: example-endpoint
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       subnetId: ${subnet.id}
///       privateServiceConnection:
///         name: example-privateserviceconnection
///         privateConnectionResourceAlias: example-privatelinkservice.d20286c8-4ea5-11eb-9584-8f53157226c6.centralus.azure.privatelinkservice
///         isManualConnection: true
///         requestMessage: PL
/// variables:
///   example:
///     fn::invoke:
///       function: azure:core:getResourceGroup
///       arguments:
///         name: example-resources
///   vnet:
///     fn::invoke:
///       function: azure:network:getVirtualNetwork
///       arguments:
///         name: example-network
///         resourceGroupName: ${example.name}
///   subnet:
///     fn::invoke:
///       function: azure:network:getSubnet
///       arguments:
///         name: default
///         virtualNetworkName: ${vnet.name}
///         resourceGroupName: ${example.name}
/// ```
///
///
/// Using a Private Endpoint pointing to an *owned* Azure service, with proper DNS configuration:
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
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "exampleaccount",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "virtnetname",
///     addressSpaces: ["10.0.0.0/16"],
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "subnetname",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.2.0/24"],
/// });
/// const exampleZone = new azure.privatedns.Zone("example", {
///     name: "privatelink.blob.core.windows.net",
///     resourceGroupName: example.name,
/// });
/// const exampleEndpoint = new azure.privatelink.Endpoint("example", {
///     name: "example-endpoint",
///     location: example.location,
///     resourceGroupName: example.name,
///     subnetId: exampleSubnet.id,
///     privateServiceConnection: {
///         name: "example-privateserviceconnection",
///         privateConnectionResourceId: exampleAccount.id,
///         subresourceNames: ["blob"],
///         isManualConnection: false,
///     },
///     privateDnsZoneGroup: {
///         name: "example-dns-zone-group",
///         privateDnsZoneIds: [exampleZone.id],
///     },
/// });
/// const exampleZoneVirtualNetworkLink = new azure.privatedns.ZoneVirtualNetworkLink("example", {
///     name: "example-link",
///     resourceGroupName: example.name,
///     privateDnsZoneName: exampleZone.name,
///     virtualNetworkId: exampleVirtualNetwork.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="West Europe")
/// example_account = azure.storage.Account("example",
///     name="exampleaccount",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="virtnetname",
///     address_spaces=["10.0.0.0/16"],
///     location=example.location,
///     resource_group_name=example.name)
/// example_subnet = azure.network.Subnet("example",
///     name="subnetname",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.2.0/24"])
/// example_zone = azure.privatedns.Zone("example",
///     name="privatelink.blob.core.windows.net",
///     resource_group_name=example.name)
/// example_endpoint = azure.privatelink.Endpoint("example",
///     name="example-endpoint",
///     location=example.location,
///     resource_group_name=example.name,
///     subnet_id=example_subnet.id,
///     private_service_connection={
///         "name": "example-privateserviceconnection",
///         "private_connection_resource_id": example_account.id,
///         "subresource_names": ["blob"],
///         "is_manual_connection": False,
///     },
///     private_dns_zone_group={
///         "name": "example-dns-zone-group",
///         "private_dns_zone_ids": [example_zone.id],
///     })
/// example_zone_virtual_network_link = azure.privatedns.ZoneVirtualNetworkLink("example",
///     name="example-link",
///     resource_group_name=example.name,
///     private_dns_zone_name=example_zone.name,
///     virtual_network_id=example_virtual_network.id)
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
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "exampleaccount",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "virtnetname",
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "subnetname",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.2.0/24",
///         },
///     });
///
///     var exampleZone = new Azure.PrivateDns.Zone("example", new()
///     {
///         Name = "privatelink.blob.core.windows.net",
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleEndpoint = new Azure.PrivateLink.Endpoint("example", new()
///     {
///         Name = "example-endpoint",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SubnetId = exampleSubnet.Id,
///         PrivateServiceConnection = new Azure.PrivateLink.Inputs.EndpointPrivateServiceConnectionArgs
///         {
///             Name = "example-privateserviceconnection",
///             PrivateConnectionResourceId = exampleAccount.Id,
///             SubresourceNames = new[]
///             {
///                 "blob",
///             },
///             IsManualConnection = false,
///         },
///         PrivateDnsZoneGroup = new Azure.PrivateLink.Inputs.EndpointPrivateDnsZoneGroupArgs
///         {
///             Name = "example-dns-zone-group",
///             PrivateDnsZoneIds = new[]
///             {
///                 exampleZone.Id,
///             },
///         },
///     });
///
///     var exampleZoneVirtualNetworkLink = new Azure.PrivateDns.ZoneVirtualNetworkLink("example", new()
///     {
///         Name = "example-link",
///         ResourceGroupName = example.Name,
///         PrivateDnsZoneName = exampleZone.Name,
///         VirtualNetworkId = exampleVirtualNetwork.Id,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/privatedns"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/privatelink"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
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
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("exampleaccount"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name: pulumi.String("virtnetname"),
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("subnetname"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.2.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleZone, err := privatedns.NewZone(ctx, "example", &privatedns.ZoneArgs{
/// 			Name:              pulumi.String("privatelink.blob.core.windows.net"),
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = privatelink.NewEndpoint(ctx, "example", &privatelink.EndpointArgs{
/// 			Name:              pulumi.String("example-endpoint"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			SubnetId:          exampleSubnet.ID().ToIDOutput().ToStringOutput(),
/// 			PrivateServiceConnection: &privatelink.EndpointPrivateServiceConnectionArgs{
/// 				Name:                        pulumi.String("example-privateserviceconnection"),
/// 				PrivateConnectionResourceId: exampleAccount.ID().ToIDOutput().ToStringOutput(),
/// 				SubresourceNames: pulumi.StringArray{
/// 					pulumi.String("blob"),
/// 				},
/// 				IsManualConnection: pulumi.Bool(false),
/// 			},
/// 			PrivateDnsZoneGroup: &privatelink.EndpointPrivateDnsZoneGroupArgs{
/// 				Name: pulumi.String("example-dns-zone-group"),
/// 				PrivateDnsZoneIds: pulumi.StringArray{
/// 					exampleZone.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = privatedns.NewZoneVirtualNetworkLink(ctx, "example", &privatedns.ZoneVirtualNetworkLinkArgs{
/// 			Name:               pulumi.String("example-link"),
/// 			ResourceGroupName:  example.Name,
/// 			PrivateDnsZoneName: exampleZone.Name,
/// 			VirtualNetworkId:   exampleVirtualNetwork.ID().ToIDOutput().ToStringOutput(),
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
/// resource "azure_storage_account" "example" {
///   name                     = "exampleaccount"
///   resource_group_name      = azure_core_resourcegroup.example.name
///   location                 = azure_core_resourcegroup.example.location
///   account_tier             = "Standard"
///   account_replication_type = "LRS"
/// }
/// resource "azure_network_virtualnetwork" "example" {
///   name                = "virtnetname"
///   address_spaces      = ["10.0.0.0/16"]
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_network_subnet" "example" {
///   name                 = "subnetname"
///   resource_group_name  = azure_core_resourcegroup.example.name
///   virtual_network_name = azure_network_virtualnetwork.example.name
///   address_prefixes     = ["10.0.2.0/24"]
/// }
/// resource "azure_privatelink_endpoint" "example" {
///   name                = "example-endpoint"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   subnet_id           = azure_network_subnet.example.id
///   private_service_connection = {
///     name                           = "example-privateserviceconnection"
///     private_connection_resource_id = azure_storage_account.example.id
///     subresource_names              = ["blob"]
///     is_manual_connection           = false
///   }
///   private_dns_zone_group = {
///     name                 = "example-dns-zone-group"
///     private_dns_zone_ids = [azure_privatedns_zone.example.id]
///   }
/// }
/// resource "azure_privatedns_zone" "example" {
///   name                = "privatelink.blob.core.windows.net"
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_privatedns_zonevirtualnetworklink" "example" {
///   name                  = "example-link"
///   resource_group_name   = azure_core_resourcegroup.example.name
///   private_dns_zone_name = azure_privatedns_zone.example.name
///   virtual_network_id    = azure_network_virtualnetwork.example.id
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
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.privatedns.Zone;
/// import com.pulumi.azure.privatedns.ZoneArgs;
/// import com.pulumi.azure.privatelink.Endpoint;
/// import com.pulumi.azure.privatelink.EndpointArgs;
/// import com.pulumi.azure.privatelink.inputs.EndpointPrivateServiceConnectionArgs;
/// import com.pulumi.azure.privatelink.inputs.EndpointPrivateDnsZoneGroupArgs;
/// import com.pulumi.azure.privatedns.ZoneVirtualNetworkLink;
/// import com.pulumi.azure.privatedns.ZoneVirtualNetworkLinkArgs;
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
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("exampleaccount")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("virtnetname")
///             .addressSpaces("10.0.0.0/16")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("subnetname")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.2.0/24")
///             .build());
///
///         var exampleZone = new Zone("exampleZone", ZoneArgs.builder()
///             .name("privatelink.blob.core.windows.net")
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleEndpoint = new Endpoint("exampleEndpoint", EndpointArgs.builder()
///             .name("example-endpoint")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .subnetId(exampleSubnet.id())
///             .privateServiceConnection(EndpointPrivateServiceConnectionArgs.builder()
///                 .name("example-privateserviceconnection")
///                 .privateConnectionResourceId(exampleAccount.id())
///                 .subresourceNames("blob")
///                 .isManualConnection(false)
///                 .build())
///             .privateDnsZoneGroup(EndpointPrivateDnsZoneGroupArgs.builder()
///                 .name("example-dns-zone-group")
///                 .privateDnsZoneIds(exampleZone.id())
///                 .build())
///             .build());
///
///         var exampleZoneVirtualNetworkLink = new ZoneVirtualNetworkLink("exampleZoneVirtualNetworkLink", ZoneVirtualNetworkLinkArgs.builder()
///             .name("example-link")
///             .resourceGroupName(example.name())
///             .privateDnsZoneName(exampleZone.name())
///             .virtualNetworkId(exampleVirtualNetwork.id())
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
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: exampleaccount
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: virtnetname
///       addressSpaces:
///         - 10.0.0.0/16
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: subnetname
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.2.0/24
///   exampleEndpoint:
///     type: azure:privatelink:Endpoint
///     name: example
///     properties:
///       name: example-endpoint
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       subnetId: ${exampleSubnet.id}
///       privateServiceConnection:
///         name: example-privateserviceconnection
///         privateConnectionResourceId: ${exampleAccount.id}
///         subresourceNames:
///           - blob
///         isManualConnection: false
///       privateDnsZoneGroup:
///         name: example-dns-zone-group
///         privateDnsZoneIds:
///           - ${exampleZone.id}
///   exampleZone:
///     type: azure:privatedns:Zone
///     name: example
///     properties:
///       name: privatelink.blob.core.windows.net
///       resourceGroupName: ${example.name}
///   exampleZoneVirtualNetworkLink:
///     type: azure:privatedns:ZoneVirtualNetworkLink
///     name: example
///     properties:
///       name: example-link
///       resourceGroupName: ${example.name}
///       privateDnsZoneName: ${exampleZone.name}
///       virtualNetworkId: ${exampleVirtualNetwork.id}
/// ```
///
///
/// ## Example HCL Configurations
///
/// * How to conneca `Private Endpoint` to a Application Gateway
/// * How to connect a `Private Endpoint` to a Cosmos MongoDB
/// * How to connect a `Private Endpoint` to a Cosmos PostgreSQL
/// * How to connect a `Private Endpoint` to a PostgreSQL Server
/// * How to connect a `Private Endpoint` to a Private Link Service
/// * How to connect a `Private Endpoint` to a Private DNS Group
/// * How to connect a `Private Endpoint` to a Databricks Workspace
/// * How to connect a `Private Endpoint` to a Managed Redis
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
/// Private Endpoints can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:privatelink/endpoint:Endpoint example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Network/privateEndpoints/endpoint1
/// ```
class Endpoint extends pulumi.CustomResource {
  /// A `customDnsConfigs` block as defined below.
  late final pulumi.Output<List<EndpointCustomDnsConfig>> customDnsConfigs;
  /// The custom name of the network interface attached to the private endpoint. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> customNetworkInterfaceName;
  /// Specifies the Edge Zone within the Azure Region where this Private Endpoint should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> edgeZone;
  /// One or more `ipConfiguration` blocks as defined below. This allows a static IP address to be set for this Private Endpoint, otherwise an address is dynamically allocated from the Subnet.
  late final pulumi.Output<List<EndpointIpConfiguration>?> ipConfigurations;
  /// The supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the Name of the Private Endpoint. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// A `networkInterface` block as defined below.
  late final pulumi.Output<List<EndpointNetworkInterface>> networkInterfaces;
  /// A `privateDnsZoneConfigs` block as defined below.
  late final pulumi.Output<List<EndpointPrivateDnsZoneConfig>> privateDnsZoneConfigs;
  /// A `privateDnsZoneGroup` block as defined below.
  late final pulumi.Output<EndpointPrivateDnsZoneGroup?> privateDnsZoneGroup;
  /// A `privateServiceConnection` block as defined below.
  late final pulumi.Output<EndpointPrivateServiceConnection> privateServiceConnection;
  /// Specifies the Name of the Resource Group within which the Private Endpoint should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The ID of the Subnet from which Private IP Addresses will be allocated for this Private Endpoint. Changing this forces a new resource to be created.
  late final pulumi.Output<String> subnetId;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Endpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Endpoint]. {@macro pulumi_privatelink_endpoint_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Endpoint(
    String name, {
    EndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:privatelink/endpoint:Endpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    customDnsConfigs = registerOutput<List<EndpointCustomDnsConfig>>('customDnsConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EndpointCustomDnsConfig>(guardedValue, (value) => EndpointCustomDnsConfig.fromMap((value as Map).cast<String, dynamic>())); });
    customNetworkInterfaceName = registerOutput<String?>('customNetworkInterfaceName');
    edgeZone = registerOutput<String?>('edgeZone');
    ipConfigurations = registerOutput<List<EndpointIpConfiguration>?>('ipConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EndpointIpConfiguration>(guardedValue, (value) => EndpointIpConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkInterfaces = registerOutput<List<EndpointNetworkInterface>>('networkInterfaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EndpointNetworkInterface>(guardedValue, (value) => EndpointNetworkInterface.fromMap((value as Map).cast<String, dynamic>())); });
    privateDnsZoneConfigs = registerOutput<List<EndpointPrivateDnsZoneConfig>>('privateDnsZoneConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EndpointPrivateDnsZoneConfig>(guardedValue, (value) => EndpointPrivateDnsZoneConfig.fromMap((value as Map).cast<String, dynamic>())); });
    privateDnsZoneGroup = registerOutput<EndpointPrivateDnsZoneGroup?>('privateDnsZoneGroup', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EndpointPrivateDnsZoneGroup.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateServiceConnection = registerOutput<EndpointPrivateServiceConnection>('privateServiceConnection', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EndpointPrivateServiceConnection.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    subnetId = registerOutput<String>('subnetId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [Endpoint] resource's state with the given [name] and [id].
  static Endpoint get(
    String name,
    pulumi.Input<String> id, {
    EndpointState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Endpoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Endpoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:privatelink/endpoint:Endpoint',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    customDnsConfigs = registerOutput<List<EndpointCustomDnsConfig>>('customDnsConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EndpointCustomDnsConfig>(guardedValue, (value) => EndpointCustomDnsConfig.fromMap((value as Map).cast<String, dynamic>())); });
    customNetworkInterfaceName = registerOutput<String?>('customNetworkInterfaceName');
    edgeZone = registerOutput<String?>('edgeZone');
    ipConfigurations = registerOutput<List<EndpointIpConfiguration>?>('ipConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EndpointIpConfiguration>(guardedValue, (value) => EndpointIpConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkInterfaces = registerOutput<List<EndpointNetworkInterface>>('networkInterfaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EndpointNetworkInterface>(guardedValue, (value) => EndpointNetworkInterface.fromMap((value as Map).cast<String, dynamic>())); });
    privateDnsZoneConfigs = registerOutput<List<EndpointPrivateDnsZoneConfig>>('privateDnsZoneConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EndpointPrivateDnsZoneConfig>(guardedValue, (value) => EndpointPrivateDnsZoneConfig.fromMap((value as Map).cast<String, dynamic>())); });
    privateDnsZoneGroup = registerOutput<EndpointPrivateDnsZoneGroup?>('privateDnsZoneGroup', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EndpointPrivateDnsZoneGroup.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateServiceConnection = registerOutput<EndpointPrivateServiceConnection>('privateServiceConnection', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EndpointPrivateServiceConnection.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    subnetId = registerOutput<String>('subnetId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [Endpoint] resource.
  Endpoint.reference(String urn)
    : super(
        'azure:privatelink/endpoint:Endpoint',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    customDnsConfigs = registerOutput<List<EndpointCustomDnsConfig>>('customDnsConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EndpointCustomDnsConfig>(guardedValue, (value) => EndpointCustomDnsConfig.fromMap((value as Map).cast<String, dynamic>())); });
    customNetworkInterfaceName = registerOutput<String?>('customNetworkInterfaceName');
    edgeZone = registerOutput<String?>('edgeZone');
    ipConfigurations = registerOutput<List<EndpointIpConfiguration>?>('ipConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EndpointIpConfiguration>(guardedValue, (value) => EndpointIpConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkInterfaces = registerOutput<List<EndpointNetworkInterface>>('networkInterfaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EndpointNetworkInterface>(guardedValue, (value) => EndpointNetworkInterface.fromMap((value as Map).cast<String, dynamic>())); });
    privateDnsZoneConfigs = registerOutput<List<EndpointPrivateDnsZoneConfig>>('privateDnsZoneConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<EndpointPrivateDnsZoneConfig>(guardedValue, (value) => EndpointPrivateDnsZoneConfig.fromMap((value as Map).cast<String, dynamic>())); });
    privateDnsZoneGroup = registerOutput<EndpointPrivateDnsZoneGroup?>('privateDnsZoneGroup', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EndpointPrivateDnsZoneGroup.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateServiceConnection = registerOutput<EndpointPrivateServiceConnection>('privateServiceConnection', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EndpointPrivateServiceConnection.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceGroupName = registerOutput<String>('resourceGroupName');
    subnetId = registerOutput<String>('subnetId');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
