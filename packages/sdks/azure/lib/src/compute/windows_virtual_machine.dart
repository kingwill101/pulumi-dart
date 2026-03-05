import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_virtual_machine_additional_capabilities.dart';
import 'windows_virtual_machine_args.dart';
import 'windows_virtual_machine_boot_diagnostics.dart';
import 'windows_virtual_machine_identity.dart';
import 'windows_virtual_machine_os_disk.dart';
import 'windows_virtual_machine_os_image_notification.dart';
import 'windows_virtual_machine_plan.dart';
import 'windows_virtual_machine_source_image_reference.dart';
import 'windows_virtual_machine_state.dart';
import 'windows_virtual_machine_termination_notification.dart';

/// Manages a Windows Virtual Machine.
///
/// ## Disclaimers
///
/// &gt; **Note** This provider will automatically remove the OS Disk by default - this behaviour can be configured using the `features` setting within the Provider block.
///
/// &gt; **Note** All arguments including the administrator login and password will be stored in the raw state as plain-text.
///
/// &gt; **Note** This resource does not support Unmanaged Disks. If you need to use Unmanaged Disks you can continue to use the `azure.compute.VirtualMachine` resource instead.
///
/// &gt; **Note** This resource does not support attaching existing OS Disks. You can instead capture an image of the OS Disk or continue to use the `azure.compute.VirtualMachine` resource instead.
///
/// &gt; In this release there's a known issue where the `public_ip_address` and `public_ip_addresses` fields may not be fully populated for Dynamic Public IP's.
///
/// ## Example Usage
///
/// This example provisions a basic Windows Virtual Machine on an internal network.
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
/// const exampleWindowsVirtualMachine = new azure.compute.WindowsVirtualMachine("example", {
///     name: "example-machine",
///     resourceGroupName: example.name,
///     location: example.location,
///     size: "Standard_F2",
///     adminUsername: "adminuser",
///     adminPassword: "P@$$w0rd1234!",
///     networkInterfaceIds: [exampleNetworkInterface.id],
///     osDisk: {
///         caching: "ReadWrite",
///         storageAccountType: "Standard_LRS",
///     },
///     sourceImageReference: {
///         publisher: "MicrosoftWindowsServer",
///         offer: "WindowsServer",
///         sku: "2016-Datacenter",
///         version: "latest",
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
/// example_windows_virtual_machine = azure.compute.WindowsVirtualMachine("example",
///     name="example-machine",
///     resource_group_name=example.name,
///     location=example.location,
///     size="Standard_F2",
///     admin_username="adminuser",
///     admin_password="P@$$w0rd1234!",
///     network_interface_ids=[example_network_interface.id],
///     os_disk={
///         "caching": "ReadWrite",
///         "storage_account_type": "Standard_LRS",
///     },
///     source_image_reference={
///         "publisher": "MicrosoftWindowsServer",
///         "offer": "WindowsServer",
///         "sku": "2016-Datacenter",
///         "version": "latest",
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
///     var exampleWindowsVirtualMachine = new Azure.Compute.WindowsVirtualMachine("example", new()
///     {
///         Name = "example-machine",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Size = "Standard_F2",
///         AdminUsername = "adminuser",
///         AdminPassword = "P@$$w0rd1234!",
///         NetworkInterfaceIds = new[]
///         {
///             exampleNetworkInterface.Id,
///         },
///         OsDisk = new Azure.Compute.Inputs.WindowsVirtualMachineOsDiskArgs
///         {
///             Caching = "ReadWrite",
///             StorageAccountType = "Standard_LRS",
///         },
///         SourceImageReference = new Azure.Compute.Inputs.WindowsVirtualMachineSourceImageReferenceArgs
///         {
///             Publisher = "MicrosoftWindowsServer",
///             Offer = "WindowsServer",
///             Sku = "2016-Datacenter",
///             Version = "latest",
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
/// 		_, err = compute.NewWindowsVirtualMachine(ctx, "example", &compute.WindowsVirtualMachineArgs{
/// 			Name:              pulumi.String("example-machine"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Size:              pulumi.String("Standard_F2"),
/// 			AdminUsername:     pulumi.String("adminuser"),
/// 			AdminPassword:     pulumi.String("P@$$w0rd1234!"),
/// 			NetworkInterfaceIds: pulumi.StringArray{
/// 				exampleNetworkInterface.ID(),
/// 			},
/// 			OsDisk: &compute.WindowsVirtualMachineOsDiskArgs{
/// 				Caching:            pulumi.String("ReadWrite"),
/// 				StorageAccountType: pulumi.String("Standard_LRS"),
/// 			},
/// 			SourceImageReference: &compute.WindowsVirtualMachineSourceImageReferenceArgs{
/// 				Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 				Offer:     pulumi.String("WindowsServer"),
/// 				Sku:       pulumi.String("2016-Datacenter"),
/// 				Version:   pulumi.String("latest"),
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
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.network.NetworkInterface;
/// import com.pulumi.azure.network.NetworkInterfaceArgs;
/// import com.pulumi.azure.network.inputs.NetworkInterfaceIpConfigurationArgs;
/// import com.pulumi.azure.compute.WindowsVirtualMachine;
/// import com.pulumi.azure.compute.WindowsVirtualMachineArgs;
/// import com.pulumi.azure.compute.inputs.WindowsVirtualMachineOsDiskArgs;
/// import com.pulumi.azure.compute.inputs.WindowsVirtualMachineSourceImageReferenceArgs;
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
///         var exampleWindowsVirtualMachine = new WindowsVirtualMachine("exampleWindowsVirtualMachine", WindowsVirtualMachineArgs.builder()
///             .name("example-machine")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .size("Standard_F2")
///             .adminUsername("adminuser")
///             .adminPassword("P@$$w0rd1234!")
///             .networkInterfaceIds(exampleNetworkInterface.id())
///             .osDisk(WindowsVirtualMachineOsDiskArgs.builder()
///                 .caching("ReadWrite")
///                 .storageAccountType("Standard_LRS")
///                 .build())
///             .sourceImageReference(WindowsVirtualMachineSourceImageReferenceArgs.builder()
///                 .publisher("MicrosoftWindowsServer")
///                 .offer("WindowsServer")
///                 .sku("2016-Datacenter")
///                 .version("latest")
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
///   exampleWindowsVirtualMachine:
///     type: azure:compute:WindowsVirtualMachine
///     name: example
///     properties:
///       name: example-machine
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       size: Standard_F2
///       adminUsername: adminuser
///       adminPassword: P@$$w0rd1234!
///       networkInterfaceIds:
///         - ${exampleNetworkInterface.id}
///       osDisk:
///         caching: ReadWrite
///         storageAccountType: Standard_LRS
///       sourceImageReference:
///         publisher: MicrosoftWindowsServer
///         offer: WindowsServer
///         sku: 2016-Datacenter
///         version: latest
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
/// Windows Virtual Machines can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:compute/windowsVirtualMachine:WindowsVirtualMachine example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Compute/virtualMachines/machine1
/// ```
class WindowsVirtualMachine extends pulumi.CustomResource {
  /// A `additional_capabilities` block as defined below.
  late final pulumi.Output<WindowsVirtualMachineAdditionalCapabilities?>
  additionalCapabilities;

