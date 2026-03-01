import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_connection_monitor_args.dart';
import 'network_connection_monitor_endpoint.dart';
import 'network_connection_monitor_state.dart';
import 'network_connection_monitor_test_configuration.dart';
import 'network_connection_monitor_test_group.dart';

/// Manages a Network Connection Monitor.
///
/// > **NOTE:** Any Network Connection Monitor resource created with API versions 2019-06-01 or earlier (v1) are now incompatible with this provider, which now only supports v2.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-Watcher-resources",
///     location: "West Europe",
/// });
/// const exampleNetworkWatcher = new azure.network.NetworkWatcher("example", {
///     name: "example-Watcher",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "example-Vnet",
///     addressSpaces: ["10.0.0.0/16"],
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "example-Subnet",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.2.0/24"],
/// });
/// const exampleNetworkInterface = new azure.network.NetworkInterface("example", {
///     name: "example-Nic",
///     location: example.location,
///     resourceGroupName: example.name,
///     ipConfigurations: [{
///         name: "testconfiguration1",
///         subnetId: exampleSubnet.id,
///         privateIpAddressAllocation: "Dynamic",
///     }],
/// });
/// const exampleVirtualMachine = new azure.compute.VirtualMachine("example", {
///     name: "example-VM",
///     location: example.location,
///     resourceGroupName: example.name,
///     networkInterfaceIds: [exampleNetworkInterface.id],
///     vmSize: "Standard_D2s_v3",
///     storageImageReference: {
///         publisher: "Canonical",
///         offer: "0001-com-ubuntu-server-jammy",
///         sku: "22_04-lts",
///         version: "latest",
///     },
///     storageOsDisk: {
///         name: "osdisk-example01",
///         caching: "ReadWrite",
///         createOption: "FromImage",
///         managedDiskType: "Standard_LRS",
///     },
///     osProfile: {
///         computerName: "hostnametest01",
///         adminUsername: "testadmin",
///         adminPassword: "Password1234!",
///     },
///     osProfileLinuxConfig: {
///         disablePasswordAuthentication: false,
///     },
/// });
/// const exampleExtension = new azure.compute.Extension("example", {
///     name: "example-VMExtension",
///     virtualMachineId: exampleVirtualMachine.id,
///     publisher: "Microsoft.Azure.NetworkWatcher",
///     type: "NetworkWatcherAgentLinux",
///     typeHandlerVersion: "1.4",
///     autoUpgradeMinorVersion: true,
/// });
/// const exampleAnalyticsWorkspace = new azure.operationalinsights.AnalyticsWorkspace("example", {
///     name: "example-Workspace",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "PerGB2018",
/// });
/// const exampleNetworkConnectionMonitor = new azure.network.NetworkConnectionMonitor("example", {
///     name: "example-Monitor",
///     networkWatcherId: exampleNetworkWatcher.id,
///     location: exampleNetworkWatcher.location,
///     endpoints: [
///         {
///             name: "source",
///             targetResourceId: exampleVirtualMachine.id,
///             filter: {
///                 items: [{
///                     address: exampleVirtualMachine.id,
///                     type: "AgentAddress",
///                 }],
///                 type: "Include",
///             },
///         },
///         {
///             name: "destination",
///             address: "mycompany.io",
///         },
///     ],
///     testConfigurations: [{
///         name: "tcpName",
///         protocol: "Tcp",
///         testFrequencyInSeconds: 60,
///         tcpConfiguration: {
///             port: 80,
///         },
///     }],
///     testGroups: [{
///         name: "exampletg",
///         destinationEndpoints: ["destination"],
///         sourceEndpoints: ["source"],
///         testConfigurationNames: ["tcpName"],
///     }],
///     notes: "examplenote",
///     outputWorkspaceResourceIds: [exampleAnalyticsWorkspace.id],
/// }, {
///     dependsOn: [exampleExtension],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-Watcher-resources",
///     location="West Europe")
/// example_network_watcher = azure.network.NetworkWatcher("example",
///     name="example-Watcher",
///     location=example.location,
///     resource_group_name=example.name)
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="example-Vnet",
///     address_spaces=["10.0.0.0/16"],
///     location=example.location,
///     resource_group_name=example.name)
/// example_subnet = azure.network.Subnet("example",
///     name="example-Subnet",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.2.0/24"])
/// example_network_interface = azure.network.NetworkInterface("example",
///     name="example-Nic",
///     location=example.location,
///     resource_group_name=example.name,
///     ip_configurations=[{
///         "name": "testconfiguration1",
///         "subnet_id": example_subnet.id,
///         "private_ip_address_allocation": "Dynamic",
///     }])
/// example_virtual_machine = azure.compute.VirtualMachine("example",
///     name="example-VM",
///     location=example.location,
///     resource_group_name=example.name,
///     network_interface_ids=[example_network_interface.id],
///     vm_size="Standard_D2s_v3",
///     storage_image_reference={
///         "publisher": "Canonical",
///         "offer": "0001-com-ubuntu-server-jammy",
///         "sku": "22_04-lts",
///         "version": "latest",
///     },
///     storage_os_disk={
///         "name": "osdisk-example01",
///         "caching": "ReadWrite",
///         "create_option": "FromImage",
///         "managed_disk_type": "Standard_LRS",
///     },
///     os_profile={
///         "computer_name": "hostnametest01",
///         "admin_username": "testadmin",
///         "admin_password": "Password1234!",
///     },
///     os_profile_linux_config={
///         "disable_password_authentication": False,
///     })
/// example_extension = azure.compute.Extension("example",
///     name="example-VMExtension",
///     virtual_machine_id=example_virtual_machine.id,
///     publisher="Microsoft.Azure.NetworkWatcher",
///     type="NetworkWatcherAgentLinux",
///     type_handler_version="1.4",
///     auto_upgrade_minor_version=True)
/// example_analytics_workspace = azure.operationalinsights.AnalyticsWorkspace("example",
///     name="example-Workspace",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="PerGB2018")
/// example_network_connection_monitor = azure.network.NetworkConnectionMonitor("example",
///     name="example-Monitor",
///     network_watcher_id=example_network_watcher.id,
///     location=example_network_watcher.location,
///     endpoints=[
///         {
///             "name": "source",
///             "target_resource_id": example_virtual_machine.id,
///             "filter": {
///                 "items": [{
///                     "address": example_virtual_machine.id,
///                     "type": "AgentAddress",
///                 }],
///                 "type": "Include",
///             },
///         },
///         {
///             "name": "destination",
///             "address": "mycompany.io",
///         },
///     ],
///     test_configurations=[{
///         "name": "tcpName",
///         "protocol": "Tcp",
///         "test_frequency_in_seconds": 60,
///         "tcp_configuration": {
///             "port": 80,
///         },
///     }],
///     test_groups=[{
///         "name": "exampletg",
///         "destination_endpoints": ["destination"],
///         "source_endpoints": ["source"],
///         "test_configuration_names": ["tcpName"],
///     }],
///     notes="examplenote",
///     output_workspace_resource_ids=[example_analytics_workspace.id],
///     opts = pulumi.ResourceOptions(depends_on=[example_extension]))
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
///         Name = "example-Watcher-resources",
///         Location = "West Europe",
///     });
///
///     var exampleNetworkWatcher = new Azure.Network.NetworkWatcher("example", new()
///     {
///         Name = "example-Watcher",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "example-Vnet",
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
///         Name = "example-Subnet",
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
///         Name = "example-Nic",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         IpConfigurations = new[]
///         {
///             new Azure.Network.Inputs.NetworkInterfaceIpConfigurationArgs
///             {
///                 Name = "testconfiguration1",
///                 SubnetId = exampleSubnet.Id,
///                 PrivateIpAddressAllocation = "Dynamic",
///             },
///         },
///     });
///
///     var exampleVirtualMachine = new Azure.Compute.VirtualMachine("example", new()
///     {
///         Name = "example-VM",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         NetworkInterfaceIds = new[]
///         {
///             exampleNetworkInterface.Id,
///         },
///         VmSize = "Standard_D2s_v3",
///         StorageImageReference = new Azure.Compute.Inputs.VirtualMachineStorageImageReferenceArgs
///         {
///             Publisher = "Canonical",
///             Offer = "0001-com-ubuntu-server-jammy",
///             Sku = "22_04-lts",
///             Version = "latest",
///         },
///         StorageOsDisk = new Azure.Compute.Inputs.VirtualMachineStorageOsDiskArgs
///         {
///             Name = "osdisk-example01",
///             Caching = "ReadWrite",
///             CreateOption = "FromImage",
///             ManagedDiskType = "Standard_LRS",
///         },
///         OsProfile = new Azure.Compute.Inputs.VirtualMachineOsProfileArgs
///         {
///             ComputerName = "hostnametest01",
///             AdminUsername = "testadmin",
///             AdminPassword = "Password1234!",
///         },
///         OsProfileLinuxConfig = new Azure.Compute.Inputs.VirtualMachineOsProfileLinuxConfigArgs
///         {
///             DisablePasswordAuthentication = false,
///         },
///     });
///
///     var exampleExtension = new Azure.Compute.Extension("example", new()
///     {
///         Name = "example-VMExtension",
///         VirtualMachineId = exampleVirtualMachine.Id,
///         Publisher = "Microsoft.Azure.NetworkWatcher",
///         Type = "NetworkWatcherAgentLinux",
///         TypeHandlerVersion = "1.4",
///         AutoUpgradeMinorVersion = true,
///     });
///
///     var exampleAnalyticsWorkspace = new Azure.OperationalInsights.AnalyticsWorkspace("example", new()
///     {
///         Name = "example-Workspace",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "PerGB2018",
///     });
///
///     var exampleNetworkConnectionMonitor = new Azure.Network.NetworkConnectionMonitor("example", new()
///     {
///         Name = "example-Monitor",
///         NetworkWatcherId = exampleNetworkWatcher.Id,
///         Location = exampleNetworkWatcher.Location,
///         Endpoints = new[]
///         {
///             new Azure.Network.Inputs.NetworkConnectionMonitorEndpointArgs
///             {
///                 Name = "source",
///                 TargetResourceId = exampleVirtualMachine.Id,
///                 Filter = new Azure.Network.Inputs.NetworkConnectionMonitorEndpointFilterArgs
///                 {
///                     Items = new[]
///                     {
///                         new Azure.Network.Inputs.NetworkConnectionMonitorEndpointFilterItemArgs
///                         {
///                             Address = exampleVirtualMachine.Id,
///                             Type = "AgentAddress",
///                         },
///                     },
///                     Type = "Include",
///                 },
///             },
///             new Azure.Network.Inputs.NetworkConnectionMonitorEndpointArgs
///             {
///                 Name = "destination",
///                 Address = "mycompany.io",
///             },
///         },
///         TestConfigurations = new[]
///         {
///             new Azure.Network.Inputs.NetworkConnectionMonitorTestConfigurationArgs
///             {
///                 Name = "tcpName",
///                 Protocol = "Tcp",
///                 TestFrequencyInSeconds = 60,
///                 TcpConfiguration = new Azure.Network.Inputs.NetworkConnectionMonitorTestConfigurationTcpConfigurationArgs
///                 {
///                     Port = 80,
///                 },
///             },
///         },
///         TestGroups = new[]
///         {
///             new Azure.Network.Inputs.NetworkConnectionMonitorTestGroupArgs
///             {
///                 Name = "exampletg",
///                 DestinationEndpoints = new[]
///                 {
///                     "destination",
///                 },
///                 SourceEndpoints = new[]
///                 {
///                     "source",
///                 },
///                 TestConfigurationNames = new[]
///                 {
///                     "tcpName",
///                 },
///             },
///         },
///         Notes = "examplenote",
///         OutputWorkspaceResourceIds = new[]
///         {
///             exampleAnalyticsWorkspace.Id,
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleExtension,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/operationalinsights"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-Watcher-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetworkWatcher, err := network.NewNetworkWatcher(ctx, "example", &network.NetworkWatcherArgs{
/// 			Name:              pulumi.String("example-Watcher"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name: pulumi.String("example-Vnet"),
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
/// 			Name:               pulumi.String("example-Subnet"),
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
/// 			Name:              pulumi.String("example-Nic"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			IpConfigurations: network.NetworkInterfaceIpConfigurationArray{
/// 				&network.NetworkInterfaceIpConfigurationArgs{
/// 					Name:                       pulumi.String("testconfiguration1"),
/// 					SubnetId:                   exampleSubnet.ID(),
/// 					PrivateIpAddressAllocation: pulumi.String("Dynamic"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualMachine, err := compute.NewVirtualMachine(ctx, "example", &compute.VirtualMachineArgs{
/// 			Name:              pulumi.String("example-VM"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			NetworkInterfaceIds: pulumi.StringArray{
/// 				exampleNetworkInterface.ID(),
/// 			},
/// 			VmSize: pulumi.String("Standard_D2s_v3"),
/// 			StorageImageReference: &compute.VirtualMachineStorageImageReferenceArgs{
/// 				Publisher: pulumi.String("Canonical"),
/// 				Offer:     pulumi.String("0001-com-ubuntu-server-jammy"),
/// 				Sku:       pulumi.String("22_04-lts"),
/// 				Version:   pulumi.String("latest"),
/// 			},
/// 			StorageOsDisk: &compute.VirtualMachineStorageOsDiskArgs{
/// 				Name:            pulumi.String("osdisk-example01"),
/// 				Caching:         pulumi.String("ReadWrite"),
/// 				CreateOption:    pulumi.String("FromImage"),
/// 				ManagedDiskType: pulumi.String("Standard_LRS"),
/// 			},
/// 			OsProfile: &compute.VirtualMachineOsProfileArgs{
/// 				ComputerName:  pulumi.String("hostnametest01"),
/// 				AdminUsername: pulumi.String("testadmin"),
/// 				AdminPassword: pulumi.String("Password1234!"),
/// 			},
/// 			OsProfileLinuxConfig: &compute.VirtualMachineOsProfileLinuxConfigArgs{
/// 				DisablePasswordAuthentication: pulumi.Bool(false),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleExtension, err := compute.NewExtension(ctx, "example", &compute.ExtensionArgs{
/// 			Name:                    pulumi.String("example-VMExtension"),
/// 			VirtualMachineId:        exampleVirtualMachine.ID(),
/// 			Publisher:               pulumi.String("Microsoft.Azure.NetworkWatcher"),
/// 			Type:                    pulumi.String("NetworkWatcherAgentLinux"),
/// 			TypeHandlerVersion:      pulumi.String("1.4"),
/// 			AutoUpgradeMinorVersion: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAnalyticsWorkspace, err := operationalinsights.NewAnalyticsWorkspace(ctx, "example", &operationalinsights.AnalyticsWorkspaceArgs{
/// 			Name:              pulumi.String("example-Workspace"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("PerGB2018"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewNetworkConnectionMonitor(ctx, "example", &network.NetworkConnectionMonitorArgs{
/// 			Name:             pulumi.String("example-Monitor"),
/// 			NetworkWatcherId: exampleNetworkWatcher.ID(),
/// 			Location:         exampleNetworkWatcher.Location,
/// 			Endpoints: network.NetworkConnectionMonitorEndpointArray{
/// 				&network.NetworkConnectionMonitorEndpointArgs{
/// 					Name:             pulumi.String("source"),
/// 					TargetResourceId: exampleVirtualMachine.ID(),
/// 					Filter: &network.NetworkConnectionMonitorEndpointFilterArgs{
/// 						Items: network.NetworkConnectionMonitorEndpointFilterItemArray{
/// 							&network.NetworkConnectionMonitorEndpointFilterItemArgs{
/// 								Address: exampleVirtualMachine.ID(),
/// 								Type:    pulumi.String("AgentAddress"),
/// 							},
/// 						},
/// 						Type: pulumi.String("Include"),
/// 					},
/// 				},
/// 				&network.NetworkConnectionMonitorEndpointArgs{
/// 					Name:    pulumi.String("destination"),
/// 					Address: pulumi.String("mycompany.io"),
/// 				},
/// 			},
/// 			TestConfigurations: network.NetworkConnectionMonitorTestConfigurationArray{
/// 				&network.NetworkConnectionMonitorTestConfigurationArgs{
/// 					Name:                   pulumi.String("tcpName"),
/// 					Protocol:               pulumi.String("Tcp"),
/// 					TestFrequencyInSeconds: pulumi.Int(60),
/// 					TcpConfiguration: &network.NetworkConnectionMonitorTestConfigurationTcpConfigurationArgs{
/// 						Port: pulumi.Int(80),
/// 					},
/// 				},
/// 			},
/// 			TestGroups: network.NetworkConnectionMonitorTestGroupArray{
/// 				&network.NetworkConnectionMonitorTestGroupArgs{
/// 					Name: pulumi.String("exampletg"),
/// 					DestinationEndpoints: pulumi.StringArray{
/// 						pulumi.String("destination"),
/// 					},
/// 					SourceEndpoints: pulumi.StringArray{
/// 						pulumi.String("source"),
/// 					},
/// 					TestConfigurationNames: pulumi.StringArray{
/// 						pulumi.String("tcpName"),
/// 					},
/// 				},
/// 			},
/// 			Notes: pulumi.String("examplenote"),
/// 			OutputWorkspaceResourceIds: pulumi.StringArray{
/// 				exampleAnalyticsWorkspace.ID(),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleExtension,
/// 		}))
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
/// import com.pulumi.azure.network.NetworkWatcher;
/// import com.pulumi.azure.network.NetworkWatcherArgs;
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.network.NetworkInterface;
/// import com.pulumi.azure.network.NetworkInterfaceArgs;
/// import com.pulumi.azure.network.inputs.NetworkInterfaceIpConfigurationArgs;
/// import com.pulumi.azure.compute.VirtualMachine;
/// import com.pulumi.azure.compute.VirtualMachineArgs;
/// import com.pulumi.azure.compute.inputs.VirtualMachineStorageImageReferenceArgs;
/// import com.pulumi.azure.compute.inputs.VirtualMachineStorageOsDiskArgs;
/// import com.pulumi.azure.compute.inputs.VirtualMachineOsProfileArgs;
/// import com.pulumi.azure.compute.inputs.VirtualMachineOsProfileLinuxConfigArgs;
/// import com.pulumi.azure.compute.Extension;
/// import com.pulumi.azure.compute.ExtensionArgs;
/// import com.pulumi.azure.operationalinsights.AnalyticsWorkspace;
/// import com.pulumi.azure.operationalinsights.AnalyticsWorkspaceArgs;
/// import com.pulumi.azure.network.NetworkConnectionMonitor;
/// import com.pulumi.azure.network.NetworkConnectionMonitorArgs;
/// import com.pulumi.azure.network.inputs.NetworkConnectionMonitorEndpointArgs;
/// import com.pulumi.azure.network.inputs.NetworkConnectionMonitorEndpointFilterArgs;
/// import com.pulumi.azure.network.inputs.NetworkConnectionMonitorTestConfigurationArgs;
/// import com.pulumi.azure.network.inputs.NetworkConnectionMonitorTestConfigurationTcpConfigurationArgs;
/// import com.pulumi.azure.network.inputs.NetworkConnectionMonitorTestGroupArgs;
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
///             .name("example-Watcher-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleNetworkWatcher = new NetworkWatcher("exampleNetworkWatcher", NetworkWatcherArgs.builder()
///             .name("example-Watcher")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("example-Vnet")
///             .addressSpaces("10.0.0.0/16")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("example-Subnet")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.2.0/24")
///             .build());
///
///         var exampleNetworkInterface = new NetworkInterface("exampleNetworkInterface", NetworkInterfaceArgs.builder()
///             .name("example-Nic")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .ipConfigurations(NetworkInterfaceIpConfigurationArgs.builder()
///                 .name("testconfiguration1")
///                 .subnetId(exampleSubnet.id())
///                 .privateIpAddressAllocation("Dynamic")
///                 .build())
///             .build());
///
///         var exampleVirtualMachine = new VirtualMachine("exampleVirtualMachine", VirtualMachineArgs.builder()
///             .name("example-VM")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .networkInterfaceIds(exampleNetworkInterface.id())
///             .vmSize("Standard_D2s_v3")
///             .storageImageReference(VirtualMachineStorageImageReferenceArgs.builder()
///                 .publisher("Canonical")
///                 .offer("0001-com-ubuntu-server-jammy")
///                 .sku("22_04-lts")
///                 .version("latest")
///                 .build())
///             .storageOsDisk(VirtualMachineStorageOsDiskArgs.builder()
///                 .name("osdisk-example01")
///                 .caching("ReadWrite")
///                 .createOption("FromImage")
///                 .managedDiskType("Standard_LRS")
///                 .build())
///             .osProfile(VirtualMachineOsProfileArgs.builder()
///                 .computerName("hostnametest01")
///                 .adminUsername("testadmin")
///                 .adminPassword("Password1234!")
///                 .build())
///             .osProfileLinuxConfig(VirtualMachineOsProfileLinuxConfigArgs.builder()
///                 .disablePasswordAuthentication(false)
///                 .build())
///             .build());
///
///         var exampleExtension = new Extension("exampleExtension", ExtensionArgs.builder()
///             .name("example-VMExtension")
///             .virtualMachineId(exampleVirtualMachine.id())
///             .publisher("Microsoft.Azure.NetworkWatcher")
///             .type("NetworkWatcherAgentLinux")
///             .typeHandlerVersion("1.4")
///             .autoUpgradeMinorVersion(true)
///             .build());
///
///         var exampleAnalyticsWorkspace = new AnalyticsWorkspace("exampleAnalyticsWorkspace", AnalyticsWorkspaceArgs.builder()
///             .name("example-Workspace")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("PerGB2018")
///             .build());
///
///         var exampleNetworkConnectionMonitor = new NetworkConnectionMonitor("exampleNetworkConnectionMonitor", NetworkConnectionMonitorArgs.builder()
///             .name("example-Monitor")
///             .networkWatcherId(exampleNetworkWatcher.id())
///             .location(exampleNetworkWatcher.location())
///             .endpoints(
///                 NetworkConnectionMonitorEndpointArgs.builder()
///                     .name("source")
///                     .targetResourceId(exampleVirtualMachine.id())
///                     .filter(NetworkConnectionMonitorEndpointFilterArgs.builder()
///                         .items(NetworkConnectionMonitorEndpointFilterItemArgs.builder()
///                             .address(exampleVirtualMachine.id())
///                             .type("AgentAddress")
///                             .build())
///                         .type("Include")
///                         .build())
///                     .build(),
///                 NetworkConnectionMonitorEndpointArgs.builder()
///                     .name("destination")
///                     .address("mycompany.io")
///                     .build())
///             .testConfigurations(NetworkConnectionMonitorTestConfigurationArgs.builder()
///                 .name("tcpName")
///                 .protocol("Tcp")
///                 .testFrequencyInSeconds(60)
///                 .tcpConfiguration(NetworkConnectionMonitorTestConfigurationTcpConfigurationArgs.builder()
///                     .port(80)
///                     .build())
///                 .build())
///             .testGroups(NetworkConnectionMonitorTestGroupArgs.builder()
///                 .name("exampletg")
///                 .destinationEndpoints("destination")
///                 .sourceEndpoints("source")
///                 .testConfigurationNames("tcpName")
///                 .build())
///             .notes("examplenote")
///             .outputWorkspaceResourceIds(exampleAnalyticsWorkspace.id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleExtension)
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
///       name: example-Watcher-resources
///       location: West Europe
///   exampleNetworkWatcher:
///     type: azure:network:NetworkWatcher
///     name: example
///     properties:
///       name: example-Watcher
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: example-Vnet
///       addressSpaces:
///         - 10.0.0.0/16
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: example-Subnet
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.2.0/24
///   exampleNetworkInterface:
///     type: azure:network:NetworkInterface
///     name: example
///     properties:
///       name: example-Nic
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       ipConfigurations:
///         - name: testconfiguration1
///           subnetId: ${exampleSubnet.id}
///           privateIpAddressAllocation: Dynamic
///   exampleVirtualMachine:
///     type: azure:compute:VirtualMachine
///     name: example
///     properties:
///       name: example-VM
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       networkInterfaceIds:
///         - ${exampleNetworkInterface.id}
///       vmSize: Standard_D2s_v3
///       storageImageReference:
///         publisher: Canonical
///         offer: 0001-com-ubuntu-server-jammy
///         sku: 22_04-lts
///         version: latest
///       storageOsDisk:
///         name: osdisk-example01
///         caching: ReadWrite
///         createOption: FromImage
///         managedDiskType: Standard_LRS
///       osProfile:
///         computerName: hostnametest01
///         adminUsername: testadmin
///         adminPassword: Password1234!
///       osProfileLinuxConfig:
///         disablePasswordAuthentication: false
///   exampleExtension:
///     type: azure:compute:Extension
///     name: example
///     properties:
///       name: example-VMExtension
///       virtualMachineId: ${exampleVirtualMachine.id}
///       publisher: Microsoft.Azure.NetworkWatcher
///       type: NetworkWatcherAgentLinux
///       typeHandlerVersion: '1.4'
///       autoUpgradeMinorVersion: true
///   exampleAnalyticsWorkspace:
///     type: azure:operationalinsights:AnalyticsWorkspace
///     name: example
///     properties:
///       name: example-Workspace
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: PerGB2018
///   exampleNetworkConnectionMonitor:
///     type: azure:network:NetworkConnectionMonitor
///     name: example
///     properties:
///       name: example-Monitor
///       networkWatcherId: ${exampleNetworkWatcher.id}
///       location: ${exampleNetworkWatcher.location}
///       endpoints:
///         - name: source
///           targetResourceId: ${exampleVirtualMachine.id}
///           filter:
///             items:
///               - address: ${exampleVirtualMachine.id}
///                 type: AgentAddress
///             type: Include
///         - name: destination
///           address: mycompany.io
///       testConfigurations:
///         - name: tcpName
///           protocol: Tcp
///           testFrequencyInSeconds: 60
///           tcpConfiguration:
///             port: 80
///       testGroups:
///         - name: exampletg
///           destinationEndpoints:
///             - destination
///           sourceEndpoints:
///             - source
///           testConfigurationNames:
///             - tcpName
///       notes: examplenote
///       outputWorkspaceResourceIds:
///         - ${exampleAnalyticsWorkspace.id}
///     options:
///       dependsOn:
///         - ${exampleExtension}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
///
/// ## Import
///
/// Network Connection Monitors can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/networkConnectionMonitor:NetworkConnectionMonitor example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Network/networkWatchers/watcher1/connectionMonitors/connectionMonitor1
/// ```
class NetworkConnectionMonitor extends pulumi.CustomResource {
  /// A `endpoint` block as defined below.
  late final pulumi.Output<List<NetworkConnectionMonitorEndpoint>> endpoints;
  /// The Azure Region where the Network Connection Monitor should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name which should be used for this Network Connection Monitor. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The ID of the Network Watcher. Changing this forces a new resource to be created.
  late final pulumi.Output<String> networkWatcherId;
  /// The description of the Network Connection Monitor.
  late final pulumi.Output<String?> notes;
  /// A list of IDs of the Log Analytics Workspace which will accept the output from the Network Connection Monitor.
  late final pulumi.Output<List<String>?> outputWorkspaceResourceIds;
  /// A mapping of tags which should be assigned to the Network Connection Monitor.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A `test_configuration` block as defined below.
  late final pulumi.Output<List<NetworkConnectionMonitorTestConfiguration>> testConfigurations;
  /// A `test_group` block as defined below.
  late final pulumi.Output<List<NetworkConnectionMonitorTestGroup>> testGroups;

