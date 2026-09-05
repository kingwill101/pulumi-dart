import 'package:pulumi/pulumi.dart' as pulumi;
import 'implicit_data_disk_from_source_args.dart';
import 'implicit_data_disk_from_source_state.dart';

/// Manages an implicit Data Disk of a Virtual Machine.
///
/// &gt; **Note:** The Implicit Data Disk will be deleted instantly after this resource is destroyed. If you want to detach this disk only, you may set `detachImplicitDataDiskOnDeletion` field to `true` within the `virtualMachine` block in the provider `features` block.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const config = new pulumi.Config();
/// const prefix = config.get("prefix") || "example";
/// const vmName = `${prefix}-vm`;
/// const example = new azure.core.ResourceGroup("example", {
///     name: `${prefix}-resources`,
///     location: "West Europe",
/// });
/// const main = new azure.network.VirtualNetwork("main", {
///     name: `${prefix}-network`,
///     addressSpaces: ["10.0.0.0/16"],
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const internal = new azure.network.Subnet("internal", {
///     name: "internal",
///     resourceGroupName: example.name,
///     virtualNetworkName: main.name,
///     addressPrefixes: ["10.0.2.0/24"],
/// });
/// const mainNetworkInterface = new azure.network.NetworkInterface("main", {
///     name: `${prefix}-nic`,
///     location: example.location,
///     resourceGroupName: example.name,
///     ipConfigurations: [{
///         name: "internal",
///         subnetId: internal.id,
///         privateIpAddressAllocation: "Dynamic",
///     }],
/// });
/// const exampleVirtualMachine = new azure.compute.VirtualMachine("example", {
///     name: vmName,
///     location: example.location,
///     resourceGroupName: example.name,
///     networkInterfaceIds: [mainNetworkInterface.id],
///     vmSize: "Standard_D4_v5",
///     storageImageReference: {
///         publisher: "Canonical",
///         offer: "0001-com-ubuntu-server-jammy",
///         sku: "22_04-lts",
///         version: "latest",
///     },
///     storageOsDisk: {
///         name: "myosdisk1",
///         caching: "ReadWrite",
///         createOption: "FromImage",
///         managedDiskType: "Standard_LRS",
///     },
///     osProfile: {
///         computerName: vmName,
///         adminUsername: "testadmin",
///         adminPassword: "Password1234!",
///     },
///     osProfileLinuxConfig: {
///         disablePasswordAuthentication: false,
///     },
/// });
/// const exampleManagedDisk = new azure.compute.ManagedDisk("example", {
///     name: `${vmName}-disk1`,
///     location: example.location,
///     resourceGroupName: example.name,
///     storageAccountType: "Standard_LRS",
///     createOption: "Empty",
///     diskSizeGb: 10,
/// });
/// const exampleSnapshot = new azure.compute.Snapshot("example", {
///     name: `${vmName}-snapshot1`,
///     location: example.location,
///     resourceGroupName: example.name,
///     createOption: "Copy",
///     sourceUri: exampleManagedDisk.id,
/// });
/// const exampleImplicitDataDiskFromSource = new azure.compute.ImplicitDataDiskFromSource("example", {
///     name: `${vmName}-implicitdisk1`,
///     virtualMachineId: testAzurermVirtualMachine.id,
///     lun: 0,
///     caching: "None",
///     createOption: "Copy",
///     diskSizeGb: 20,
///     sourceResourceId: test.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// config = pulumi.Config()
/// prefix = config.get("prefix")
/// if prefix is None:
///     prefix = "example"
/// vm_name = f"{prefix}-vm"
/// example = azure.core.ResourceGroup("example",
///     name=f"{prefix}-resources",
///     location="West Europe")
/// main = azure.network.VirtualNetwork("main",
///     name=f"{prefix}-network",
///     address_spaces=["10.0.0.0/16"],
///     location=example.location,
///     resource_group_name=example.name)
/// internal = azure.network.Subnet("internal",
///     name="internal",
///     resource_group_name=example.name,
///     virtual_network_name=main.name,
///     address_prefixes=["10.0.2.0/24"])
/// main_network_interface = azure.network.NetworkInterface("main",
///     name=f"{prefix}-nic",
///     location=example.location,
///     resource_group_name=example.name,
///     ip_configurations=[{
///         "name": "internal",
///         "subnet_id": internal.id,
///         "private_ip_address_allocation": "Dynamic",
///     }])
/// example_virtual_machine = azure.compute.VirtualMachine("example",
///     name=vm_name,
///     location=example.location,
///     resource_group_name=example.name,
///     network_interface_ids=[main_network_interface.id],
///     vm_size="Standard_D4_v5",
///     storage_image_reference={
///         "publisher": "Canonical",
///         "offer": "0001-com-ubuntu-server-jammy",
///         "sku": "22_04-lts",
///         "version": "latest",
///     },
///     storage_os_disk={
///         "name": "myosdisk1",
///         "caching": "ReadWrite",
///         "create_option": "FromImage",
///         "managed_disk_type": "Standard_LRS",
///     },
///     os_profile={
///         "computer_name": vm_name,
///         "admin_username": "testadmin",
///         "admin_password": "Password1234!",
///     },
///     os_profile_linux_config={
///         "disable_password_authentication": False,
///     })
/// example_managed_disk = azure.compute.ManagedDisk("example",
///     name=f"{vm_name}-disk1",
///     location=example.location,
///     resource_group_name=example.name,
///     storage_account_type="Standard_LRS",
///     create_option="Empty",
///     disk_size_gb=10)
/// example_snapshot = azure.compute.Snapshot("example",
///     name=f"{vm_name}-snapshot1",
///     location=example.location,
///     resource_group_name=example.name,
///     create_option="Copy",
///     source_uri=example_managed_disk.id)
/// example_implicit_data_disk_from_source = azure.compute.ImplicitDataDiskFromSource("example",
///     name=f"{vm_name}-implicitdisk1",
///     virtual_machine_id=test_azurerm_virtual_machine["id"],
///     lun=0,
///     caching="None",
///     create_option="Copy",
///     disk_size_gb=20,
///     source_resource_id=test["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var prefix = config.Get("prefix") ?? "example";
///     var vmName = $"{prefix}-vm";
///
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = $"{prefix}-resources",
///         Location = "West Europe",
///     });
///
///     var main = new Azure.Network.VirtualNetwork("main", new()
///     {
///         Name = $"{prefix}-network",
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var @internal = new Azure.Network.Subnet("internal", new()
///     {
///         Name = "internal",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = main.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.2.0/24",
///         },
///     });
///
///     var mainNetworkInterface = new Azure.Network.NetworkInterface("main", new()
///     {
///         Name = $"{prefix}-nic",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         IpConfigurations = new[]
///         {
///             new Azure.Network.Inputs.NetworkInterfaceIpConfigurationArgs
///             {
///                 Name = "internal",
///                 SubnetId = @internal.Id,
///                 PrivateIpAddressAllocation = "Dynamic",
///             },
///         },
///     });
///
///     var exampleVirtualMachine = new Azure.Compute.VirtualMachine("example", new()
///     {
///         Name = vmName,
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         NetworkInterfaceIds = new[]
///         {
///             mainNetworkInterface.Id,
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
///             Name = "myosdisk1",
///             Caching = "ReadWrite",
///             CreateOption = "FromImage",
///             ManagedDiskType = "Standard_LRS",
///         },
///         OsProfile = new Azure.Compute.Inputs.VirtualMachineOsProfileArgs
///         {
///             ComputerName = vmName,
///             AdminUsername = "testadmin",
///             AdminPassword = "Password1234!",
///         },
///         OsProfileLinuxConfig = new Azure.Compute.Inputs.VirtualMachineOsProfileLinuxConfigArgs
///         {
///             DisablePasswordAuthentication = false,
///         },
///     });
///
///     var exampleManagedDisk = new Azure.Compute.ManagedDisk("example", new()
///     {
///         Name = $"{vmName}-disk1",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         StorageAccountType = "Standard_LRS",
///         CreateOption = "Empty",
///         DiskSizeGb = 10,
///     });
///
///     var exampleSnapshot = new Azure.Compute.Snapshot("example", new()
///     {
///         Name = $"{vmName}-snapshot1",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         CreateOption = "Copy",
///         SourceUri = exampleManagedDisk.Id,
///     });
///
///     var exampleImplicitDataDiskFromSource = new Azure.Compute.ImplicitDataDiskFromSource("example", new()
///     {
///         Name = $"{vmName}-implicitdisk1",
///         VirtualMachineId = testAzurermVirtualMachine.Id,
///         Lun = 0,
///         Caching = "None",
///         CreateOption = "Copy",
///         DiskSizeGb = 20,
///         SourceResourceId = test.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		prefix := "example"
/// 		if param := cfg.Get("prefix"); param != "" {
/// 			prefix = param
/// 		}
/// 		vmName := fmt.Sprintf("%v-vm", prefix)
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.Sprintf("%v-resources", prefix),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		main, err := network.NewVirtualNetwork(ctx, "main", &network.VirtualNetworkArgs{
/// 			Name: pulumi.Sprintf("%v-network", prefix),
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		internal, err := network.NewSubnet(ctx, "internal", &network.SubnetArgs{
/// 			Name:               pulumi.String("internal"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: main.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.2.0/24"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		mainNetworkInterface, err := network.NewNetworkInterface(ctx, "main", &network.NetworkInterfaceArgs{
/// 			Name:              pulumi.Sprintf("%v-nic", prefix),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			IpConfigurations: network.NetworkInterfaceIpConfigurationArray{
/// 				&network.NetworkInterfaceIpConfigurationArgs{
/// 					Name:                       pulumi.String("internal"),
/// 					SubnetId:                   internal.ID().ToIDOutput().ToStringOutput(),
/// 					PrivateIpAddressAllocation: pulumi.String("Dynamic"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewVirtualMachine(ctx, "example", &compute.VirtualMachineArgs{
/// 			Name:              pulumi.String(vmName),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			NetworkInterfaceIds: pulumi.StringArray{
/// 				mainNetworkInterface.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			VmSize: pulumi.String("Standard_D4_v5"),
/// 			StorageImageReference: &compute.VirtualMachineStorageImageReferenceArgs{
/// 				Publisher: pulumi.String("Canonical"),
/// 				Offer:     pulumi.String("0001-com-ubuntu-server-jammy"),
/// 				Sku:       pulumi.String("22_04-lts"),
/// 				Version:   pulumi.String("latest"),
/// 			},
/// 			StorageOsDisk: &compute.VirtualMachineStorageOsDiskArgs{
/// 				Name:            pulumi.String("myosdisk1"),
/// 				Caching:         pulumi.String("ReadWrite"),
/// 				CreateOption:    pulumi.String("FromImage"),
/// 				ManagedDiskType: pulumi.String("Standard_LRS"),
/// 			},
/// 			OsProfile: &compute.VirtualMachineOsProfileArgs{
/// 				ComputerName:  pulumi.String(vmName),
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
/// 		exampleManagedDisk, err := compute.NewManagedDisk(ctx, "example", &compute.ManagedDiskArgs{
/// 			Name:               pulumi.Sprintf("%v-disk1", vmName),
/// 			Location:           example.Location,
/// 			ResourceGroupName:  example.Name,
/// 			StorageAccountType: pulumi.String("Standard_LRS"),
/// 			CreateOption:       pulumi.String("Empty"),
/// 			DiskSizeGb:         pulumi.Int(10),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSnapshot(ctx, "example", &compute.SnapshotArgs{
/// 			Name:              pulumi.Sprintf("%v-snapshot1", vmName),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			CreateOption:      pulumi.String("Copy"),
/// 			SourceUri:         exampleManagedDisk.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewImplicitDataDiskFromSource(ctx, "example", &compute.ImplicitDataDiskFromSourceArgs{
/// 			Name:             pulumi.Sprintf("%v-implicitdisk1", vmName),
/// 			VirtualMachineId: pulumi.Any(testAzurermVirtualMachine.Id),
/// 			Lun:              pulumi.Int(0),
/// 			Caching:          pulumi.String("None"),
/// 			CreateOption:     pulumi.String("Copy"),
/// 			DiskSizeGb:       pulumi.Int(20),
/// 			SourceResourceId: pulumi.Any(test.Id),
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
///   name     ="${var.prefix}-resources"
///   location = "West Europe"
/// }
/// resource "azure_network_virtualnetwork" "main" {
///   name                ="${var.prefix}-network"
///   address_spaces      = ["10.0.0.0/16"]
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_network_subnet" "internal" {
///   name                 = "internal"
///   resource_group_name  = azure_core_resourcegroup.example.name
///   virtual_network_name = azure_network_virtualnetwork.main.name
///   address_prefixes     = ["10.0.2.0/24"]
/// }
/// resource "azure_network_networkinterface" "main" {
///   name                ="${var.prefix}-nic"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   ip_configurations {
///     name                          = "internal"
///     subnet_id                     = azure_network_subnet.internal.id
///     private_ip_address_allocation = "Dynamic"
///   }
/// }
/// resource "azure_compute_virtualmachine" "example" {
///   name                  = local.vmName
///   location              = azure_core_resourcegroup.example.location
///   resource_group_name   = azure_core_resourcegroup.example.name
///   network_interface_ids = [azure_network_networkinterface.main.id]
///   vm_size               = "Standard_D4_v5"
///   storage_image_reference = {
///     publisher = "Canonical"
///     offer     = "0001-com-ubuntu-server-jammy"
///     sku       = "22_04-lts"
///     version   = "latest"
///   }
///   storage_os_disk = {
///     name              = "myosdisk1"
///     caching           = "ReadWrite"
///     create_option     = "FromImage"
///     managed_disk_type = "Standard_LRS"
///   }
///   os_profile = {
///     computer_name  = local.vmName
///     admin_username = "testadmin"
///     admin_password = "Password1234!"
///   }
///   os_profile_linux_config = {
///     disable_password_authentication = false
///   }
/// }
/// resource "azure_compute_manageddisk" "example" {
///   name                 ="${local.vmName}-disk1"
///   location             = azure_core_resourcegroup.example.location
///   resource_group_name  = azure_core_resourcegroup.example.name
///   storage_account_type = "Standard_LRS"
///   create_option        = "Empty"
///   disk_size_gb         = 10
/// }
/// resource "azure_compute_snapshot" "example" {
///   name                ="${local.vmName}-snapshot1"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   create_option       = "Copy"
///   source_uri          = azure_compute_manageddisk.example.id
/// }
/// resource "azure_compute_implicitdatadiskfromsource" "example" {
///   name               ="${local.vmName}-implicitdisk1"
///   virtual_machine_id = testAzurermVirtualMachine.id
///   lun                = "0"
///   caching            = "None"
///   create_option      = "Copy"
///   disk_size_gb       = 20
///   source_resource_id = test.id
/// }
/// variable "prefix" {
///   type    = string
///   default = "example"
/// }
/// locals {
///   vmName ="${var.prefix}-vm"
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
/// import com.pulumi.azure.network.NetworkInterface;
/// import com.pulumi.azure.network.NetworkInterfaceArgs;
/// import com.pulumi.azure.network.inputs.NetworkInterfaceIpConfigurationArgs;
/// import com.pulumi.azure.compute.VirtualMachine;
/// import com.pulumi.azure.compute.VirtualMachineArgs;
/// import com.pulumi.azure.compute.inputs.VirtualMachineStorageImageReferenceArgs;
/// import com.pulumi.azure.compute.inputs.VirtualMachineStorageOsDiskArgs;
/// import com.pulumi.azure.compute.inputs.VirtualMachineOsProfileArgs;
/// import com.pulumi.azure.compute.inputs.VirtualMachineOsProfileLinuxConfigArgs;
/// import com.pulumi.azure.compute.ManagedDisk;
/// import com.pulumi.azure.compute.ManagedDiskArgs;
/// import com.pulumi.azure.compute.Snapshot;
/// import com.pulumi.azure.compute.SnapshotArgs;
/// import com.pulumi.azure.compute.ImplicitDataDiskFromSource;
/// import com.pulumi.azure.compute.ImplicitDataDiskFromSourceArgs;
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
///         final var config = ctx.config();
///         final var prefix = config.get("prefix").orElse("example");
///         final var vmName = String.format("%s-vm", prefix);
///
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name(String.format("%s-resources", prefix))
///             .location("West Europe")
///             .build());
///
///         var main = new VirtualNetwork("main", VirtualNetworkArgs.builder()
///             .name(String.format("%s-network", prefix))
///             .addressSpaces("10.0.0.0/16")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var internal = new Subnet("internal", SubnetArgs.builder()
///             .name("internal")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(main.name())
///             .addressPrefixes("10.0.2.0/24")
///             .build());
///
///         var mainNetworkInterface = new NetworkInterface("mainNetworkInterface", NetworkInterfaceArgs.builder()
///             .name(String.format("%s-nic", prefix))
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .ipConfigurations(NetworkInterfaceIpConfigurationArgs.builder()
///                 .name("internal")
///                 .subnetId(internal.id())
///                 .privateIpAddressAllocation("Dynamic")
///                 .build())
///             .build());
///
///         var exampleVirtualMachine = new VirtualMachine("exampleVirtualMachine", VirtualMachineArgs.builder()
///             .name(vmName)
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .networkInterfaceIds(mainNetworkInterface.id())
///             .vmSize("Standard_D4_v5")
///             .storageImageReference(VirtualMachineStorageImageReferenceArgs.builder()
///                 .publisher("Canonical")
///                 .offer("0001-com-ubuntu-server-jammy")
///                 .sku("22_04-lts")
///                 .version("latest")
///                 .build())
///             .storageOsDisk(VirtualMachineStorageOsDiskArgs.builder()
///                 .name("myosdisk1")
///                 .caching("ReadWrite")
///                 .createOption("FromImage")
///                 .managedDiskType("Standard_LRS")
///                 .build())
///             .osProfile(VirtualMachineOsProfileArgs.builder()
///                 .computerName(vmName)
///                 .adminUsername("testadmin")
///                 .adminPassword("Password1234!")
///                 .build())
///             .osProfileLinuxConfig(VirtualMachineOsProfileLinuxConfigArgs.builder()
///                 .disablePasswordAuthentication(false)
///                 .build())
///             .build());
///
///         var exampleManagedDisk = new ManagedDisk("exampleManagedDisk", ManagedDiskArgs.builder()
///             .name(String.format("%s-disk1", vmName))
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .storageAccountType("Standard_LRS")
///             .createOption("Empty")
///             .diskSizeGb(10)
///             .build());
///
///         var exampleSnapshot = new Snapshot("exampleSnapshot", SnapshotArgs.builder()
///             .name(String.format("%s-snapshot1", vmName))
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .createOption("Copy")
///             .sourceUri(exampleManagedDisk.id())
///             .build());
///
///         var exampleImplicitDataDiskFromSource = new ImplicitDataDiskFromSource("exampleImplicitDataDiskFromSource", ImplicitDataDiskFromSourceArgs.builder()
///             .name(String.format("%s-implicitdisk1", vmName))
///             .virtualMachineId(testAzurermVirtualMachine.id())
///             .lun(0)
///             .caching("None")
///             .createOption("Copy")
///             .diskSizeGb(20)
///             .sourceResourceId(test.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   prefix:
///     type: string
///     default: example
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: ${prefix}-resources
///       location: West Europe
///   main:
///     type: azure:network:VirtualNetwork
///     properties:
///       name: ${prefix}-network
///       addressSpaces:
///         - 10.0.0.0/16
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   internal:
///     type: azure:network:Subnet
///     properties:
///       name: internal
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${main.name}
///       addressPrefixes:
///         - 10.0.2.0/24
///   mainNetworkInterface:
///     type: azure:network:NetworkInterface
///     name: main
///     properties:
///       name: ${prefix}-nic
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       ipConfigurations:
///         - name: internal
///           subnetId: ${internal.id}
///           privateIpAddressAllocation: Dynamic
///   exampleVirtualMachine:
///     type: azure:compute:VirtualMachine
///     name: example
///     properties:
///       name: ${vmName}
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       networkInterfaceIds:
///         - ${mainNetworkInterface.id}
///       vmSize: Standard_D4_v5
///       storageImageReference:
///         publisher: Canonical
///         offer: 0001-com-ubuntu-server-jammy
///         sku: 22_04-lts
///         version: latest
///       storageOsDisk:
///         name: myosdisk1
///         caching: ReadWrite
///         createOption: FromImage
///         managedDiskType: Standard_LRS
///       osProfile:
///         computerName: ${vmName}
///         adminUsername: testadmin
///         adminPassword: Password1234!
///       osProfileLinuxConfig:
///         disablePasswordAuthentication: false
///   exampleManagedDisk:
///     type: azure:compute:ManagedDisk
///     name: example
///     properties:
///       name: ${vmName}-disk1
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       storageAccountType: Standard_LRS
///       createOption: Empty
///       diskSizeGb: 10
///   exampleSnapshot:
///     type: azure:compute:Snapshot
///     name: example
///     properties:
///       name: ${vmName}-snapshot1
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       createOption: Copy
///       sourceUri: ${exampleManagedDisk.id}
///   exampleImplicitDataDiskFromSource:
///     type: azure:compute:ImplicitDataDiskFromSource
///     name: example
///     properties:
///       name: ${vmName}-implicitdisk1
///       virtualMachineId: ${testAzurermVirtualMachine.id}
///       lun: '0'
///       caching: None
///       createOption: Copy
///       diskSizeGb: 20
///       sourceResourceId: ${test.id}
/// variables:
///   vmName: ${prefix}-vm
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Compute` - 2024-03-01, 2023-04-02
///
/// ## Import
///
/// The implicit Data Disk of the Virtual Machine can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:compute/implicitDataDiskFromSource:ImplicitDataDiskFromSource example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Compute/virtualMachines/machine1/dataDisks/disk1
/// ```
///
/// &gt; **Note:** This is a Terraform Unique ID matching the format: `{virtualMachineID}/dataDisks/{diskName}`
class ImplicitDataDiskFromSource extends pulumi.CustomResource {
  /// Specifies the caching requirements for this Data Disk. Possible values are `ReadOnly` and `ReadWrite`.
  late final pulumi.Output<String?> caching;
  /// Specifies the Create Option of the Data Disk. The only possible value is `Copy`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> createOption;
  /// Specifies the size of the Data Disk in gigabytes.
  ///
  /// &gt; **Note:** Updating `diskSizeGb` to shrink the disk size is not supported on Azure and forces a new Data Disk to be created.
  ///
  /// &gt; **Note:** In certain conditions the Data Disk size can be updated without shutting down the Virtual Machine, however only a subset of Virtual Machine SKUs/Disk combinations support this. More information can be found [for Linux Virtual Machines](https://learn.microsoft.com/en-us/azure/virtual-machines/linux/expand-disks?tabs=azure-cli%2Cubuntu#expand-without-downtime) and [Windows Virtual Machines](https://learn.microsoft.com/azure/virtual-machines/windows/expand-os-disk#expand-without-downtime) respectively.
  ///
  /// &gt; **Note:** If the VM does not meet the requirements to expand the disk without downtime, changing this value is disruptive. The VM will be shut down and deallocated as required by Azure to action the change. Terraform will attempt to start the VM again after the update if it was in a `running` state prior to the change.
  ///
  /// &gt; **Note:** Expanding Ultra Disks and Premium SSD v2 disks without downtime has additional limitations. Allow up to 10 minutes for the correct size to be reflected, and a `rescan` function may be required. For more details, refer to [Expand with Ultra Disks and Premium SSD v2](https://learn.microsoft.com/azure/virtual-machines/linux/expand-disks?tabs=ubuntu#expand-with-ultra-disks-and-premium-ssd-v2).
  late final pulumi.Output<int> diskSizeGb;
  /// The Logical Unit Number of the Data Disk, which needs to be unique within the Virtual Machine. Changing this forces a new resource to be created.
  late final pulumi.Output<int> lun;
  /// Specifies the name of this Data Disk. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The ID of the source resource which this Data Disk was created from. Changing this forces a new resource to be created.
  late final pulumi.Output<String> sourceResourceId;
  /// The ID of the Virtual Machine to which the Data Disk should be attached. Changing this forces a new resource to be created.
  late final pulumi.Output<String> virtualMachineId;
  /// Specifies if Write Accelerator is enabled on the disk. This can only be enabled on `Premium_LRS` managed disks with no caching and [M-Series VMs](https://docs.microsoft.com/azure/virtual-machines/workloads/sap/how-to-enable-write-accelerator). Defaults to `false`.
  late final pulumi.Output<bool?> writeAcceleratorEnabled;

  /// Creates a new [ImplicitDataDiskFromSource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ImplicitDataDiskFromSource]. {@macro pulumi_compute_implicit_data_disk_from_source_implicit_data_disk_from_source_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ImplicitDataDiskFromSource(
    String name, {
    ImplicitDataDiskFromSourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:compute/implicitDataDiskFromSource:ImplicitDataDiskFromSource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    caching = registerOutput<String?>('caching');
    createOption = registerOutput<String>('createOption');
    diskSizeGb = registerOutput<int>('diskSizeGb');
    lun = registerOutput<int>('lun');
    this.name = registerOutput<String>('name');
    sourceResourceId = registerOutput<String>('sourceResourceId');
    virtualMachineId = registerOutput<String>('virtualMachineId');
    writeAcceleratorEnabled = registerOutput<bool?>('writeAcceleratorEnabled');
  }

  /// Gets an existing [ImplicitDataDiskFromSource] resource's state with the given [name] and [id].
  static ImplicitDataDiskFromSource get(
    String name,
    pulumi.Input<String> id, {
    ImplicitDataDiskFromSourceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ImplicitDataDiskFromSource._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ImplicitDataDiskFromSource._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:compute/implicitDataDiskFromSource:ImplicitDataDiskFromSource',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    caching = registerOutput<String?>('caching');
    createOption = registerOutput<String>('createOption');
    diskSizeGb = registerOutput<int>('diskSizeGb');
    lun = registerOutput<int>('lun');
    this.name = registerOutput<String>('name');
    sourceResourceId = registerOutput<String>('sourceResourceId');
    virtualMachineId = registerOutput<String>('virtualMachineId');
    writeAcceleratorEnabled = registerOutput<bool?>('writeAcceleratorEnabled');
  }

  /// Creates a typed reference to an existing [ImplicitDataDiskFromSource] resource.
  ImplicitDataDiskFromSource.reference(String urn)
    : super(
        'azure:compute/implicitDataDiskFromSource:ImplicitDataDiskFromSource',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    caching = registerOutput<String?>('caching');
    createOption = registerOutput<String>('createOption');
    diskSizeGb = registerOutput<int>('diskSizeGb');
    lun = registerOutput<int>('lun');
    this.name = registerOutput<String>('name');
    sourceResourceId = registerOutput<String>('sourceResourceId');
    virtualMachineId = registerOutput<String>('virtualMachineId');
    writeAcceleratorEnabled = registerOutput<bool?>('writeAcceleratorEnabled');
  }
}
