import 'package:pulumi/pulumi.dart' as pulumi;
import 'scale_set_packet_capture_args.dart';
import 'scale_set_packet_capture_filter.dart';
import 'scale_set_packet_capture_machine_scope.dart';
import 'scale_set_packet_capture_state.dart';
import 'scale_set_packet_capture_storage_location.dart';

/// Configures Network Packet Capturing against a Virtual Machine Scale Set using a Network Watcher.
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
///     name: "example-vn",
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
/// const exampleLinuxVirtualMachineScaleSet = new azure.compute.LinuxVirtualMachineScaleSet("example", {
///     name: "example-vmss",
///     resourceGroupName: example.name,
///     location: example.location,
///     sku: "Standard_D4_v5",
///     instances: 4,
///     adminUsername: "adminuser",
///     adminPassword: "P@ssword1234!",
///     computerNamePrefix: "my-linux-computer-name-prefix",
///     upgradeMode: "Automatic",
///     disablePasswordAuthentication: false,
///     sourceImageReference: {
///         publisher: "Canonical",
///         offer: "0001-com-ubuntu-server-jammy",
///         sku: "22_04-lts",
///         version: "latest",
///     },
///     osDisk: {
///         storageAccountType: "Standard_LRS",
///         caching: "ReadWrite",
///     },
///     networkInterfaces: [{
///         name: "example",
///         primary: true,
///         ipConfigurations: [{
///             name: "internal",
///             primary: true,
///             subnetId: exampleSubnet.id,
///         }],
///     }],
/// });
/// const exampleVirtualMachineScaleSetExtension = new azure.compute.VirtualMachineScaleSetExtension("example", {
///     name: "network-watcher",
///     virtualMachineScaleSetId: exampleLinuxVirtualMachineScaleSet.id,
///     publisher: "Microsoft.Azure.NetworkWatcher",
///     type: "NetworkWatcherAgentLinux",
///     typeHandlerVersion: "1.4",
///     autoUpgradeMinorVersion: true,
///     automaticUpgradeEnabled: true,
/// });
/// const exampleScaleSetPacketCapture = new azure.compute.ScaleSetPacketCapture("example", {
///     name: "example-pc",
///     networkWatcherId: exampleNetworkWatcher.id,
///     virtualMachineScaleSetId: exampleLinuxVirtualMachineScaleSet.id,
///     storageLocation: {
///         filePath: "/var/captures/packet.cap",
///     },
///     machineScope: {
///         includeInstanceIds: ["0"],
///         excludeInstanceIds: ["1"],
///     },
/// }, {
///     dependsOn: [exampleVirtualMachineScaleSetExtension],
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
///     name="example-vn",
///     address_spaces=["10.0.0.0/16"],
///     location=example.location,
///     resource_group_name=example.name)
/// example_subnet = azure.network.Subnet("example",
///     name="internal",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.2.0/24"])
/// example_linux_virtual_machine_scale_set = azure.compute.LinuxVirtualMachineScaleSet("example",
///     name="example-vmss",
///     resource_group_name=example.name,
///     location=example.location,
///     sku="Standard_D4_v5",
///     instances=4,
///     admin_username="adminuser",
///     admin_password="P@ssword1234!",
///     computer_name_prefix="my-linux-computer-name-prefix",
///     upgrade_mode="Automatic",
///     disable_password_authentication=False,
///     source_image_reference={
///         "publisher": "Canonical",
///         "offer": "0001-com-ubuntu-server-jammy",
///         "sku": "22_04-lts",
///         "version": "latest",
///     },
///     os_disk={
///         "storage_account_type": "Standard_LRS",
///         "caching": "ReadWrite",
///     },
///     network_interfaces=[{
///         "name": "example",
///         "primary": True,
///         "ip_configurations": [{
///             "name": "internal",
///             "primary": True,
///             "subnet_id": example_subnet.id,
///         }],
///     }])
/// example_virtual_machine_scale_set_extension = azure.compute.VirtualMachineScaleSetExtension("example",
///     name="network-watcher",
///     virtual_machine_scale_set_id=example_linux_virtual_machine_scale_set.id,
///     publisher="Microsoft.Azure.NetworkWatcher",
///     type="NetworkWatcherAgentLinux",
///     type_handler_version="1.4",
///     auto_upgrade_minor_version=True,
///     automatic_upgrade_enabled=True)
/// example_scale_set_packet_capture = azure.compute.ScaleSetPacketCapture("example",
///     name="example-pc",
///     network_watcher_id=example_network_watcher.id,
///     virtual_machine_scale_set_id=example_linux_virtual_machine_scale_set.id,
///     storage_location={
///         "file_path": "/var/captures/packet.cap",
///     },
///     machine_scope={
///         "include_instance_ids": ["0"],
///         "exclude_instance_ids": ["1"],
///     },
///     opts = pulumi.ResourceOptions(depends_on=[example_virtual_machine_scale_set_extension]))
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
///         Name = "example-vn",
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
///     var exampleLinuxVirtualMachineScaleSet = new Azure.Compute.LinuxVirtualMachineScaleSet("example", new()
///     {
///         Name = "example-vmss",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Sku = "Standard_D4_v5",
///         Instances = 4,
///         AdminUsername = "adminuser",
///         AdminPassword = "P@ssword1234!",
///         ComputerNamePrefix = "my-linux-computer-name-prefix",
///         UpgradeMode = "Automatic",
///         DisablePasswordAuthentication = false,
///         SourceImageReference = new Azure.Compute.Inputs.LinuxVirtualMachineScaleSetSourceImageReferenceArgs
///         {
///             Publisher = "Canonical",
///             Offer = "0001-com-ubuntu-server-jammy",
///             Sku = "22_04-lts",
///             Version = "latest",
///         },
///         OsDisk = new Azure.Compute.Inputs.LinuxVirtualMachineScaleSetOsDiskArgs
///         {
///             StorageAccountType = "Standard_LRS",
///             Caching = "ReadWrite",
///         },
///         NetworkInterfaces = new[]
///         {
///             new Azure.Compute.Inputs.LinuxVirtualMachineScaleSetNetworkInterfaceArgs
///             {
///                 Name = "example",
///                 Primary = true,
///                 IpConfigurations = new[]
///                 {
///                     new Azure.Compute.Inputs.LinuxVirtualMachineScaleSetNetworkInterfaceIpConfigurationArgs
///                     {
///                         Name = "internal",
///                         Primary = true,
///                         SubnetId = exampleSubnet.Id,
///                     },
///                 },
///             },
///         },
///     });
///
///     var exampleVirtualMachineScaleSetExtension = new Azure.Compute.VirtualMachineScaleSetExtension("example", new()
///     {
///         Name = "network-watcher",
///         VirtualMachineScaleSetId = exampleLinuxVirtualMachineScaleSet.Id,
///         Publisher = "Microsoft.Azure.NetworkWatcher",
///         Type = "NetworkWatcherAgentLinux",
///         TypeHandlerVersion = "1.4",
///         AutoUpgradeMinorVersion = true,
///         AutomaticUpgradeEnabled = true,
///     });
///
///     var exampleScaleSetPacketCapture = new Azure.Compute.ScaleSetPacketCapture("example", new()
///     {
///         Name = "example-pc",
///         NetworkWatcherId = exampleNetworkWatcher.Id,
///         VirtualMachineScaleSetId = exampleLinuxVirtualMachineScaleSet.Id,
///         StorageLocation = new Azure.Compute.Inputs.ScaleSetPacketCaptureStorageLocationArgs
///         {
///             FilePath = "/var/captures/packet.cap",
///         },
///         MachineScope = new Azure.Compute.Inputs.ScaleSetPacketCaptureMachineScopeArgs
///         {
///             IncludeInstanceIds = new[]
///             {
///                 "0",
///             },
///             ExcludeInstanceIds = new[]
///             {
///                 "1",
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleVirtualMachineScaleSetExtension,
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
/// 		exampleNetworkWatcher, err := network.NewNetworkWatcher(ctx, "example", &network.NetworkWatcherArgs{
/// 			Name:              pulumi.String("example-nw"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name: pulumi.String("example-vn"),
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
/// 		exampleLinuxVirtualMachineScaleSet, err := compute.NewLinuxVirtualMachineScaleSet(ctx, "example", &compute.LinuxVirtualMachineScaleSetArgs{
/// 			Name:                          pulumi.String("example-vmss"),
/// 			ResourceGroupName:             example.Name,
/// 			Location:                      example.Location,
/// 			Sku:                           pulumi.String("Standard_D4_v5"),
/// 			Instances:                     pulumi.Int(4),
/// 			AdminUsername:                 pulumi.String("adminuser"),
/// 			AdminPassword:                 pulumi.String("P@ssword1234!"),
/// 			ComputerNamePrefix:            pulumi.String("my-linux-computer-name-prefix"),
/// 			UpgradeMode:                   pulumi.String("Automatic"),
/// 			DisablePasswordAuthentication: pulumi.Bool(false),
/// 			SourceImageReference: &compute.LinuxVirtualMachineScaleSetSourceImageReferenceArgs{
/// 				Publisher: pulumi.String("Canonical"),
/// 				Offer:     pulumi.String("0001-com-ubuntu-server-jammy"),
/// 				Sku:       pulumi.String("22_04-lts"),
/// 				Version:   pulumi.String("latest"),
/// 			},
/// 			OsDisk: &compute.LinuxVirtualMachineScaleSetOsDiskArgs{
/// 				StorageAccountType: pulumi.String("Standard_LRS"),
/// 				Caching:            pulumi.String("ReadWrite"),
/// 			},
/// 			NetworkInterfaces: compute.LinuxVirtualMachineScaleSetNetworkInterfaceArray{
/// 				&compute.LinuxVirtualMachineScaleSetNetworkInterfaceArgs{
/// 					Name:    pulumi.String("example"),
/// 					Primary: pulumi.Bool(true),
/// 					IpConfigurations: compute.LinuxVirtualMachineScaleSetNetworkInterfaceIpConfigurationArray{
/// 						&compute.LinuxVirtualMachineScaleSetNetworkInterfaceIpConfigurationArgs{
/// 							Name:     pulumi.String("internal"),
/// 							Primary:  pulumi.Bool(true),
/// 							SubnetId: exampleSubnet.ID().ToIDOutput().ToStringOutput(),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualMachineScaleSetExtension, err := compute.NewVirtualMachineScaleSetExtension(ctx, "example", &compute.VirtualMachineScaleSetExtensionArgs{
/// 			Name:                     pulumi.String("network-watcher"),
/// 			VirtualMachineScaleSetId: exampleLinuxVirtualMachineScaleSet.ID().ToIDOutput().ToStringOutput(),
/// 			Publisher:                pulumi.String("Microsoft.Azure.NetworkWatcher"),
/// 			Type:                     pulumi.String("NetworkWatcherAgentLinux"),
/// 			TypeHandlerVersion:       pulumi.String("1.4"),
/// 			AutoUpgradeMinorVersion:  pulumi.Bool(true),
/// 			AutomaticUpgradeEnabled:  pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewScaleSetPacketCapture(ctx, "example", &compute.ScaleSetPacketCaptureArgs{
/// 			Name:                     pulumi.String("example-pc"),
/// 			NetworkWatcherId:         exampleNetworkWatcher.ID().ToIDOutput().ToStringOutput(),
/// 			VirtualMachineScaleSetId: exampleLinuxVirtualMachineScaleSet.ID().ToIDOutput().ToStringOutput(),
/// 			StorageLocation: &compute.ScaleSetPacketCaptureStorageLocationArgs{
/// 				FilePath: pulumi.String("/var/captures/packet.cap"),
/// 			},
/// 			MachineScope: &compute.ScaleSetPacketCaptureMachineScopeArgs{
/// 				IncludeInstanceIds: pulumi.StringArray{
/// 					pulumi.String("0"),
/// 				},
/// 				ExcludeInstanceIds: pulumi.StringArray{
/// 					pulumi.String("1"),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleVirtualMachineScaleSetExtension,
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
///   name                = "example-vn"
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
/// resource "azure_compute_linuxvirtualmachinescaleset" "example" {
///   name                            = "example-vmss"
///   resource_group_name             = azure_core_resourcegroup.example.name
///   location                        = azure_core_resourcegroup.example.location
///   sku                             = "Standard_D4_v5"
///   instances                       = 4
///   admin_username                  = "adminuser"
///   admin_password                  = "P@ssword1234!"
///   computer_name_prefix            = "my-linux-computer-name-prefix"
///   upgrade_mode                    = "Automatic"
///   disable_password_authentication = false
///   source_image_reference = {
///     publisher = "Canonical"
///     offer     = "0001-com-ubuntu-server-jammy"
///     sku       = "22_04-lts"
///     version   = "latest"
///   }
///   os_disk = {
///     storage_account_type = "Standard_LRS"
///     caching              = "ReadWrite"
///   }
///   network_interfaces {
///     name    = "example"
///     primary = true
///     ip_configurations {
///       name      = "internal"
///       primary   = true
///       subnet_id = azure_network_subnet.example.id
///     }
///   }
/// }
/// resource "azure_compute_virtualmachinescalesetextension" "example" {
///   name                         = "network-watcher"
///   virtual_machine_scale_set_id = azure_compute_linuxvirtualmachinescaleset.example.id
///   publisher                    = "Microsoft.Azure.NetworkWatcher"
///   type                         = "NetworkWatcherAgentLinux"
///   type_handler_version         = "1.4"
///   auto_upgrade_minor_version   = true
///   automatic_upgrade_enabled    = true
/// }
/// resource "azure_compute_scalesetpacketcapture" "example" {
///   depends_on                   = [azure_compute_virtualmachinescalesetextension.example]
///   name                         = "example-pc"
///   network_watcher_id           = azure_network_networkwatcher.example.id
///   virtual_machine_scale_set_id = azure_compute_linuxvirtualmachinescaleset.example.id
///   storage_location = {
///     file_path = "/var/captures/packet.cap"
///   }
///   machine_scope = {
///     include_instance_ids = ["0"]
///     exclude_instance_ids = ["1"]
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
/// import com.pulumi.azure.compute.LinuxVirtualMachineScaleSet;
/// import com.pulumi.azure.compute.LinuxVirtualMachineScaleSetArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineScaleSetSourceImageReferenceArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineScaleSetOsDiskArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineScaleSetNetworkInterfaceArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineScaleSetNetworkInterfaceIpConfigurationArgs;
/// import com.pulumi.azure.compute.VirtualMachineScaleSetExtension;
/// import com.pulumi.azure.compute.VirtualMachineScaleSetExtensionArgs;
/// import com.pulumi.azure.compute.ScaleSetPacketCapture;
/// import com.pulumi.azure.compute.ScaleSetPacketCaptureArgs;
/// import com.pulumi.azure.compute.inputs.ScaleSetPacketCaptureStorageLocationArgs;
/// import com.pulumi.azure.compute.inputs.ScaleSetPacketCaptureMachineScopeArgs;
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
///             .name("example-vn")
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
///         var exampleLinuxVirtualMachineScaleSet = new LinuxVirtualMachineScaleSet("exampleLinuxVirtualMachineScaleSet", LinuxVirtualMachineScaleSetArgs.builder()
///             .name("example-vmss")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .sku("Standard_D4_v5")
///             .instances(4)
///             .adminUsername("adminuser")
///             .adminPassword("P@ssword1234!")
///             .computerNamePrefix("my-linux-computer-name-prefix")
///             .upgradeMode("Automatic")
///             .disablePasswordAuthentication(false)
///             .sourceImageReference(LinuxVirtualMachineScaleSetSourceImageReferenceArgs.builder()
///                 .publisher("Canonical")
///                 .offer("0001-com-ubuntu-server-jammy")
///                 .sku("22_04-lts")
///                 .version("latest")
///                 .build())
///             .osDisk(LinuxVirtualMachineScaleSetOsDiskArgs.builder()
///                 .storageAccountType("Standard_LRS")
///                 .caching("ReadWrite")
///                 .build())
///             .networkInterfaces(LinuxVirtualMachineScaleSetNetworkInterfaceArgs.builder()
///                 .name("example")
///                 .primary(true)
///                 .ipConfigurations(LinuxVirtualMachineScaleSetNetworkInterfaceIpConfigurationArgs.builder()
///                     .name("internal")
///                     .primary(true)
///                     .subnetId(exampleSubnet.id())
///                     .build())
///                 .build())
///             .build());
///
///         var exampleVirtualMachineScaleSetExtension = new VirtualMachineScaleSetExtension("exampleVirtualMachineScaleSetExtension", VirtualMachineScaleSetExtensionArgs.builder()
///             .name("network-watcher")
///             .virtualMachineScaleSetId(exampleLinuxVirtualMachineScaleSet.id())
///             .publisher("Microsoft.Azure.NetworkWatcher")
///             .type("NetworkWatcherAgentLinux")
///             .typeHandlerVersion("1.4")
///             .autoUpgradeMinorVersion(true)
///             .automaticUpgradeEnabled(true)
///             .build());
///
///         var exampleScaleSetPacketCapture = new ScaleSetPacketCapture("exampleScaleSetPacketCapture", ScaleSetPacketCaptureArgs.builder()
///             .name("example-pc")
///             .networkWatcherId(exampleNetworkWatcher.id())
///             .virtualMachineScaleSetId(exampleLinuxVirtualMachineScaleSet.id())
///             .storageLocation(ScaleSetPacketCaptureStorageLocationArgs.builder()
///                 .filePath("/var/captures/packet.cap")
///                 .build())
///             .machineScope(ScaleSetPacketCaptureMachineScopeArgs.builder()
///                 .includeInstanceIds("0")
///                 .excludeInstanceIds("1")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleVirtualMachineScaleSetExtension)
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
///       name: example-vn
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
///   exampleLinuxVirtualMachineScaleSet:
///     type: azure:compute:LinuxVirtualMachineScaleSet
///     name: example
///     properties:
///       name: example-vmss
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       sku: Standard_D4_v5
///       instances: 4
///       adminUsername: adminuser
///       adminPassword: P@ssword1234!
///       computerNamePrefix: my-linux-computer-name-prefix
///       upgradeMode: Automatic
///       disablePasswordAuthentication: false
///       sourceImageReference:
///         publisher: Canonical
///         offer: 0001-com-ubuntu-server-jammy
///         sku: 22_04-lts
///         version: latest
///       osDisk:
///         storageAccountType: Standard_LRS
///         caching: ReadWrite
///       networkInterfaces:
///         - name: example
///           primary: true
///           ipConfigurations:
///             - name: internal
///               primary: true
///               subnetId: ${exampleSubnet.id}
///   exampleVirtualMachineScaleSetExtension:
///     type: azure:compute:VirtualMachineScaleSetExtension
///     name: example
///     properties:
///       name: network-watcher
///       virtualMachineScaleSetId: ${exampleLinuxVirtualMachineScaleSet.id}
///       publisher: Microsoft.Azure.NetworkWatcher
///       type: NetworkWatcherAgentLinux
///       typeHandlerVersion: '1.4'
///       autoUpgradeMinorVersion: true
///       automaticUpgradeEnabled: true
///   exampleScaleSetPacketCapture:
///     type: azure:compute:ScaleSetPacketCapture
///     name: example
///     properties:
///       name: example-pc
///       networkWatcherId: ${exampleNetworkWatcher.id}
///       virtualMachineScaleSetId: ${exampleLinuxVirtualMachineScaleSet.id}
///       storageLocation:
///         filePath: /var/captures/packet.cap
///       machineScope:
///         includeInstanceIds:
///           - '0'
///         excludeInstanceIds:
///           - '1'
///     options:
///       dependsOn:
///         - ${exampleVirtualMachineScaleSetExtension}
/// ```
///
///
/// &gt; **Note:** This Resource requires that [the Network Watcher Extension](https://docs.microsoft.com/azure/network-watcher/network-watcher-packet-capture-manage-portal#before-you-begin) is installed on the Virtual Machine Scale Set before capturing can be enabled which can be installed via the `azure.compute.VirtualMachineScaleSetExtension` resource.
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
/// Virtual Machine Scale Set Packet Captures can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:compute/scaleSetPacketCapture:ScaleSetPacketCapture capture1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/networkWatchers/watcher1/packetCaptures/capture1
/// ```
class ScaleSetPacketCapture extends pulumi.CustomResource {
  /// One or more `filter` blocks as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<List<ScaleSetPacketCaptureFilter>?> filters;
  /// A `machineScope` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<ScaleSetPacketCaptureMachineScope?> machineScope;
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
  late final pulumi.Output<ScaleSetPacketCaptureStorageLocation> storageLocation;
  /// The resource ID of the Virtual Machine Scale Set to capture packets from. Changing this forces a new resource to be created.
  late final pulumi.Output<String> virtualMachineScaleSetId;

