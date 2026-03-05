import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_manager_verifier_workspace_reachability_analysis_intent_args.dart';
import 'network_manager_verifier_workspace_reachability_analysis_intent_ip_traffic.dart';
import 'network_manager_verifier_workspace_reachability_analysis_intent_state.dart';

/// Manages a Network Manager Verifier Workspace Reachability Analysis Intent.
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
///     name: "example-nm",
///     resourceGroupName: example.name,
///     location: example.location,
///     scope: {
///         subscriptionIds: [current.then(current => current.id)],
///     },
///     scopeAccesses: ["Connectivity"],
/// });
/// const exampleNetworkManagerVerifierWorkspace = new azure.network.NetworkManagerVerifierWorkspace("example", {
///     name: "example",
///     networkManagerId: exampleNetworkManager.id,
///     location: example.location,
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "example-network",
///     addressSpaces: ["10.0.0.0/16"],
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "internal",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.2.0/24"],
/// });
/// const exampleNetworkInterface = new azure.network.NetworkInterface("example", {
///     name: "example-nic",
///     location: example.location,
///     resourceGroupName: example.name,
///     ipConfigurations: [{
///         name: "internal",
///         subnetId: exampleSubnet.id,
///         privateIpAddressAllocation: "Dynamic",
///     }],
/// });
/// const exampleLinuxVirtualMachine = new azure.compute.LinuxVirtualMachine("example", {
///     name: "example-machine",
///     resourceGroupName: example.name,
///     location: example.location,
///     size: "Standard_B1ls",
///     adminUsername: "adminuser",
///     adminPassword: "P@ssw0rd1234!",
///     disablePasswordAuthentication: false,
///     networkInterfaceIds: [exampleNetworkInterface.id],
///     osDisk: {
///         caching: "ReadWrite",
///         storageAccountType: "Standard_LRS",
///     },
///     sourceImageReference: {
///         publisher: "Canonical",
///         offer: "0001-com-ubuntu-server-jammy",
///         sku: "22_04-lts",
///         version: "latest",
///     },
/// });
/// const exampleNetworkManagerVerifierWorkspaceReachabilityAnalysisIntent = new azure.network.NetworkManagerVerifierWorkspaceReachabilityAnalysisIntent("example", {
///     name: "example-intent",
///     verifierWorkspaceId: exampleNetworkManagerVerifierWorkspace.id,
///     sourceResourceId: exampleLinuxVirtualMachine.id,
///     destinationResourceId: exampleLinuxVirtualMachine.id,
///     description: "example",
///     ipTraffic: {
///         sourceIps: ["10.0.2.1"],
///         sourcePorts: ["80"],
///         destinationIps: ["10.0.2.2"],
///         destinationPorts: ["*"],
///         protocols: ["Any"],
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
///     name="example-nm",
///     resource_group_name=example.name,
///     location=example.location,
///     scope={
///         "subscription_ids": [current.id],
///     },
///     scope_accesses=["Connectivity"])
/// example_network_manager_verifier_workspace = azure.network.NetworkManagerVerifierWorkspace("example",
///     name="example",
///     network_manager_id=example_network_manager.id,
///     location=example.location)
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="example-network",
///     address_spaces=["10.0.0.0/16"],
///     location=example.location,
///     resource_group_name=example.name)
/// example_subnet = azure.network.Subnet("example",
///     name="internal",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.2.0/24"])
/// example_network_interface = azure.network.NetworkInterface("example",
///     name="example-nic",
///     location=example.location,
///     resource_group_name=example.name,
///     ip_configurations=[{
///         "name": "internal",
///         "subnet_id": example_subnet.id,
///         "private_ip_address_allocation": "Dynamic",
///     }])
/// example_linux_virtual_machine = azure.compute.LinuxVirtualMachine("example",
///     name="example-machine",
///     resource_group_name=example.name,
///     location=example.location,
///     size="Standard_B1ls",
///     admin_username="adminuser",
///     admin_password="P@ssw0rd1234!",
///     disable_password_authentication=False,
///     network_interface_ids=[example_network_interface.id],
///     os_disk={
///         "caching": "ReadWrite",
///         "storage_account_type": "Standard_LRS",
///     },
///     source_image_reference={
///         "publisher": "Canonical",
///         "offer": "0001-com-ubuntu-server-jammy",
///         "sku": "22_04-lts",
///         "version": "latest",
///     })
/// example_network_manager_verifier_workspace_reachability_analysis_intent = azure.network.NetworkManagerVerifierWorkspaceReachabilityAnalysisIntent("example",
///     name="example-intent",
///     verifier_workspace_id=example_network_manager_verifier_workspace.id,
///     source_resource_id=example_linux_virtual_machine.id,
///     destination_resource_id=example_linux_virtual_machine.id,
///     description="example",
///     ip_traffic={
///         "source_ips": ["10.0.2.1"],
///         "source_ports": ["80"],
///         "destination_ips": ["10.0.2.2"],
///         "destination_ports": ["*"],
///         "protocols": ["Any"],
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
///         Name = "example-nm",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
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
///         },
///     });
///
///     var exampleNetworkManagerVerifierWorkspace = new Azure.Network.NetworkManagerVerifierWorkspace("example", new()
///     {
///         Name = "example",
///         NetworkManagerId = exampleNetworkManager.Id,
///         Location = example.Location,
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
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "internal",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.2.0/24",
///         },
///     });
///
///     var exampleNetworkInterface = new Azure.Network.NetworkInterface("example", new()
///     {
///         Name = "example-nic",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         IpConfigurations = new[]
///         {
///             new Azure.Network.Inputs.NetworkInterfaceIpConfigurationArgs
///             {
///                 Name = "internal",
///                 SubnetId = exampleSubnet.Id,
///                 PrivateIpAddressAllocation = "Dynamic",
///             },
///         },
///     });
///
///     var exampleLinuxVirtualMachine = new Azure.Compute.LinuxVirtualMachine("example", new()
///     {
///         Name = "example-machine",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Size = "Standard_B1ls",
///         AdminUsername = "adminuser",
///         AdminPassword = "P@ssw0rd1234!",
///         DisablePasswordAuthentication = false,
///         NetworkInterfaceIds = new[]
///         {
///             exampleNetworkInterface.Id,
///         },
///         OsDisk = new Azure.Compute.Inputs.LinuxVirtualMachineOsDiskArgs
///         {
///             Caching = "ReadWrite",
///             StorageAccountType = "Standard_LRS",
///         },
///         SourceImageReference = new Azure.Compute.Inputs.LinuxVirtualMachineSourceImageReferenceArgs
///         {
///             Publisher = "Canonical",
///             Offer = "0001-com-ubuntu-server-jammy",
///             Sku = "22_04-lts",
///             Version = "latest",
///         },
///     });
///
///     var exampleNetworkManagerVerifierWorkspaceReachabilityAnalysisIntent = new Azure.Network.NetworkManagerVerifierWorkspaceReachabilityAnalysisIntent("example", new()
///     {
///         Name = "example-intent",
///         VerifierWorkspaceId = exampleNetworkManagerVerifierWorkspace.Id,
///         SourceResourceId = exampleLinuxVirtualMachine.Id,
///         DestinationResourceId = exampleLinuxVirtualMachine.Id,
///         Description = "example",
///         IpTraffic = new Azure.Network.Inputs.NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentIpTrafficArgs
///         {
///             SourceIps = new[]
///             {
///                 "10.0.2.1",
///             },
///             SourcePorts = new[]
///             {
///                 "80",
///             },
///             DestinationIps = new[]
///             {
///                 "10.0.2.2",
///             },
///             DestinationPorts = new[]
///             {
///                 "*",
///             },
///             Protocols = new[]
///             {
///                 "Any",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
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
/// 			Name:              pulumi.String("example-nm"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Scope: &network.NetworkManagerScopeArgs{
/// 				SubscriptionIds: pulumi.StringArray{
/// 					pulumi.String(current.Id),
/// 				},
/// 			},
/// 			ScopeAccesses: pulumi.StringArray{
/// 				pulumi.String("Connectivity"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetworkManagerVerifierWorkspace, err := network.NewNetworkManagerVerifierWorkspace(ctx, "example", &network.NetworkManagerVerifierWorkspaceArgs{
/// 			Name:             pulumi.String("example"),
/// 			NetworkManagerId: exampleNetworkManager.ID(),
/// 			Location:         example.Location,
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
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("internal"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.2.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetworkInterface, err := network.NewNetworkInterface(ctx, "example", &network.NetworkInterfaceArgs{
/// 			Name:              pulumi.String("example-nic"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			IpConfigurations: network.NetworkInterfaceIpConfigurationArray{
/// 				&network.NetworkInterfaceIpConfigurationArgs{
/// 					Name:                       pulumi.String("internal"),
/// 					SubnetId:                   exampleSubnet.ID(),
/// 					PrivateIpAddressAllocation: pulumi.String("Dynamic"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLinuxVirtualMachine, err := compute.NewLinuxVirtualMachine(ctx, "example", &compute.LinuxVirtualMachineArgs{
/// 			Name:                          pulumi.String("example-machine"),
/// 			ResourceGroupName:             example.Name,
/// 			Location:                      example.Location,
/// 			Size:                          pulumi.String("Standard_B1ls"),
/// 			AdminUsername:                 pulumi.String("adminuser"),
/// 			AdminPassword:                 pulumi.String("P@ssw0rd1234!"),
/// 			DisablePasswordAuthentication: pulumi.Bool(false),
/// 			NetworkInterfaceIds: pulumi.StringArray{
/// 				exampleNetworkInterface.ID(),
/// 			},
/// 			OsDisk: &compute.LinuxVirtualMachineOsDiskArgs{
/// 				Caching:            pulumi.String("ReadWrite"),
/// 				StorageAccountType: pulumi.String("Standard_LRS"),
/// 			},
/// 			SourceImageReference: &compute.LinuxVirtualMachineSourceImageReferenceArgs{
/// 				Publisher: pulumi.String("Canonical"),
/// 				Offer:     pulumi.String("0001-com-ubuntu-server-jammy"),
/// 				Sku:       pulumi.String("22_04-lts"),
/// 				Version:   pulumi.String("latest"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewNetworkManagerVerifierWorkspaceReachabilityAnalysisIntent(ctx, "example", &network.NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentArgs{
/// 			Name:                  pulumi.String("example-intent"),
/// 			VerifierWorkspaceId:   exampleNetworkManagerVerifierWorkspace.ID(),
/// 			SourceResourceId:      exampleLinuxVirtualMachine.ID(),
/// 			DestinationResourceId: exampleLinuxVirtualMachine.ID(),
/// 			Description:           pulumi.String("example"),
/// 			IpTraffic: &network.NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentIpTrafficArgs{
/// 				SourceIps: pulumi.StringArray{
/// 					pulumi.String("10.0.2.1"),
/// 				},
/// 				SourcePorts: pulumi.StringArray{
/// 					pulumi.String("80"),
/// 				},
/// 				DestinationIps: pulumi.StringArray{
/// 					pulumi.String("10.0.2.2"),
/// 				},
/// 				DestinationPorts: pulumi.StringArray{
/// 					pulumi.String("*"),
/// 				},
/// 				Protocols: pulumi.StringArray{
/// 					pulumi.String("Any"),
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
/// import com.pulumi.azure.network.NetworkManagerVerifierWorkspace;
/// import com.pulumi.azure.network.NetworkManagerVerifierWorkspaceArgs;
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.network.NetworkInterface;
/// import com.pulumi.azure.network.NetworkInterfaceArgs;
/// import com.pulumi.azure.network.inputs.NetworkInterfaceIpConfigurationArgs;
/// import com.pulumi.azure.compute.LinuxVirtualMachine;
/// import com.pulumi.azure.compute.LinuxVirtualMachineArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineOsDiskArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineSourceImageReferenceArgs;
/// import com.pulumi.azure.network.NetworkManagerVerifierWorkspaceReachabilityAnalysisIntent;
/// import com.pulumi.azure.network.NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentArgs;
/// import com.pulumi.azure.network.inputs.NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentIpTrafficArgs;
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
///             .name("example-nm")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .scope(NetworkManagerScopeArgs.builder()
///                 .subscriptionIds(current.id())
///                 .build())
///             .scopeAccesses("Connectivity")
///             .build());
///
///         var exampleNetworkManagerVerifierWorkspace = new NetworkManagerVerifierWorkspace("exampleNetworkManagerVerifierWorkspace", NetworkManagerVerifierWorkspaceArgs.builder()
///             .name("example")
///             .networkManagerId(exampleNetworkManager.id())
///             .location(example.location())
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("example-network")
///             .addressSpaces("10.0.0.0/16")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("internal")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.2.0/24")
///             .build());
///
///         var exampleNetworkInterface = new NetworkInterface("exampleNetworkInterface", NetworkInterfaceArgs.builder()
///             .name("example-nic")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .ipConfigurations(NetworkInterfaceIpConfigurationArgs.builder()
///                 .name("internal")
///                 .subnetId(exampleSubnet.id())
///                 .privateIpAddressAllocation("Dynamic")
///                 .build())
///             .build());
///
///         var exampleLinuxVirtualMachine = new LinuxVirtualMachine("exampleLinuxVirtualMachine", LinuxVirtualMachineArgs.builder()
///             .name("example-machine")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .size("Standard_B1ls")
///             .adminUsername("adminuser")
///             .adminPassword("P@ssw0rd1234!")
///             .disablePasswordAuthentication(false)
///             .networkInterfaceIds(exampleNetworkInterface.id())
///             .osDisk(LinuxVirtualMachineOsDiskArgs.builder()
///                 .caching("ReadWrite")
///                 .storageAccountType("Standard_LRS")
///                 .build())
///             .sourceImageReference(LinuxVirtualMachineSourceImageReferenceArgs.builder()
///                 .publisher("Canonical")
///                 .offer("0001-com-ubuntu-server-jammy")
///                 .sku("22_04-lts")
///                 .version("latest")
///                 .build())
///             .build());
///
///         var exampleNetworkManagerVerifierWorkspaceReachabilityAnalysisIntent = new NetworkManagerVerifierWorkspaceReachabilityAnalysisIntent("exampleNetworkManagerVerifierWorkspaceReachabilityAnalysisIntent", NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentArgs.builder()
///             .name("example-intent")
///             .verifierWorkspaceId(exampleNetworkManagerVerifierWorkspace.id())
///             .sourceResourceId(exampleLinuxVirtualMachine.id())
///             .destinationResourceId(exampleLinuxVirtualMachine.id())
///             .description("example")
///             .ipTraffic(NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentIpTrafficArgs.builder()
///                 .sourceIps("10.0.2.1")
///                 .sourcePorts("80")
///                 .destinationIps("10.0.2.2")
///                 .destinationPorts("*")
///                 .protocols("Any")
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
///       name: example-nm
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       scope:
///         subscriptionIds:
///           - ${current.id}
///       scopeAccesses:
///         - Connectivity
///   exampleNetworkManagerVerifierWorkspace:
///     type: azure:network:NetworkManagerVerifierWorkspace
///     name: example
///     properties:
///       name: example
///       networkManagerId: ${exampleNetworkManager.id}
///       location: ${example.location}
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: example-network
///       addressSpaces:
///         - 10.0.0.0/16
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: internal
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.2.0/24
///   exampleNetworkInterface:
///     type: azure:network:NetworkInterface
///     name: example
///     properties:
///       name: example-nic
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       ipConfigurations:
///         - name: internal
///           subnetId: ${exampleSubnet.id}
///           privateIpAddressAllocation: Dynamic
///   exampleLinuxVirtualMachine:
///     type: azure:compute:LinuxVirtualMachine
///     name: example
///     properties:
///       name: example-machine
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       size: Standard_B1ls
///       adminUsername: adminuser
///       adminPassword: P@ssw0rd1234!
///       disablePasswordAuthentication: false
///       networkInterfaceIds:
///         - ${exampleNetworkInterface.id}
///       osDisk:
///         caching: ReadWrite
///         storageAccountType: Standard_LRS
///       sourceImageReference:
///         publisher: Canonical
///         offer: 0001-com-ubuntu-server-jammy
///         sku: 22_04-lts
///         version: latest
///   exampleNetworkManagerVerifierWorkspaceReachabilityAnalysisIntent:
///     type: azure:network:NetworkManagerVerifierWorkspaceReachabilityAnalysisIntent
///     name: example
///     properties:
///       name: example-intent
///       verifierWorkspaceId: ${exampleNetworkManagerVerifierWorkspace.id}
///       sourceResourceId: ${exampleLinuxVirtualMachine.id}
///       destinationResourceId: ${exampleLinuxVirtualMachine.id}
///       description: example
///       ipTraffic:
///         sourceIps:
///           - 10.0.2.1
///         sourcePorts:
///           - '80'
///         destinationIps:
///           - 10.0.2.2
///         destinationPorts:
///           - '*'
///         protocols:
///           - Any
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
/// Network Manager Verifier Workspace Reachability Analysis Intents can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/networkManagerVerifierWorkspaceReachabilityAnalysisIntent:NetworkManagerVerifierWorkspaceReachabilityAnalysisIntent example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/networkManagers/manager1/verifierWorkspaces/workspace1/reachabilityAnalysisIntents/intent1
/// ```
class NetworkManagerVerifierWorkspaceReachabilityAnalysisIntent extends pulumi.CustomResource {
  /// The description of the resource. Changing this forces a new Network Manager Verifier Workspace Reachability Analysis Intent to be created.
  late final pulumi.Output<String?> description;
  /// The ID of the destination resource. The value can be the ID of either Public internet, Cosmos DB, Storage Account, SQL Server, Virtual machines, or Subnet. Changing this forces a new Network Manager Verifier Workspace Reachability Analysis Intent to be created.
  late final pulumi.Output<String> destinationResourceId;
  /// An `ip_traffic` block as defined below. Changing this forces a new Network Manager Verifier Workspace Reachability Analysis Intent to be created.
  late final pulumi.Output<NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentIpTraffic> ipTraffic;
  /// The name which should be used for this Network Manager Verifier Workspace Reachability Analysis Intent. Changing this forces a new Network Manager Verifier Workspace Reachability Analysis Intent to be created.
  late final pulumi.Output<String> name;
  /// The ID of the source resource. The value can be the ID of either Public internet, Virtual machines, or Subnet. Changing this forces a new Network Manager Verifier Workspace Reachability Analysis Intent to be created.
  late final pulumi.Output<String> sourceResourceId;
  /// The ID of the Network Manager Verifier Workspace. Changing this forces a new Network Manager Verifier Workspace Reachability Analysis Intent to be created.
  late final pulumi.Output<String> verifierWorkspaceId;

  /// Creates a new [NetworkManagerVerifierWorkspaceReachabilityAnalysisIntent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkManagerVerifierWorkspaceReachabilityAnalysisIntent]. {@macro pulumi_network_network_manager_verifier_workspace_reachability_analysis_intent_network_manager_verifier_workspace_reachability_analysis_intent_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkManagerVerifierWorkspaceReachabilityAnalysisIntent(
    String name, {
    NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/networkManagerVerifierWorkspaceReachabilityAnalysisIntent:NetworkManagerVerifierWorkspaceReachabilityAnalysisIntent',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    destinationResourceId = registerOutput<String>('destinationResourceId');
    ipTraffic = registerOutput<NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentIpTraffic>('ipTraffic', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentIpTraffic.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    sourceResourceId = registerOutput<String>('sourceResourceId');
    verifierWorkspaceId = registerOutput<String>('verifierWorkspaceId');
  }

  /// Gets an existing [NetworkManagerVerifierWorkspaceReachabilityAnalysisIntent] resource's state with the given [name] and [id].
  static NetworkManagerVerifierWorkspaceReachabilityAnalysisIntent get(
    String name,
    pulumi.Input<String> id, {
    NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentState? state,
  }) {
    return NetworkManagerVerifierWorkspaceReachabilityAnalysisIntent._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkManagerVerifierWorkspaceReachabilityAnalysisIntent._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/networkManagerVerifierWorkspaceReachabilityAnalysisIntent:NetworkManagerVerifierWorkspaceReachabilityAnalysisIntent',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    destinationResourceId = registerOutput<String>('destinationResourceId');
    ipTraffic = registerOutput<NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentIpTraffic>('ipTraffic', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentIpTraffic.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    sourceResourceId = registerOutput<String>('sourceResourceId');
    verifierWorkspaceId = registerOutput<String>('verifierWorkspaceId');
  }
}