  /// One or more `additional_unattend_content` blocks as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<List<Map<String, dynamic>>?>
  additionalUnattendContents;

  /// The Password which should be used for the local-administrator on this Virtual Machine. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** This is required unless using an existing OS Managed Disk by specifying `os_managed_disk_id`.
  late final pulumi.Output<String?> adminPassword;

  /// The username of the local administrator used for the Virtual Machine. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** This is required unless using an existing OS Managed Disk by specifying `os_managed_disk_id`.
  late final pulumi.Output<String?> adminUsername;

  /// Should Extension Operations be allowed on this Virtual Machine? Defaults to `true`.
  late final pulumi.Output<bool> allowExtensionOperations;

  /// Specifies if Automatic Updates are Enabled for the Windows Virtual Machine. Changing this forces a new resource to be created. Defaults to `true`.
  late final pulumi.Output<bool> automaticUpdatesEnabled;

  /// Specifies the ID of the Availability Set in which the Virtual Machine should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> availabilitySetId;

  /// A `boot_diagnostics` block as defined below.
  late final pulumi.Output<WindowsVirtualMachineBootDiagnostics?>
  bootDiagnostics;

  /// Specifies whether to skip platform scheduled patching when a user schedule is associated with the VM. Defaults to `false`.
  ///
  /// &gt; **NOTE:** `bypass_platform_safety_checks_on_user_schedule_enabled` can only be set to `true` when `patch_mode` is set to `AutomaticByPlatform`.
  late final pulumi.Output<bool?>
  bypassPlatformSafetyChecksOnUserScheduleEnabled;

