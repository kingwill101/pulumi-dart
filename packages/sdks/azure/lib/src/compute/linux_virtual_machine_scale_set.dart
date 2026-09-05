import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_virtual_machine_scale_set_additional_capabilities.dart';
import 'linux_virtual_machine_scale_set_admin_ssh_key.dart';
import 'linux_virtual_machine_scale_set_args.dart';
import 'linux_virtual_machine_scale_set_automatic_instance_repair.dart';
import 'linux_virtual_machine_scale_set_automatic_os_upgrade_policy.dart';
import 'linux_virtual_machine_scale_set_boot_diagnostics.dart';
import 'linux_virtual_machine_scale_set_data_disk.dart';
import 'linux_virtual_machine_scale_set_extension.dart';
import 'linux_virtual_machine_scale_set_gallery_application.dart';
import 'linux_virtual_machine_scale_set_identity.dart';
import 'linux_virtual_machine_scale_set_network_interface.dart';
import 'linux_virtual_machine_scale_set_os_disk.dart';
import 'linux_virtual_machine_scale_set_plan.dart';
import 'linux_virtual_machine_scale_set_rolling_upgrade_policy.dart';
import 'linux_virtual_machine_scale_set_scale_in.dart';
import 'linux_virtual_machine_scale_set_secret.dart';
import 'linux_virtual_machine_scale_set_source_image_reference.dart';
import 'linux_virtual_machine_scale_set_spot_restore.dart';
import 'linux_virtual_machine_scale_set_state.dart';
import 'linux_virtual_machine_scale_set_termination_notification.dart';

