import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_security_group_association_args.dart';
import 'application_security_group_association_state.dart';

/// Manages an association between Private Endpoint and Application Security Group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const current = azure.core.getSubscription({});
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-PEASGAsso",
///     location: "West Europe",
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "examplevnet",
///     resourceGroupName: example.name,
///     location: example.location,
///     addressSpaces: ["10.5.0.0/16"],
/// });
/// const service = new azure.network.Subnet("service", {
///     name: "examplenetservice",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.5.1.0/24"],
///     enforcePrivateLinkServiceNetworkPolicies: true,
/// });
/// const endpoint = new azure.network.Subnet("endpoint", {
///     name: "examplenetendpoint",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.5.2.0/24"],
///     enforcePrivateLinkEndpointNetworkPolicies: true,
/// });
/// const examplePublicIp = new azure.network.PublicIp("example", {
///     name: "examplepip",
///     sku: "Standard",
///     location: example.location,
///     resourceGroupName: example.name,
///     allocationMethod: "Static",
/// });
/// const exampleLoadBalancer = new azure.lb.LoadBalancer("example", {
///     name: "examplelb",
///     sku: "Standard",
///     location: example.location,
///     resourceGroupName: example.name,
///     frontendIpConfigurations: [{
///         name: examplePublicIp.name,
///         publicIpAddressId: examplePublicIp.id,
///     }],
/// });
/// const exampleLinkService = new azure.privatedns.LinkService("example", {
///     name: "examplePLS",
///     location: example.location,
///     resourceGroupName: example.name,
///     autoApprovalSubscriptionIds: [current.then(current => current.subscriptionId)],
///     visibilitySubscriptionIds: [current.then(current => current.subscriptionId)],
///     natIpConfigurations: [{
///         name: "primaryIpConfiguration",
///         primary: true,
///         subnetId: service.id,
///     }],
///     loadBalancerFrontendIpConfigurationIds: [exampleLoadBalancer.frontendIpConfigurations.apply(frontendIpConfigurations => frontendIpConfigurations?.[0]?.id)],
/// });
/// const exampleEndpoint = new azure.privatelink.Endpoint("example", {
///     name: "example-privatelink",
///     resourceGroupName: example.name,
///     location: example.location,
///     subnetId: endpoint.id,
///     privateServiceConnection: {
///         name: exampleLinkService.name,
///         isManualConnection: false,
///         privateConnectionResourceId: exampleLinkService.id,
///     },
/// });
/// const exampleApplicationSecurityGroup = new azure.network.ApplicationSecurityGroup("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleApplicationSecurityGroupAssociation = new azure.privatelink.ApplicationSecurityGroupAssociation("example", {
///     privateEndpointId: exampleEndpoint.id,
///     applicationSecurityGroupId: exampleApplicationSecurityGroup.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// current = azure.core.get_subscription()
/// example = azure.core.ResourceGroup("example",
///     name="example-PEASGAsso",
///     location="West Europe")
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="examplevnet",
///     resource_group_name=example.name,
///     location=example.location,
///     address_spaces=["10.5.0.0/16"])
/// service = azure.network.Subnet("service",
///     name="examplenetservice",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.5.1.0/24"],
///     enforce_private_link_service_network_policies=True)
/// endpoint = azure.network.Subnet("endpoint",
///     name="examplenetendpoint",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.5.2.0/24"],
///     enforce_private_link_endpoint_network_policies=True)
/// example_public_ip = azure.network.PublicIp("example",
///     name="examplepip",
///     sku="Standard",
///     location=example.location,
///     resource_group_name=example.name,
///     allocation_method="Static")
/// example_load_balancer = azure.lb.LoadBalancer("example",
///     name="examplelb",
///     sku="Standard",
///     location=example.location,
///     resource_group_name=example.name,
///     frontend_ip_configurations=[{
///         "name": example_public_ip.name,
///         "public_ip_address_id": example_public_ip.id,
///     }])
/// example_link_service = azure.privatedns.LinkService("example",
///     name="examplePLS",
///     location=example.location,
///     resource_group_name=example.name,
///     auto_approval_subscription_ids=[current.subscription_id],
///     visibility_subscription_ids=[current.subscription_id],
///     nat_ip_configurations=[{
///         "name": "primaryIpConfiguration",
///         "primary": True,
///         "subnet_id": service.id,
///     }],
///     load_balancer_frontend_ip_configuration_ids=[example_load_balancer.frontend_ip_configurations[0].id])
/// example_endpoint = azure.privatelink.Endpoint("example",
///     name="example-privatelink",
///     resource_group_name=example.name,
///     location=example.location,
///     subnet_id=endpoint.id,
///     private_service_connection={
///         "name": example_link_service.name,
///         "is_manual_connection": False,
///         "private_connection_resource_id": example_link_service.id,
///     })
/// example_application_security_group = azure.network.ApplicationSecurityGroup("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name)
/// example_application_security_group_association = azure.privatelink.ApplicationSecurityGroupAssociation("example",
///     private_endpoint_id=example_endpoint.id,
///     application_security_group_id=example_application_security_group.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Azure.Core.GetSubscription.Invoke();
///
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-PEASGAsso",
///         Location = "West Europe",
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "examplevnet",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AddressSpaces = new[]
///         {
///             "10.5.0.0/16",
///         },
///     });
///
///     var service = new Azure.Network.Subnet("service", new()
///     {
///         Name = "examplenetservice",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.5.1.0/24",
///         },
///         EnforcePrivateLinkServiceNetworkPolicies = true,
///     });
///
///     var endpoint = new Azure.Network.Subnet("endpoint", new()
///     {
///         Name = "examplenetendpoint",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.5.2.0/24",
///         },
///         EnforcePrivateLinkEndpointNetworkPolicies = true,
///     });
///
///     var examplePublicIp = new Azure.Network.PublicIp("example", new()
///     {
///         Name = "examplepip",
///         Sku = "Standard",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AllocationMethod = "Static",
///     });
///
///     var exampleLoadBalancer = new Azure.Lb.LoadBalancer("example", new()
///     {
///         Name = "examplelb",
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
///         Name = "examplePLS",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AutoApprovalSubscriptionIds = new[]
///         {
///             current.Apply(getSubscriptionResult => getSubscriptionResult.SubscriptionId),
///         },
///         VisibilitySubscriptionIds = new[]
///         {
///             current.Apply(getSubscriptionResult => getSubscriptionResult.SubscriptionId),
///         },
///         NatIpConfigurations = new[]
///         {
///             new Azure.PrivateDns.Inputs.LinkServiceNatIpConfigurationArgs
///             {
///                 Name = "primaryIpConfiguration",
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
///         Name = "example-privatelink",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         SubnetId = endpoint.Id,
///         PrivateServiceConnection = new Azure.PrivateLink.Inputs.EndpointPrivateServiceConnectionArgs
///         {
///             Name = exampleLinkService.Name,
///             IsManualConnection = false,
///             PrivateConnectionResourceId = exampleLinkService.Id,
///         },
///     });
///
///     var exampleApplicationSecurityGroup = new Azure.Network.ApplicationSecurityGroup("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleApplicationSecurityGroupAssociation = new Azure.PrivateLink.ApplicationSecurityGroupAssociation("example", new()
///     {
///         PrivateEndpointId = exampleEndpoint.Id,
///         ApplicationSecurityGroupId = exampleApplicationSecurityGroup.Id,
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
/// 		current, err := core.LookupSubscription(ctx, &core.LookupSubscriptionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-PEASGAsso"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name:              pulumi.String("examplevnet"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.5.0.0/16"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		service, err := network.NewSubnet(ctx, "service", &network.SubnetArgs{
/// 			Name:               pulumi.String("examplenetservice"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.5.1.0/24"),
/// 			},
/// 			EnforcePrivateLinkServiceNetworkPolicies: true,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		endpoint, err := network.NewSubnet(ctx, "endpoint", &network.SubnetArgs{
/// 			Name:               pulumi.String("examplenetendpoint"),
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
/// 		examplePublicIp, err := network.NewPublicIp(ctx, "example", &network.PublicIpArgs{
/// 			Name:              pulumi.String("examplepip"),
/// 			Sku:               pulumi.String("Standard"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AllocationMethod:  pulumi.String("Static"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLoadBalancer, err := lb.NewLoadBalancer(ctx, "example", &lb.LoadBalancerArgs{
/// 			Name:              pulumi.String("examplelb"),
/// 			Sku:               pulumi.String("Standard"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			FrontendIpConfigurations: lb.LoadBalancerFrontendIpConfigurationArray{
/// 				&lb.LoadBalancerFrontendIpConfigurationArgs{
/// 					Name:              examplePublicIp.Name,
/// 					PublicIpAddressId: examplePublicIp.ID(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLinkService, err := privatedns.NewLinkService(ctx, "example", &privatedns.LinkServiceArgs{
/// 			Name:              pulumi.String("examplePLS"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AutoApprovalSubscriptionIds: pulumi.StringArray{
/// 				pulumi.String(current.SubscriptionId),
/// 			},
/// 			VisibilitySubscriptionIds: pulumi.StringArray{
/// 				pulumi.String(current.SubscriptionId),
/// 			},
/// 			NatIpConfigurations: privatedns.LinkServiceNatIpConfigurationArray{
/// 				&privatedns.LinkServiceNatIpConfigurationArgs{
/// 					Name:     pulumi.String("primaryIpConfiguration"),
/// 					Primary:  pulumi.Bool(true),
/// 					SubnetId: service.ID(),
/// 				},
/// 			},
/// 			LoadBalancerFrontendIpConfigurationIds: pulumi.StringArray{
/// 				pulumi.String(exampleLoadBalancer.FrontendIpConfigurations.ApplyT(func(frontendIpConfigurations []lb.LoadBalancerFrontendIpConfiguration) (*string, error) {
/// 					return &frontendIpConfigurations[0].Id, nil
/// 				}).(pulumi.StringPtrOutput)),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleEndpoint, err := privatelink.NewEndpoint(ctx, "example", &privatelink.EndpointArgs{
/// 			Name:              pulumi.String("example-privatelink"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			SubnetId:          endpoint.ID(),
/// 			PrivateServiceConnection: &privatelink.EndpointPrivateServiceConnectionArgs{
/// 				Name:                        exampleLinkService.Name,
/// 				IsManualConnection:          pulumi.Bool(false),
/// 				PrivateConnectionResourceId: exampleLinkService.ID(),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleApplicationSecurityGroup, err := network.NewApplicationSecurityGroup(ctx, "example", &network.ApplicationSecurityGroupArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = privatelink.NewApplicationSecurityGroupAssociation(ctx, "example", &privatelink.ApplicationSecurityGroupAssociationArgs{
/// 			PrivateEndpointId:          exampleEndpoint.ID(),
/// 			ApplicationSecurityGroupId: exampleApplicationSecurityGroup.ID(),
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.inputs.GetSubscriptionArgs;
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
/// import com.pulumi.azure.network.ApplicationSecurityGroup;
/// import com.pulumi.azure.network.ApplicationSecurityGroupArgs;
/// import com.pulumi.azure.privatelink.ApplicationSecurityGroupAssociation;
/// import com.pulumi.azure.privatelink.ApplicationSecurityGroupAssociationArgs;
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
///         final var current = CoreFunctions.getSubscription(GetSubscriptionArgs.builder()
///             .build());
///
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-PEASGAsso")
///             .location("West Europe")
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("examplevnet")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .addressSpaces("10.5.0.0/16")
///             .build());
///
///         var service = new Subnet("service", SubnetArgs.builder()
///             .name("examplenetservice")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.5.1.0/24")
///             .enforcePrivateLinkServiceNetworkPolicies(true)
///             .build());
///
///         var endpoint = new Subnet("endpoint", SubnetArgs.builder()
///             .name("examplenetendpoint")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.5.2.0/24")
///             .enforcePrivateLinkEndpointNetworkPolicies(true)
///             .build());
///
///         var examplePublicIp = new PublicIp("examplePublicIp", PublicIpArgs.builder()
///             .name("examplepip")
///             .sku("Standard")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .allocationMethod("Static")
///             .build());
///
///         var exampleLoadBalancer = new LoadBalancer("exampleLoadBalancer", LoadBalancerArgs.builder()
///             .name("examplelb")
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
///             .name("examplePLS")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .autoApprovalSubscriptionIds(current.subscriptionId())
///             .visibilitySubscriptionIds(current.subscriptionId())
///             .natIpConfigurations(LinkServiceNatIpConfigurationArgs.builder()
///                 .name("primaryIpConfiguration")
///                 .primary(true)
///                 .subnetId(service.id())
///                 .build())
///             .loadBalancerFrontendIpConfigurationIds(exampleLoadBalancer.frontendIpConfigurations().applyValue(_frontendIpConfigurations -> _frontendIpConfigurations[0].id()))
///             .build());
///
///         var exampleEndpoint = new Endpoint("exampleEndpoint", EndpointArgs.builder()
///             .name("example-privatelink")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .subnetId(endpoint.id())
///             .privateServiceConnection(EndpointPrivateServiceConnectionArgs.builder()
///                 .name(exampleLinkService.name())
///                 .isManualConnection(false)
///                 .privateConnectionResourceId(exampleLinkService.id())
///                 .build())
///             .build());
///
///         var exampleApplicationSecurityGroup = new ApplicationSecurityGroup("exampleApplicationSecurityGroup", ApplicationSecurityGroupArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleApplicationSecurityGroupAssociation = new ApplicationSecurityGroupAssociation("exampleApplicationSecurityGroupAssociation", ApplicationSecurityGroupAssociationArgs.builder()
///             .privateEndpointId(exampleEndpoint.id())
///             .applicationSecurityGroupId(exampleApplicationSecurityGroup.id())
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
///       name: example-PEASGAsso
///       location: West Europe
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: examplevnet
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       addressSpaces:
///         - 10.5.0.0/16
///   service:
///     type: azure:network:Subnet
///     properties:
///       name: examplenetservice
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.5.1.0/24
///       enforcePrivateLinkServiceNetworkPolicies: true
///   endpoint:
///     type: azure:network:Subnet
///     properties:
///       name: examplenetendpoint
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.5.2.0/24
///       enforcePrivateLinkEndpointNetworkPolicies: true
///   examplePublicIp:
///     type: azure:network:PublicIp
///     name: example
///     properties:
///       name: examplepip
///       sku: Standard
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       allocationMethod: Static
///   exampleLoadBalancer:
///     type: azure:lb:LoadBalancer
///     name: example
///     properties:
///       name: examplelb
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
///       name: examplePLS
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       autoApprovalSubscriptionIds:
///         - ${current.subscriptionId}
///       visibilitySubscriptionIds:
///         - ${current.subscriptionId}
///       natIpConfigurations:
///         - name: primaryIpConfiguration
///           primary: true
///           subnetId: ${service.id}
///       loadBalancerFrontendIpConfigurationIds:
///         - ${exampleLoadBalancer.frontendIpConfigurations[0].id}
///   exampleEndpoint:
///     type: azure:privatelink:Endpoint
///     name: example
///     properties:
///       name: example-privatelink
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       subnetId: ${endpoint.id}
///       privateServiceConnection:
///         name: ${exampleLinkService.name}
///         isManualConnection: false
///         privateConnectionResourceId: ${exampleLinkService.id}
///   exampleApplicationSecurityGroup:
///     type: azure:network:ApplicationSecurityGroup
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleApplicationSecurityGroupAssociation:
///     type: azure:privatelink:ApplicationSecurityGroupAssociation
///     name: example
///     properties:
///       privateEndpointId: ${exampleEndpoint.id}
///       applicationSecurityGroupId: ${exampleApplicationSecurityGroup.id}
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getSubscription
///       arguments: {}
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
/// Associations between Private Endpoint and Application Security Group can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:privatelink/applicationSecurityGroupAssociation:ApplicationSecurityGroupAssociation association1 "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Network/privateEndpoints/endpoints1|/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/applicationSecurityGroups/securityGroup1",
/// ```
///
/// &gt; **Note:** This ID is specific to Terraform - and is of the format `{privateEndpointId}|{applicationSecurityGroupId}`.
class ApplicationSecurityGroupAssociation extends pulumi.CustomResource {
  /// The id of application security group to associate. Changing this forces a new resource to be created.
  late final pulumi.Output<String> applicationSecurityGroupId;
  /// The id of private endpoint to associate. Changing this forces a new resource to be created.
  late final pulumi.Output<String> privateEndpointId;

  /// Creates a new [ApplicationSecurityGroupAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApplicationSecurityGroupAssociation]. {@macro pulumi_privatelink_application_security_group_association_application_security_group_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApplicationSecurityGroupAssociation(
    String name, {
    ApplicationSecurityGroupAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:privatelink/applicationSecurityGroupAssociation:ApplicationSecurityGroupAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationSecurityGroupId = registerOutput<String>('applicationSecurityGroupId');
    privateEndpointId = registerOutput<String>('privateEndpointId');
  }

  /// Gets an existing [ApplicationSecurityGroupAssociation] resource's state with the given [name] and [id].
  static ApplicationSecurityGroupAssociation get(
    String name,
    pulumi.Input<String> id, {
    ApplicationSecurityGroupAssociationState? state,
  }) {
    return ApplicationSecurityGroupAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ApplicationSecurityGroupAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:privatelink/applicationSecurityGroupAssociation:ApplicationSecurityGroupAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationSecurityGroupId = registerOutput<String>('applicationSecurityGroupId');
    privateEndpointId = registerOutput<String>('privateEndpointId');
  }
}