  /// Specifies the ID of the Capacity Reservation Group which the Virtual Machine should be allocated to.
  ///
  /// &gt; **NOTE:** `capacity_reservation_group_id` cannot be used with `availability_set_id` or `proximity_placement_group_id`
  late final pulumi.Output<String?> capacityReservationGroupId;

  /// Specifies the Hostname which should be used for this Virtual Machine. If unspecified this defaults to the value for the `name` field. If the value of the `name` field is not a valid `computer_name`, then you must specify `computer_name`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> computerName;

  /// The Base64-Encoded Custom Data which should be used for this Virtual Machine. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> customData;

  /// The ID of a Dedicated Host Group that this Windows Virtual Machine should be run within. Conflicts with `dedicated_host_id`.
  late final pulumi.Output<String?> dedicatedHostGroupId;

  /// The ID of a Dedicated Host where this machine should be run on. Conflicts with `dedicated_host_group_id`.
  late final pulumi.Output<String?> dedicatedHostId;

  /// Specifies the Disk Controller Type used for this Virtual Machine. Possible values are `SCSI` and `NVMe`.
  late final pulumi.Output<String> diskControllerType;

  /// Specifies the Edge Zone within the Azure Region where this Windows Virtual Machine should exist. Changing this forces a new Windows Virtual Machine to be created.
  late final pulumi.Output<String?> edgeZone;
  late final pulumi.Output<bool> enableAutomaticUpdates;

  /// Should all of the disks (including the temp disk) attached to this Virtual Machine be encrypted by enabling Encryption at Host?
  late final pulumi.Output<bool?> encryptionAtHostEnabled;

  /// Specifies what should happen when the Virtual Machine is evicted for price reasons when using a Spot instance. Possible values are `Deallocate` and `Delete`. Changing this forces a new resource to be created.
  ///
  /// &gt; **NOTE:** This can only be configured when `priority` is set to `Spot`.
  late final pulumi.Output<String?> evictionPolicy;

  /// Specifies the duration allocated for all extensions to start. The time duration should be between 15 minutes and 120 minutes (inclusive) and should be specified in ISO 8601 format. Defaults to `PT1H30M`.
  late final pulumi.Output<String?> extensionsTimeBudget;

  /// One or more `gallery_application` blocks as defined below.
  ///
  /// &gt; **Note** Gallery Application Assignments can be defined either directly on `azure.compute.WindowsVirtualMachine` resource, or using the `azure.compute.GalleryApplicationAssignment` resource - but the two approaches cannot be used together. If both are used with the same Virtual Machine, spurious changes will occur. If `azure.compute.GalleryApplicationAssignment` is used, it's recommended to use `ignore_changes` for the `gallery_application` block on the corresponding `azure.compute.WindowsVirtualMachine` resource, to avoid a persistent diff when using this resource.
  late final pulumi.Output<List<Map<String, dynamic>>?> galleryApplications;

