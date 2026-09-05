import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_virtual_machine_scale_set_additional_capabilities.dart';
import 'windows_virtual_machine_scale_set_additional_unattend_content.dart';
import 'windows_virtual_machine_scale_set_args.dart';
import 'windows_virtual_machine_scale_set_automatic_instance_repair.dart';
import 'windows_virtual_machine_scale_set_automatic_os_upgrade_policy.dart';
import 'windows_virtual_machine_scale_set_boot_diagnostics.dart';
import 'windows_virtual_machine_scale_set_data_disk.dart';
import 'windows_virtual_machine_scale_set_extension.dart';
import 'windows_virtual_machine_scale_set_gallery_application.dart';
import 'windows_virtual_machine_scale_set_identity.dart';
import 'windows_virtual_machine_scale_set_network_interface.dart';
import 'windows_virtual_machine_scale_set_os_disk.dart';
import 'windows_virtual_machine_scale_set_plan.dart';
import 'windows_virtual_machine_scale_set_rolling_upgrade_policy.dart';
import 'windows_virtual_machine_scale_set_scale_in.dart';
import 'windows_virtual_machine_scale_set_secret.dart';
import 'windows_virtual_machine_scale_set_source_image_reference.dart';
import 'windows_virtual_machine_scale_set_spot_restore.dart';
import 'windows_virtual_machine_scale_set_state.dart';
import 'windows_virtual_machine_scale_set_termination_notification.dart';
import 'windows_virtual_machine_scale_set_winrm_listener.dart';

