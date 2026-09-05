import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_manager_connectivity_configuration_applies_to_group.dart';
import 'network_manager_connectivity_configuration_args.dart';
import 'network_manager_connectivity_configuration_hub.dart';
import 'network_manager_connectivity_configuration_state.dart';

/// Manages a Network Manager Connectivity Configuration.
///
/// &gt; **Note:** The `azure.network.NetworkManagerConnectivityConfiguration` deployment may modify or delete existing Network Peering resource.
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
/// const example2 = new azure.network.NetworkManagerNetworkGroup("example2", {
///     name: "example-group2",
///     networkManagerId: exampleNetworkManager.id,
/// });
/// const exampleNetworkManagerConnectivityConfiguration = new azure.network.NetworkManagerConnectivityConfiguration("example", {
///     name: "example-connectivity-conf",
///     networkManagerId: exampleNetworkManager.id,
///     connectivityTopology: "HubAndSpoke",
///     appliesToGroups: [
///         {
///             groupConnectivity: "DirectlyConnected",
///             networkGroupId: exampleNetworkManagerNetworkGroup.id,
///         },
///         {
///             groupConnectivity: "DirectlyConnected",
///             networkGroupId: example2.id,
///         },
///     ],
///     hub: {
///         resourceId: exampleVirtualNetwork.id,
///         resourceType: "Microsoft.Network/virtualNetworks",
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
/// example2 = azure.network.NetworkManagerNetworkGroup("example2",
///     name="example-group2",
///     network_manager_id=example_network_manager.id)
/// example_network_manager_connectivity_configuration = azure.network.NetworkManagerConnectivityConfiguration("example",
///     name="example-connectivity-conf",
///     network_manager_id=example_network_manager.id,
///     connectivity_topology="HubAndSpoke",
///     applies_to_groups=[
///         {
///             "group_connectivity": "DirectlyConnected",
///             "network_group_id": example_network_manager_network_group.id,
///         },
///         {
///             "group_connectivity": "DirectlyConnected",
///             "network_group_id": example2.id,
///         },
///     ],
///     hub={
///         "resource_id": example_virtual_network.id,
///         "resource_type": "Microsoft.Network/virtualNetworks",
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
///     var example2 = new Azure.Network.NetworkManagerNetworkGroup("example2", new()
///     {
///         Name = "example-group2",
///         NetworkManagerId = exampleNetworkManager.Id,
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
///                 GroupConnectivity = "DirectlyConnected",
///                 NetworkGroupId = exampleNetworkManagerNetworkGroup.Id,
///             },
///             new Azure.Network.Inputs.NetworkManagerConnectivityConfigurationAppliesToGroupArgs
///             {
///                 GroupConnectivity = "DirectlyConnected",
///                 NetworkGroupId = example2.Id,
///             },
///         },
///         Hub = new Azure.Network.Inputs.NetworkManagerConnectivityConfigurationHubArgs
///         {
///             ResourceId = exampleVirtualNetwork.Id,
///             ResourceType = "Microsoft.Network/virtualNetworks",
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
/// 			NetworkManagerId: exampleNetworkManager.ID().ToIDOutput().ToStringOutput(),
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
/// 		example2, err := network.NewNetworkManagerNetworkGroup(ctx, "example2", &network.NetworkManagerNetworkGroupArgs{
/// 			Name:             pulumi.String("example-group2"),
/// 			NetworkManagerId: exampleNetworkManager.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewNetworkManagerConnectivityConfiguration(ctx, "example", &network.NetworkManagerConnectivityConfigurationArgs{
/// 			Name:                 pulumi.String("example-connectivity-conf"),
/// 			NetworkManagerId:     exampleNetworkManager.ID().ToIDOutput().ToStringOutput(),
/// 			ConnectivityTopology: pulumi.String("HubAndSpoke"),
/// 			AppliesToGroups: network.NetworkManagerConnectivityConfigurationAppliesToGroupArray{
/// 				&network.NetworkManagerConnectivityConfigurationAppliesToGroupArgs{
/// 					GroupConnectivity: pulumi.String("DirectlyConnected"),
/// 					NetworkGroupId:    exampleNetworkManagerNetworkGroup.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 				&network.NetworkManagerConnectivityConfigurationAppliesToGroupArgs{
/// 					GroupConnectivity: pulumi.String("DirectlyConnected"),
/// 					NetworkGroupId:    example2.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 			},
/// 			Hub: &network.NetworkManagerConnectivityConfigurationHubArgs{
/// 				ResourceId:   exampleVirtualNetwork.ID().ToIDOutput().ToStringOutput(),
/// 				ResourceType: pulumi.String("Microsoft.Network/virtualNetworks"),
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
/// data "azure_core_getsubscription" "current" {
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_network_networkmanager" "example" {
///   name                = "example-network-manager"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   scope = {
///     subscription_ids = [data.azure_core_getsubscription.current.id]
///   }
///   scope_accesses = ["Connectivity", "SecurityAdmin"]
///   description    = "example network manager"
/// }
/// resource "azure_network_networkmanagernetworkgroup" "example" {
///   name               = "example-group"
///   network_manager_id = azure_network_networkmanager.example.id
/// }
/// resource "azure_network_virtualnetwork" "example" {
///   name                    = "example-net"
///   location                = azure_core_resourcegroup.example.location
///   resource_group_name     = azure_core_resourcegroup.example.name
///   address_spaces          = ["10.0.0.0/16"]
///   flow_timeout_in_minutes = 10
/// }
/// resource "azure_network_networkmanagernetworkgroup" "example2" {
///   name               = "example-group2"
///   network_manager_id = azure_network_networkmanager.example.id
/// }
/// resource "azure_network_networkmanagerconnectivityconfiguration" "example" {
///   name                  = "example-connectivity-conf"
///   network_manager_id    = azure_network_networkmanager.example.id
///   connectivity_topology = "HubAndSpoke"
///   applies_to_groups {
///     group_connectivity = "DirectlyConnected"
///     network_group_id   = azure_network_networkmanagernetworkgroup.example.id
///   }
///   applies_to_groups {
///     group_connectivity = "DirectlyConnected"
///     network_group_id   = azure_network_networkmanagernetworkgroup.example2.id
///   }
///   hub = {
///     resource_id   = azure_network_virtualnetwork.example.id
///     resource_type = "Microsoft.Network/virtualNetworks"
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
///         var example2 = new NetworkManagerNetworkGroup("example2", NetworkManagerNetworkGroupArgs.builder()
///             .name("example-group2")
///             .networkManagerId(exampleNetworkManager.id())
///             .build());
///
///         var exampleNetworkManagerConnectivityConfiguration = new NetworkManagerConnectivityConfiguration("exampleNetworkManagerConnectivityConfiguration", NetworkManagerConnectivityConfigurationArgs.builder()
///             .name("example-connectivity-conf")
///             .networkManagerId(exampleNetworkManager.id())
///             .connectivityTopology("HubAndSpoke")
///             .appliesToGroups(
///                 NetworkManagerConnectivityConfigurationAppliesToGroupArgs.builder()
///                     .groupConnectivity("DirectlyConnected")
///                     .networkGroupId(exampleNetworkManagerNetworkGroup.id())
///                     .build(),
///                 NetworkManagerConnectivityConfigurationAppliesToGroupArgs.builder()
///                     .groupConnectivity("DirectlyConnected")
///                     .networkGroupId(example2.id())
///                     .build())
///             .hub(NetworkManagerConnectivityConfigurationHubArgs.builder()
///                 .resourceId(exampleVirtualNetwork.id())
///                 .resourceType("Microsoft.Network/virtualNetworks")
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
///   example2:
///     type: azure:network:NetworkManagerNetworkGroup
///     properties:
///       name: example-group2
///       networkManagerId: ${exampleNetworkManager.id}
///   exampleNetworkManagerConnectivityConfiguration:
///     type: azure:network:NetworkManagerConnectivityConfiguration
///     name: example
///     properties:
///       name: example-connectivity-conf
///       networkManagerId: ${exampleNetworkManager.id}
///       connectivityTopology: HubAndSpoke
///       appliesToGroups:
///         - groupConnectivity: DirectlyConnected
///           networkGroupId: ${exampleNetworkManagerNetworkGroup.id}
///         - groupConnectivity: DirectlyConnected
///           networkGroupId: ${example2.id}
///       hub:
///         resourceId: ${exampleVirtualNetwork.id}
///         resourceType: Microsoft.Network/virtualNetworks
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
/// Network Manager Connectivity Configuration can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/networkManagerConnectivityConfiguration:NetworkManagerConnectivityConfiguration example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.Network/networkManagers/networkManager1/connectivityConfigurations/configuration1
/// ```
class NetworkManagerConnectivityConfiguration extends pulumi.CustomResource {
  /// One or more `appliesToGroup` blocks as defined below.
  late final pulumi.Output<List<NetworkManagerConnectivityConfigurationAppliesToGroup>> appliesToGroups;
  /// Whether connected group address overlap is enabled. Defaults to `true`.
  ///
  /// &gt; **Note:** Changing `connectedGroupAddressOverlapEnabled` from `true` to `false` forces a new Network Manager Connectivity Configuration to be created because the Azure API does not support this modification.
  late final pulumi.Output<bool?> connectedGroupAddressOverlapEnabled;
  /// Specifies the scale of private endpoints allowed in the connected group. Possible values are `Standard` and `HighScale`. Defaults to `Standard`.
  late final pulumi.Output<String?> connectedGroupPrivateEndpointsScale;
  /// Specifies the connectivity topology type. Possible values are `HubAndSpoke` and `Mesh`.
  late final pulumi.Output<String> connectivityTopology;
  /// Indicates whether to remove current existing Virtual Network Peering in the Connectivity Configuration affected scope. Possible values are `true` and `false`.
  late final pulumi.Output<bool?> deleteExistingPeeringEnabled;
  /// A description of the Connectivity Configuration.
  late final pulumi.Output<String?> description;
  /// Indicates whether to global mesh is supported. Possible values are `true` and `false`.
  late final pulumi.Output<bool?> globalMeshEnabled;
  /// A `hub` block as defined below.
  late final pulumi.Output<NetworkManagerConnectivityConfigurationHub?> hub;
  /// Specifies the name which should be used for this Network Manager Connectivity Configuration. Changing this forces a new Network Manager Connectivity Configuration to be created.
  late final pulumi.Output<String> name;
  /// Specifies the ID of the Network Manager. Changing this forces a new Network Manager Connectivity Configuration to be created.
  late final pulumi.Output<String> networkManagerId;
  /// Whether peering enforcement is enabled. Defaults to `false`.
  late final pulumi.Output<bool?> peeringEnforcementEnabled;