  /// Should the VM be patched without requiring a reboot? Possible values are `true` or `false`. Defaults to `false`. For more information about hot patching please see the [product documentation](https://docs.microsoft.com/azure/automanage/automanage-hotpatch).
  ///
  /// &gt; **NOTE:** Hotpatching can only be enabled if the `patch_mode` is set to `AutomaticByPlatform`, the `provision_vm_agent` is set to `true`, your `source_image_reference` references a hotpatching enabled image, and the VM's `size` is set to a [Azure generation 2](https://docs.microsoft.com/azure/virtual-machines/generation-2#generation-2-vm-sizes) VM. An example of how to correctly configure a Windows Virtual Machine to use the `hotpatching_enabled` field can be found in the `./examples/virtual-machines/windows/hotpatching-enabled` directory within the GitHub Repository.
  late final pulumi.Output<bool> hotpatchingEnabled;

  /// An `identity` block as defined below.
  late final pulumi.Output<WindowsVirtualMachineIdentity?> identity;

  /// Specifies the type of on-premise license (also known as [Azure Hybrid Use Benefit](https://docs.microsoft.com/windows-server/get-started/azure-hybrid-benefit)) which should be used for this Virtual Machine. Possible values are `None`, `Windows_Client` and `Windows_Server`.
  late final pulumi.Output<String?> licenseType;

  /// The Azure location where the Windows Virtual Machine should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;

  /// The maximum price you're willing to pay for this Virtual Machine, in US Dollars; which must be greater than the current spot price. If this bid price falls below the current spot price the Virtual Machine will be evicted using the `eviction_policy`. Defaults to `-1`, which means that the Virtual Machine should not be evicted for price reasons.
  ///
  /// &gt; **NOTE:** This can only be configured when `priority` is set to `Spot`.
  late final pulumi.Output<double?> maxBidPrice;

  /// The name of the Windows Virtual Machine. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// . A list of Network Interface IDs which should be attached to this Virtual Machine. The first Network Interface ID in this list will be the Primary Network Interface on the Virtual Machine.
  late final pulumi.Output<List<String>> networkInterfaceIds;

  /// An `os_disk` block as defined below.
  late final pulumi.Output<WindowsVirtualMachineOsDisk> osDisk;

  /// A `os_image_notification` block as defined below.
  late final pulumi.Output<WindowsVirtualMachineOsImageNotification?>
  osImageNotification;

  /// The ID of an existing Managed Disk to use as the OS Disk for this Windows Virtual Machine. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** When specifying an existing Managed Disk it is not currently possible to subsequently manage the Operating System Profile properties: `admin_username`, `admin_password`, `bypass_platform_safety_checks_on_user_schedule_enabled`, `computer_name`, `custom_data`, `provision_vm_agent`, `patch_mode`, `patch_assessment_mode`, or `reboot_setting`.
  late final pulumi.Output<String> osManagedDiskId;

  /// Specifies the mode of VM Guest Patching for the Virtual Machine. Possible values are `AutomaticByPlatform` or `ImageDefault`. Defaults to `ImageDefault`.
  ///
  /// &gt; **NOTE:** If the `patch_assessment_mode` is set to `AutomaticByPlatform` then the `provision_vm_agent` field must be set to `true`.
  late final pulumi.Output<String> patchAssessmentMode;

  /// Specifies the mode of in-guest patching to this Windows Virtual Machine. Possible values are `Manual`, `AutomaticByOS` and `AutomaticByPlatform`. Defaults to `AutomaticByOS`. For more information on patch modes please see the [product documentation](https://docs.microsoft.com/azure/virtual-machines/automatic-vm-guest-patching#patch-orchestration-modes).
  ///
  /// &gt; **NOTE:** If `patch_mode` is set to `AutomaticByPlatform` then `provision_vm_agent` must also be set to `true`. If the Virtual Machine is using a hotpatching enabled image the `patch_mode` must always be set to `AutomaticByPlatform`.
  late final pulumi.Output<String> patchMode;

  /// A `plan` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<WindowsVirtualMachinePlan?> plan;

  /// Specifies the Platform Fault Domain in which this Windows Virtual Machine should be created. Defaults to `-1`, which means this will be automatically assigned to a fault domain that best maintains balance across the available fault domains. Changing this forces a new Windows Virtual Machine to be created.
  late final pulumi.Output<int?> platformFaultDomain;