/// Manages a Linux Virtual Machine Scale Set.
///
/// ## Disclaimers
///
/// &gt; **Note:** As of the **v2.86.0** (November 19, 2021) release of the provider this resource will only create Virtual Machine Scale Sets with the **Uniform** Orchestration Mode. For Virtual Machine Scale Sets with **Flexible** orchestration mode, use `azure.compute.OrchestratedVirtualMachineScaleSet`. Flexible orchestration mode is recommended for workloads on Azure.
///
/// ## Example Usage
///
/// This example provisions a basic Linux Virtual Machine Scale Set on an internal network.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const firstPublicKey = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC+wWK73dCr+jgQOAxNsHAnNNNMEMWOHYEccp6wJm2gotpr9katuF/ZAdou5AaW1C61slRkHRkpRRX9FA9CYBiitZgvCCz+3nWNN7l/Up54Zps/pHWGZLHNJZRYyAB6j5yVLMVHIHriY49d/GZTZVNB8GoJv9Gakwc/fuEZYYl4YDFiGMBP///TzlI4jhiJzjKnEvqPFki5p2ZRJqcbCiF4pJrxUQR/RXqVFQdbRLZgYfJ8xGB878RENq3yQ39d8dVOkq4edbkzwcUmwwwkYVPIoDGsYLaRHnG+To7FvMeyO7xDVQkMKzopTQV8AuKpyvpqu0a9pWOMaiCyDytO7GGN you@me.com";
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "example-network",
///     resourceGroupName: example.name,
///     location: example.location,
///     addressSpaces: ["10.0.0.0/16"],
/// });
/// const internal = new azure.network.Subnet("internal", {
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
///     instances: 1,
///     adminUsername: "adminuser",
///     adminSshKeys: [{
///         username: "adminuser",
///         publicKey: firstPublicKey,
///     }],
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
///             subnetId: internal.id,
///         }],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// first_public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC+wWK73dCr+jgQOAxNsHAnNNNMEMWOHYEccp6wJm2gotpr9katuF/ZAdou5AaW1C61slRkHRkpRRX9FA9CYBiitZgvCCz+3nWNN7l/Up54Zps/pHWGZLHNJZRYyAB6j5yVLMVHIHriY49d/GZTZVNB8GoJv9Gakwc/fuEZYYl4YDFiGMBP///TzlI4jhiJzjKnEvqPFki5p2ZRJqcbCiF4pJrxUQR/RXqVFQdbRLZgYfJ8xGB878RENq3yQ39d8dVOkq4edbkzwcUmwwwkYVPIoDGsYLaRHnG+To7FvMeyO7xDVQkMKzopTQV8AuKpyvpqu0a9pWOMaiCyDytO7GGN you@me.com"
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="example-network",
///     resource_group_name=example.name,
///     location=example.location,
///     address_spaces=["10.0.0.0/16"])
/// internal = azure.network.Subnet("internal",
///     name="internal",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.2.0/24"])
/// example_linux_virtual_machine_scale_set = azure.compute.LinuxVirtualMachineScaleSet("example",
///     name="example-vmss",
///     resource_group_name=example.name,
///     location=example.location,
///     sku="Standard_D4_v5",
///     instances=1,
///     admin_username="adminuser",
///     admin_ssh_keys=[{
///         "username": "adminuser",
///         "public_key": first_public_key,
///     }],
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
///             "subnet_id": internal.id,
///         }],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var firstPublicKey = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC+wWK73dCr+jgQOAxNsHAnNNNMEMWOHYEccp6wJm2gotpr9katuF/ZAdou5AaW1C61slRkHRkpRRX9FA9CYBiitZgvCCz+3nWNN7l/Up54Zps/pHWGZLHNJZRYyAB6j5yVLMVHIHriY49d/GZTZVNB8GoJv9Gakwc/fuEZYYl4YDFiGMBP///TzlI4jhiJzjKnEvqPFki5p2ZRJqcbCiF4pJrxUQR/RXqVFQdbRLZgYfJ8xGB878RENq3yQ39d8dVOkq4edbkzwcUmwwwkYVPIoDGsYLaRHnG+To7FvMeyO7xDVQkMKzopTQV8AuKpyvpqu0a9pWOMaiCyDytO7GGN you@me.com";
///
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "example-network",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///     });
///
///     var @internal = new Azure.Network.Subnet("internal", new()
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
///         Instances = 1,
///         AdminUsername = "adminuser",
///         AdminSshKeys = new[]
///         {
///             new Azure.Compute.Inputs.LinuxVirtualMachineScaleSetAdminSshKeyArgs
///             {
///                 Username = "adminuser",
///                 PublicKey = firstPublicKey,
///             },
///         },
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
///                         SubnetId = @internal.Id,
///                     },
///                 },
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
/// 		firstPublicKey := "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC+wWK73dCr+jgQOAxNsHAnNNNMEMWOHYEccp6wJm2gotpr9katuF/ZAdou5AaW1C61slRkHRkpRRX9FA9CYBiitZgvCCz+3nWNN7l/Up54Zps/pHWGZLHNJZRYyAB6j5yVLMVHIHriY49d/GZTZVNB8GoJv9Gakwc/fuEZYYl4YDFiGMBP///TzlI4jhiJzjKnEvqPFki5p2ZRJqcbCiF4pJrxUQR/RXqVFQdbRLZgYfJ8xGB878RENq3yQ39d8dVOkq4edbkzwcUmwwwkYVPIoDGsYLaRHnG+To7FvMeyO7xDVQkMKzopTQV8AuKpyvpqu0a9pWOMaiCyDytO7GGN you@me.com"
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name:              pulumi.String("example-network"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		internal, err := network.NewSubnet(ctx, "internal", &network.SubnetArgs{
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
/// 		_, err = compute.NewLinuxVirtualMachineScaleSet(ctx, "example", &compute.LinuxVirtualMachineScaleSetArgs{
/// 			Name:              pulumi.String("example-vmss"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Sku:               pulumi.String("Standard_D4_v5"),
/// 			Instances:         pulumi.Int(1),
/// 			AdminUsername:     pulumi.String("adminuser"),
/// 			AdminSshKeys: compute.LinuxVirtualMachineScaleSetAdminSshKeyArray{
/// 				&compute.LinuxVirtualMachineScaleSetAdminSshKeyArgs{
/// 					Username:  pulumi.String("adminuser"),
/// 					PublicKey: pulumi.String(firstPublicKey),
/// 				},
/// 			},
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
/// 							SubnetId: internal.ID().ToIDOutput().ToStringOutput(),
/// 						},
/// 					},
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
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   address_spaces      = ["10.0.0.0/16"]
/// }
/// resource "azure_network_subnet" "internal" {
///   name                 = "internal"
///   resource_group_name  = azure_core_resourcegroup.example.name
///   virtual_network_name = azure_network_virtualnetwork.example.name
///   address_prefixes     = ["10.0.2.0/24"]
/// }
/// resource "azure_compute_linuxvirtualmachinescaleset" "example" {
///   name                = "example-vmss"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   sku                 = "Standard_D4_v5"
///   instances           = 1
///   admin_username      = "adminuser"
///   admin_ssh_keys {
///     username   = "adminuser"
///     public_key = local.firstPublicKey
///   }
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
///       subnet_id = azure_network_subnet.internal.id
///     }
///   }
/// }
/// locals {
///   firstPublicKey = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC+wWK73dCr+jgQOAxNsHAnNNNMEMWOHYEccp6wJm2gotpr9katuF/ZAdou5AaW1C61slRkHRkpRRX9FA9CYBiitZgvCCz+3nWNN7l/Up54Zps/pHWGZLHNJZRYyAB6j5yVLMVHIHriY49d/GZTZVNB8GoJv9Gakwc/fuEZYYl4YDFiGMBP///TzlI4jhiJzjKnEvqPFki5p2ZRJqcbCiF4pJrxUQR/RXqVFQdbRLZgYfJ8xGB878RENq3yQ39d8dVOkq4edbkzwcUmwwwkYVPIoDGsYLaRHnG+To7FvMeyO7xDVQkMKzopTQV8AuKpyvpqu0a9pWOMaiCyDytO7GGN you@me.com"
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
/// import com.pulumi.azure.compute.LinuxVirtualMachineScaleSet;
/// import com.pulumi.azure.compute.LinuxVirtualMachineScaleSetArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineScaleSetAdminSshKeyArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineScaleSetSourceImageReferenceArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineScaleSetOsDiskArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineScaleSetNetworkInterfaceArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineScaleSetNetworkInterfaceIpConfigurationArgs;
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
///         final var firstPublicKey = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC+wWK73dCr+jgQOAxNsHAnNNNMEMWOHYEccp6wJm2gotpr9katuF/ZAdou5AaW1C61slRkHRkpRRX9FA9CYBiitZgvCCz+3nWNN7l/Up54Zps/pHWGZLHNJZRYyAB6j5yVLMVHIHriY49d/GZTZVNB8GoJv9Gakwc/fuEZYYl4YDFiGMBP///TzlI4jhiJzjKnEvqPFki5p2ZRJqcbCiF4pJrxUQR/RXqVFQdbRLZgYfJ8xGB878RENq3yQ39d8dVOkq4edbkzwcUmwwwkYVPIoDGsYLaRHnG+To7FvMeyO7xDVQkMKzopTQV8AuKpyvpqu0a9pWOMaiCyDytO7GGN you@me.com";
///
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("example-network")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .addressSpaces("10.0.0.0/16")
///             .build());
///
///         var internal = new Subnet("internal", SubnetArgs.builder()
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
///             .instances(1)
///             .adminUsername("adminuser")
///             .adminSshKeys(LinuxVirtualMachineScaleSetAdminSshKeyArgs.builder()
///                 .username("adminuser")
///                 .publicKey(firstPublicKey)
///                 .build())
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
///                     .subnetId(internal.id())
///                     .build())
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
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       addressSpaces:
///         - 10.0.0.0/16
///   internal:
///     type: azure:network:Subnet
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
///       instances: 1
///       adminUsername: adminuser
///       adminSshKeys:
///         - username: adminuser
///           publicKey: ${firstPublicKey}
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
///               subnetId: ${internal.id}
/// variables:
///   firstPublicKey: ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC+wWK73dCr+jgQOAxNsHAnNNNMEMWOHYEccp6wJm2gotpr9katuF/ZAdou5AaW1C61slRkHRkpRRX9FA9CYBiitZgvCCz+3nWNN7l/Up54Zps/pHWGZLHNJZRYyAB6j5yVLMVHIHriY49d/GZTZVNB8GoJv9Gakwc/fuEZYYl4YDFiGMBP///TzlI4jhiJzjKnEvqPFki5p2ZRJqcbCiF4pJrxUQR/RXqVFQdbRLZgYfJ8xGB878RENq3yQ39d8dVOkq4edbkzwcUmwwwkYVPIoDGsYLaRHnG+To7FvMeyO7xDVQkMKzopTQV8AuKpyvpqu0a9pWOMaiCyDytO7GGN you@me.com
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Compute` - 2025-04-01
///
/// ## Import
///
/// Linux Virtual Machine Scale Sets can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:compute/linuxVirtualMachineScaleSet:LinuxVirtualMachineScaleSet example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Compute/virtualMachineScaleSets/scaleset1
/// ```
class LinuxVirtualMachineScaleSet extends pulumi.CustomResource {
  /// An `additionalCapabilities` block as defined below.
  late final pulumi.Output<LinuxVirtualMachineScaleSetAdditionalCapabilities?> additionalCapabilities;
  /// The Password which should be used for the local-administrator on this Virtual Machine. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** When an `adminPassword` is specified `disablePasswordAuthentication` must be set to `false`.
  ///
  /// &gt; **Note:** One of either `adminPassword` or `adminSshKey` must be specified.
  late final pulumi.Output<String?> adminPassword;
  /// One or more `adminSshKey` blocks as defined below.
  ///
  /// &gt; **Note:** One of either `adminPassword` or `adminSshKey` must be specified.
  late final pulumi.Output<List<LinuxVirtualMachineScaleSetAdminSshKey>?> adminSshKeys;
  /// The username of the local administrator on each Virtual Machine Scale Set instance. Changing this forces a new resource to be created.
  late final pulumi.Output<String> adminUsername;
  /// An `automaticInstanceRepair` block as defined below. To enable the automatic instance repair, this Virtual Machine Scale Set must have a valid `healthProbeId` or an [Application Health Extension](https://docs.microsoft.com/azure/virtual-machine-scale-sets/virtual-machine-scale-sets-health-extension).
  ///
  /// &gt; **Note:** For more information about Automatic Instance Repair, please refer to the [product documentation](https://docs.microsoft.com/azure/virtual-machine-scale-sets/virtual-machine-scale-sets-automatic-instance-repairs).
  late final pulumi.Output<LinuxVirtualMachineScaleSetAutomaticInstanceRepair> automaticInstanceRepair;
  /// An `automaticOsUpgradePolicy` block as defined below. This can only be specified when `upgradeMode` is set to either `Automatic` or `Rolling`.
  late final pulumi.Output<LinuxVirtualMachineScaleSetAutomaticOsUpgradePolicy?> automaticOsUpgradePolicy;
  /// A `bootDiagnostics` block as defined below.
  late final pulumi.Output<LinuxVirtualMachineScaleSetBootDiagnostics?> bootDiagnostics;
  /// Specifies the ID of the Capacity Reservation Group which the Virtual Machine Scale Set should be allocated to. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** `capacityReservationGroupId` cannot be used with `proximityPlacementGroupId`
  ///
  /// &gt; **Note:** `singlePlacementGroup` must be set to `false` when `capacityReservationGroupId` is specified.
  late final pulumi.Output<String?> capacityReservationGroupId;
  /// The prefix which should be used for the name of the Virtual Machines in this Scale Set. If unspecified this defaults to the value for the `name` field. If the value of the `name` field is not a valid `computerNamePrefix`, then you must specify `computerNamePrefix`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> computerNamePrefix;
  /// The Base64-Encoded Custom Data which should be used for this Virtual Machine Scale Set.
  ///
  /// &gt; **Note:** When Custom Data has been configured, it's not possible to remove it without tainting the Virtual Machine Scale Set, due to a limitation of the Azure API.
  late final pulumi.Output<String?> customData;
  /// One or more `dataDisk` blocks as defined below.
  late final pulumi.Output<List<LinuxVirtualMachineScaleSetDataDisk>?> dataDisks;
  /// Should Password Authentication be disabled on this Virtual Machine Scale Set? Defaults to `true`.
  ///
  /// &gt; **Note:** In general we'd recommend using SSH Keys for authentication rather than Passwords - but there's tradeoff's to each - please [see this thread for more information](https://security.stackexchange.com/questions/69407/why-is-using-an-ssh-key-more-secure-than-using-passwords).
  ///
  /// &gt; **Note:** When a `adminPassword` is specified `disablePasswordAuthentication` must be set to `false`.
  late final pulumi.Output<bool?> disablePasswordAuthentication;
  /// Should Virtual Machine Extensions be run on Overprovisioned Virtual Machines in the Scale Set? Defaults to `false`.
  late final pulumi.Output<bool?> doNotRunExtensionsOnOverprovisionedMachines;
  /// Specifies the Edge Zone within the Azure Region where this Linux Virtual Machine Scale Set should exist. Changing this forces a new Linux Virtual Machine Scale Set to be created.
  late final pulumi.Output<String?> edgeZone;
  /// Should all of the disks (including the temp disk) attached to this Virtual Machine be encrypted by enabling Encryption at Host?
  late final pulumi.Output<bool?> encryptionAtHostEnabled;
  /// Specifies the eviction policy for Virtual Machines in this Scale Set. Possible values are `Deallocate` and `Delete`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** This can only be configured when `priority` is set to `Spot`.
  late final pulumi.Output<String?> evictionPolicy;
  /// Should extension operations be allowed on the Virtual Machine Scale Set? Possible values are `true` or `false`. Defaults to `true`. Changing this forces a new Linux Virtual Machine Scale Set to be created.
  ///
  /// &gt; **Note:** `extensionOperationsEnabled` may only be set to `false` if there are no extensions defined in the `extension` field.
  late final pulumi.Output<bool?> extensionOperationsEnabled;
  /// One or more `extension` blocks as defined below
  late final pulumi.Output<List<LinuxVirtualMachineScaleSetExtension>> extensions;
  /// Specifies the duration allocated for all extensions to start. The time duration should be between `15` minutes and `120` minutes (inclusive) and should be specified in ISO 8601 format. Defaults to `PT1H30M`.
  late final pulumi.Output<String?> extensionsTimeBudget;
  /// One or more `galleryApplication` blocks as defined below.
  late final pulumi.Output<List<LinuxVirtualMachineScaleSetGalleryApplication>?> galleryApplications;
  /// The ID of a Load Balancer Probe which should be used to determine the health of an instance. This is Required and can only be specified when `upgradeMode` is set to `Automatic` or `Rolling`.
  late final pulumi.Output<String?> healthProbeId;
  /// Specifies the ID of the dedicated host group that the virtual machine scale set resides in. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> hostGroupId;
  /// An `identity` block as defined below.
  late final pulumi.Output<LinuxVirtualMachineScaleSetIdentity?> identity;
  /// The number of Virtual Machines in the Scale Set. Defaults to `0`.
  ///
  /// &gt; **NOTE:** If you're using AutoScaling, you may wish to use [`Ignore Changes` functionality](https://www.pulumi.com/docs/intro/concepts/programming-model/#ignorechanges) to ignore changes to this field.
  late final pulumi.Output<int?> instances;
  /// The Azure location where the Linux Virtual Machine Scale Set should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The maximum price you're willing to pay for each Virtual Machine in this Scale Set, in US Dollars; which must be greater than the current spot price. If this bid price falls below the current spot price the Virtual Machines in the Scale Set will be evicted using the `evictionPolicy`. Defaults to `-1`, which means that each Virtual Machine in this Scale Set should not be evicted for price reasons.
  ///
  /// &gt; **Note:** This can only be configured when `priority` is set to `Spot`.
  late final pulumi.Output<double?> maxBidPrice;
  /// The name of the Linux Virtual Machine Scale Set. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// One or more `networkInterface` blocks as defined below.
  late final pulumi.Output<List<LinuxVirtualMachineScaleSetNetworkInterface>> networkInterfaces;
  /// An `osDisk` block as defined below.
  late final pulumi.Output<LinuxVirtualMachineScaleSetOsDisk> osDisk;
  /// Should Azure over-provision Virtual Machines in this Scale Set? This means that multiple Virtual Machines will be provisioned and Azure will keep the instances which become available first - which improves provisioning success rates and improves deployment time. You're not billed for these over-provisioned VM's and they don't count towards the Subscription Quota. Defaults to `true`.
  late final pulumi.Output<bool?> overprovision;
  /// A `plan` block as defined below. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** When using an image from Azure Marketplace a `plan` must be specified.
  late final pulumi.Output<LinuxVirtualMachineScaleSetPlan?> plan;
  /// Specifies the number of fault domains that are used by this Linux Virtual Machine Scale Set. Changing this forces a new resource to be created.
  late final pulumi.Output<int> platformFaultDomainCount;
  /// The Priority of this Virtual Machine Scale Set. Possible values are `Regular` and `Spot`. Defaults to `Regular`. Changing this value forces a new resource.
  ///
  /// &gt; **Note:** When `priority` is set to `Spot` an `evictionPolicy` must be specified.
  late final pulumi.Output<String?> priority;
  /// Should the Azure VM Agent be provisioned on each Virtual Machine in the Scale Set? Defaults to `true`. Changing this value forces a new resource to be created.
  late final pulumi.Output<bool?> provisionVmAgent;
  /// The ID of the Proximity Placement Group in which the Virtual Machine Scale Set should be assigned to. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> proximityPlacementGroupId;
  /// Should resilient VM creation be enabled? When enabled, the service will attempt to create VMs in alternative fault domains or zones if the primary location fails during creation. Defaults to `false`.
  ///
  /// &gt; **Note:** `resilientVmCreationEnabled` is currently not supported in the `austriaeast`, `belgiumcentral`, `centraluseuap`, `chilecentral`, `indonesiacentral`, `israelnorthwest`, `malaysiawest`, `mexicocentral`, `newzealandnorth`, `southcentralus2`, `southindia`, `southeastus3`, `southwestus`, `eastasia`, `eastus`, `southcentralus`, `southeastasia`, and `westeurope` regions.
  late final pulumi.Output<bool?> resilientVmCreationEnabled;
  /// Should resilient VM deletion be enabled? When enabled, the service will use a more resilient deletion process that attempts to gracefully handle failures during VM termination. Defaults to `false`.
  ///
  /// &gt; **Note:** `resilientVmDeletionEnabled` is currently not supported in the `austriaeast`, `belgiumcentral`, `centraluseuap`, `chilecentral`, `indonesiacentral`, `israelnorthwest`, `malaysiawest`, `mexicocentral`, `newzealandnorth`, `southcentralus2`, `southindia`, `southeastus3`, `southwestus`, `eastasia`, `eastus`, `southcentralus`, `southeastasia`, and `westeurope` regions.
  late final pulumi.Output<bool?> resilientVmDeletionEnabled;
  /// The name of the Resource Group in which the Linux Virtual Machine Scale Set should be exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A `rollingUpgradePolicy` block as defined below. This is Required and can only be specified when `upgradeMode` is set to `Automatic` or `Rolling`. Changing this forces a new resource to be created.
  late final pulumi.Output<LinuxVirtualMachineScaleSetRollingUpgradePolicy?> rollingUpgradePolicy;
  /// A `scaleIn` block as defined below.
  late final pulumi.Output<LinuxVirtualMachineScaleSetScaleIn?> scaleIn;
  /// One or more `secret` blocks as defined below.
  late final pulumi.Output<List<LinuxVirtualMachineScaleSetSecret>?> secrets;
  /// Specifies whether secure boot should be enabled on the virtual machine. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> secureBootEnabled;
  /// Should this Virtual Machine Scale Set be limited to a Single Placement Group, which means the number of instances will be capped at 100 Virtual Machines. Defaults to `true`.
  late final pulumi.Output<bool?> singlePlacementGroup;
  /// The Virtual Machine SKU for the Scale Set, such as `Standard_D4_v5`.
  late final pulumi.Output<String> sku;
  /// The ID of an Image which each Virtual Machine in this Scale Set should be based on. Possible Image ID types include `Image ID`, `Shared Image ID`, `Shared Image Version ID`, `Community Gallery Image ID`, `Community Gallery Image Version ID`, `Shared Gallery Image ID` and `Shared Gallery Image Version ID`.
  ///
  /// &gt; **Note:** One of either `sourceImageId` or `sourceImageReference` must be set.
  late final pulumi.Output<String?> sourceImageId;
  /// A `sourceImageReference` block as defined below.
  ///
  /// &gt; **Note:** One of either `sourceImageId` or `sourceImageReference` must be set.
  late final pulumi.Output<LinuxVirtualMachineScaleSetSourceImageReference?> sourceImageReference;
  /// A `spotRestore` block as defined below.
  late final pulumi.Output<LinuxVirtualMachineScaleSetSpotRestore> spotRestore;
  /// A mapping of tags which should be assigned to this Virtual Machine Scale Set.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A `terminationNotification` block as defined below.
  late final pulumi.Output<LinuxVirtualMachineScaleSetTerminationNotification> terminationNotification;
  /// The Unique ID for this Linux Virtual Machine Scale Set.
  late final pulumi.Output<String> uniqueId;
  /// Specifies how Upgrades (e.g. changing the Image/SKU) should be performed to Virtual Machine Instances. Possible values are `Automatic`, `Manual` and `Rolling`. Defaults to `Manual`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** If rolling upgrades are configured and running on a Linux Virtual Machine Scale Set, they will be cancelled when Terraform tries to destroy the resource.
  late final pulumi.Output<String?> upgradeMode;
  /// The Base64-Encoded User Data which should be used for this Virtual Machine Scale Set.
  late final pulumi.Output<String?> userData;
  /// Specifies whether vTPM should be enabled on the virtual machine. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> vtpmEnabled;
  /// Should the Virtual Machines in this Scale Set be strictly evenly distributed across Availability Zones? Defaults to `false`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** This can only be set to `true` when one or more `zones` are configured.
  late final pulumi.Output<bool?> zoneBalance;
  /// Specifies a list of Availability Zones in which this Linux Virtual Machine Scale Set should be located.
  ///
  /// &gt; **Note:** Updating `zones` to remove an existing zone forces a new Virtual Machine Scale Set to be created.
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [LinuxVirtualMachineScaleSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LinuxVirtualMachineScaleSet]. {@macro pulumi_compute_linux_virtual_machine_scale_set_linux_virtual_machine_scale_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LinuxVirtualMachineScaleSet(
    String name, {
    LinuxVirtualMachineScaleSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:compute/linuxVirtualMachineScaleSet:LinuxVirtualMachineScaleSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
          additionalSecretOutputs: const ['adminPassword', 'customData'],
        ) {
    additionalCapabilities = registerOutput<LinuxVirtualMachineScaleSetAdditionalCapabilities?>('additionalCapabilities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxVirtualMachineScaleSetAdditionalCapabilities.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    adminPassword = registerOutput<String?>('adminPassword', isSecret: true);
    adminSshKeys = registerOutput<List<LinuxVirtualMachineScaleSetAdminSshKey>?>('adminSshKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LinuxVirtualMachineScaleSetAdminSshKey>(guardedValue, (value) => LinuxVirtualMachineScaleSetAdminSshKey.fromMap((value as Map).cast<String, dynamic>())); });
    adminUsername = registerOutput<String>('adminUsername');
    automaticInstanceRepair = registerOutput<LinuxVirtualMachineScaleSetAutomaticInstanceRepair>('automaticInstanceRepair', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxVirtualMachineScaleSetAutomaticInstanceRepair.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    automaticOsUpgradePolicy = registerOutput<LinuxVirtualMachineScaleSetAutomaticOsUpgradePolicy?>('automaticOsUpgradePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxVirtualMachineScaleSetAutomaticOsUpgradePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    bootDiagnostics = registerOutput<LinuxVirtualMachineScaleSetBootDiagnostics?>('bootDiagnostics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxVirtualMachineScaleSetBootDiagnostics.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    capacityReservationGroupId = registerOutput<String?>('capacityReservationGroupId');
    computerNamePrefix = registerOutput<String>('computerNamePrefix');
    customData = registerOutput<String?>('customData', isSecret: true);
    dataDisks = registerOutput<List<LinuxVirtualMachineScaleSetDataDisk>?>('dataDisks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LinuxVirtualMachineScaleSetDataDisk>(guardedValue, (value) => LinuxVirtualMachineScaleSetDataDisk.fromMap((value as Map).cast<String, dynamic>())); });
    disablePasswordAuthentication = registerOutput<bool?>('disablePasswordAuthentication');
    doNotRunExtensionsOnOverprovisionedMachines = registerOutput<bool?>('doNotRunExtensionsOnOverprovisionedMachines');
    edgeZone = registerOutput<String?>('edgeZone');
    encryptionAtHostEnabled = registerOutput<bool?>('encryptionAtHostEnabled');
    evictionPolicy = registerOutput<String?>('evictionPolicy');
    extensionOperationsEnabled = registerOutput<bool?>('extensionOperationsEnabled');
    extensions = registerOutput<List<LinuxVirtualMachineScaleSetExtension>>('extensions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LinuxVirtualMachineScaleSetExtension>(guardedValue, (value) => LinuxVirtualMachineScaleSetExtension.fromMap((value as Map).cast<String, dynamic>())); });
    extensionsTimeBudget = registerOutput<String?>('extensionsTimeBudget');
    galleryApplications = registerOutput<List<LinuxVirtualMachineScaleSetGalleryApplication>?>('galleryApplications', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LinuxVirtualMachineScaleSetGalleryApplication>(guardedValue, (value) => LinuxVirtualMachineScaleSetGalleryApplication.fromMap((value as Map).cast<String, dynamic>())); });
    healthProbeId = registerOutput<String?>('healthProbeId');
    hostGroupId = registerOutput<String?>('hostGroupId');
    identity = registerOutput<LinuxVirtualMachineScaleSetIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxVirtualMachineScaleSetIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instances = registerOutput<int?>('instances');
    location = registerOutput<String>('location');
    maxBidPrice = registerOutput<double?>('maxBidPrice');
    this.name = registerOutput<String>('name');
    networkInterfaces = registerOutput<List<LinuxVirtualMachineScaleSetNetworkInterface>>('networkInterfaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LinuxVirtualMachineScaleSetNetworkInterface>(guardedValue, (value) => LinuxVirtualMachineScaleSetNetworkInterface.fromMap((value as Map).cast<String, dynamic>())); });
    osDisk = registerOutput<LinuxVirtualMachineScaleSetOsDisk>('osDisk', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxVirtualMachineScaleSetOsDisk.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    overprovision = registerOutput<bool?>('overprovision');
    plan = registerOutput<LinuxVirtualMachineScaleSetPlan?>('plan', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxVirtualMachineScaleSetPlan.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    platformFaultDomainCount = registerOutput<int>('platformFaultDomainCount');
    priority = registerOutput<String?>('priority');
    provisionVmAgent = registerOutput<bool?>('provisionVmAgent');
    proximityPlacementGroupId = registerOutput<String?>('proximityPlacementGroupId');
    resilientVmCreationEnabled = registerOutput<bool?>('resilientVmCreationEnabled');
    resilientVmDeletionEnabled = registerOutput<bool?>('resilientVmDeletionEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    rollingUpgradePolicy = registerOutput<LinuxVirtualMachineScaleSetRollingUpgradePolicy?>('rollingUpgradePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxVirtualMachineScaleSetRollingUpgradePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scaleIn = registerOutput<LinuxVirtualMachineScaleSetScaleIn?>('scaleIn', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxVirtualMachineScaleSetScaleIn.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    secrets = registerOutput<List<LinuxVirtualMachineScaleSetSecret>?>('secrets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LinuxVirtualMachineScaleSetSecret>(guardedValue, (value) => LinuxVirtualMachineScaleSetSecret.fromMap((value as Map).cast<String, dynamic>())); });
    secureBootEnabled = registerOutput<bool?>('secureBootEnabled');
    singlePlacementGroup = registerOutput<bool?>('singlePlacementGroup');
    sku = registerOutput<String>('sku');
    sourceImageId = registerOutput<String?>('sourceImageId');
    sourceImageReference = registerOutput<LinuxVirtualMachineScaleSetSourceImageReference?>('sourceImageReference', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxVirtualMachineScaleSetSourceImageReference.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spotRestore = registerOutput<LinuxVirtualMachineScaleSetSpotRestore>('spotRestore', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxVirtualMachineScaleSetSpotRestore.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    terminationNotification = registerOutput<LinuxVirtualMachineScaleSetTerminationNotification>('terminationNotification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxVirtualMachineScaleSetTerminationNotification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    uniqueId = registerOutput<String>('uniqueId');
    upgradeMode = registerOutput<String?>('upgradeMode');
    userData = registerOutput<String?>('userData');
    vtpmEnabled = registerOutput<bool?>('vtpmEnabled');
    zoneBalance = registerOutput<bool?>('zoneBalance');
    zones = registerOutput<List<String>?>('zones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Gets an existing [LinuxVirtualMachineScaleSet] resource's state with the given [name] and [id].
  static LinuxVirtualMachineScaleSet get(
    String name,
    pulumi.Input<String> id, {
    LinuxVirtualMachineScaleSetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return LinuxVirtualMachineScaleSet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  LinuxVirtualMachineScaleSet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:compute/linuxVirtualMachineScaleSet:LinuxVirtualMachineScaleSet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalCapabilities = registerOutput<LinuxVirtualMachineScaleSetAdditionalCapabilities?>('additionalCapabilities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxVirtualMachineScaleSetAdditionalCapabilities.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    adminPassword = registerOutput<String?>('adminPassword', isSecret: true);
    adminSshKeys = registerOutput<List<LinuxVirtualMachineScaleSetAdminSshKey>?>('adminSshKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LinuxVirtualMachineScaleSetAdminSshKey>(guardedValue, (value) => LinuxVirtualMachineScaleSetAdminSshKey.fromMap((value as Map).cast<String, dynamic>())); });
    adminUsername = registerOutput<String>('adminUsername');
    automaticInstanceRepair = registerOutput<LinuxVirtualMachineScaleSetAutomaticInstanceRepair>('automaticInstanceRepair', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxVirtualMachineScaleSetAutomaticInstanceRepair.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    automaticOsUpgradePolicy = registerOutput<LinuxVirtualMachineScaleSetAutomaticOsUpgradePolicy?>('automaticOsUpgradePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxVirtualMachineScaleSetAutomaticOsUpgradePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    bootDiagnostics = registerOutput<LinuxVirtualMachineScaleSetBootDiagnostics?>('bootDiagnostics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxVirtualMachineScaleSetBootDiagnostics.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    capacityReservationGroupId = registerOutput<String?>('capacityReservationGroupId');
    computerNamePrefix = registerOutput<String>('computerNamePrefix');
    customData = registerOutput<String?>('customData', isSecret: true);
    dataDisks = registerOutput<List<LinuxVirtualMachineScaleSetDataDisk>?>('dataDisks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LinuxVirtualMachineScaleSetDataDisk>(guardedValue, (value) => LinuxVirtualMachineScaleSetDataDisk.fromMap((value as Map).cast<String, dynamic>())); });
    disablePasswordAuthentication = registerOutput<bool?>('disablePasswordAuthentication');
    doNotRunExtensionsOnOverprovisionedMachines = registerOutput<bool?>('doNotRunExtensionsOnOverprovisionedMachines');
    edgeZone = registerOutput<String?>('edgeZone');
    encryptionAtHostEnabled = registerOutput<bool?>('encryptionAtHostEnabled');
    evictionPolicy = registerOutput<String?>('evictionPolicy');
    extensionOperationsEnabled = registerOutput<bool?>('extensionOperationsEnabled');
    extensions = registerOutput<List<LinuxVirtualMachineScaleSetExtension>>('extensions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LinuxVirtualMachineScaleSetExtension>(guardedValue, (value) => LinuxVirtualMachineScaleSetExtension.fromMap((value as Map).cast<String, dynamic>())); });
    extensionsTimeBudget = registerOutput<String?>('extensionsTimeBudget');
    galleryApplications = registerOutput<List<LinuxVirtualMachineScaleSetGalleryApplication>?>('galleryApplications', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LinuxVirtualMachineScaleSetGalleryApplication>(guardedValue, (value) => LinuxVirtualMachineScaleSetGalleryApplication.fromMap((value as Map).cast<String, dynamic>())); });
    healthProbeId = registerOutput<String?>('healthProbeId');
    hostGroupId = registerOutput<String?>('hostGroupId');
    identity = registerOutput<LinuxVirtualMachineScaleSetIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxVirtualMachineScaleSetIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instances = registerOutput<int?>('instances');
    location = registerOutput<String>('location');
    maxBidPrice = registerOutput<double?>('maxBidPrice');
    this.name = registerOutput<String>('name');
    networkInterfaces = registerOutput<List<LinuxVirtualMachineScaleSetNetworkInterface>>('networkInterfaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LinuxVirtualMachineScaleSetNetworkInterface>(guardedValue, (value) => LinuxVirtualMachineScaleSetNetworkInterface.fromMap((value as Map).cast<String, dynamic>())); });
    osDisk = registerOutput<LinuxVirtualMachineScaleSetOsDisk>('osDisk', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxVirtualMachineScaleSetOsDisk.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    overprovision = registerOutput<bool?>('overprovision');
    plan = registerOutput<LinuxVirtualMachineScaleSetPlan?>('plan', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxVirtualMachineScaleSetPlan.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    platformFaultDomainCount = registerOutput<int>('platformFaultDomainCount');
    priority = registerOutput<String?>('priority');
    provisionVmAgent = registerOutput<bool?>('provisionVmAgent');
    proximityPlacementGroupId = registerOutput<String?>('proximityPlacementGroupId');
    resilientVmCreationEnabled = registerOutput<bool?>('resilientVmCreationEnabled');
    resilientVmDeletionEnabled = registerOutput<bool?>('resilientVmDeletionEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    rollingUpgradePolicy = registerOutput<LinuxVirtualMachineScaleSetRollingUpgradePolicy?>('rollingUpgradePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxVirtualMachineScaleSetRollingUpgradePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scaleIn = registerOutput<LinuxVirtualMachineScaleSetScaleIn?>('scaleIn', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxVirtualMachineScaleSetScaleIn.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    secrets = registerOutput<List<LinuxVirtualMachineScaleSetSecret>?>('secrets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LinuxVirtualMachineScaleSetSecret>(guardedValue, (value) => LinuxVirtualMachineScaleSetSecret.fromMap((value as Map).cast<String, dynamic>())); });
    secureBootEnabled = registerOutput<bool?>('secureBootEnabled');
    singlePlacementGroup = registerOutput<bool?>('singlePlacementGroup');
    sku = registerOutput<String>('sku');
    sourceImageId = registerOutput<String?>('sourceImageId');
    sourceImageReference = registerOutput<LinuxVirtualMachineScaleSetSourceImageReference?>('sourceImageReference', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxVirtualMachineScaleSetSourceImageReference.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spotRestore = registerOutput<LinuxVirtualMachineScaleSetSpotRestore>('spotRestore', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxVirtualMachineScaleSetSpotRestore.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    terminationNotification = registerOutput<LinuxVirtualMachineScaleSetTerminationNotification>('terminationNotification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxVirtualMachineScaleSetTerminationNotification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    uniqueId = registerOutput<String>('uniqueId');
    upgradeMode = registerOutput<String?>('upgradeMode');
    userData = registerOutput<String?>('userData');
    vtpmEnabled = registerOutput<bool?>('vtpmEnabled');
    zoneBalance = registerOutput<bool?>('zoneBalance');
    zones = registerOutput<List<String>?>('zones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Creates a typed reference to an existing [LinuxVirtualMachineScaleSet] resource.
  LinuxVirtualMachineScaleSet.reference(String urn)
    : super(
        'azure:compute/linuxVirtualMachineScaleSet:LinuxVirtualMachineScaleSet',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['adminPassword', 'customData'],
        isResourceReference: true,
      ) {
    additionalCapabilities = registerOutput<LinuxVirtualMachineScaleSetAdditionalCapabilities?>('additionalCapabilities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxVirtualMachineScaleSetAdditionalCapabilities.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    adminPassword = registerOutput<String?>('adminPassword', isSecret: true);
    adminSshKeys = registerOutput<List<LinuxVirtualMachineScaleSetAdminSshKey>?>('adminSshKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LinuxVirtualMachineScaleSetAdminSshKey>(guardedValue, (value) => LinuxVirtualMachineScaleSetAdminSshKey.fromMap((value as Map).cast<String, dynamic>())); });
    adminUsername = registerOutput<String>('adminUsername');
    automaticInstanceRepair = registerOutput<LinuxVirtualMachineScaleSetAutomaticInstanceRepair>('automaticInstanceRepair', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxVirtualMachineScaleSetAutomaticInstanceRepair.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    automaticOsUpgradePolicy = registerOutput<LinuxVirtualMachineScaleSetAutomaticOsUpgradePolicy?>('automaticOsUpgradePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxVirtualMachineScaleSetAutomaticOsUpgradePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    bootDiagnostics = registerOutput<LinuxVirtualMachineScaleSetBootDiagnostics?>('bootDiagnostics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxVirtualMachineScaleSetBootDiagnostics.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    capacityReservationGroupId = registerOutput<String?>('capacityReservationGroupId');
    computerNamePrefix = registerOutput<String>('computerNamePrefix');
    customData = registerOutput<String?>('customData', isSecret: true);
    dataDisks = registerOutput<List<LinuxVirtualMachineScaleSetDataDisk>?>('dataDisks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LinuxVirtualMachineScaleSetDataDisk>(guardedValue, (value) => LinuxVirtualMachineScaleSetDataDisk.fromMap((value as Map).cast<String, dynamic>())); });
    disablePasswordAuthentication = registerOutput<bool?>('disablePasswordAuthentication');
    doNotRunExtensionsOnOverprovisionedMachines = registerOutput<bool?>('doNotRunExtensionsOnOverprovisionedMachines');
    edgeZone = registerOutput<String?>('edgeZone');
    encryptionAtHostEnabled = registerOutput<bool?>('encryptionAtHostEnabled');
    evictionPolicy = registerOutput<String?>('evictionPolicy');
    extensionOperationsEnabled = registerOutput<bool?>('extensionOperationsEnabled');
    extensions = registerOutput<List<LinuxVirtualMachineScaleSetExtension>>('extensions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LinuxVirtualMachineScaleSetExtension>(guardedValue, (value) => LinuxVirtualMachineScaleSetExtension.fromMap((value as Map).cast<String, dynamic>())); });
    extensionsTimeBudget = registerOutput<String?>('extensionsTimeBudget');
    galleryApplications = registerOutput<List<LinuxVirtualMachineScaleSetGalleryApplication>?>('galleryApplications', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LinuxVirtualMachineScaleSetGalleryApplication>(guardedValue, (value) => LinuxVirtualMachineScaleSetGalleryApplication.fromMap((value as Map).cast<String, dynamic>())); });
    healthProbeId = registerOutput<String?>('healthProbeId');
    hostGroupId = registerOutput<String?>('hostGroupId');
    identity = registerOutput<LinuxVirtualMachineScaleSetIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxVirtualMachineScaleSetIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instances = registerOutput<int?>('instances');
    location = registerOutput<String>('location');
    maxBidPrice = registerOutput<double?>('maxBidPrice');
    this.name = registerOutput<String>('name');
    networkInterfaces = registerOutput<List<LinuxVirtualMachineScaleSetNetworkInterface>>('networkInterfaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LinuxVirtualMachineScaleSetNetworkInterface>(guardedValue, (value) => LinuxVirtualMachineScaleSetNetworkInterface.fromMap((value as Map).cast<String, dynamic>())); });
    osDisk = registerOutput<LinuxVirtualMachineScaleSetOsDisk>('osDisk', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxVirtualMachineScaleSetOsDisk.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    overprovision = registerOutput<bool?>('overprovision');
    plan = registerOutput<LinuxVirtualMachineScaleSetPlan?>('plan', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxVirtualMachineScaleSetPlan.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    platformFaultDomainCount = registerOutput<int>('platformFaultDomainCount');
    priority = registerOutput<String?>('priority');
    provisionVmAgent = registerOutput<bool?>('provisionVmAgent');
    proximityPlacementGroupId = registerOutput<String?>('proximityPlacementGroupId');
    resilientVmCreationEnabled = registerOutput<bool?>('resilientVmCreationEnabled');
    resilientVmDeletionEnabled = registerOutput<bool?>('resilientVmDeletionEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    rollingUpgradePolicy = registerOutput<LinuxVirtualMachineScaleSetRollingUpgradePolicy?>('rollingUpgradePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxVirtualMachineScaleSetRollingUpgradePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scaleIn = registerOutput<LinuxVirtualMachineScaleSetScaleIn?>('scaleIn', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxVirtualMachineScaleSetScaleIn.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    secrets = registerOutput<List<LinuxVirtualMachineScaleSetSecret>?>('secrets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LinuxVirtualMachineScaleSetSecret>(guardedValue, (value) => LinuxVirtualMachineScaleSetSecret.fromMap((value as Map).cast<String, dynamic>())); });
    secureBootEnabled = registerOutput<bool?>('secureBootEnabled');
    singlePlacementGroup = registerOutput<bool?>('singlePlacementGroup');
    sku = registerOutput<String>('sku');
    sourceImageId = registerOutput<String?>('sourceImageId');
    sourceImageReference = registerOutput<LinuxVirtualMachineScaleSetSourceImageReference?>('sourceImageReference', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxVirtualMachineScaleSetSourceImageReference.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spotRestore = registerOutput<LinuxVirtualMachineScaleSetSpotRestore>('spotRestore', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxVirtualMachineScaleSetSpotRestore.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    terminationNotification = registerOutput<LinuxVirtualMachineScaleSetTerminationNotification>('terminationNotification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LinuxVirtualMachineScaleSetTerminationNotification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    uniqueId = registerOutput<String>('uniqueId');
    upgradeMode = registerOutput<String?>('upgradeMode');
    userData = registerOutput<String?>('userData');
    vtpmEnabled = registerOutput<bool?>('vtpmEnabled');
    zoneBalance = registerOutput<bool?>('zoneBalance');
    zones = registerOutput<List<String>?>('zones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }
}
