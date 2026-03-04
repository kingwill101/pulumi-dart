import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_additional_capabilities.dart';
import 'virtual_machine_args.dart';
import 'virtual_machine_boot_diagnostics.dart';
import 'virtual_machine_identity.dart';
import 'virtual_machine_os_profile.dart';
import 'virtual_machine_os_profile_linux_config.dart';
import 'virtual_machine_os_profile_windows_config.dart';
import 'virtual_machine_plan.dart';
import 'virtual_machine_state.dart';
import 'virtual_machine_storage_image_reference.dart';
import 'virtual_machine_storage_os_disk.dart';

/// Manages a Virtual Machine.
///
/// ## Disclaimers
///
/// &gt; **Note:** The `azure.compute.VirtualMachine` resource has been superseded by the `azure.compute.LinuxVirtualMachine` and `azure.compute.WindowsVirtualMachine` resources. The existing `azure.compute.VirtualMachine` resource will continue to be available throughout the 2.x releases however is in a feature-frozen state to maintain compatibility - new functionality will instead be added to the `azure.compute.LinuxVirtualMachine` and `azure.compute.WindowsVirtualMachine` resources.
///
/// &gt; **Note:** Data Disks can be attached either directly on the `azure.compute.VirtualMachine` resource, or using the `azure.compute.DataDiskAttachment` resource - but the two cannot be used together. If both are used against the same Virtual Machine, spurious changes will occur.
///
/// ## Example Usage
///
/// ### From An Azure Platform Image)
///
/// This example provisions a Virtual Machine with Managed Disks.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const config = new pulumi.Config();
/// const prefix = config.get("prefix") || "tfvmex";
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
///         name: "testconfiguration1",
///         subnetId: internal.id,
///         privateIpAddressAllocation: "Dynamic",
///     }],
/// });
/// const mainVirtualMachine = new azure.compute.VirtualMachine("main", {
///     name: `${prefix}-vm`,
///     location: example.location,
///     resourceGroupName: example.name,
///     networkInterfaceIds: [mainNetworkInterface.id],
///     vmSize: "Standard_DS1_v2",
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
///         computerName: "hostname",
///         adminUsername: "testadmin",
///         adminPassword: "Password1234!",
///     },
///     osProfileLinuxConfig: {
///         disablePasswordAuthentication: false,
///     },
///     tags: {
///         environment: "staging",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// config = pulumi.Config()
/// prefix = config.get("prefix")
/// if prefix is None:
///     prefix = "tfvmex"
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
///         "name": "testconfiguration1",
///         "subnet_id": internal.id,
///         "private_ip_address_allocation": "Dynamic",
///     }])
/// main_virtual_machine = azure.compute.VirtualMachine("main",
///     name=f"{prefix}-vm",
///     location=example.location,
///     resource_group_name=example.name,
///     network_interface_ids=[main_network_interface.id],
///     vm_size="Standard_DS1_v2",
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
///         "computer_name": "hostname",
///         "admin_username": "testadmin",
///         "admin_password": "Password1234!",
///     },
///     os_profile_linux_config={
///         "disable_password_authentication": False,
///     },
///     tags={
///         "environment": "staging",
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
///     var config = new Config();
///     var prefix = config.Get("prefix") ?? "tfvmex";
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
///                 Name = "testconfiguration1",
///                 SubnetId = @internal.Id,
///                 PrivateIpAddressAllocation = "Dynamic",
///             },
///         },
///     });
///
///     var mainVirtualMachine = new Azure.Compute.VirtualMachine("main", new()
///     {
///         Name = $"{prefix}-vm",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         NetworkInterfaceIds = new[]
///         {
///             mainNetworkInterface.Id,
///         },
///         VmSize = "Standard_DS1_v2",
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
///             ComputerName = "hostname",
///             AdminUsername = "testadmin",
///             AdminPassword = "Password1234!",
///         },
///         OsProfileLinuxConfig = new Azure.Compute.Inputs.VirtualMachineOsProfileLinuxConfigArgs
///         {
///             DisablePasswordAuthentication = false,
///         },
///         Tags =
///         {
///             { "environment", "staging" },
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		prefix := "tfvmex"
/// 		if param := cfg.Get("prefix"); param != "" {
/// 			prefix = param
/// 		}
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
/// 					Name:                       pulumi.String("testconfiguration1"),
/// 					SubnetId:                   internal.ID(),
/// 					PrivateIpAddressAllocation: pulumi.String("Dynamic"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewVirtualMachine(ctx, "main", &compute.VirtualMachineArgs{
/// 			Name:              pulumi.Sprintf("%v-vm", prefix),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			NetworkInterfaceIds: pulumi.StringArray{
/// 				mainNetworkInterface.ID(),
/// 			},
/// 			VmSize: pulumi.String("Standard_DS1_v2"),
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
/// 				ComputerName:  pulumi.String("hostname"),
/// 				AdminUsername: pulumi.String("testadmin"),
/// 				AdminPassword: pulumi.String("Password1234!"),
/// 			},
/// 			OsProfileLinuxConfig: &compute.VirtualMachineOsProfileLinuxConfigArgs{
/// 				DisablePasswordAuthentication: pulumi.Bool(false),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("staging"),
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
/// import com.pulumi.azure.compute.VirtualMachine;
/// import com.pulumi.azure.compute.VirtualMachineArgs;
/// import com.pulumi.azure.compute.inputs.VirtualMachineStorageImageReferenceArgs;
/// import com.pulumi.azure.compute.inputs.VirtualMachineStorageOsDiskArgs;
/// import com.pulumi.azure.compute.inputs.VirtualMachineOsProfileArgs;
/// import com.pulumi.azure.compute.inputs.VirtualMachineOsProfileLinuxConfigArgs;
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
///         final var config = ctx.config();
///         final var prefix = config.get("prefix").orElse("tfvmex");
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
///                 .name("testconfiguration1")
///                 .subnetId(internal.id())
///                 .privateIpAddressAllocation("Dynamic")
///                 .build())
///             .build());
///
///         var mainVirtualMachine = new VirtualMachine("mainVirtualMachine", VirtualMachineArgs.builder()
///             .name(String.format("%s-vm", prefix))
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .networkInterfaceIds(mainNetworkInterface.id())
///             .vmSize("Standard_DS1_v2")
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
///                 .computerName("hostname")
///                 .adminUsername("testadmin")
///                 .adminPassword("Password1234!")
///                 .build())
///             .osProfileLinuxConfig(VirtualMachineOsProfileLinuxConfigArgs.builder()
///                 .disablePasswordAuthentication(false)
///                 .build())
///             .tags(Map.of("environment", "staging"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   prefix:
///     type: string
///     default: tfvmex
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
///         - name: testconfiguration1
///           subnetId: ${internal.id}
///           privateIpAddressAllocation: Dynamic
///   mainVirtualMachine:
///     type: azure:compute:VirtualMachine
///     name: main
///     properties:
///       name: ${prefix}-vm
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       networkInterfaceIds:
///         - ${mainNetworkInterface.id}
///       vmSize: Standard_DS1_v2
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
///         computerName: hostname
///         adminUsername: testadmin
///         adminPassword: Password1234!
///       osProfileLinuxConfig:
///         disablePasswordAuthentication: false
///       tags:
///         environment: staging
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
/// * `Microsoft.Network` - 2025-01-01
///
/// ## Import
///
/// Virtual Machines can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:compute/virtualMachine:VirtualMachine example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Compute/virtualMachines/machine1
/// ```
class VirtualMachine extends pulumi.CustomResource {
  /// An `additional_capabilities` block as defined below.
  late final pulumi.Output<VirtualMachineAdditionalCapabilities?>
  additionalCapabilities;

