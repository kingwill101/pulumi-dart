import 'package:pulumi/pulumi.dart' as pulumi;
import 'packet_capture_args.dart';
import 'packet_capture_filter.dart';
import 'packet_capture_state.dart';
import 'packet_capture_storage_location.dart';

/// Configures Network Packet Capturing against a Virtual Machine using a Network Watcher.
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
/// const exampleNetworkWatcher = new azure.network.NetworkWatcher("example", {
///     name: "example-nw",
///     location: example.location,
///     resourceGroupName: example.name,
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
///         name: "testconfiguration1",
///         subnetId: exampleSubnet.id,
///         privateIpAddressAllocation: "Dynamic",
///     }],
/// });
/// const exampleVirtualMachine = new azure.compute.VirtualMachine("example", {
///     name: "example-vm",
///     location: example.location,
///     resourceGroupName: example.name,
///     networkInterfaceIds: [exampleNetworkInterface.id],
///     vmSize: "Standard_D4_v5",
///     storageImageReference: {
///         publisher: "Canonical",
///         offer: "0001-com-ubuntu-server-jammy",
///         sku: "22_04-lts",
///         version: "latest",
///     },
///     storageOsDisk: {
///         name: "osdisk",
///         caching: "ReadWrite",
///         createOption: "FromImage",
///         managedDiskType: "Standard_LRS",
///     },
///     osProfile: {
///         computerName: "pctest-vm",
///         adminUsername: "testadmin",
///         adminPassword: "Password1234!",
///     },
///     osProfileLinuxConfig: {
///         disablePasswordAuthentication: false,
///     },
/// });
/// const exampleExtension = new azure.compute.Extension("example", {
///     name: "network-watcher",
///     virtualMachineId: exampleVirtualMachine.id,
///     publisher: "Microsoft.Azure.NetworkWatcher",
///     type: "NetworkWatcherAgentLinux",
///     typeHandlerVersion: "1.4",
///     autoUpgradeMinorVersion: true,
/// });
/// const exampleAccount = new azure.storage.Account("example", {
///     name: "examplesa",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const examplePacketCapture = new azure.compute.PacketCapture("example", {
///     name: "example-pc",
///     networkWatcherId: exampleNetworkWatcher.id,
///     virtualMachineId: exampleVirtualMachine.id,
///     storageLocation: {
///         storageAccountId: exampleAccount.id,
///     },
/// }, {
///     dependsOn: [exampleExtension],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_network_watcher = azure.network.NetworkWatcher("example",
///     name="example-nw",
///     location=example.location,
///     resource_group_name=example.name)
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
///         "name": "testconfiguration1",
///         "subnet_id": example_subnet.id,
///         "private_ip_address_allocation": "Dynamic",
///     }])
/// example_virtual_machine = azure.compute.VirtualMachine("example",
///     name="example-vm",
///     location=example.location,
///     resource_group_name=example.name,
///     network_interface_ids=[example_network_interface.id],
///     vm_size="Standard_D4_v5",
///     storage_image_reference={
///         "publisher": "Canonical",
///         "offer": "0001-com-ubuntu-server-jammy",
///         "sku": "22_04-lts",
///         "version": "latest",
///     },
///     storage_os_disk={
///         "name": "osdisk",
///         "caching": "ReadWrite",
///         "create_option": "FromImage",
///         "managed_disk_type": "Standard_LRS",
///     },
///     os_profile={
///         "computer_name": "pctest-vm",
///         "admin_username": "testadmin",
///         "admin_password": "Password1234!",
///     },
///     os_profile_linux_config={
///         "disable_password_authentication": False,
///     })
/// example_extension = azure.compute.Extension("example",
///     name="network-watcher",
///     virtual_machine_id=example_virtual_machine.id,
///     publisher="Microsoft.Azure.NetworkWatcher",
///     type="NetworkWatcherAgentLinux",
///     type_handler_version="1.4",
///     auto_upgrade_minor_version=True)
/// example_account = azure.storage.Account("example",
///     name="examplesa",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// example_packet_capture = azure.compute.PacketCapture("example",
///     name="example-pc",
///     network_watcher_id=example_network_watcher.id,
///     virtual_machine_id=example_virtual_machine.id,
///     storage_location={
///         "storage_account_id": example_account.id,
///     },
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
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleNetworkWatcher = new Azure.Network.NetworkWatcher("example", new()
///     {
///         Name = "example-nw",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
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
///                 Name = "testconfiguration1",
///                 SubnetId = exampleSubnet.Id,
///                 PrivateIpAddressAllocation = "Dynamic",
///             },
///         },
///     });
///
///     var exampleVirtualMachine = new Azure.Compute.VirtualMachine("example", new()
///     {
///         Name = "example-vm",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         NetworkInterfaceIds = new[]
///         {
///             exampleNetworkInterface.Id,
///         },
///         VmSize = "Standard_D4_v5",
///         StorageImageReference = new Azure.Compute.Inputs.VirtualMachineStorageImageReferenceArgs
///         {
///             Publisher = "Canonical",
///             Offer = "0001-com-ubuntu-server-jammy",
///             Sku = "22_04-lts",
///             Version = "latest",
///         },
///         StorageOsDisk = new Azure.Compute.Inputs.VirtualMachineStorageOsDiskArgs
///         {
///             Name = "osdisk",
///             Caching = "ReadWrite",
///             CreateOption = "FromImage",
///             ManagedDiskType = "Standard_LRS",
///         },
///         OsProfile = new Azure.Compute.Inputs.VirtualMachineOsProfileArgs
///         {
///             ComputerName = "pctest-vm",
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
///         Name = "network-watcher",
///         VirtualMachineId = exampleVirtualMachine.Id,
///         Publisher = "Microsoft.Azure.NetworkWatcher",
///         Type = "NetworkWatcherAgentLinux",
///         TypeHandlerVersion = "1.4",
///         AutoUpgradeMinorVersion = true,
///     });
///
///     var exampleAccount = new Azure.Storage.Account("example", new()
///     {
///         Name = "examplesa",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var examplePacketCapture = new Azure.Compute.PacketCapture("example", new()
///     {
///         Name = "example-pc",
///         NetworkWatcherId = exampleNetworkWatcher.Id,
///         VirtualMachineId = exampleVirtualMachine.Id,
///         StorageLocation = new Azure.Compute.Inputs.PacketCaptureStorageLocationArgs
///         {
///             StorageAccountId = exampleAccount.Id,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
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
/// 		exampleNetworkWatcher, err := network.NewNetworkWatcher(ctx, "example", &network.NetworkWatcherArgs{
/// 			Name:              pulumi.String("example-nw"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
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
/// 					Name:                       pulumi.String("testconfiguration1"),
/// 					SubnetId:                   exampleSubnet.ID().ToIDOutput().ToStringOutput(),
/// 					PrivateIpAddressAllocation: pulumi.String("Dynamic"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualMachine, err := compute.NewVirtualMachine(ctx, "example", &compute.VirtualMachineArgs{
/// 			Name:              pulumi.String("example-vm"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			NetworkInterfaceIds: pulumi.StringArray{
/// 				exampleNetworkInterface.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			VmSize: pulumi.String("Standard_D4_v5"),
/// 			StorageImageReference: &compute.VirtualMachineStorageImageReferenceArgs{
/// 				Publisher: pulumi.String("Canonical"),
/// 				Offer:     pulumi.String("0001-com-ubuntu-server-jammy"),
/// 				Sku:       pulumi.String("22_04-lts"),
/// 				Version:   pulumi.String("latest"),
/// 			},
/// 			StorageOsDisk: &compute.VirtualMachineStorageOsDiskArgs{
/// 				Name:            pulumi.String("osdisk"),
/// 				Caching:         pulumi.String("ReadWrite"),
/// 				CreateOption:    pulumi.String("FromImage"),
/// 				ManagedDiskType: pulumi.String("Standard_LRS"),
/// 			},
/// 			OsProfile: &compute.VirtualMachineOsProfileArgs{
/// 				ComputerName:  pulumi.String("pctest-vm"),
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
/// 			Name:                    pulumi.String("network-watcher"),
/// 			VirtualMachineId:        exampleVirtualMachine.ID().ToIDOutput().ToStringOutput(),
/// 			Publisher:               pulumi.String("Microsoft.Azure.NetworkWatcher"),
/// 			Type:                    pulumi.String("NetworkWatcherAgentLinux"),
/// 			TypeHandlerVersion:      pulumi.String("1.4"),
/// 			AutoUpgradeMinorVersion: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := storage.NewAccount(ctx, "example", &storage.AccountArgs{
/// 			Name:                   pulumi.String("examplesa"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewPacketCapture(ctx, "example", &compute.PacketCaptureArgs{
/// 			Name:             pulumi.String("example-pc"),
/// 			NetworkWatcherId: exampleNetworkWatcher.ID().ToIDOutput().ToStringOutput(),
/// 			VirtualMachineId: exampleVirtualMachine.ID().ToIDOutput().ToStringOutput(),
/// 			StorageLocation: &compute.PacketCaptureStorageLocationArgs{
/// 				StorageAccountId: exampleAccount.ID().ToIDOutput().ToStringOutput(),
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
/// resource "azure_network_networkwatcher" "example" {
///   name                = "example-nw"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_network_virtualnetwork" "example" {
///   name                = "example-network"
///   address_spaces      = ["10.0.0.0/16"]
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_network_subnet" "example" {
///   name                 = "internal"
///   resource_group_name  = azure_core_resourcegroup.example.name
///   virtual_network_name = azure_network_virtualnetwork.example.name
///   address_prefixes     = ["10.0.2.0/24"]
/// }
/// resource "azure_network_networkinterface" "example" {
///   name                = "example-nic"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   ip_configurations {
///     name                          = "testconfiguration1"
///     subnet_id                     = azure_network_subnet.example.id
///     private_ip_address_allocation = "Dynamic"
///   }
/// }
/// resource "azure_compute_virtualmachine" "example" {
///   name                  = "example-vm"
///   location              = azure_core_resourcegroup.example.location
///   resource_group_name   = azure_core_resourcegroup.example.name
///   network_interface_ids = [azure_network_networkinterface.example.id]
///   vm_size               = "Standard_D4_v5"
///   storage_image_reference = {
///     publisher = "Canonical"
///     offer     = "0001-com-ubuntu-server-jammy"
///     sku       = "22_04-lts"
///     version   = "latest"
///   }
///   storage_os_disk = {
///     name              = "osdisk"
///     caching           = "ReadWrite"
///     create_option     = "FromImage"
///     managed_disk_type = "Standard_LRS"
///   }
///   os_profile = {
///     computer_name  = "pctest-vm"
///     admin_username = "testadmin"
///     admin_password = "Password1234!"
///   }
///   os_profile_linux_config = {
///     disable_password_authentication = false
///   }
/// }
/// resource "azure_compute_extension" "example" {
///   name                       = "network-watcher"
///   virtual_machine_id         = azure_compute_virtualmachine.example.id
///   publisher                  = "Microsoft.Azure.NetworkWatcher"
///   type                       = "NetworkWatcherAgentLinux"
///   type_handler_version       = "1.4"
///   auto_upgrade_minor_version = true
/// }
/// resource "azure_storage_account" "example" {
///   name                     = "examplesa"
///   resource_group_name      = azure_core_resourcegroup.example.name
///   location                 = azure_core_resourcegroup.example.location
///   account_tier             = "Standard"
///   account_replication_type = "LRS"
/// }
/// resource "azure_compute_packetcapture" "example" {
///   depends_on         = [azure_compute_extension.example]
///   name               = "example-pc"
///   network_watcher_id = azure_network_networkwatcher.example.id
///   virtual_machine_id = azure_compute_virtualmachine.example.id
///   storage_location = {
///     storage_account_id = azure_storage_account.example.id
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
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.compute.PacketCapture;
/// import com.pulumi.azure.compute.PacketCaptureArgs;
/// import com.pulumi.azure.compute.inputs.PacketCaptureStorageLocationArgs;
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
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleNetworkWatcher = new NetworkWatcher("exampleNetworkWatcher", NetworkWatcherArgs.builder()
///             .name("example-nw")
///             .location(example.location())
///             .resourceGroupName(example.name())
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
///                 .name("testconfiguration1")
///                 .subnetId(exampleSubnet.id())
///                 .privateIpAddressAllocation("Dynamic")
///                 .build())
///             .build());
///
///         var exampleVirtualMachine = new VirtualMachine("exampleVirtualMachine", VirtualMachineArgs.builder()
///             .name("example-vm")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .networkInterfaceIds(exampleNetworkInterface.id())
///             .vmSize("Standard_D4_v5")
///             .storageImageReference(VirtualMachineStorageImageReferenceArgs.builder()
///                 .publisher("Canonical")
///                 .offer("0001-com-ubuntu-server-jammy")
///                 .sku("22_04-lts")
///                 .version("latest")
///                 .build())
///             .storageOsDisk(VirtualMachineStorageOsDiskArgs.builder()
///                 .name("osdisk")
///                 .caching("ReadWrite")
///                 .createOption("FromImage")
///                 .managedDiskType("Standard_LRS")
///                 .build())
///             .osProfile(VirtualMachineOsProfileArgs.builder()
///                 .computerName("pctest-vm")
///                 .adminUsername("testadmin")
///                 .adminPassword("Password1234!")
///                 .build())
///             .osProfileLinuxConfig(VirtualMachineOsProfileLinuxConfigArgs.builder()
///                 .disablePasswordAuthentication(false)
///                 .build())
///             .build());
///
///         var exampleExtension = new Extension("exampleExtension", ExtensionArgs.builder()
///             .name("network-watcher")
///             .virtualMachineId(exampleVirtualMachine.id())
///             .publisher("Microsoft.Azure.NetworkWatcher")
///             .type("NetworkWatcherAgentLinux")
///             .typeHandlerVersion("1.4")
///             .autoUpgradeMinorVersion(true)
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("examplesa")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var examplePacketCapture = new PacketCapture("examplePacketCapture", PacketCaptureArgs.builder()
///             .name("example-pc")
///             .networkWatcherId(exampleNetworkWatcher.id())
///             .virtualMachineId(exampleVirtualMachine.id())
///             .storageLocation(PacketCaptureStorageLocationArgs.builder()
///                 .storageAccountId(exampleAccount.id())
///                 .build())
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
///       name: example-resources
///       location: West Europe
///   exampleNetworkWatcher:
///     type: azure:network:NetworkWatcher
///     name: example
///     properties:
///       name: example-nw
///       location: ${example.location}
///       resourceGroupName: ${example.name}
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
///         - name: testconfiguration1
///           subnetId: ${exampleSubnet.id}
///           privateIpAddressAllocation: Dynamic
///   exampleVirtualMachine:
///     type: azure:compute:VirtualMachine
///     name: example
///     properties:
///       name: example-vm
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       networkInterfaceIds:
///         - ${exampleNetworkInterface.id}
///       vmSize: Standard_D4_v5
///       storageImageReference:
///         publisher: Canonical
///         offer: 0001-com-ubuntu-server-jammy
///         sku: 22_04-lts
///         version: latest
///       storageOsDisk:
///         name: osdisk
///         caching: ReadWrite
///         createOption: FromImage
///         managedDiskType: Standard_LRS
///       osProfile:
///         computerName: pctest-vm
///         adminUsername: testadmin
///         adminPassword: Password1234!
///       osProfileLinuxConfig:
///         disablePasswordAuthentication: false
///   exampleExtension:
///     type: azure:compute:Extension
///     name: example
///     properties:
///       name: network-watcher
///       virtualMachineId: ${exampleVirtualMachine.id}
///       publisher: Microsoft.Azure.NetworkWatcher
///       type: NetworkWatcherAgentLinux
///       typeHandlerVersion: '1.4'
///       autoUpgradeMinorVersion: true
///   exampleAccount:
///     type: azure:storage:Account
///     name: example
///     properties:
///       name: examplesa
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   examplePacketCapture:
///     type: azure:compute:PacketCapture
///     name: example
///     properties:
///       name: example-pc
///       networkWatcherId: ${exampleNetworkWatcher.id}
///       virtualMachineId: ${exampleVirtualMachine.id}
///       storageLocation:
///         storageAccountId: ${exampleAccount.id}
///     options:
///       dependsOn:
///         - ${exampleExtension}
/// ```
///
///
/// &gt; **Note:** This Resource requires that [the Network Watcher Virtual Machine Extension](https://docs.microsoft.com/azure/network-watcher/network-watcher-packet-capture-manage-portal#before-you-begin) is installed on the Virtual Machine before capturing can be enabled which can be installed via the `azure.compute.Extension` resource.
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
/// Virtual Machine Packet Captures can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:compute/packetCapture:PacketCapture capture1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/networkWatchers/watcher1/packetCaptures/capture1
/// ```
class PacketCapture extends pulumi.CustomResource {
  /// One or more `filter` blocks as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<List<PacketCaptureFilter>?> filters;
  /// The number of bytes captured per packet. The remaining bytes are truncated. Defaults to `0` (Entire Packet Captured). Changing this forces a new resource to be created.
  late final pulumi.Output<int?> maximumBytesPerPacket;
  /// Maximum size of the capture in Bytes. Defaults to `1073741824` (1GB). Changing this forces a new resource to be created.
  late final pulumi.Output<int?> maximumBytesPerSession;
  /// The maximum duration of the capture session in seconds. Defaults to `18000` (5 hours). Changing this forces a new resource to be created.
  late final pulumi.Output<int?> maximumCaptureDurationInSeconds;
  /// The name to use for this Network Packet Capture. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The resource ID of the Network Watcher. Changing this forces a new resource to be created.
  late final pulumi.Output<String> networkWatcherId;
  /// A `storageLocation` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<PacketCaptureStorageLocation> storageLocation;
  /// The resource ID of the target Virtual Machine to capture packets from. Changing this forces a new resource to be created.
  late final pulumi.Output<String> virtualMachineId;

  /// Creates a new [PacketCapture].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PacketCapture]. {@macro pulumi_compute_packet_capture_packet_capture_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PacketCapture(
    String name, {
    PacketCaptureArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:compute/packetCapture:PacketCapture',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    filters = registerOutput<List<PacketCaptureFilter>?>('filters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PacketCaptureFilter>(guardedValue, (value) => PacketCaptureFilter.fromMap((value as Map).cast<String, dynamic>())); });
    maximumBytesPerPacket = registerOutput<int?>('maximumBytesPerPacket');
    maximumBytesPerSession = registerOutput<int?>('maximumBytesPerSession');
    maximumCaptureDurationInSeconds = registerOutput<int?>('maximumCaptureDurationInSeconds');
    this.name = registerOutput<String>('name');
    networkWatcherId = registerOutput<String>('networkWatcherId');
    storageLocation = registerOutput<PacketCaptureStorageLocation>('storageLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PacketCaptureStorageLocation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    virtualMachineId = registerOutput<String>('virtualMachineId');
  }

  /// Gets an existing [PacketCapture] resource's state with the given [name] and [id].
  static PacketCapture get(
    String name,
    pulumi.Input<String> id, {
    PacketCaptureState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return PacketCapture._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  PacketCapture._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:compute/packetCapture:PacketCapture',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    filters = registerOutput<List<PacketCaptureFilter>?>('filters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PacketCaptureFilter>(guardedValue, (value) => PacketCaptureFilter.fromMap((value as Map).cast<String, dynamic>())); });
    maximumBytesPerPacket = registerOutput<int?>('maximumBytesPerPacket');
    maximumBytesPerSession = registerOutput<int?>('maximumBytesPerSession');
    maximumCaptureDurationInSeconds = registerOutput<int?>('maximumCaptureDurationInSeconds');
    this.name = registerOutput<String>('name');
    networkWatcherId = registerOutput<String>('networkWatcherId');
    storageLocation = registerOutput<PacketCaptureStorageLocation>('storageLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PacketCaptureStorageLocation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    virtualMachineId = registerOutput<String>('virtualMachineId');
  }

  /// Creates a typed reference to an existing [PacketCapture] resource.
  PacketCapture.reference(String urn)
    : super(
        'azure:compute/packetCapture:PacketCapture',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    filters = registerOutput<List<PacketCaptureFilter>?>('filters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PacketCaptureFilter>(guardedValue, (value) => PacketCaptureFilter.fromMap((value as Map).cast<String, dynamic>())); });
    maximumBytesPerPacket = registerOutput<int?>('maximumBytesPerPacket');
    maximumBytesPerSession = registerOutput<int?>('maximumBytesPerSession');
    maximumCaptureDurationInSeconds = registerOutput<int?>('maximumCaptureDurationInSeconds');
    this.name = registerOutput<String>('name');
    networkWatcherId = registerOutput<String>('networkWatcherId');
    storageLocation = registerOutput<PacketCaptureStorageLocation>('storageLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PacketCaptureStorageLocation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    virtualMachineId = registerOutput<String>('virtualMachineId');
  }
}