  /// Specifies the priority of this Virtual Machine. Possible values are `Regular` and `Spot`. Defaults to `Regular`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> priority;

  /// The Primary Private IP Address assigned to this Virtual Machine.
  late final pulumi.Output<String> privateIpAddress;

  /// A list of Private IP Addresses assigned to this Virtual Machine.
  late final pulumi.Output<List<String>> privateIpAddresses;

  /// Should the Azure VM Agent be provisioned on this Virtual Machine? Defaults to `true`. Changing this forces a new resource to be created.
  ///
  /// &gt; **NOTE:** If `provision_vm_agent` is set to `false` then `allow_extension_operations` must also be set to `false`.
  late final pulumi.Output<bool> provisionVmAgent;

  /// The ID of the Proximity Placement Group which the Virtual Machine should be assigned to.
  late final pulumi.Output<String?> proximityPlacementGroupId;

  /// The Primary Public IP Address assigned to this Virtual Machine.
  late final pulumi.Output<String> publicIpAddress;

  /// A list of the Public IP Addresses assigned to this Virtual Machine.
  late final pulumi.Output<List<String>> publicIpAddresses;

  /// Specifies the reboot setting for platform scheduled patching. Possible values are `Always`, `IfRequired` and `Never`.
  ///
  /// &gt; **NOTE:** `reboot_setting` can only be set when `patch_mode` is set to `AutomaticByPlatform`.
  late final pulumi.Output<String?> rebootSetting;

  /// The name of the Resource Group in which the Windows Virtual Machine should be exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// One or more `secret` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> secrets;

  /// Specifies if Secure Boot and Trusted Launch is enabled for the Virtual Machine. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> secureBootEnabled;

  /// The SKU which should be used for this Virtual Machine, such as `Standard_F2`.
  late final pulumi.Output<String> size;

  /// The ID of the Image which this Virtual Machine should be created from. Changing this forces a new resource to be created. Possible Image ID types include `Image ID`s, `Shared Image ID`s, `Shared Image Version ID`s, `Community Gallery Image ID`s, `Community Gallery Image Version ID`s, `Shared Gallery Image ID`s and `Shared Gallery Image Version ID`s.
  ///
  /// &gt; **NOTE:** One of either `source_image_id` or `source_image_reference` must be set.
  late final pulumi.Output<String?> sourceImageId;

  /// A `source_image_reference` block as defined below. Changing this forces a new resource to be created.
  ///
  /// &gt; **NOTE:** One of either `source_image_id` or `source_image_reference` must be set.
  late final pulumi.Output<WindowsVirtualMachineSourceImageReference?>
  sourceImageReference;

  /// A mapping of tags which should be assigned to this Virtual Machine.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A `termination_notification` block as defined below.
  late final pulumi.Output<WindowsVirtualMachineTerminationNotification>
  terminationNotification;

  /// Specifies the Time Zone which should be used by the Virtual Machine, [the possible values are defined here](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/). Changing this forces a new resource to be created.
  late final pulumi.Output<String?> timezone;

  /// The Base64-Encoded User Data which should be used for this Virtual Machine.
  late final pulumi.Output<String?> userData;

  /// A 128-bit identifier which uniquely identifies this Virtual Machine.
  late final pulumi.Output<String> virtualMachineId;

  /// Specifies the Orchestrated Virtual Machine Scale Set that this Virtual Machine should be created within.
  ///
  /// &gt; **NOTE:** To update `virtual_machine_scale_set_id` the Preview Feature `Microsoft.Compute/SingleFDAttachDetachVMToVmss` needs to be enabled, see [the documentation](https://review.learn.microsoft.com/azure/virtual-machine-scale-sets/virtual-machine-scale-sets-attach-detach-vm#enroll-in-the-preview) for more information.
  ///
  /// &gt; **NOTE:** Orchestrated Virtual Machine Scale Sets can be provisioned using [the `azure.compute.OrchestratedVirtualMachineScaleSet` resource](https://www.terraform.io/docs/providers/azurerm/r/orchestrated_virtual_machine_scale_set.html).
  ///
  /// &gt; **NOTE:** To attach an existing VM to a Virtual Machine Scale Set, the scale set must have `single_placement_group` set to `false`, see [the documentation](https://learn.microsoft.com/azure/virtual-machine-scale-sets/virtual-machine-scale-sets-attach-detach-vm?tabs=portal-1%2Cportal-2%2Cportal-3#limitations-for-attaching-an-existing-vm-to-a-scale-set) for more information.
  late final pulumi.Output<String?> virtualMachineScaleSetId;