  /// The ID of the Availability Set in which the Virtual Machine should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> availabilitySetId;

  /// A `boot_diagnostics` block as defined below.
  late final pulumi.Output<VirtualMachineBootDiagnostics?> bootDiagnostics;

  /// Should the Data Disks (either the Managed Disks / VHD Blobs) be deleted when the Virtual Machine is destroyed? Defaults to `false`.
  ///
  /// &gt; **Note:** This setting works when instance is deleted via the provider only and don't forget to delete disks manually if you deleted VM manually. It can increase spending.
  late final pulumi.Output<bool?> deleteDataDisksOnTermination;

  /// Should the OS Disk (either the Managed Disk / VHD Blob) be deleted when the Virtual Machine is destroyed? Defaults to `false`.
  ///
  /// &gt; **Note:** This setting works when instance is deleted via the provider only and don't forget to delete disks manually if you deleted VM manually. It can increase spending.
  late final pulumi.Output<bool?> deleteOsDiskOnTermination;

  /// An `identity` block as defined below.
  late final pulumi.Output<VirtualMachineIdentity?> identity;

  /// Specifies the BYOL Type for this Virtual Machine. This is only applicable to Windows Virtual Machines. Possible values are `Windows_Client` and `Windows_Server`.
  late final pulumi.Output<String> licenseType;