  /// Creates a new [NetworkConnectionMonitor].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkConnectionMonitor]. {@macro pulumi_network_network_connection_monitor_network_connection_monitor_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkConnectionMonitor(
    String name, {
    NetworkConnectionMonitorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/networkConnectionMonitor:NetworkConnectionMonitor',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.endpoints = registerOutput<List<NetworkConnectionMonitorEndpoint>>('endpoints');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.networkWatcherId = registerOutput<String>('networkWatcherId');
    this.notes = registerOutput<String?>('notes');
    this.outputWorkspaceResourceIds = registerOutput<List<String>?>('outputWorkspaceResourceIds');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.testConfigurations = registerOutput<List<NetworkConnectionMonitorTestConfiguration>>('testConfigurations');
    this.testGroups = registerOutput<List<NetworkConnectionMonitorTestGroup>>('testGroups');
  }

  /// Gets an existing [NetworkConnectionMonitor] resource's state with the given [name] and [id].
  static NetworkConnectionMonitor get(
    String name,
    pulumi.Input<String> id, {
    NetworkConnectionMonitorState? state,
  }) {
    return NetworkConnectionMonitor._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkConnectionMonitor._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/networkConnectionMonitor:NetworkConnectionMonitor',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.endpoints = registerOutput<List<NetworkConnectionMonitorEndpoint>>('endpoints');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.networkWatcherId = registerOutput<String>('networkWatcherId');
    this.notes = registerOutput<String?>('notes');
    this.outputWorkspaceResourceIds = registerOutput<List<String>?>('outputWorkspaceResourceIds');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.testConfigurations = registerOutput<List<NetworkConnectionMonitorTestConfiguration>>('testConfigurations');
    this.testGroups = registerOutput<List<NetworkConnectionMonitorTestGroup>>('testGroups');
  }
}