  /// Creates a new [NetworkManagerConnectivityConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkManagerConnectivityConfiguration]. {@macro pulumi_network_network_manager_connectivity_configuration_network_manager_connectivity_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkManagerConnectivityConfiguration(
    String name, {
    NetworkManagerConnectivityConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/networkManagerConnectivityConfiguration:NetworkManagerConnectivityConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    appliesToGroups = registerOutput<List<NetworkManagerConnectivityConfigurationAppliesToGroup>>('appliesToGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkManagerConnectivityConfigurationAppliesToGroup>(guardedValue, (value) => NetworkManagerConnectivityConfigurationAppliesToGroup.fromMap((value as Map).cast<String, dynamic>())); });
    connectedGroupAddressOverlapEnabled = registerOutput<bool?>('connectedGroupAddressOverlapEnabled');
    connectedGroupPrivateEndpointsScale = registerOutput<String?>('connectedGroupPrivateEndpointsScale');
    connectivityTopology = registerOutput<String>('connectivityTopology');
    deleteExistingPeeringEnabled = registerOutput<bool?>('deleteExistingPeeringEnabled');
    description = registerOutput<String?>('description');
    globalMeshEnabled = registerOutput<bool?>('globalMeshEnabled');
    hub = registerOutput<NetworkManagerConnectivityConfigurationHub?>('hub', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkManagerConnectivityConfigurationHub.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    networkManagerId = registerOutput<String>('networkManagerId');
    peeringEnforcementEnabled = registerOutput<bool?>('peeringEnforcementEnabled');
  }

  /// Gets an existing [NetworkManagerConnectivityConfiguration] resource's state with the given [name] and [id].
  static NetworkManagerConnectivityConfiguration get(
    String name,
    pulumi.Input<String> id, {
    NetworkManagerConnectivityConfigurationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return NetworkManagerConnectivityConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  NetworkManagerConnectivityConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/networkManagerConnectivityConfiguration:NetworkManagerConnectivityConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appliesToGroups = registerOutput<List<NetworkManagerConnectivityConfigurationAppliesToGroup>>('appliesToGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkManagerConnectivityConfigurationAppliesToGroup>(guardedValue, (value) => NetworkManagerConnectivityConfigurationAppliesToGroup.fromMap((value as Map).cast<String, dynamic>())); });
    connectedGroupAddressOverlapEnabled = registerOutput<bool?>('connectedGroupAddressOverlapEnabled');
    connectedGroupPrivateEndpointsScale = registerOutput<String?>('connectedGroupPrivateEndpointsScale');
    connectivityTopology = registerOutput<String>('connectivityTopology');
    deleteExistingPeeringEnabled = registerOutput<bool?>('deleteExistingPeeringEnabled');
    description = registerOutput<String?>('description');
    globalMeshEnabled = registerOutput<bool?>('globalMeshEnabled');
    hub = registerOutput<NetworkManagerConnectivityConfigurationHub?>('hub', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkManagerConnectivityConfigurationHub.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    networkManagerId = registerOutput<String>('networkManagerId');
    peeringEnforcementEnabled = registerOutput<bool?>('peeringEnforcementEnabled');
  }

  /// Creates a typed reference to an existing [NetworkManagerConnectivityConfiguration] resource.
  NetworkManagerConnectivityConfiguration.reference(String urn)
    : super(
        'azure:network/networkManagerConnectivityConfiguration:NetworkManagerConnectivityConfiguration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    appliesToGroups = registerOutput<List<NetworkManagerConnectivityConfigurationAppliesToGroup>>('appliesToGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkManagerConnectivityConfigurationAppliesToGroup>(guardedValue, (value) => NetworkManagerConnectivityConfigurationAppliesToGroup.fromMap((value as Map).cast<String, dynamic>())); });
    connectedGroupAddressOverlapEnabled = registerOutput<bool?>('connectedGroupAddressOverlapEnabled');
    connectedGroupPrivateEndpointsScale = registerOutput<String?>('connectedGroupPrivateEndpointsScale');
    connectivityTopology = registerOutput<String>('connectivityTopology');
    deleteExistingPeeringEnabled = registerOutput<bool?>('deleteExistingPeeringEnabled');
    description = registerOutput<String?>('description');
    globalMeshEnabled = registerOutput<bool?>('globalMeshEnabled');
    hub = registerOutput<NetworkManagerConnectivityConfigurationHub?>('hub', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkManagerConnectivityConfigurationHub.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    networkManagerId = registerOutput<String>('networkManagerId');
    peeringEnforcementEnabled = registerOutput<bool?>('peeringEnforcementEnabled');
  }
}