  /// Specifies the Azure Region where the Virtual Machine exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;

  /// Specifies the name of the Virtual Machine. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// A list of Network Interface IDs which should be associated with the Virtual Machine.
  late final pulumi.Output<List<String>> networkInterfaceIds;

  /// An `os_profile` block as defined below. Required when `create_option` in the `storage_os_disk` block is set to `FromImage`.
  late final pulumi.Output<VirtualMachineOsProfile?> osProfile;

  /// (Required, when a Linux machine) An `os_profile_linux_config` block as defined below.
  late final pulumi.Output<VirtualMachineOsProfileLinuxConfig?>
  osProfileLinuxConfig;

  /// One or more `os_profile_secrets` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> osProfileSecrets;

  /// (Required, when a Windows machine) An `os_profile_windows_config` block as defined below.
  late final pulumi.Output<VirtualMachineOsProfileWindowsConfig?>
  osProfileWindowsConfig;

  /// A `plan` block as defined below.
  late final pulumi.Output<VirtualMachinePlan?> plan;

  /// The ID of the Network Interface (which must be attached to the Virtual Machine) which should be the Primary Network Interface for this Virtual Machine.
  late final pulumi.Output<String?> primaryNetworkInterfaceId;

  /// The ID of the Proximity Placement Group to which this Virtual Machine should be assigned. Changing this forces a new resource to be created
  late final pulumi.Output<String?> proximityPlacementGroupId;

  /// Specifies the name of the Resource Group in which the Virtual Machine should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// One or more `storage_data_disk` blocks as defined below.
  ///
  /// &gt; **Please Note:** Data Disks can also be attached either using this block or the `azure.compute.DataDiskAttachment` resource - but not both.
  late final pulumi.Output<List<Map<String, dynamic>>> storageDataDisks;

  /// A `storage_image_reference` block as defined below. Changing this forces a new resource to be created.
  late final pulumi.Output<VirtualMachineStorageImageReference>
  storageImageReference;

  /// A `storage_os_disk` block as defined below.
  late final pulumi.Output<VirtualMachineStorageOsDisk> storageOsDisk;

  /// A mapping of tags to assign to the Virtual Machine.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Specifies the [size of the Virtual Machine](https://docs.microsoft.com/azure/virtual-machines/sizes-general). See also [Azure VM Naming Conventions](https://docs.microsoft.com/azure/virtual-machines/vm-naming-conventions).
  late final pulumi.Output<String> vmSize;

  /// A list of a single item of the Availability Zone which the Virtual Machine should be allocated in. Changing this forces a new resource to be created.
  ///
  /// &gt; **Please Note:** Availability Zones are [only supported in several regions at this time](https://docs.microsoft.com/azure/availability-zones/az-overview).
  ///
  /// For more information on the different example configurations, please check out the [Azure documentation](https://docs.microsoft.com/en-gb/rest/api/compute/virtualmachines/createorupdate#examples)
  late final pulumi.Output<String?> zones;