  /// Specifies whether VMAgent Platform Updates is enabled. Defaults to `false`.
  late final pulumi.Output<bool> vmAgentPlatformUpdatesEnabled;

  /// Specifies if vTPM (virtual Trusted Platform Module) and Trusted Launch is enabled for the Virtual Machine. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> vtpmEnabled;

  /// One or more `winrm_listener` blocks as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<List<Map<String, dynamic>>?> winrmListeners;

  /// * `zones` - (Optional) Specifies the Availability Zone in which this Windows Virtual Machine should be located. Changing this forces a new Windows Virtual Machine to be created.
  late final pulumi.Output<String?> zone;

  /// Creates a new [WindowsVirtualMachine].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WindowsVirtualMachine]. {@macro pulumi_compute_windows_virtual_machine_windows_virtual_machine_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WindowsVirtualMachine(
    String name, {
    WindowsVirtualMachineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:compute/windowsVirtualMachine:WindowsVirtualMachine',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    additionalCapabilities =
        registerOutput<WindowsVirtualMachineAdditionalCapabilities?>(
          'additionalCapabilities',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return WindowsVirtualMachineAdditionalCapabilities.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    additionalUnattendContents = registerOutput<List<Map<String, dynamic>>?>(
      'additionalUnattendContents',
    );
    adminPassword = registerOutput<String?>('adminPassword');
    adminUsername = registerOutput<String?>('adminUsername');
    allowExtensionOperations = registerOutput<bool>('allowExtensionOperations');
    automaticUpdatesEnabled = registerOutput<bool>('automaticUpdatesEnabled');
    availabilitySetId = registerOutput<String?>('availabilitySetId');
    bootDiagnostics = registerOutput<WindowsVirtualMachineBootDiagnostics?>(
      'bootDiagnostics',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return WindowsVirtualMachineBootDiagnostics.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    bypassPlatformSafetyChecksOnUserScheduleEnabled = registerOutput<bool?>(
      'bypassPlatformSafetyChecksOnUserScheduleEnabled',
    );
    capacityReservationGroupId = registerOutput<String?>(
      'capacityReservationGroupId',
    );
    computerName = registerOutput<String>('computerName');
    customData = registerOutput<String?>('customData');
    dedicatedHostGroupId = registerOutput<String?>('dedicatedHostGroupId');
    dedicatedHostId = registerOutput<String?>('dedicatedHostId');
    diskControllerType = registerOutput<String>('diskControllerType');
    edgeZone = registerOutput<String?>('edgeZone');
    enableAutomaticUpdates = registerOutput<bool>('enableAutomaticUpdates');
    encryptionAtHostEnabled = registerOutput<bool?>('encryptionAtHostEnabled');
    evictionPolicy = registerOutput<String?>('evictionPolicy');
    extensionsTimeBudget = registerOutput<String?>('extensionsTimeBudget');
    galleryApplications = registerOutput<List<Map<String, dynamic>>?>(
      'galleryApplications',
    );
    hotpatchingEnabled = registerOutput<bool>('hotpatchingEnabled');
    identity = registerOutput<WindowsVirtualMachineIdentity?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return WindowsVirtualMachineIdentity.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    licenseType = registerOutput<String?>('licenseType');
    location = registerOutput<String>('location');
    maxBidPrice = registerOutput<double?>('maxBidPrice');
    this.name = registerOutput<String>('name');
    networkInterfaceIds = registerOutput<List<String>>('networkInterfaceIds');
    osDisk = registerOutput<WindowsVirtualMachineOsDisk>(
      'osDisk',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return WindowsVirtualMachineOsDisk.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    osImageNotification =
        registerOutput<WindowsVirtualMachineOsImageNotification?>(
          'osImageNotification',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return WindowsVirtualMachineOsImageNotification.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    osManagedDiskId = registerOutput<String>('osManagedDiskId');
    patchAssessmentMode = registerOutput<String>('patchAssessmentMode');
    patchMode = registerOutput<String>('patchMode');
    plan = registerOutput<WindowsVirtualMachinePlan?>(
      'plan',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return WindowsVirtualMachinePlan.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    platformFaultDomain = registerOutput<int?>('platformFaultDomain');
    priority = registerOutput<String?>('priority');
    privateIpAddress = registerOutput<String>('privateIpAddress');
    privateIpAddresses = registerOutput<List<String>>('privateIpAddresses');
    provisionVmAgent = registerOutput<bool>('provisionVmAgent');
    proximityPlacementGroupId = registerOutput<String?>(
      'proximityPlacementGroupId',
    );
    publicIpAddress = registerOutput<String>('publicIpAddress');
    publicIpAddresses = registerOutput<List<String>>('publicIpAddresses');
    rebootSetting = registerOutput<String?>('rebootSetting');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    secrets = registerOutput<List<Map<String, dynamic>>?>('secrets');
    secureBootEnabled = registerOutput<bool?>('secureBootEnabled');
    size = registerOutput<String>('size');
    sourceImageId = registerOutput<String?>('sourceImageId');
    sourceImageReference =
        registerOutput<WindowsVirtualMachineSourceImageReference?>(
          'sourceImageReference',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return WindowsVirtualMachineSourceImageReference.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    tags = registerOutput<Map<String, String>?>('tags');
    terminationNotification =
        registerOutput<WindowsVirtualMachineTerminationNotification>(
          'terminationNotification',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return WindowsVirtualMachineTerminationNotification.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    timezone = registerOutput<String?>('timezone');
    userData = registerOutput<String?>('userData');
    virtualMachineId = registerOutput<String>('virtualMachineId');
    virtualMachineScaleSetId = registerOutput<String?>(
      'virtualMachineScaleSetId',
    );
    vmAgentPlatformUpdatesEnabled = registerOutput<bool>(
      'vmAgentPlatformUpdatesEnabled',
    );
    vtpmEnabled = registerOutput<bool?>('vtpmEnabled');
    winrmListeners = registerOutput<List<Map<String, dynamic>>?>(
      'winrmListeners',
    );
    zone = registerOutput<String?>('zone');
  }

  /// Gets an existing [WindowsVirtualMachine] resource's state with the given [name] and [id].
  static WindowsVirtualMachine get(
    String name,
    pulumi.Input<String> id, {
    WindowsVirtualMachineState? state,
  }) {
    return WindowsVirtualMachine._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  WindowsVirtualMachine._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:compute/windowsVirtualMachine:WindowsVirtualMachine',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    additionalCapabilities =
        registerOutput<WindowsVirtualMachineAdditionalCapabilities?>(
          'additionalCapabilities',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return WindowsVirtualMachineAdditionalCapabilities.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    additionalUnattendContents = registerOutput<List<Map<String, dynamic>>?>(
      'additionalUnattendContents',
    );
    adminPassword = registerOutput<String?>('adminPassword');
    adminUsername = registerOutput<String?>('adminUsername');
    allowExtensionOperations = registerOutput<bool>('allowExtensionOperations');
    automaticUpdatesEnabled = registerOutput<bool>('automaticUpdatesEnabled');
    availabilitySetId = registerOutput<String?>('availabilitySetId');
    bootDiagnostics = registerOutput<WindowsVirtualMachineBootDiagnostics?>(
      'bootDiagnostics',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return WindowsVirtualMachineBootDiagnostics.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    bypassPlatformSafetyChecksOnUserScheduleEnabled = registerOutput<bool?>(
      'bypassPlatformSafetyChecksOnUserScheduleEnabled',
    );
    capacityReservationGroupId = registerOutput<String?>(
      'capacityReservationGroupId',
    );
    computerName = registerOutput<String>('computerName');
    customData = registerOutput<String?>('customData');
    dedicatedHostGroupId = registerOutput<String?>('dedicatedHostGroupId');
    dedicatedHostId = registerOutput<String?>('dedicatedHostId');
    diskControllerType = registerOutput<String>('diskControllerType');
    edgeZone = registerOutput<String?>('edgeZone');
    enableAutomaticUpdates = registerOutput<bool>('enableAutomaticUpdates');
    encryptionAtHostEnabled = registerOutput<bool?>('encryptionAtHostEnabled');
    evictionPolicy = registerOutput<String?>('evictionPolicy');
    extensionsTimeBudget = registerOutput<String?>('extensionsTimeBudget');
    galleryApplications = registerOutput<List<Map<String, dynamic>>?>(
      'galleryApplications',
    );
    hotpatchingEnabled = registerOutput<bool>('hotpatchingEnabled');
    identity = registerOutput<WindowsVirtualMachineIdentity?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return WindowsVirtualMachineIdentity.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    licenseType = registerOutput<String?>('licenseType');
    location = registerOutput<String>('location');
    maxBidPrice = registerOutput<double?>('maxBidPrice');
    this.name = registerOutput<String>('name');
    networkInterfaceIds = registerOutput<List<String>>('networkInterfaceIds');
    osDisk = registerOutput<WindowsVirtualMachineOsDisk>(
      'osDisk',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return WindowsVirtualMachineOsDisk.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    osImageNotification =
        registerOutput<WindowsVirtualMachineOsImageNotification?>(
          'osImageNotification',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return WindowsVirtualMachineOsImageNotification.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    osManagedDiskId = registerOutput<String>('osManagedDiskId');
    patchAssessmentMode = registerOutput<String>('patchAssessmentMode');
    patchMode = registerOutput<String>('patchMode');
    plan = registerOutput<WindowsVirtualMachinePlan?>(
      'plan',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return WindowsVirtualMachinePlan.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    platformFaultDomain = registerOutput<int?>('platformFaultDomain');
    priority = registerOutput<String?>('priority');
    privateIpAddress = registerOutput<String>('privateIpAddress');
    privateIpAddresses = registerOutput<List<String>>('privateIpAddresses');
    provisionVmAgent = registerOutput<bool>('provisionVmAgent');
    proximityPlacementGroupId = registerOutput<String?>(
      'proximityPlacementGroupId',
    );
    publicIpAddress = registerOutput<String>('publicIpAddress');
    publicIpAddresses = registerOutput<List<String>>('publicIpAddresses');
    rebootSetting = registerOutput<String?>('rebootSetting');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    secrets = registerOutput<List<Map<String, dynamic>>?>('secrets');
    secureBootEnabled = registerOutput<bool?>('secureBootEnabled');
    size = registerOutput<String>('size');
    sourceImageId = registerOutput<String?>('sourceImageId');
    sourceImageReference =
        registerOutput<WindowsVirtualMachineSourceImageReference?>(
          'sourceImageReference',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return WindowsVirtualMachineSourceImageReference.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    tags = registerOutput<Map<String, String>?>('tags');
    terminationNotification =
        registerOutput<WindowsVirtualMachineTerminationNotification>(
          'terminationNotification',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return WindowsVirtualMachineTerminationNotification.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    timezone = registerOutput<String?>('timezone');
    userData = registerOutput<String?>('userData');
    virtualMachineId = registerOutput<String>('virtualMachineId');
    virtualMachineScaleSetId = registerOutput<String?>(
      'virtualMachineScaleSetId',
    );
    vmAgentPlatformUpdatesEnabled = registerOutput<bool>(
      'vmAgentPlatformUpdatesEnabled',
    );
    vtpmEnabled = registerOutput<bool?>('vtpmEnabled');
    winrmListeners = registerOutput<List<Map<String, dynamic>>?>(
      'winrmListeners',
    );
    zone = registerOutput<String?>('zone');
  }
}
