import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_disk_attachment_args.dart';
import 'data_disk_attachment_state.dart';

/// Manages attaching a Disk to a Virtual Machine.
///
/// &gt; **NOTE:** Data Disks can be attached either directly on the `azure.compute.VirtualMachine` resource, or using the `azure.compute.DataDiskAttachment` resource - but the two cannot be used together. If both are used against the same Virtual Machine, spurious changes will occur.
///
/// &gt; **Please Note:** only Managed Disks are supported via this separate resource, Unmanaged Disks can be attached using the `storageDataDisk` block in the `azure.compute.VirtualMachine` resource.
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
/// const exampleDataDiskAttachment = new azure.compute.DataDiskAttachment("example", {
///     managedDiskId: exampleManagedDisk.id,
///     virtualMachineId: exampleVirtualMachine.id,
///     lun: 10,
///     caching: "ReadWrite",
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
/// example_data_disk_attachment = azure.compute.DataDiskAttachment("example",
///     managed_disk_id=example_managed_disk.id,
///     virtual_machine_id=example_virtual_machine.id,
///     lun=10,
///     caching="ReadWrite")
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
///     var exampleDataDiskAttachment = new Azure.Compute.DataDiskAttachment("example", new()
///     {
///         ManagedDiskId = exampleManagedDisk.Id,
///         VirtualMachineId = exampleVirtualMachine.Id,
///         Lun = 10,
///         Caching = "ReadWrite",
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
/// 		exampleVirtualMachine, err := compute.NewVirtualMachine(ctx, "example", &compute.VirtualMachineArgs{
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
/// 		_, err = compute.NewDataDiskAttachment(ctx, "example", &compute.DataDiskAttachmentArgs{
/// 			ManagedDiskId:    exampleManagedDisk.ID().ToIDOutput().ToStringOutput(),
/// 			VirtualMachineId: exampleVirtualMachine.ID().ToIDOutput().ToStringOutput(),
/// 			Lun:              pulumi.Int(10),
/// 			Caching:          pulumi.String("ReadWrite"),
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
/// resource "azure_compute_datadiskattachment" "example" {
///   managed_disk_id    = azure_compute_manageddisk.example.id
///   virtual_machine_id = azure_compute_virtualmachine.example.id
///   lun                = "10"
///   caching            = "ReadWrite"
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
/// import com.pulumi.azure.compute.DataDiskAttachment;
/// import com.pulumi.azure.compute.DataDiskAttachmentArgs;
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
///         var exampleDataDiskAttachment = new DataDiskAttachment("exampleDataDiskAttachment", DataDiskAttachmentArgs.builder()
///             .managedDiskId(exampleManagedDisk.id())
///             .virtualMachineId(exampleVirtualMachine.id())
///             .lun(10)
///             .caching("ReadWrite")
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
///   exampleDataDiskAttachment:
///     type: azure:compute:DataDiskAttachment
///     name: example
///     properties:
///       managedDiskId: ${exampleManagedDisk.id}
///       virtualMachineId: ${exampleVirtualMachine.id}
///       lun: '10'
///       caching: ReadWrite
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
/// Virtual Machines Data Disk Attachments can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:compute/dataDiskAttachment:DataDiskAttachment example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Compute/virtualMachines/machine1/dataDisks/disk1
/// ```
///
/// &gt; **Note:** This is provider-specific ID matching the format: `{virtualMachineID}/dataDisks/{diskName}`
class DataDiskAttachment extends pulumi.CustomResource {
  /// Specifies the caching requirements for this Data Disk. Possible values include `None`, `ReadOnly` and `ReadWrite`.
  late final pulumi.Output<String> caching;
  /// The Create Option of the Data Disk, such as `Empty` or `Attach`. Defaults to `Attach`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> createOption;
  /// The Logical Unit Number of the Data Disk, which needs to be unique within the Virtual Machine. Changing this forces a new resource to be created.
  late final pulumi.Output<int> lun;
  /// The ID of an existing Managed Disk which should be attached. Changing this forces a new resource to be created.
  late final pulumi.Output<String> managedDiskId;
  /// The ID of the Virtual Machine to which the Data Disk should be attached. Changing this forces a new resource to be created.
  late final pulumi.Output<String> virtualMachineId;
  /// Specifies if Write Accelerator is enabled on the disk. This can only be enabled on `Premium_LRS` managed disks with no caching and [M-Series VMs](https://docs.microsoft.com/azure/virtual-machines/workloads/sap/how-to-enable-write-accelerator). Defaults to `false`.
  late final pulumi.Output<bool?> writeAcceleratorEnabled;

  /// Creates a new [DataDiskAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataDiskAttachment]. {@macro pulumi_compute_data_disk_attachment_data_disk_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataDiskAttachment(
    String name, {
    DataDiskAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:compute/dataDiskAttachment:DataDiskAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    caching = registerOutput<String>('caching');
    createOption = registerOutput<String?>('createOption');
    lun = registerOutput<int>('lun');
    managedDiskId = registerOutput<String>('managedDiskId');
    virtualMachineId = registerOutput<String>('virtualMachineId');
    writeAcceleratorEnabled = registerOutput<bool?>('writeAcceleratorEnabled');
  }

  /// Gets an existing [DataDiskAttachment] resource's state with the given [name] and [id].
  static DataDiskAttachment get(
    String name,
    pulumi.Input<String> id, {
    DataDiskAttachmentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DataDiskAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DataDiskAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:compute/dataDiskAttachment:DataDiskAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    caching = registerOutput<String>('caching');
    createOption = registerOutput<String?>('createOption');
    lun = registerOutput<int>('lun');
    managedDiskId = registerOutput<String>('managedDiskId');
    virtualMachineId = registerOutput<String>('virtualMachineId');
    writeAcceleratorEnabled = registerOutput<bool?>('writeAcceleratorEnabled');
  }

  /// Creates a typed reference to an existing [DataDiskAttachment] resource.
  DataDiskAttachment.reference(String urn)
    : super(
        'azure:compute/dataDiskAttachment:DataDiskAttachment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    caching = registerOutput<String>('caching');
    createOption = registerOutput<String?>('createOption');
    lun = registerOutput<int>('lun');
    managedDiskId = registerOutput<String>('managedDiskId');
    virtualMachineId = registerOutput<String>('virtualMachineId');
    writeAcceleratorEnabled = registerOutput<bool?>('writeAcceleratorEnabled');
  }
}