  /// Creates a new [VirtualMachine].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualMachine]. {@macro pulumi_compute_virtual_machine_virtual_machine_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualMachine(
    String name, {
    VirtualMachineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:compute/virtualMachine:VirtualMachine',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    additionalCapabilities =
        registerOutput<VirtualMachineAdditionalCapabilities?>(
          'additionalCapabilities',
        );
    availabilitySetId = registerOutput<String>('availabilitySetId');
    bootDiagnostics = registerOutput<VirtualMachineBootDiagnostics?>(
      'bootDiagnostics',
    );
    deleteDataDisksOnTermination = registerOutput<bool?>(
      'deleteDataDisksOnTermination',
    );
    deleteOsDiskOnTermination = registerOutput<bool?>(
      'deleteOsDiskOnTermination',
    );
    identity = registerOutput<VirtualMachineIdentity?>('identity');
    licenseType = registerOutput<String>('licenseType');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkInterfaceIds = registerOutput<List<String>>('networkInterfaceIds');
    osProfile = registerOutput<VirtualMachineOsProfile?>('osProfile');
    osProfileLinuxConfig = registerOutput<VirtualMachineOsProfileLinuxConfig?>(
      'osProfileLinuxConfig',
    );
    osProfileSecrets = registerOutput<List<Map<String, dynamic>>?>(
      'osProfileSecrets',
    );
    osProfileWindowsConfig =
        registerOutput<VirtualMachineOsProfileWindowsConfig?>(
          'osProfileWindowsConfig',
        );
    plan = registerOutput<VirtualMachinePlan?>('plan');
    primaryNetworkInterfaceId = registerOutput<String?>(
      'primaryNetworkInterfaceId',
    );
    proximityPlacementGroupId = registerOutput<String?>(
      'proximityPlacementGroupId',
    );
    resourceGroupName = registerOutput<String>('resourceGroupName');
    storageDataDisks = registerOutput<List<Map<String, dynamic>>>(
      'storageDataDisks',
    );
    storageImageReference = registerOutput<VirtualMachineStorageImageReference>(
      'storageImageReference',
    );
    storageOsDisk = registerOutput<VirtualMachineStorageOsDisk>(
      'storageOsDisk',
    );
    tags = registerOutput<Map<String, String>?>('tags');
    vmSize = registerOutput<String>('vmSize');
    zones = registerOutput<String?>('zones');
  }

  /// Gets an existing [VirtualMachine] resource's state with the given [name] and [id].
  static VirtualMachine get(
    String name,
    pulumi.Input<String> id, {
    VirtualMachineState? state,
  }) {
    return VirtualMachine._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VirtualMachine._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:compute/virtualMachine:VirtualMachine',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    additionalCapabilities =
        registerOutput<VirtualMachineAdditionalCapabilities?>(
          'additionalCapabilities',
        );
    availabilitySetId = registerOutput<String>('availabilitySetId');
    bootDiagnostics = registerOutput<VirtualMachineBootDiagnostics?>(
      'bootDiagnostics',
    );
    deleteDataDisksOnTermination = registerOutput<bool?>(
      'deleteDataDisksOnTermination',
    );
    deleteOsDiskOnTermination = registerOutput<bool?>(
      'deleteOsDiskOnTermination',
    );
    identity = registerOutput<VirtualMachineIdentity?>('identity');
    licenseType = registerOutput<String>('licenseType');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkInterfaceIds = registerOutput<List<String>>('networkInterfaceIds');
    osProfile = registerOutput<VirtualMachineOsProfile?>('osProfile');
    osProfileLinuxConfig = registerOutput<VirtualMachineOsProfileLinuxConfig?>(
      'osProfileLinuxConfig',
    );
    osProfileSecrets = registerOutput<List<Map<String, dynamic>>?>(
      'osProfileSecrets',
    );
    osProfileWindowsConfig =
        registerOutput<VirtualMachineOsProfileWindowsConfig?>(
          'osProfileWindowsConfig',
        );
    plan = registerOutput<VirtualMachinePlan?>('plan');
    primaryNetworkInterfaceId = registerOutput<String?>(
      'primaryNetworkInterfaceId',
    );
    proximityPlacementGroupId = registerOutput<String?>(
      'proximityPlacementGroupId',
    );
    resourceGroupName = registerOutput<String>('resourceGroupName');
    storageDataDisks = registerOutput<List<Map<String, dynamic>>>(
      'storageDataDisks',
    );
    storageImageReference = registerOutput<VirtualMachineStorageImageReference>(
      'storageImageReference',
    );
    storageOsDisk = registerOutput<VirtualMachineStorageOsDisk>(
      'storageOsDisk',
    );
    tags = registerOutput<Map<String, String>?>('tags');
    vmSize = registerOutput<String>('vmSize');
    zones = registerOutput<String?>('zones');
  }
}