/// Manages a Windows Virtual Machine Scale Set.
///
/// ## Disclaimers
///
/// &gt; **Note:** This resource will only create Virtual Machine Scale Sets with the **Uniform** Orchestration Mode. For Virtual Machine Scale Sets with **Flexible** orchestration mode, use `azure.compute.OrchestratedVirtualMachineScaleSet`. Flexible orchestration mode is recommended for workloads on Azure.
///
/// &gt; **Note:** All arguments including the administrator login and password will be stored in the raw state as plain-text. Read more about [sensitive data](https://www.terraform.io/docs/state/sensitive-data.html) in state.
///
/// &gt; **Note:** This provider will automatically update & reimage the nodes in the Scale Set (if Required) during an Update - this behaviour can be configured using the `features` setting within the Provider block.
///
/// &gt; **Note:** This resource does not support Unmanaged Disks. If you need to use Unmanaged Disks you can continue to use the `azure.compute.ScaleSet` resource instead.
///
/// ## Example Usage
///
/// This example provisions a basic Windows Virtual Machine Scale Set on an internal network.
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
/// const exampleWindowsVirtualMachineScaleSet = new azure.compute.WindowsVirtualMachineScaleSet("example", {
///     name: "example-vmss",
///     resourceGroupName: example.name,
///     location: example.location,
///     sku: "Standard_D4_v5",
///     instances: 1,
///     adminPassword: "P@55w0rd1234!",
///     adminUsername: "adminuser",
///     computerNamePrefix: "vm-",
///     sourceImageReference: {
///         publisher: "MicrosoftWindowsServer",
///         offer: "WindowsServer",
///         sku: "2016-Datacenter-Server-Core",
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
/// example_windows_virtual_machine_scale_set = azure.compute.WindowsVirtualMachineScaleSet("example",
///     name="example-vmss",
///     resource_group_name=example.name,
///     location=example.location,
///     sku="Standard_D4_v5",
///     instances=1,
///     admin_password="P@55w0rd1234!",
///     admin_username="adminuser",
///     computer_name_prefix="vm-",
///     source_image_reference={
///         "publisher": "MicrosoftWindowsServer",
///         "offer": "WindowsServer",
///         "sku": "2016-Datacenter-Server-Core",
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
///     var exampleWindowsVirtualMachineScaleSet = new Azure.Compute.WindowsVirtualMachineScaleSet("example", new()
///     {
///         Name = "example-vmss",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Sku = "Standard_D4_v5",
///         Instances = 1,
///         AdminPassword = "P@55w0rd1234!",
///         AdminUsername = "adminuser",
///         ComputerNamePrefix = "vm-",
///         SourceImageReference = new Azure.Compute.Inputs.WindowsVirtualMachineScaleSetSourceImageReferenceArgs
///         {
///             Publisher = "MicrosoftWindowsServer",
///             Offer = "WindowsServer",
///             Sku = "2016-Datacenter-Server-Core",
///             Version = "latest",
///         },
///         OsDisk = new Azure.Compute.Inputs.WindowsVirtualMachineScaleSetOsDiskArgs
///         {
///             StorageAccountType = "Standard_LRS",
///             Caching = "ReadWrite",
///         },
///         NetworkInterfaces = new[]
///         {
///             new Azure.Compute.Inputs.WindowsVirtualMachineScaleSetNetworkInterfaceArgs
///             {
///                 Name = "example",
///                 Primary = true,
///                 IpConfigurations = new[]
///                 {
///                     new Azure.Compute.Inputs.WindowsVirtualMachineScaleSetNetworkInterfaceIpConfigurationArgs
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
/// 		_, err = compute.NewWindowsVirtualMachineScaleSet(ctx, "example", &compute.WindowsVirtualMachineScaleSetArgs{
/// 			Name:               pulumi.String("example-vmss"),
/// 			ResourceGroupName:  example.Name,
/// 			Location:           example.Location,
/// 			Sku:                pulumi.String("Standard_D4_v5"),
/// 			Instances:          pulumi.Int(1),
/// 			AdminPassword:      pulumi.String("P@55w0rd1234!"),
/// 			AdminUsername:      pulumi.String("adminuser"),
/// 			ComputerNamePrefix: pulumi.String("vm-"),
/// 			SourceImageReference: &compute.WindowsVirtualMachineScaleSetSourceImageReferenceArgs{
/// 				Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 				Offer:     pulumi.String("WindowsServer"),
/// 				Sku:       pulumi.String("2016-Datacenter-Server-Core"),
/// 				Version:   pulumi.String("latest"),
/// 			},
/// 			OsDisk: &compute.WindowsVirtualMachineScaleSetOsDiskArgs{
/// 				StorageAccountType: pulumi.String("Standard_LRS"),
/// 				Caching:            pulumi.String("ReadWrite"),
/// 			},
/// 			NetworkInterfaces: compute.WindowsVirtualMachineScaleSetNetworkInterfaceArray{
/// 				&compute.WindowsVirtualMachineScaleSetNetworkInterfaceArgs{
/// 					Name:    pulumi.String("example"),
/// 					Primary: pulumi.Bool(true),
/// 					IpConfigurations: compute.WindowsVirtualMachineScaleSetNetworkInterfaceIpConfigurationArray{
/// 						&compute.WindowsVirtualMachineScaleSetNetworkInterfaceIpConfigurationArgs{
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
/// resource "azure_compute_windowsvirtualmachinescaleset" "example" {
///   name                 = "example-vmss"
///   resource_group_name  = azure_core_resourcegroup.example.name
///   location             = azure_core_resourcegroup.example.location
///   sku                  = "Standard_D4_v5"
///   instances            = 1
///   admin_password       = "P@55w0rd1234!"
///   admin_username       = "adminuser"
///   computer_name_prefix = "vm-"
///   source_image_reference = {
///     publisher = "MicrosoftWindowsServer"
///     offer     = "WindowsServer"
///     sku       = "2016-Datacenter-Server-Core"
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
/// import com.pulumi.azure.compute.WindowsVirtualMachineScaleSet;
/// import com.pulumi.azure.compute.WindowsVirtualMachineScaleSetArgs;
/// import com.pulumi.azure.compute.inputs.WindowsVirtualMachineScaleSetSourceImageReferenceArgs;
/// import com.pulumi.azure.compute.inputs.WindowsVirtualMachineScaleSetOsDiskArgs;
/// import com.pulumi.azure.compute.inputs.WindowsVirtualMachineScaleSetNetworkInterfaceArgs;
/// import com.pulumi.azure.compute.inputs.WindowsVirtualMachineScaleSetNetworkInterfaceIpConfigurationArgs;
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
///         var exampleWindowsVirtualMachineScaleSet = new WindowsVirtualMachineScaleSet("exampleWindowsVirtualMachineScaleSet", WindowsVirtualMachineScaleSetArgs.builder()
///             .name("example-vmss")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .sku("Standard_D4_v5")
///             .instances(1)
///             .adminPassword("P@55w0rd1234!")
///             .adminUsername("adminuser")
///             .computerNamePrefix("vm-")
///             .sourceImageReference(WindowsVirtualMachineScaleSetSourceImageReferenceArgs.builder()
///                 .publisher("MicrosoftWindowsServer")
///                 .offer("WindowsServer")
///                 .sku("2016-Datacenter-Server-Core")
///                 .version("latest")
///                 .build())
///             .osDisk(WindowsVirtualMachineScaleSetOsDiskArgs.builder()
///                 .storageAccountType("Standard_LRS")
///                 .caching("ReadWrite")
///                 .build())
///             .networkInterfaces(WindowsVirtualMachineScaleSetNetworkInterfaceArgs.builder()
///                 .name("example")
///                 .primary(true)
///                 .ipConfigurations(WindowsVirtualMachineScaleSetNetworkInterfaceIpConfigurationArgs.builder()
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
///   exampleWindowsVirtualMachineScaleSet:
///     type: azure:compute:WindowsVirtualMachineScaleSet
///     name: example
///     properties:
///       name: example-vmss
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       sku: Standard_D4_v5
///       instances: 1
///       adminPassword: P@55w0rd1234!
///       adminUsername: adminuser
///       computerNamePrefix: vm-
///       sourceImageReference:
///         publisher: MicrosoftWindowsServer
///         offer: WindowsServer
///         sku: 2016-Datacenter-Server-Core
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
/// Windows Virtual Machine Scale Sets can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:compute/windowsVirtualMachineScaleSet:WindowsVirtualMachineScaleSet example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Compute/virtualMachineScaleSets/scaleset1
/// ```
class WindowsVirtualMachineScaleSet extends pulumi.CustomResource {
  /// An `additionalCapabilities` block as defined below.
  late final pulumi.Output<WindowsVirtualMachineScaleSetAdditionalCapabilities?> additionalCapabilities;
  /// One or more `additionalUnattendContent` blocks as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<List<WindowsVirtualMachineScaleSetAdditionalUnattendContent>?> additionalUnattendContents;
  /// The Password which should be used for the local-administrator on this Virtual Machine. Changing this forces a new resource to be created.
  late final pulumi.Output<String> adminPassword;
  /// The username of the local administrator on each Virtual Machine Scale Set instance. Changing this forces a new resource to be created.
  late final pulumi.Output<String> adminUsername;
  /// An `automaticInstanceRepair` block as defined below. To enable the automatic instance repair, this Virtual Machine Scale Set must have a valid `healthProbeId` or an [Application Health Extension](https://docs.microsoft.com/azure/virtual-machine-scale-sets/virtual-machine-scale-sets-health-extension).
  ///
  /// &gt; **Note:** For more information about Automatic Instance Repair, please refer to [this doc](https://docs.microsoft.com/azure/virtual-machine-scale-sets/virtual-machine-scale-sets-automatic-instance-repairs).
  late final pulumi.Output<WindowsVirtualMachineScaleSetAutomaticInstanceRepair> automaticInstanceRepair;
  /// An `automaticOsUpgradePolicy` block as defined below. This can only be specified when `upgradeMode` is set to either `Automatic` or `Rolling`.
  late final pulumi.Output<WindowsVirtualMachineScaleSetAutomaticOsUpgradePolicy?> automaticOsUpgradePolicy;
  /// A `bootDiagnostics` block as defined below.
  late final pulumi.Output<WindowsVirtualMachineScaleSetBootDiagnostics?> bootDiagnostics;
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
  late final pulumi.Output<List<WindowsVirtualMachineScaleSetDataDisk>?> dataDisks;
  /// Should Virtual Machine Extensions be run on Overprovisioned Virtual Machines in the Scale Set? Defaults to `false`.
  late final pulumi.Output<bool?> doNotRunExtensionsOnOverprovisionedMachines;
  /// Specifies the Edge Zone within the Azure Region where this Windows Virtual Machine Scale Set should exist. Changing this forces a new Windows Virtual Machine Scale Set to be created.
  late final pulumi.Output<String?> edgeZone;
  /// Are automatic updates enabled for this Virtual Machine? Defaults to `true`.
  late final pulumi.Output<bool?> enableAutomaticUpdates;
  /// Should all of the disks (including the temp disk) attached to this Virtual Machine be encrypted by enabling Encryption at Host?
  late final pulumi.Output<bool?> encryptionAtHostEnabled;
  /// Specifies the eviction policy for Virtual Machines in this Scale Set. Possible values are `Deallocate` and `Delete`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** This can only be configured when `priority` is set to `Spot`.
  late final pulumi.Output<String?> evictionPolicy;
  /// Should extension operations be allowed on the Virtual Machine Scale Set? Possible values are `true` or `false`. Defaults to `true`. Changing this forces a new Windows Virtual Machine Scale Set to be created.
  ///
  /// &gt; **Note:** `extensionOperationsEnabled` may only be set to `false` if there are no extensions defined in the `extension` field.
  late final pulumi.Output<bool?> extensionOperationsEnabled;
  /// One or more `extension` blocks as defined below
  late final pulumi.Output<List<WindowsVirtualMachineScaleSetExtension>> extensions;
  /// Specifies the duration allocated for all extensions to start. The time duration should be between `15` minutes and `120` minutes (inclusive) and should be specified in ISO 8601 format. Defaults to `PT1H30M`.
  late final pulumi.Output<String?> extensionsTimeBudget;
  /// One or more `galleryApplication` blocks as defined below.
  late final pulumi.Output<List<WindowsVirtualMachineScaleSetGalleryApplication>?> galleryApplications;
  /// The ID of a Load Balancer Probe which should be used to determine the health of an instance. This is Required and can only be specified when `upgradeMode` is set to `Automatic` or `Rolling`.
  late final pulumi.Output<String?> healthProbeId;
  /// Specifies the ID of the dedicated host group that the virtual machine scale set resides in. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> hostGroupId;
  /// An `identity` block as defined below.
  late final pulumi.Output<WindowsVirtualMachineScaleSetIdentity?> identity;
  /// The number of Virtual Machines in the Scale Set.
  ///
  /// &gt; **NOTE:** If you're using AutoScaling, you may wish to use [`Ignore Changes` functionality](https://www.pulumi.com/docs/intro/concepts/programming-model/#ignorechanges) to ignore changes to this field.
  late final pulumi.Output<int> instances;
  /// Specifies the type of on-premise license (also known as [Azure Hybrid Use Benefit](https://docs.microsoft.com/en-gb/windows-server/get-started/azure-hybrid-benefit)) which should be used for this Virtual Machine Scale Set. Possible values are `None`, `Windows_Client` and `Windows_Server`.
  late final pulumi.Output<String?> licenseType;
  /// The Azure location where the Windows Virtual Machine Scale Set should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The maximum price you're willing to pay for each Virtual Machine in this Scale Set, in US Dollars; which must be greater than the current spot price. If this bid price falls below the current spot price the Virtual Machines in the Scale Set will be evicted using the `evictionPolicy`. Defaults to `-1`, which means that each Virtual Machine in the Scale Set should not be evicted for price reasons.
  ///
  /// &gt; **Note:** This can only be configured when `priority` is set to `Spot`.
  late final pulumi.Output<double?> maxBidPrice;
  /// The name of the Windows Virtual Machine Scale Set. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// One or more `networkInterface` blocks as defined below.
  late final pulumi.Output<List<WindowsVirtualMachineScaleSetNetworkInterface>> networkInterfaces;
  /// An `osDisk` block as defined below.
  late final pulumi.Output<WindowsVirtualMachineScaleSetOsDisk> osDisk;
  /// Should Azure over-provision Virtual Machines in this Scale Set? This means that multiple Virtual Machines will be provisioned and Azure will keep the instances which become available first - which improves provisioning success rates and improves deployment time. You're not billed for these over-provisioned VM's and they don't count towards the Subscription Quota. Defaults to `true`.
  late final pulumi.Output<bool?> overprovision;
  /// A `plan` block as defined below. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** When using an image from Azure Marketplace a `plan` must be specified.
  late final pulumi.Output<WindowsVirtualMachineScaleSetPlan?> plan;
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
  /// The name of the Resource Group in which the Windows Virtual Machine Scale Set should be exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A `rollingUpgradePolicy` block as defined below. This is Required and can only be specified when `upgradeMode` is set to `Automatic` or `Rolling`. Changing this forces a new resource to be created.
  late final pulumi.Output<WindowsVirtualMachineScaleSetRollingUpgradePolicy?> rollingUpgradePolicy;
  /// A `scaleIn` block as defined below.
  late final pulumi.Output<WindowsVirtualMachineScaleSetScaleIn?> scaleIn;
  /// One or more `secret` blocks as defined below.
  late final pulumi.Output<List<WindowsVirtualMachineScaleSetSecret>?> secrets;
  /// Specifies if Secure Boot and Trusted Launch is enabled for the Virtual Machine. Changing this forces a new resource to be created.
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
  late final pulumi.Output<WindowsVirtualMachineScaleSetSourceImageReference?> sourceImageReference;
  /// A `spotRestore` block as defined below.
  late final pulumi.Output<WindowsVirtualMachineScaleSetSpotRestore> spotRestore;
  /// A mapping of tags which should be assigned to this Virtual Machine Scale Set.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A `terminationNotification` block as defined below.
  late final pulumi.Output<WindowsVirtualMachineScaleSetTerminationNotification> terminationNotification;
  /// Specifies the time zone of the virtual machine, [the possible values are defined here](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/).
  late final pulumi.Output<String?> timezone;
  /// The Unique ID for this Windows Virtual Machine Scale Set.
  late final pulumi.Output<String> uniqueId;
  /// Specifies how Upgrades (e.g. changing the Image/SKU) should be performed to Virtual Machine Instances. Possible values are `Automatic`, `Manual` and `Rolling`. Defaults to `Manual`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** If rolling upgrades are configured and running on a Linux Virtual Machine Scale Set, they will be cancelled when Terraform tries to destroy the resource.
  late final pulumi.Output<String?> upgradeMode;
  /// The Base64-Encoded User Data which should be used for this Virtual Machine Scale Set.
  late final pulumi.Output<String?> userData;
  /// Specifies if vTPM (Virtual Trusted Platform Module) and Trusted Launch is enabled for the Virtual Machine. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> vtpmEnabled;
  /// One or more `winrmListener` blocks as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<List<WindowsVirtualMachineScaleSetWinrmListener>?> winrmListeners;
  /// Should the Virtual Machines in this Scale Set be strictly evenly distributed across Availability Zones? Defaults to `false`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** This can only be set to `true` when one or more `zones` are configured.
  late final pulumi.Output<bool?> zoneBalance;
  /// Specifies a list of Availability Zones in which this Windows Virtual Machine Scale Set should be located.
  ///
  /// &gt; **Note:** Updating `zones` to remove an existing zone forces a new Virtual Machine Scale Set to be created.
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [WindowsVirtualMachineScaleSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WindowsVirtualMachineScaleSet]. {@macro pulumi_compute_windows_virtual_machine_scale_set_windows_virtual_machine_scale_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WindowsVirtualMachineScaleSet(
    String name, {
    WindowsVirtualMachineScaleSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:compute/windowsVirtualMachineScaleSet:WindowsVirtualMachineScaleSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
          additionalSecretOutputs: const ['adminPassword', 'customData'],
        ) {
    additionalCapabilities = registerOutput<WindowsVirtualMachineScaleSetAdditionalCapabilities?>('additionalCapabilities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsVirtualMachineScaleSetAdditionalCapabilities.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    additionalUnattendContents = registerOutput<List<WindowsVirtualMachineScaleSetAdditionalUnattendContent>?>('additionalUnattendContents', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WindowsVirtualMachineScaleSetAdditionalUnattendContent>(guardedValue, (value) => WindowsVirtualMachineScaleSetAdditionalUnattendContent.fromMap((value as Map).cast<String, dynamic>())); });
    adminPassword = registerOutput<String>('adminPassword', isSecret: true);
    adminUsername = registerOutput<String>('adminUsername');
    automaticInstanceRepair = registerOutput<WindowsVirtualMachineScaleSetAutomaticInstanceRepair>('automaticInstanceRepair', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsVirtualMachineScaleSetAutomaticInstanceRepair.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    automaticOsUpgradePolicy = registerOutput<WindowsVirtualMachineScaleSetAutomaticOsUpgradePolicy?>('automaticOsUpgradePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsVirtualMachineScaleSetAutomaticOsUpgradePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    bootDiagnostics = registerOutput<WindowsVirtualMachineScaleSetBootDiagnostics?>('bootDiagnostics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsVirtualMachineScaleSetBootDiagnostics.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    capacityReservationGroupId = registerOutput<String?>('capacityReservationGroupId');
    computerNamePrefix = registerOutput<String>('computerNamePrefix');
    customData = registerOutput<String?>('customData', isSecret: true);
    dataDisks = registerOutput<List<WindowsVirtualMachineScaleSetDataDisk>?>('dataDisks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WindowsVirtualMachineScaleSetDataDisk>(guardedValue, (value) => WindowsVirtualMachineScaleSetDataDisk.fromMap((value as Map).cast<String, dynamic>())); });
    doNotRunExtensionsOnOverprovisionedMachines = registerOutput<bool?>('doNotRunExtensionsOnOverprovisionedMachines');
    edgeZone = registerOutput<String?>('edgeZone');
    enableAutomaticUpdates = registerOutput<bool?>('enableAutomaticUpdates');
    encryptionAtHostEnabled = registerOutput<bool?>('encryptionAtHostEnabled');
    evictionPolicy = registerOutput<String?>('evictionPolicy');
    extensionOperationsEnabled = registerOutput<bool?>('extensionOperationsEnabled');
    extensions = registerOutput<List<WindowsVirtualMachineScaleSetExtension>>('extensions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WindowsVirtualMachineScaleSetExtension>(guardedValue, (value) => WindowsVirtualMachineScaleSetExtension.fromMap((value as Map).cast<String, dynamic>())); });
    extensionsTimeBudget = registerOutput<String?>('extensionsTimeBudget');
    galleryApplications = registerOutput<List<WindowsVirtualMachineScaleSetGalleryApplication>?>('galleryApplications', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WindowsVirtualMachineScaleSetGalleryApplication>(guardedValue, (value) => WindowsVirtualMachineScaleSetGalleryApplication.fromMap((value as Map).cast<String, dynamic>())); });
    healthProbeId = registerOutput<String?>('healthProbeId');
    hostGroupId = registerOutput<String?>('hostGroupId');
    identity = registerOutput<WindowsVirtualMachineScaleSetIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsVirtualMachineScaleSetIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instances = registerOutput<int>('instances');
    licenseType = registerOutput<String?>('licenseType');
    location = registerOutput<String>('location');
    maxBidPrice = registerOutput<double?>('maxBidPrice');
    this.name = registerOutput<String>('name');
    networkInterfaces = registerOutput<List<WindowsVirtualMachineScaleSetNetworkInterface>>('networkInterfaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WindowsVirtualMachineScaleSetNetworkInterface>(guardedValue, (value) => WindowsVirtualMachineScaleSetNetworkInterface.fromMap((value as Map).cast<String, dynamic>())); });
    osDisk = registerOutput<WindowsVirtualMachineScaleSetOsDisk>('osDisk', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsVirtualMachineScaleSetOsDisk.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    overprovision = registerOutput<bool?>('overprovision');
    plan = registerOutput<WindowsVirtualMachineScaleSetPlan?>('plan', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsVirtualMachineScaleSetPlan.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    platformFaultDomainCount = registerOutput<int>('platformFaultDomainCount');
    priority = registerOutput<String?>('priority');
    provisionVmAgent = registerOutput<bool?>('provisionVmAgent');
    proximityPlacementGroupId = registerOutput<String?>('proximityPlacementGroupId');
    resilientVmCreationEnabled = registerOutput<bool?>('resilientVmCreationEnabled');
    resilientVmDeletionEnabled = registerOutput<bool?>('resilientVmDeletionEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    rollingUpgradePolicy = registerOutput<WindowsVirtualMachineScaleSetRollingUpgradePolicy?>('rollingUpgradePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsVirtualMachineScaleSetRollingUpgradePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scaleIn = registerOutput<WindowsVirtualMachineScaleSetScaleIn?>('scaleIn', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsVirtualMachineScaleSetScaleIn.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    secrets = registerOutput<List<WindowsVirtualMachineScaleSetSecret>?>('secrets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WindowsVirtualMachineScaleSetSecret>(guardedValue, (value) => WindowsVirtualMachineScaleSetSecret.fromMap((value as Map).cast<String, dynamic>())); });
    secureBootEnabled = registerOutput<bool?>('secureBootEnabled');
    singlePlacementGroup = registerOutput<bool?>('singlePlacementGroup');
    sku = registerOutput<String>('sku');
    sourceImageId = registerOutput<String?>('sourceImageId');
    sourceImageReference = registerOutput<WindowsVirtualMachineScaleSetSourceImageReference?>('sourceImageReference', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsVirtualMachineScaleSetSourceImageReference.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spotRestore = registerOutput<WindowsVirtualMachineScaleSetSpotRestore>('spotRestore', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsVirtualMachineScaleSetSpotRestore.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    terminationNotification = registerOutput<WindowsVirtualMachineScaleSetTerminationNotification>('terminationNotification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsVirtualMachineScaleSetTerminationNotification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timezone = registerOutput<String?>('timezone');
    uniqueId = registerOutput<String>('uniqueId');
    upgradeMode = registerOutput<String?>('upgradeMode');
    userData = registerOutput<String?>('userData');
    vtpmEnabled = registerOutput<bool?>('vtpmEnabled');
    winrmListeners = registerOutput<List<WindowsVirtualMachineScaleSetWinrmListener>?>('winrmListeners', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WindowsVirtualMachineScaleSetWinrmListener>(guardedValue, (value) => WindowsVirtualMachineScaleSetWinrmListener.fromMap((value as Map).cast<String, dynamic>())); });
    zoneBalance = registerOutput<bool?>('zoneBalance');
    zones = registerOutput<List<String>?>('zones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Gets an existing [WindowsVirtualMachineScaleSet] resource's state with the given [name] and [id].
  static WindowsVirtualMachineScaleSet get(
    String name,
    pulumi.Input<String> id, {
    WindowsVirtualMachineScaleSetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return WindowsVirtualMachineScaleSet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  WindowsVirtualMachineScaleSet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:compute/windowsVirtualMachineScaleSet:WindowsVirtualMachineScaleSet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalCapabilities = registerOutput<WindowsVirtualMachineScaleSetAdditionalCapabilities?>('additionalCapabilities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsVirtualMachineScaleSetAdditionalCapabilities.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    additionalUnattendContents = registerOutput<List<WindowsVirtualMachineScaleSetAdditionalUnattendContent>?>('additionalUnattendContents', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WindowsVirtualMachineScaleSetAdditionalUnattendContent>(guardedValue, (value) => WindowsVirtualMachineScaleSetAdditionalUnattendContent.fromMap((value as Map).cast<String, dynamic>())); });
    adminPassword = registerOutput<String>('adminPassword', isSecret: true);
    adminUsername = registerOutput<String>('adminUsername');
    automaticInstanceRepair = registerOutput<WindowsVirtualMachineScaleSetAutomaticInstanceRepair>('automaticInstanceRepair', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsVirtualMachineScaleSetAutomaticInstanceRepair.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    automaticOsUpgradePolicy = registerOutput<WindowsVirtualMachineScaleSetAutomaticOsUpgradePolicy?>('automaticOsUpgradePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsVirtualMachineScaleSetAutomaticOsUpgradePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    bootDiagnostics = registerOutput<WindowsVirtualMachineScaleSetBootDiagnostics?>('bootDiagnostics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsVirtualMachineScaleSetBootDiagnostics.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    capacityReservationGroupId = registerOutput<String?>('capacityReservationGroupId');
    computerNamePrefix = registerOutput<String>('computerNamePrefix');
    customData = registerOutput<String?>('customData', isSecret: true);
    dataDisks = registerOutput<List<WindowsVirtualMachineScaleSetDataDisk>?>('dataDisks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WindowsVirtualMachineScaleSetDataDisk>(guardedValue, (value) => WindowsVirtualMachineScaleSetDataDisk.fromMap((value as Map).cast<String, dynamic>())); });
    doNotRunExtensionsOnOverprovisionedMachines = registerOutput<bool?>('doNotRunExtensionsOnOverprovisionedMachines');
    edgeZone = registerOutput<String?>('edgeZone');
    enableAutomaticUpdates = registerOutput<bool?>('enableAutomaticUpdates');
    encryptionAtHostEnabled = registerOutput<bool?>('encryptionAtHostEnabled');
    evictionPolicy = registerOutput<String?>('evictionPolicy');
    extensionOperationsEnabled = registerOutput<bool?>('extensionOperationsEnabled');
    extensions = registerOutput<List<WindowsVirtualMachineScaleSetExtension>>('extensions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WindowsVirtualMachineScaleSetExtension>(guardedValue, (value) => WindowsVirtualMachineScaleSetExtension.fromMap((value as Map).cast<String, dynamic>())); });
    extensionsTimeBudget = registerOutput<String?>('extensionsTimeBudget');
    galleryApplications = registerOutput<List<WindowsVirtualMachineScaleSetGalleryApplication>?>('galleryApplications', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WindowsVirtualMachineScaleSetGalleryApplication>(guardedValue, (value) => WindowsVirtualMachineScaleSetGalleryApplication.fromMap((value as Map).cast<String, dynamic>())); });
    healthProbeId = registerOutput<String?>('healthProbeId');
    hostGroupId = registerOutput<String?>('hostGroupId');
    identity = registerOutput<WindowsVirtualMachineScaleSetIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsVirtualMachineScaleSetIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instances = registerOutput<int>('instances');
    licenseType = registerOutput<String?>('licenseType');
    location = registerOutput<String>('location');
    maxBidPrice = registerOutput<double?>('maxBidPrice');
    this.name = registerOutput<String>('name');
    networkInterfaces = registerOutput<List<WindowsVirtualMachineScaleSetNetworkInterface>>('networkInterfaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WindowsVirtualMachineScaleSetNetworkInterface>(guardedValue, (value) => WindowsVirtualMachineScaleSetNetworkInterface.fromMap((value as Map).cast<String, dynamic>())); });
    osDisk = registerOutput<WindowsVirtualMachineScaleSetOsDisk>('osDisk', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsVirtualMachineScaleSetOsDisk.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    overprovision = registerOutput<bool?>('overprovision');
    plan = registerOutput<WindowsVirtualMachineScaleSetPlan?>('plan', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsVirtualMachineScaleSetPlan.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    platformFaultDomainCount = registerOutput<int>('platformFaultDomainCount');
    priority = registerOutput<String?>('priority');
    provisionVmAgent = registerOutput<bool?>('provisionVmAgent');
    proximityPlacementGroupId = registerOutput<String?>('proximityPlacementGroupId');
    resilientVmCreationEnabled = registerOutput<bool?>('resilientVmCreationEnabled');
    resilientVmDeletionEnabled = registerOutput<bool?>('resilientVmDeletionEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    rollingUpgradePolicy = registerOutput<WindowsVirtualMachineScaleSetRollingUpgradePolicy?>('rollingUpgradePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsVirtualMachineScaleSetRollingUpgradePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scaleIn = registerOutput<WindowsVirtualMachineScaleSetScaleIn?>('scaleIn', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsVirtualMachineScaleSetScaleIn.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    secrets = registerOutput<List<WindowsVirtualMachineScaleSetSecret>?>('secrets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WindowsVirtualMachineScaleSetSecret>(guardedValue, (value) => WindowsVirtualMachineScaleSetSecret.fromMap((value as Map).cast<String, dynamic>())); });
    secureBootEnabled = registerOutput<bool?>('secureBootEnabled');
    singlePlacementGroup = registerOutput<bool?>('singlePlacementGroup');
    sku = registerOutput<String>('sku');
    sourceImageId = registerOutput<String?>('sourceImageId');
    sourceImageReference = registerOutput<WindowsVirtualMachineScaleSetSourceImageReference?>('sourceImageReference', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsVirtualMachineScaleSetSourceImageReference.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spotRestore = registerOutput<WindowsVirtualMachineScaleSetSpotRestore>('spotRestore', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsVirtualMachineScaleSetSpotRestore.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    terminationNotification = registerOutput<WindowsVirtualMachineScaleSetTerminationNotification>('terminationNotification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsVirtualMachineScaleSetTerminationNotification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timezone = registerOutput<String?>('timezone');
    uniqueId = registerOutput<String>('uniqueId');
    upgradeMode = registerOutput<String?>('upgradeMode');
    userData = registerOutput<String?>('userData');
    vtpmEnabled = registerOutput<bool?>('vtpmEnabled');
    winrmListeners = registerOutput<List<WindowsVirtualMachineScaleSetWinrmListener>?>('winrmListeners', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WindowsVirtualMachineScaleSetWinrmListener>(guardedValue, (value) => WindowsVirtualMachineScaleSetWinrmListener.fromMap((value as Map).cast<String, dynamic>())); });
    zoneBalance = registerOutput<bool?>('zoneBalance');
    zones = registerOutput<List<String>?>('zones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Creates a typed reference to an existing [WindowsVirtualMachineScaleSet] resource.
  WindowsVirtualMachineScaleSet.reference(String urn)
    : super(
        'azure:compute/windowsVirtualMachineScaleSet:WindowsVirtualMachineScaleSet',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['adminPassword', 'customData'],
        isResourceReference: true,
      ) {
    additionalCapabilities = registerOutput<WindowsVirtualMachineScaleSetAdditionalCapabilities?>('additionalCapabilities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsVirtualMachineScaleSetAdditionalCapabilities.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    additionalUnattendContents = registerOutput<List<WindowsVirtualMachineScaleSetAdditionalUnattendContent>?>('additionalUnattendContents', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WindowsVirtualMachineScaleSetAdditionalUnattendContent>(guardedValue, (value) => WindowsVirtualMachineScaleSetAdditionalUnattendContent.fromMap((value as Map).cast<String, dynamic>())); });
    adminPassword = registerOutput<String>('adminPassword', isSecret: true);
    adminUsername = registerOutput<String>('adminUsername');
    automaticInstanceRepair = registerOutput<WindowsVirtualMachineScaleSetAutomaticInstanceRepair>('automaticInstanceRepair', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsVirtualMachineScaleSetAutomaticInstanceRepair.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    automaticOsUpgradePolicy = registerOutput<WindowsVirtualMachineScaleSetAutomaticOsUpgradePolicy?>('automaticOsUpgradePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsVirtualMachineScaleSetAutomaticOsUpgradePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    bootDiagnostics = registerOutput<WindowsVirtualMachineScaleSetBootDiagnostics?>('bootDiagnostics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsVirtualMachineScaleSetBootDiagnostics.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    capacityReservationGroupId = registerOutput<String?>('capacityReservationGroupId');
    computerNamePrefix = registerOutput<String>('computerNamePrefix');
    customData = registerOutput<String?>('customData', isSecret: true);
    dataDisks = registerOutput<List<WindowsVirtualMachineScaleSetDataDisk>?>('dataDisks', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WindowsVirtualMachineScaleSetDataDisk>(guardedValue, (value) => WindowsVirtualMachineScaleSetDataDisk.fromMap((value as Map).cast<String, dynamic>())); });
    doNotRunExtensionsOnOverprovisionedMachines = registerOutput<bool?>('doNotRunExtensionsOnOverprovisionedMachines');
    edgeZone = registerOutput<String?>('edgeZone');
    enableAutomaticUpdates = registerOutput<bool?>('enableAutomaticUpdates');
    encryptionAtHostEnabled = registerOutput<bool?>('encryptionAtHostEnabled');
    evictionPolicy = registerOutput<String?>('evictionPolicy');
    extensionOperationsEnabled = registerOutput<bool?>('extensionOperationsEnabled');
    extensions = registerOutput<List<WindowsVirtualMachineScaleSetExtension>>('extensions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WindowsVirtualMachineScaleSetExtension>(guardedValue, (value) => WindowsVirtualMachineScaleSetExtension.fromMap((value as Map).cast<String, dynamic>())); });
    extensionsTimeBudget = registerOutput<String?>('extensionsTimeBudget');
    galleryApplications = registerOutput<List<WindowsVirtualMachineScaleSetGalleryApplication>?>('galleryApplications', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WindowsVirtualMachineScaleSetGalleryApplication>(guardedValue, (value) => WindowsVirtualMachineScaleSetGalleryApplication.fromMap((value as Map).cast<String, dynamic>())); });
    healthProbeId = registerOutput<String?>('healthProbeId');
    hostGroupId = registerOutput<String?>('hostGroupId');
    identity = registerOutput<WindowsVirtualMachineScaleSetIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsVirtualMachineScaleSetIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    instances = registerOutput<int>('instances');
    licenseType = registerOutput<String?>('licenseType');
    location = registerOutput<String>('location');
    maxBidPrice = registerOutput<double?>('maxBidPrice');
    this.name = registerOutput<String>('name');
    networkInterfaces = registerOutput<List<WindowsVirtualMachineScaleSetNetworkInterface>>('networkInterfaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WindowsVirtualMachineScaleSetNetworkInterface>(guardedValue, (value) => WindowsVirtualMachineScaleSetNetworkInterface.fromMap((value as Map).cast<String, dynamic>())); });
    osDisk = registerOutput<WindowsVirtualMachineScaleSetOsDisk>('osDisk', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsVirtualMachineScaleSetOsDisk.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    overprovision = registerOutput<bool?>('overprovision');
    plan = registerOutput<WindowsVirtualMachineScaleSetPlan?>('plan', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsVirtualMachineScaleSetPlan.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    platformFaultDomainCount = registerOutput<int>('platformFaultDomainCount');
    priority = registerOutput<String?>('priority');
    provisionVmAgent = registerOutput<bool?>('provisionVmAgent');
    proximityPlacementGroupId = registerOutput<String?>('proximityPlacementGroupId');
    resilientVmCreationEnabled = registerOutput<bool?>('resilientVmCreationEnabled');
    resilientVmDeletionEnabled = registerOutput<bool?>('resilientVmDeletionEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    rollingUpgradePolicy = registerOutput<WindowsVirtualMachineScaleSetRollingUpgradePolicy?>('rollingUpgradePolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsVirtualMachineScaleSetRollingUpgradePolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scaleIn = registerOutput<WindowsVirtualMachineScaleSetScaleIn?>('scaleIn', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsVirtualMachineScaleSetScaleIn.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    secrets = registerOutput<List<WindowsVirtualMachineScaleSetSecret>?>('secrets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WindowsVirtualMachineScaleSetSecret>(guardedValue, (value) => WindowsVirtualMachineScaleSetSecret.fromMap((value as Map).cast<String, dynamic>())); });
    secureBootEnabled = registerOutput<bool?>('secureBootEnabled');
    singlePlacementGroup = registerOutput<bool?>('singlePlacementGroup');
    sku = registerOutput<String>('sku');
    sourceImageId = registerOutput<String?>('sourceImageId');
    sourceImageReference = registerOutput<WindowsVirtualMachineScaleSetSourceImageReference?>('sourceImageReference', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsVirtualMachineScaleSetSourceImageReference.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spotRestore = registerOutput<WindowsVirtualMachineScaleSetSpotRestore>('spotRestore', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsVirtualMachineScaleSetSpotRestore.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    terminationNotification = registerOutput<WindowsVirtualMachineScaleSetTerminationNotification>('terminationNotification', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsVirtualMachineScaleSetTerminationNotification.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timezone = registerOutput<String?>('timezone');
    uniqueId = registerOutput<String>('uniqueId');
    upgradeMode = registerOutput<String?>('upgradeMode');
    userData = registerOutput<String?>('userData');
    vtpmEnabled = registerOutput<bool?>('vtpmEnabled');
    winrmListeners = registerOutput<List<WindowsVirtualMachineScaleSetWinrmListener>?>('winrmListeners', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WindowsVirtualMachineScaleSetWinrmListener>(guardedValue, (value) => WindowsVirtualMachineScaleSetWinrmListener.fromMap((value as Map).cast<String, dynamic>())); });
    zoneBalance = registerOutput<bool?>('zoneBalance');
    zones = registerOutput<List<String>?>('zones', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }
}