  /// Creates a new [ScaleSetPacketCapture].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ScaleSetPacketCapture]. {@macro pulumi_compute_scale_set_packet_capture_scale_set_packet_capture_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ScaleSetPacketCapture(
    String name, {
    ScaleSetPacketCaptureArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:compute/scaleSetPacketCapture:ScaleSetPacketCapture',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    filters = registerOutput<List<ScaleSetPacketCaptureFilter>?>('filters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ScaleSetPacketCaptureFilter>(guardedValue, (value) => ScaleSetPacketCaptureFilter.fromMap((value as Map).cast<String, dynamic>())); });
    machineScope = registerOutput<ScaleSetPacketCaptureMachineScope?>('machineScope', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScaleSetPacketCaptureMachineScope.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    maximumBytesPerPacket = registerOutput<int?>('maximumBytesPerPacket');
    maximumBytesPerSession = registerOutput<int?>('maximumBytesPerSession');
    maximumCaptureDurationInSeconds = registerOutput<int?>('maximumCaptureDurationInSeconds');
    this.name = registerOutput<String>('name');
    networkWatcherId = registerOutput<String>('networkWatcherId');
    storageLocation = registerOutput<ScaleSetPacketCaptureStorageLocation>('storageLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScaleSetPacketCaptureStorageLocation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    virtualMachineScaleSetId = registerOutput<String>('virtualMachineScaleSetId');
  }

  /// Gets an existing [ScaleSetPacketCapture] resource's state with the given [name] and [id].
  static ScaleSetPacketCapture get(
    String name,
    pulumi.Input<String> id, {
    ScaleSetPacketCaptureState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ScaleSetPacketCapture._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ScaleSetPacketCapture._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:compute/scaleSetPacketCapture:ScaleSetPacketCapture',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    filters = registerOutput<List<ScaleSetPacketCaptureFilter>?>('filters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ScaleSetPacketCaptureFilter>(guardedValue, (value) => ScaleSetPacketCaptureFilter.fromMap((value as Map).cast<String, dynamic>())); });
    machineScope = registerOutput<ScaleSetPacketCaptureMachineScope?>('machineScope', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScaleSetPacketCaptureMachineScope.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    maximumBytesPerPacket = registerOutput<int?>('maximumBytesPerPacket');
    maximumBytesPerSession = registerOutput<int?>('maximumBytesPerSession');
    maximumCaptureDurationInSeconds = registerOutput<int?>('maximumCaptureDurationInSeconds');
    this.name = registerOutput<String>('name');
    networkWatcherId = registerOutput<String>('networkWatcherId');
    storageLocation = registerOutput<ScaleSetPacketCaptureStorageLocation>('storageLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScaleSetPacketCaptureStorageLocation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    virtualMachineScaleSetId = registerOutput<String>('virtualMachineScaleSetId');
  }

  /// Creates a typed reference to an existing [ScaleSetPacketCapture] resource.
  ScaleSetPacketCapture.reference(String urn)
    : super(
        'azure:compute/scaleSetPacketCapture:ScaleSetPacketCapture',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    filters = registerOutput<List<ScaleSetPacketCaptureFilter>?>('filters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ScaleSetPacketCaptureFilter>(guardedValue, (value) => ScaleSetPacketCaptureFilter.fromMap((value as Map).cast<String, dynamic>())); });
    machineScope = registerOutput<ScaleSetPacketCaptureMachineScope?>('machineScope', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScaleSetPacketCaptureMachineScope.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    maximumBytesPerPacket = registerOutput<int?>('maximumBytesPerPacket');
    maximumBytesPerSession = registerOutput<int?>('maximumBytesPerSession');
    maximumCaptureDurationInSeconds = registerOutput<int?>('maximumCaptureDurationInSeconds');
    this.name = registerOutput<String>('name');
    networkWatcherId = registerOutput<String>('networkWatcherId');
    storageLocation = registerOutput<ScaleSetPacketCaptureStorageLocation>('storageLocation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScaleSetPacketCaptureStorageLocation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    virtualMachineScaleSetId = registerOutput<String>('virtualMachineScaleSetId');
  }
}
