import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_manager_deployment_args.dart';
import 'network_manager_deployment_state.dart';

/// Manages a Network Manager Deployment.
///
/// &gt; **Note:** Using Network Manager Deployment to deploy Connectivity Configuration may modify or delete existing Virtual Network Peering. At this time you should not use Network Peering resource in conjunction with Network Manager Deployment. Doing so may cause a conflict of Peering configurations.
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
/// const current = azure.core.getSubscription({});
/// const exampleNetworkManager = new azure.network.NetworkManager("example", {
///     name: "example-network-manager",
///     location: example.location,
///     resourceGroupName: example.name,
///     scope: {
///         subscriptionIds: [current.then(current => current.id)],
///     },
///     scopeAccesses: [
///         "Connectivity",
///         "SecurityAdmin",
///     ],
///     description: "example network manager",
/// });
/// const exampleNetworkManagerNetworkGroup = new azure.network.NetworkManagerNetworkGroup("example", {
///     name: "example-group",
///     networkManagerId: exampleNetworkManager.id,
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "example-net",
///     location: example.location,
///     resourceGroupName: example.name,
///     addressSpaces: ["10.0.0.0/16"],
///     flowTimeoutInMinutes: 10,
/// });
/// const exampleNetworkManagerConnectivityConfiguration = new azure.network.NetworkManagerConnectivityConfiguration("example", {
///     name: "example-connectivity-conf",
///     networkManagerId: exampleNetworkManager.id,
///     connectivityTopology: "HubAndSpoke",
///     appliesToGroups: [{
///         groupConnectivity: "None",
///         networkGroupId: exampleNetworkManagerNetworkGroup.id,
///     }],
///     hub: {
///         resourceId: exampleVirtualNetwork.id,
///         resourceType: "Microsoft.Network/virtualNetworks",
///     },
/// });
/// const exampleNetworkManagerDeployment = new azure.network.NetworkManagerDeployment("example", {
///     networkManagerId: exampleNetworkManager.id,
///     location: "eastus",
///     scopeAccess: "Connectivity",
///     configurationIds: [exampleNetworkManagerConnectivityConfiguration.id],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// current = azure.core.get_subscription()
/// example_network_manager = azure.network.NetworkManager("example",
///     name="example-network-manager",
///     location=example.location,
///     resource_group_name=example.name,
///     scope={
///         "subscription_ids": [current.id],
///     },
///     scope_accesses=[
///         "Connectivity",
///         "SecurityAdmin",
///     ],
///     description="example network manager")
/// example_network_manager_network_group = azure.network.NetworkManagerNetworkGroup("example",
///     name="example-group",
///     network_manager_id=example_network_manager.id)
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="example-net",
///     location=example.location,
///     resource_group_name=example.name,
///     address_spaces=["10.0.0.0/16"],
///     flow_timeout_in_minutes=10)
/// example_network_manager_connectivity_configuration = azure.network.NetworkManagerConnectivityConfiguration("example",
///     name="example-connectivity-conf",
///     network_manager_id=example_network_manager.id,
///     connectivity_topology="HubAndSpoke",
///     applies_to_groups=[{
///         "group_connectivity": "None",
///         "network_group_id": example_network_manager_network_group.id,
///     }],
///     hub={
///         "resource_id": example_virtual_network.id,
///         "resource_type": "Microsoft.Network/virtualNetworks",
///     })
/// example_network_manager_deployment = azure.network.NetworkManagerDeployment("example",
///     network_manager_id=example_network_manager.id,
///     location="eastus",
///     scope_access="Connectivity",
///     configuration_ids=[example_network_manager_connectivity_configuration.id])
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
///     var current = Azure.Core.GetSubscription.Invoke();
///
///     var exampleNetworkManager = new Azure.Network.NetworkManager("example", new()
///     {
///         Name = "example-network-manager",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Scope = new Azure.Network.Inputs.NetworkManagerScopeArgs
///         {
///             SubscriptionIds = new[]
///             {
///                 current.Apply(getSubscriptionResult => getSubscriptionResult.Id),
///             },
///         },
///         ScopeAccesses = new[]
///         {
///             "Connectivity",
///             "SecurityAdmin",
///         },
///         Description = "example network manager",
///     });
///
///     var exampleNetworkManagerNetworkGroup = new Azure.Network.NetworkManagerNetworkGroup("example", new()
///     {
///         Name = "example-group",
///         NetworkManagerId = exampleNetworkManager.Id,
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "example-net",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///         FlowTimeoutInMinutes = 10,
///     });
///
///     var exampleNetworkManagerConnectivityConfiguration = new Azure.Network.NetworkManagerConnectivityConfiguration("example", new()
///     {
///         Name = "example-connectivity-conf",
///         NetworkManagerId = exampleNetworkManager.Id,
///         ConnectivityTopology = "HubAndSpoke",
///         AppliesToGroups = new[]
///         {
///             new Azure.Network.Inputs.NetworkManagerConnectivityConfigurationAppliesToGroupArgs
///             {
///                 GroupConnectivity = "None",
///                 NetworkGroupId = exampleNetworkManagerNetworkGroup.Id,
///             },
///         },
///         Hub = new Azure.Network.Inputs.NetworkManagerConnectivityConfigurationHubArgs
///         {
///             ResourceId = exampleVirtualNetwork.Id,
///             ResourceType = "Microsoft.Network/virtualNetworks",
///         },
///     });
///
///     var exampleNetworkManagerDeployment = new Azure.Network.NetworkManagerDeployment("example", new()
///     {
///         NetworkManagerId = exampleNetworkManager.Id,
///         Location = "eastus",
///         ScopeAccess = "Connectivity",
///         ConfigurationIds = new[]
///         {
///             exampleNetworkManagerConnectivityConfiguration.Id,
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
/// 		current, err := core.LookupSubscription(ctx, &core.LookupSubscriptionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetworkManager, err := network.NewNetworkManager(ctx, "example", &network.NetworkManagerArgs{
/// 			Name:              pulumi.String("example-network-manager"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Scope: &network.NetworkManagerScopeArgs{
/// 				SubscriptionIds: pulumi.StringArray{
/// 					pulumi.String(current.Id),
/// 				},
/// 			},
/// 			ScopeAccesses: pulumi.StringArray{
/// 				pulumi.String("Connectivity"),
/// 				pulumi.String("SecurityAdmin"),
/// 			},
/// 			Description: pulumi.String("example network manager"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetworkManagerNetworkGroup, err := network.NewNetworkManagerNetworkGroup(ctx, "example", &network.NetworkManagerNetworkGroupArgs{
/// 			Name:             pulumi.String("example-group"),
/// 			NetworkManagerId: exampleNetworkManager.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name:              pulumi.String("example-net"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 			FlowTimeoutInMinutes: pulumi.Int(10),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetworkManagerConnectivityConfiguration, err := network.NewNetworkManagerConnectivityConfiguration(ctx, "example", &network.NetworkManagerConnectivityConfigurationArgs{
/// 			Name:                 pulumi.String("example-connectivity-conf"),
/// 			NetworkManagerId:     exampleNetworkManager.ID(),
/// 			ConnectivityTopology: pulumi.String("HubAndSpoke"),
/// 			AppliesToGroups: network.NetworkManagerConnectivityConfigurationAppliesToGroupArray{
/// 				&network.NetworkManagerConnectivityConfigurationAppliesToGroupArgs{
/// 					GroupConnectivity: pulumi.String("None"),
/// 					NetworkGroupId:    exampleNetworkManagerNetworkGroup.ID(),
/// 				},
/// 			},
/// 			Hub: &network.NetworkManagerConnectivityConfigurationHubArgs{
/// 				ResourceId:   exampleVirtualNetwork.ID(),
/// 				ResourceType: pulumi.String("Microsoft.Network/virtualNetworks"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewNetworkManagerDeployment(ctx, "example", &network.NetworkManagerDeploymentArgs{
/// 			NetworkManagerId: exampleNetworkManager.ID(),
/// 			Location:         pulumi.String("eastus"),
/// 			ScopeAccess:      pulumi.String("Connectivity"),
/// 			ConfigurationIds: pulumi.StringArray{
/// 				exampleNetworkManagerConnectivityConfiguration.ID(),
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.inputs.GetSubscriptionArgs;
/// import com.pulumi.azure.network.NetworkManager;
/// import com.pulumi.azure.network.NetworkManagerArgs;
/// import com.pulumi.azure.network.inputs.NetworkManagerScopeArgs;
/// import com.pulumi.azure.network.NetworkManagerNetworkGroup;
/// import com.pulumi.azure.network.NetworkManagerNetworkGroupArgs;
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.NetworkManagerConnectivityConfiguration;
/// import com.pulumi.azure.network.NetworkManagerConnectivityConfigurationArgs;
/// import com.pulumi.azure.network.inputs.NetworkManagerConnectivityConfigurationAppliesToGroupArgs;
/// import com.pulumi.azure.network.inputs.NetworkManagerConnectivityConfigurationHubArgs;
/// import com.pulumi.azure.network.NetworkManagerDeployment;
/// import com.pulumi.azure.network.NetworkManagerDeploymentArgs;
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
///         final var current = CoreFunctions.getSubscription(GetSubscriptionArgs.builder()
///             .build());
///
///         var exampleNetworkManager = new NetworkManager("exampleNetworkManager", NetworkManagerArgs.builder()
///             .name("example-network-manager")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .scope(NetworkManagerScopeArgs.builder()
///                 .subscriptionIds(current.id())
///                 .build())
///             .scopeAccesses(
///                 "Connectivity",
///                 "SecurityAdmin")
///             .description("example network manager")
///             .build());
///
///         var exampleNetworkManagerNetworkGroup = new NetworkManagerNetworkGroup("exampleNetworkManagerNetworkGroup", NetworkManagerNetworkGroupArgs.builder()
///             .name("example-group")
///             .networkManagerId(exampleNetworkManager.id())
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("example-net")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .addressSpaces("10.0.0.0/16")
///             .flowTimeoutInMinutes(10)
///             .build());
///
///         var exampleNetworkManagerConnectivityConfiguration = new NetworkManagerConnectivityConfiguration("exampleNetworkManagerConnectivityConfiguration", NetworkManagerConnectivityConfigurationArgs.builder()
///             .name("example-connectivity-conf")
///             .networkManagerId(exampleNetworkManager.id())
///             .connectivityTopology("HubAndSpoke")
///             .appliesToGroups(NetworkManagerConnectivityConfigurationAppliesToGroupArgs.builder()
///                 .groupConnectivity("None")
///                 .networkGroupId(exampleNetworkManagerNetworkGroup.id())
///                 .build())
///             .hub(NetworkManagerConnectivityConfigurationHubArgs.builder()
///                 .resourceId(exampleVirtualNetwork.id())
///                 .resourceType("Microsoft.Network/virtualNetworks")
///                 .build())
///             .build());
///
///         var exampleNetworkManagerDeployment = new NetworkManagerDeployment("exampleNetworkManagerDeployment", NetworkManagerDeploymentArgs.builder()
///             .networkManagerId(exampleNetworkManager.id())
///             .location("eastus")
///             .scopeAccess("Connectivity")
///             .configurationIds(exampleNetworkManagerConnectivityConfiguration.id())
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
///   exampleNetworkManager:
///     type: azure:network:NetworkManager
///     name: example
///     properties:
///       name: example-network-manager
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       scope:
///         subscriptionIds:
///           - ${current.id}
///       scopeAccesses:
///         - Connectivity
///         - SecurityAdmin
///       description: example network manager
///   exampleNetworkManagerNetworkGroup:
///     type: azure:network:NetworkManagerNetworkGroup
///     name: example
///     properties:
///       name: example-group
///       networkManagerId: ${exampleNetworkManager.id}
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: example-net
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       addressSpaces:
///         - 10.0.0.0/16
///       flowTimeoutInMinutes: 10
///   exampleNetworkManagerConnectivityConfiguration:
///     type: azure:network:NetworkManagerConnectivityConfiguration
///     name: example
///     properties:
///       name: example-connectivity-conf
///       networkManagerId: ${exampleNetworkManager.id}
///       connectivityTopology: HubAndSpoke
///       appliesToGroups:
///         - groupConnectivity: None
///           networkGroupId: ${exampleNetworkManagerNetworkGroup.id}
///       hub:
///         resourceId: ${exampleVirtualNetwork.id}
///         resourceType: Microsoft.Network/virtualNetworks
///   exampleNetworkManagerDeployment:
///     type: azure:network:NetworkManagerDeployment
///     name: example
///     properties:
///       networkManagerId: ${exampleNetworkManager.id}
///       location: eastus
///       scopeAccess: Connectivity
///       configurationIds:
///         - ${exampleNetworkManagerConnectivityConfiguration.id}
/// variables:
///   current:
///     fn::invoke:
///       function: azure:core:getSubscription
///       arguments: {}
/// ```
///
///
///
/// ### Triggers)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as std from "@pulumi/std";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const current = azure.core.getSubscription({});
/// const exampleNetworkManager = new azure.network.NetworkManager("example", {
///     name: "example-network-manager",
///     location: example.location,
///     resourceGroupName: example.name,
///     scope: {
///         subscriptionIds: [current.then(current => current.id)],
///     },
///     scopeAccesses: [
///         "Connectivity",
///         "SecurityAdmin",
///     ],
///     description: "example network manager",
/// });
/// const exampleNetworkManagerNetworkGroup = new azure.network.NetworkManagerNetworkGroup("example", {
///     name: "example-group",
///     networkManagerId: exampleNetworkManager.id,
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "example-net",
///     location: example.location,
///     resourceGroupName: example.name,
///     addressSpaces: ["10.0.0.0/16"],
///     flowTimeoutInMinutes: 10,
/// });
/// const exampleNetworkManagerSecurityAdminConfiguration = new azure.network.NetworkManagerSecurityAdminConfiguration("example", {
///     name: "example-nmsac",
///     networkManagerId: exampleNetworkManager.id,
/// });
/// const exampleNetworkManagerAdminRuleCollection = new azure.network.NetworkManagerAdminRuleCollection("example", {
///     name: "example-nmarc",
///     securityAdminConfigurationId: exampleNetworkManagerSecurityAdminConfiguration.id,
///     networkGroupIds: [exampleNetworkManagerNetworkGroup.id],
/// });
/// const exampleNetworkManagerAdminRule = new azure.network.NetworkManagerAdminRule("example", {
///     name: "example-nmar",
///     adminRuleCollectionId: exampleNetworkManagerAdminRuleCollection.id,
///     action: "Deny",
///     description: "example",
///     direction: "Inbound",
///     priority: 1,
///     protocol: "Tcp",
///     sourcePortRanges: ["80"],
///     destinationPortRanges: ["80"],
///     sources: [{
///         addressPrefixType: "ServiceTag",
///         addressPrefix: "Internet",
///     }],
///     destinations: [{
///         addressPrefixType: "IPPrefix",
///         addressPrefix: "*",
///     }],
/// });
/// const exampleNetworkManagerDeployment = new azure.network.NetworkManagerDeployment("example", {
///     networkManagerId: exampleNetworkManager.id,
///     location: "eastus",
///     scopeAccess: "SecurityAdmin",
///     configurationIds: [exampleNetworkManagerSecurityAdminConfiguration.id],
///     triggers: {
///         source_port_ranges: exampleNetworkManagerAdminRule.sourcePortRanges.apply(sourcePortRanges => std.joinOutput({
///             separator: ",",
///             input: sourcePortRanges,
///         })).apply(invoke => invoke.result),
///     },
/// }, {
///     dependsOn: [exampleNetworkManagerAdminRule],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_std as std
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// current = azure.core.get_subscription()
/// example_network_manager = azure.network.NetworkManager("example",
///     name="example-network-manager",
///     location=example.location,
///     resource_group_name=example.name,
///     scope={
///         "subscription_ids": [current.id],
///     },
///     scope_accesses=[
///         "Connectivity",
///         "SecurityAdmin",
///     ],
///     description="example network manager")
/// example_network_manager_network_group = azure.network.NetworkManagerNetworkGroup("example",
///     name="example-group",
///     network_manager_id=example_network_manager.id)
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="example-net",
///     location=example.location,
///     resource_group_name=example.name,
///     address_spaces=["10.0.0.0/16"],
///     flow_timeout_in_minutes=10)
/// example_network_manager_security_admin_configuration = azure.network.NetworkManagerSecurityAdminConfiguration("example",
///     name="example-nmsac",
///     network_manager_id=example_network_manager.id)
/// example_network_manager_admin_rule_collection = azure.network.NetworkManagerAdminRuleCollection("example",
///     name="example-nmarc",
///     security_admin_configuration_id=example_network_manager_security_admin_configuration.id,
///     network_group_ids=[example_network_manager_network_group.id])
/// example_network_manager_admin_rule = azure.network.NetworkManagerAdminRule("example",
///     name="example-nmar",
///     admin_rule_collection_id=example_network_manager_admin_rule_collection.id,
///     action="Deny",
///     description="example",
///     direction="Inbound",
///     priority=1,
///     protocol="Tcp",
///     source_port_ranges=["80"],
///     destination_port_ranges=["80"],
///     sources=[{
///         "address_prefix_type": "ServiceTag",
///         "address_prefix": "Internet",
///     }],
///     destinations=[{
///         "address_prefix_type": "IPPrefix",
///         "address_prefix": "*",
///     }])
/// example_network_manager_deployment = azure.network.NetworkManagerDeployment("example",
///     network_manager_id=example_network_manager.id,
///     location="eastus",
///     scope_access="SecurityAdmin",
///     configuration_ids=[example_network_manager_security_admin_configuration.id],
///     triggers={
///         "source_port_ranges": example_network_manager_admin_rule.source_port_ranges.apply(lambda source_port_ranges: std.join_output(separator=",",
///             input=source_port_ranges)).apply(lambda invoke: invoke.result),
///     },
///     opts = pulumi.ResourceOptions(depends_on=[example_network_manager_admin_rule]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var current = Azure.Core.GetSubscription.Invoke();
///
///     var exampleNetworkManager = new Azure.Network.NetworkManager("example", new()
///     {
///         Name = "example-network-manager",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Scope = new Azure.Network.Inputs.NetworkManagerScopeArgs
///         {
///             SubscriptionIds = new[]
///             {
///                 current.Apply(getSubscriptionResult => getSubscriptionResult.Id),
///             },
///         },
///         ScopeAccesses = new[]
///         {
///             "Connectivity",
///             "SecurityAdmin",
///         },
///         Description = "example network manager",
///     });
///
///     var exampleNetworkManagerNetworkGroup = new Azure.Network.NetworkManagerNetworkGroup("example", new()
///     {
///         Name = "example-group",
///         NetworkManagerId = exampleNetworkManager.Id,
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "example-net",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///         FlowTimeoutInMinutes = 10,
///     });
///
///     var exampleNetworkManagerSecurityAdminConfiguration = new Azure.Network.NetworkManagerSecurityAdminConfiguration("example", new()
///     {
///         Name = "example-nmsac",
///         NetworkManagerId = exampleNetworkManager.Id,
///     });
///
///     var exampleNetworkManagerAdminRuleCollection = new Azure.Network.NetworkManagerAdminRuleCollection("example", new()
///     {
///         Name = "example-nmarc",
///         SecurityAdminConfigurationId = exampleNetworkManagerSecurityAdminConfiguration.Id,
///         NetworkGroupIds = new[]
///         {
///             exampleNetworkManagerNetworkGroup.Id,
///         },
///     });
///
///     var exampleNetworkManagerAdminRule = new Azure.Network.NetworkManagerAdminRule("example", new()
///     {
///         Name = "example-nmar",
///         AdminRuleCollectionId = exampleNetworkManagerAdminRuleCollection.Id,
///         Action = "Deny",
///         Description = "example",
///         Direction = "Inbound",
///         Priority = 1,
///         Protocol = "Tcp",
///         SourcePortRanges = new[]
///         {
///             "80",
///         },
///         DestinationPortRanges = new[]
///         {
///             "80",
///         },
///         Sources = new[]
///         {
///             new Azure.Network.Inputs.NetworkManagerAdminRuleSourceArgs
///             {
///                 AddressPrefixType = "ServiceTag",
///                 AddressPrefix = "Internet",
///             },
///         },
///         Destinations = new[]
///         {
///             new Azure.Network.Inputs.NetworkManagerAdminRuleDestinationArgs
///             {
///                 AddressPrefixType = "IPPrefix",
///                 AddressPrefix = "*",
///             },
///         },
///     });
///
///     var exampleNetworkManagerDeployment = new Azure.Network.NetworkManagerDeployment("example", new()
///     {
///         NetworkManagerId = exampleNetworkManager.Id,
///         Location = "eastus",
///         ScopeAccess = "SecurityAdmin",
///         ConfigurationIds = new[]
///         {
///             exampleNetworkManagerSecurityAdminConfiguration.Id,
///         },
///         Triggers =
///         {
///             { "source_port_ranges", exampleNetworkManagerAdminRule.SourcePortRanges.Apply(sourcePortRanges => Std.Join.Invoke(new()
///             {
///                 Separator = ",",
///                 Input = sourcePortRanges,
///             })).Apply(invoke => invoke.Result) },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleNetworkManagerAdminRule,
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
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// Name: pulumi.String("example-resources"),
/// Location: pulumi.String("West Europe"),
/// })
/// if err != nil {
/// return err
/// }
/// current, err := core.LookupSubscription(ctx, &core.LookupSubscriptionArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// exampleNetworkManager, err := network.NewNetworkManager(ctx, "example", &network.NetworkManagerArgs{
/// Name: pulumi.String("example-network-manager"),
/// Location: example.Location,
/// ResourceGroupName: example.Name,
/// Scope: &network.NetworkManagerScopeArgs{
/// SubscriptionIds: pulumi.StringArray{
/// pulumi.String(current.Id),
/// },
/// },
/// ScopeAccesses: pulumi.StringArray{
/// pulumi.String("Connectivity"),
/// pulumi.String("SecurityAdmin"),
/// },
/// Description: pulumi.String("example network manager"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleNetworkManagerNetworkGroup, err := network.NewNetworkManagerNetworkGroup(ctx, "example", &network.NetworkManagerNetworkGroupArgs{
/// Name: pulumi.String("example-group"),
/// NetworkManagerId: exampleNetworkManager.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// Name: pulumi.String("example-net"),
/// Location: example.Location,
/// ResourceGroupName: example.Name,
/// AddressSpaces: pulumi.StringArray{
/// pulumi.String("10.0.0.0/16"),
/// },
/// FlowTimeoutInMinutes: pulumi.Int(10),
/// })
/// if err != nil {
/// return err
/// }
/// exampleNetworkManagerSecurityAdminConfiguration, err := network.NewNetworkManagerSecurityAdminConfiguration(ctx, "example", &network.NetworkManagerSecurityAdminConfigurationArgs{
/// Name: pulumi.String("example-nmsac"),
/// NetworkManagerId: exampleNetworkManager.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// exampleNetworkManagerAdminRuleCollection, err := network.NewNetworkManagerAdminRuleCollection(ctx, "example", &network.NetworkManagerAdminRuleCollectionArgs{
/// Name: pulumi.String("example-nmarc"),
/// SecurityAdminConfigurationId: exampleNetworkManagerSecurityAdminConfiguration.ID(),
/// NetworkGroupIds: pulumi.StringArray{
/// exampleNetworkManagerNetworkGroup.ID(),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// exampleNetworkManagerAdminRule, err := network.NewNetworkManagerAdminRule(ctx, "example", &network.NetworkManagerAdminRuleArgs{
/// Name: pulumi.String("example-nmar"),
/// AdminRuleCollectionId: exampleNetworkManagerAdminRuleCollection.ID(),
/// Action: pulumi.String("Deny"),
/// Description: pulumi.String("example"),
/// Direction: pulumi.String("Inbound"),
/// Priority: pulumi.Int(1),
/// Protocol: pulumi.String("Tcp"),
/// SourcePortRanges: pulumi.StringArray{
/// pulumi.String("80"),
/// },
/// DestinationPortRanges: pulumi.StringArray{
/// pulumi.String("80"),
/// },
/// Sources: network.NetworkManagerAdminRuleSourceArray{
/// &network.NetworkManagerAdminRuleSourceArgs{
/// AddressPrefixType: pulumi.String("ServiceTag"),
/// AddressPrefix: pulumi.String("Internet"),
/// },
/// },
/// Destinations: network.NetworkManagerAdminRuleDestinationArray{
/// &network.NetworkManagerAdminRuleDestinationArgs{
/// AddressPrefixType: pulumi.String("IPPrefix"),
/// AddressPrefix: pulumi.String("*"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// invokeJoin, err := std.Join(ctx, &std.JoinArgs{
/// Separator: ",",
/// Input: sourcePortRanges,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = network.NewNetworkManagerDeployment(ctx, "example", &network.NetworkManagerDeploymentArgs{
/// NetworkManagerId: exampleNetworkManager.ID(),
/// Location: pulumi.String("eastus"),
/// ScopeAccess: pulumi.String("SecurityAdmin"),
/// ConfigurationIds: pulumi.StringArray{
/// exampleNetworkManagerSecurityAdminConfiguration.ID(),
/// },
/// Triggers: pulumi.StringMap{
/// "source_port_ranges": pulumi.String(exampleNetworkManagerAdminRule.SourcePortRanges.ApplyT(func(sourcePortRanges interface{}) (std.JoinResult, error) {
/// %!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference)).(std.JoinResultOutput).ApplyT(func(invoke std.JoinResult) (*string, error) {
/// return invoke.Result, nil
/// }).(pulumi.StringPtrOutput)),
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// exampleNetworkManagerAdminRule,
/// }))
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import com.pulumi.azure.core.CoreFunctions;
/// import com.pulumi.azure.core.inputs.GetSubscriptionArgs;
/// import com.pulumi.azure.network.NetworkManager;
/// import com.pulumi.azure.network.NetworkManagerArgs;
/// import com.pulumi.azure.network.inputs.NetworkManagerScopeArgs;
/// import com.pulumi.azure.network.NetworkManagerNetworkGroup;
/// import com.pulumi.azure.network.NetworkManagerNetworkGroupArgs;
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.NetworkManagerSecurityAdminConfiguration;
/// import com.pulumi.azure.network.NetworkManagerSecurityAdminConfigurationArgs;
/// import com.pulumi.azure.network.NetworkManagerAdminRuleCollection;
/// import com.pulumi.azure.network.NetworkManagerAdminRuleCollectionArgs;
/// import com.pulumi.azure.network.NetworkManagerAdminRule;
/// import com.pulumi.azure.network.NetworkManagerAdminRuleArgs;
/// import com.pulumi.azure.network.inputs.NetworkManagerAdminRuleSourceArgs;
/// import com.pulumi.azure.network.inputs.NetworkManagerAdminRuleDestinationArgs;
/// import com.pulumi.azure.network.NetworkManagerDeployment;
/// import com.pulumi.azure.network.NetworkManagerDeploymentArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.JoinArgs;
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
///         final var current = CoreFunctions.getSubscription(GetSubscriptionArgs.builder()
///             .build());
///
///         var exampleNetworkManager = new NetworkManager("exampleNetworkManager", NetworkManagerArgs.builder()
///             .name("example-network-manager")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .scope(NetworkManagerScopeArgs.builder()
///                 .subscriptionIds(current.id())
///                 .build())
///             .scopeAccesses(
///                 "Connectivity",
///                 "SecurityAdmin")
///             .description("example network manager")
///             .build());
///
///         var exampleNetworkManagerNetworkGroup = new NetworkManagerNetworkGroup("exampleNetworkManagerNetworkGroup", NetworkManagerNetworkGroupArgs.builder()
///             .name("example-group")
///             .networkManagerId(exampleNetworkManager.id())
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("example-net")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .addressSpaces("10.0.0.0/16")
///             .flowTimeoutInMinutes(10)
///             .build());
///
///         var exampleNetworkManagerSecurityAdminConfiguration = new NetworkManagerSecurityAdminConfiguration("exampleNetworkManagerSecurityAdminConfiguration", NetworkManagerSecurityAdminConfigurationArgs.builder()
///             .name("example-nmsac")
///             .networkManagerId(exampleNetworkManager.id())
///             .build());
///
///         var exampleNetworkManagerAdminRuleCollection = new NetworkManagerAdminRuleCollection("exampleNetworkManagerAdminRuleCollection", NetworkManagerAdminRuleCollectionArgs.builder()
///             .name("example-nmarc")
///             .securityAdminConfigurationId(exampleNetworkManagerSecurityAdminConfiguration.id())
///             .networkGroupIds(exampleNetworkManagerNetworkGroup.id())
///             .build());
///
///         var exampleNetworkManagerAdminRule = new NetworkManagerAdminRule("exampleNetworkManagerAdminRule", NetworkManagerAdminRuleArgs.builder()
///             .name("example-nmar")
///             .adminRuleCollectionId(exampleNetworkManagerAdminRuleCollection.id())
///             .action("Deny")
///             .description("example")
///             .direction("Inbound")
///             .priority(1)
///             .protocol("Tcp")
///             .sourcePortRanges("80")
///             .destinationPortRanges("80")
///             .sources(NetworkManagerAdminRuleSourceArgs.builder()
///                 .addressPrefixType("ServiceTag")
///                 .addressPrefix("Internet")
///                 .build())
///             .destinations(NetworkManagerAdminRuleDestinationArgs.builder()
///                 .addressPrefixType("IPPrefix")
///                 .addressPrefix("*")
///                 .build())
///             .build());
///
///         var exampleNetworkManagerDeployment = new NetworkManagerDeployment("exampleNetworkManagerDeployment", NetworkManagerDeploymentArgs.builder()
///             .networkManagerId(exampleNetworkManager.id())
///             .location("eastus")
///             .scopeAccess("SecurityAdmin")
///             .configurationIds(exampleNetworkManagerSecurityAdminConfiguration.id())
///             .triggers(Map.of("source_port_ranges", exampleNetworkManagerAdminRule.sourcePortRanges().applyValue(_sourcePortRanges -> StdFunctions.join(JoinArgs.builder()
///                 .separator(",")
///                 .input(_sourcePortRanges)
///                 .build())).applyValue(_invoke -> _invoke.result())))
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleNetworkManagerAdminRule)
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
///   exampleNetworkManager:
///     type: azure:network:NetworkManager
///     name: example
///     properties:
///       name: example-network-manager
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       scope:
///         subscriptionIds:
///           - ${current.id}
///       scopeAccesses:
///         - Connectivity
///         - SecurityAdmin
///       description: example network manager
///   exampleNetworkManagerNetworkGroup:
///     type: azure:network:NetworkManagerNetworkGroup
///     name: example
///     properties:
///       name: example-group
///       networkManagerId: ${exampleNetworkManager.id}
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: example-net
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       addressSpaces:
///         - 10.0.0.0/16
///       flowTimeoutInMinutes: 10
///   exampleNetworkManagerSecurityAdminConfiguration:
///     type: azure:network:NetworkManagerSecurityAdminConfiguration
///     name: example
///     properties:
///       name: example-nmsac
///       networkManagerId: ${exampleNetworkManager.id}
///   exampleNetworkManagerAdminRuleCollection:
///     type: azure:network:NetworkManagerAdminRuleCollection
///     name: example
///     properties:
///       name: example-nmarc
///       securityAdminConfigurationId: ${exampleNetworkManagerSecurityAdminConfiguration.id}
///       networkGroupIds:
///         - ${exampleNetworkManagerNetworkGroup.id}
///   exampleNetworkManagerAdminRule:
///     type: azure:network:NetworkManagerAdminRule
///     name: example
///     properties:
///       name: example-nmar
///       adminRuleCollectionId: ${exampleNetworkManagerAdminRuleCollection.id}
///       action: Deny
///       description: example
///       direction: Inbound
///       priority: 1
///       protocol: Tcp
///       sourcePortRanges:
///         - '80'
///       destinationPortRanges:
///         - '80'
///       sources:
///         - addressPrefixType: ServiceTag
///           addressPrefix: Internet
///       destinations:
///         - addressPrefixType: IPPrefix
///           addressPrefix: '*'
///   exampleNetworkManagerDeployment:
///     type: azure:network:NetworkManagerDeployment
///     name: example
///     properties:
///       networkManagerId: ${exampleNetworkManager.id}
///       location: eastus
///       scopeAccess: SecurityAdmin
///       configurationIds:
///         - ${exampleNetworkManagerSecurityAdminConfiguration.id}
///       triggers:
///         source_port_ranges:
///           fn::invoke:
///             function: std:join
///             arguments:
///               separator: ','
///               input: ${exampleNetworkManagerAdminRule.sourcePortRanges}
///             return: result
///     options:
///       dependsOn:
///         - ${exampleNetworkManagerAdminRule}
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
/// Network Manager Deployment can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/networkManagerDeployment:NetworkManagerDeployment example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.Network/networkManagers/networkManager1/commit|eastus|Connectivity
/// ```
class NetworkManagerDeployment extends pulumi.CustomResource {
  /// A list of Network Manager Configuration IDs which should be aligned with `scope_access`.
  late final pulumi.Output<List<String>> configurationIds;
  /// Specifies the location which the configurations will be deployed to. Changing this forces a new Network Manager Deployment to be created.
  late final pulumi.Output<String> location;
  /// Specifies the ID of the Network Manager. Changing this forces a new Network Manager Deployment to be created.
  late final pulumi.Output<String> networkManagerId;
  /// Specifies the configuration deployment type. Possible values are `Connectivity`, `SecurityAdmin` and `Routing`. Changing this forces a new Network Manager Deployment to be created.
  late final pulumi.Output<String> scopeAccess;
  /// A mapping of key values pairs that can be used to keep the deployment up with the Network Manager configurations and rules.
  late final pulumi.Output<Map<String, String>?> triggers;

  /// Creates a new [NetworkManagerDeployment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkManagerDeployment]. {@macro pulumi_network_network_manager_deployment_network_manager_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkManagerDeployment(
    String name, {
    NetworkManagerDeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/networkManagerDeployment:NetworkManagerDeployment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    configurationIds = registerOutput<List<String>>('configurationIds');
    location = registerOutput<String>('location');
    networkManagerId = registerOutput<String>('networkManagerId');
    scopeAccess = registerOutput<String>('scopeAccess');
    triggers = registerOutput<Map<String, String>?>('triggers');
  }

  /// Gets an existing [NetworkManagerDeployment] resource's state with the given [name] and [id].
  static NetworkManagerDeployment get(
    String name,
    pulumi.Input<String> id, {
    NetworkManagerDeploymentState? state,
  }) {
    return NetworkManagerDeployment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkManagerDeployment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/networkManagerDeployment:NetworkManagerDeployment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    configurationIds = registerOutput<List<String>>('configurationIds');
    location = registerOutput<String>('location');
    networkManagerId = registerOutput<String>('networkManagerId');
    scopeAccess = registerOutput<String>('scopeAccess');
    triggers = registerOutput<Map<String, String>?>('triggers');
  }
}
