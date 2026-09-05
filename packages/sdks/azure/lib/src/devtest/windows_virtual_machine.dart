import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_virtual_machine_args.dart';
import 'windows_virtual_machine_gallery_image_reference.dart';
import 'windows_virtual_machine_inbound_nat_rule.dart';
import 'windows_virtual_machine_state.dart';

/// Manages a Windows Virtual Machine within a Dev Test Lab.
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
/// const exampleLab = new azure.devtest.Lab("example", {
///     name: "example-devtestlab",
///     location: example.location,
///     resourceGroupName: example.name,
///     tags: {
///         Sydney: "Australia",
///     },
/// });
/// const exampleVirtualNetwork = new azure.devtest.VirtualNetwork("example", {
///     name: "example-network",
///     labName: exampleLab.name,
///     resourceGroupName: example.name,
///     subnet: {
///         usePublicIpAddress: "Allow",
///         useInVirtualMachineCreation: "Allow",
///     },
/// });
/// const exampleWindowsVirtualMachine = new azure.devtest.WindowsVirtualMachine("example", {
///     name: "example-vm03",
///     labName: exampleLab.name,
///     resourceGroupName: example.name,
///     location: example.location,
///     size: "Standard_DS2",
///     username: "exampleuser99",
///     password: "Pa$w0rd1234!",
///     labVirtualNetworkId: exampleVirtualNetwork.id,
///     labSubnetName: exampleVirtualNetwork.subnet.name,
///     storageType: "Premium",
///     notes: "Some notes about this Virtual Machine.",
///     galleryImageReference: {
///         offer: "WindowsServer",
///         publisher: "MicrosoftWindowsServer",
///         sku: "2019-Datacenter",
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
/// example_lab = azure.devtest.Lab("example",
///     name="example-devtestlab",
///     location=example.location,
///     resource_group_name=example.name,
///     tags={
///         "Sydney": "Australia",
///     })
/// example_virtual_network = azure.devtest.VirtualNetwork("example",
///     name="example-network",
///     lab_name=example_lab.name,
///     resource_group_name=example.name,
///     subnet={
///         "use_public_ip_address": "Allow",
///         "use_in_virtual_machine_creation": "Allow",
///     })
/// example_windows_virtual_machine = azure.devtest.WindowsVirtualMachine("example",
///     name="example-vm03",
///     lab_name=example_lab.name,
///     resource_group_name=example.name,
///     location=example.location,
///     size="Standard_DS2",
///     username="exampleuser99",
///     password="Pa$w0rd1234!",
///     lab_virtual_network_id=example_virtual_network.id,
///     lab_subnet_name=example_virtual_network.subnet.name,
///     storage_type="Premium",
///     notes="Some notes about this Virtual Machine.",
///     gallery_image_reference={
///         "offer": "WindowsServer",
///         "publisher": "MicrosoftWindowsServer",
///         "sku": "2019-Datacenter",
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
///     var exampleLab = new Azure.DevTest.Lab("example", new()
///     {
///         Name = "example-devtestlab",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Tags =
///         {
///             { "Sydney", "Australia" },
///         },
///     });
///
///     var exampleVirtualNetwork = new Azure.DevTest.VirtualNetwork("example", new()
///     {
///         Name = "example-network",
///         LabName = exampleLab.Name,
///         ResourceGroupName = example.Name,
///         Subnet = new Azure.DevTest.Inputs.VirtualNetworkSubnetArgs
///         {
///             UsePublicIpAddress = "Allow",
///             UseInVirtualMachineCreation = "Allow",
///         },
///     });
///
///     var exampleWindowsVirtualMachine = new Azure.DevTest.WindowsVirtualMachine("example", new()
///     {
///         Name = "example-vm03",
///         LabName = exampleLab.Name,
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Size = "Standard_DS2",
///         Username = "exampleuser99",
///         Password = "Pa$w0rd1234!",
///         LabVirtualNetworkId = exampleVirtualNetwork.Id,
///         LabSubnetName = exampleVirtualNetwork.Subnet.Apply(subnet => subnet.Name),
///         StorageType = "Premium",
///         Notes = "Some notes about this Virtual Machine.",
///         GalleryImageReference = new Azure.DevTest.Inputs.WindowsVirtualMachineGalleryImageReferenceArgs
///         {
///             Offer = "WindowsServer",
///             Publisher = "MicrosoftWindowsServer",
///             Sku = "2019-Datacenter",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/devtest"
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
/// 		exampleLab, err := devtest.NewLab(ctx, "example", &devtest.LabArgs{
/// 			Name:              pulumi.String("example-devtestlab"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Tags: pulumi.StringMap{
/// 				"Sydney": pulumi.String("Australia"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := devtest.NewVirtualNetwork(ctx, "example", &devtest.VirtualNetworkArgs{
/// 			Name:              pulumi.String("example-network"),
/// 			LabName:           exampleLab.Name,
/// 			ResourceGroupName: example.Name,
/// 			Subnet: &devtest.VirtualNetworkSubnetArgs{
/// 				UsePublicIpAddress:          pulumi.String("Allow"),
/// 				UseInVirtualMachineCreation: pulumi.String("Allow"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = devtest.NewWindowsVirtualMachine(ctx, "example", &devtest.WindowsVirtualMachineArgs{
/// 			Name:                pulumi.String("example-vm03"),
/// 			LabName:             exampleLab.Name,
/// 			ResourceGroupName:   example.Name,
/// 			Location:            example.Location,
/// 			Size:                pulumi.String("Standard_DS2"),
/// 			Username:            pulumi.String("exampleuser99"),
/// 			Password:            pulumi.String("Pa$w0rd1234!"),
/// 			LabVirtualNetworkId: exampleVirtualNetwork.ID().ToIDOutput().ToStringOutput(),
/// 			LabSubnetName:       exampleVirtualNetwork.Subnet.Name(),
/// 			StorageType:         pulumi.String("Premium"),
/// 			Notes:               pulumi.String("Some notes about this Virtual Machine."),
/// 			GalleryImageReference: &devtest.WindowsVirtualMachineGalleryImageReferenceArgs{
/// 				Offer:     pulumi.String("WindowsServer"),
/// 				Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 				Sku:       pulumi.String("2019-Datacenter"),
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
/// resource "azure_devtest_lab" "example" {
///   name                = "example-devtestlab"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   tags = {
///     "Sydney" = "Australia"
///   }
/// }
/// resource "azure_devtest_virtualnetwork" "example" {
///   name                = "example-network"
///   lab_name            = azure_devtest_lab.example.name
///   resource_group_name = azure_core_resourcegroup.example.name
///   subnet = {
///     use_public_ip_address           = "Allow"
///     use_in_virtual_machine_creation = "Allow"
///   }
/// }
/// resource "azure_devtest_windowsvirtualmachine" "example" {
///   name                   = "example-vm03"
///   lab_name               = azure_devtest_lab.example.name
///   resource_group_name    = azure_core_resourcegroup.example.name
///   location               = azure_core_resourcegroup.example.location
///   size                   = "Standard_DS2"
///   username               = "exampleuser99"
///   password               = "Pa$w0rd1234!"
///   lab_virtual_network_id = azure_devtest_virtualnetwork.example.id
///   lab_subnet_name        = azure_devtest_virtualnetwork.example.subnet.name
///   storage_type           = "Premium"
///   notes                  = "Some notes about this Virtual Machine."
///   gallery_image_reference = {
///     offer     = "WindowsServer"
///     publisher = "MicrosoftWindowsServer"
///     sku       = "2019-Datacenter"
///     version   = "latest"
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
/// import com.pulumi.azure.devtest.Lab;
/// import com.pulumi.azure.devtest.LabArgs;
/// import com.pulumi.azure.devtest.VirtualNetwork;
/// import com.pulumi.azure.devtest.VirtualNetworkArgs;
/// import com.pulumi.azure.devtest.inputs.VirtualNetworkSubnetArgs;
/// import com.pulumi.azure.devtest.WindowsVirtualMachine;
/// import com.pulumi.azure.devtest.WindowsVirtualMachineArgs;
/// import com.pulumi.azure.devtest.inputs.WindowsVirtualMachineGalleryImageReferenceArgs;
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
///         var exampleLab = new Lab("exampleLab", LabArgs.builder()
///             .name("example-devtestlab")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .tags(Map.of("Sydney", "Australia"))
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("example-network")
///             .labName(exampleLab.name())
///             .resourceGroupName(example.name())
///             .subnet(VirtualNetworkSubnetArgs.builder()
///                 .usePublicIpAddress("Allow")
///                 .useInVirtualMachineCreation("Allow")
///                 .build())
///             .build());
///
///         var exampleWindowsVirtualMachine = new WindowsVirtualMachine("exampleWindowsVirtualMachine", WindowsVirtualMachineArgs.builder()
///             .name("example-vm03")
///             .labName(exampleLab.name())
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .size("Standard_DS2")
///             .username("exampleuser99")
///             .password("Pa$w0rd1234!")
///             .labVirtualNetworkId(exampleVirtualNetwork.id())
///             .labSubnetName(exampleVirtualNetwork.subnet().applyValue(_subnet -> _subnet.name()))
///             .storageType("Premium")
///             .notes("Some notes about this Virtual Machine.")
///             .galleryImageReference(WindowsVirtualMachineGalleryImageReferenceArgs.builder()
///                 .offer("WindowsServer")
///                 .publisher("MicrosoftWindowsServer")
///                 .sku("2019-Datacenter")
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
///   exampleLab:
///     type: azure:devtest:Lab
///     name: example
///     properties:
///       name: example-devtestlab
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       tags:
///         Sydney: Australia
///   exampleVirtualNetwork:
///     type: azure:devtest:VirtualNetwork
///     name: example
///     properties:
///       name: example-network
///       labName: ${exampleLab.name}
///       resourceGroupName: ${example.name}
///       subnet:
///         usePublicIpAddress: Allow
///         useInVirtualMachineCreation: Allow
///   exampleWindowsVirtualMachine:
///     type: azure:devtest:WindowsVirtualMachine
///     name: example
///     properties:
///       name: example-vm03
///       labName: ${exampleLab.name}
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       size: Standard_DS2
///       username: exampleuser99
///       password: Pa$w0rd1234!
///       labVirtualNetworkId: ${exampleVirtualNetwork.id}
///       labSubnetName: ${exampleVirtualNetwork.subnet.name}
///       storageType: Premium
///       notes: Some notes about this Virtual Machine.
///       galleryImageReference:
///         offer: WindowsServer
///         publisher: MicrosoftWindowsServer
///         sku: 2019-Datacenter
///         version: latest
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DevTestLab` - 2018-09-15
///
/// ## Import
///
/// DevTest Windows Virtual Machines can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:devtest/windowsVirtualMachine:WindowsVirtualMachine machine1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DevTestLab/labs/lab1/virtualMachines/machine1
/// ```
class WindowsVirtualMachine extends pulumi.CustomResource {
  /// Can this Virtual Machine be claimed by users? Defaults to `true`.
  late final pulumi.Output<bool?> allowClaim;
  /// Should the Virtual Machine be created without a Public IP Address? Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> disallowPublicIpAddress;
  /// The FQDN of the Virtual Machine.
  late final pulumi.Output<String> fqdn;
  /// A `galleryImageReference` block as defined below.
  late final pulumi.Output<WindowsVirtualMachineGalleryImageReference> galleryImageReference;
  /// One or more `inboundNatRule` blocks as defined below. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** If any `inboundNatRule` blocks are specified then `disallowPublicIpAddress` must be set to `true`.
  late final pulumi.Output<List<WindowsVirtualMachineInboundNatRule>?> inboundNatRules;
  /// Specifies the name of the Dev Test Lab in which the Virtual Machine should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> labName;
  /// The name of a Subnet within the Dev Test Virtual Network where this machine should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> labSubnetName;
  /// The ID of the Dev Test Virtual Network where this Virtual Machine should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> labVirtualNetworkId;
  /// Specifies the supported Azure location where the Dev Test Lab exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name of the Dev Test Machine. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The validation requirements for the Name change based on the `osType` used in this Virtual Machine. For a Linux VM the name must be between 1-62 characters, and for a Windows VM the name must be between 1-15 characters. It must begin and end with a letter or number, and cannot be all numbers.
  late final pulumi.Output<String> name;
  /// Any notes about the Virtual Machine.
  late final pulumi.Output<String?> notes;
  /// The Password associated with the `username` used to login to this Virtual Machine. Changing this forces a new resource to be created.
  late final pulumi.Output<String> password;
  /// The name of the resource group in which the Dev Test Lab resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The Machine Size to use for this Virtual Machine, such as `Standard_D4_v5`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> size;
  /// The type of Storage to use on this Virtual Machine. Possible values are `Standard` and `Premium`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> storageType;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The unique immutable identifier of the Virtual Machine.
  late final pulumi.Output<String> uniqueIdentifier;
  /// The Username associated with the local administrator on this Virtual Machine. Changing this forces a new resource to be created.
  late final pulumi.Output<String> username;

  /// Creates a new [WindowsVirtualMachine].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WindowsVirtualMachine]. {@macro pulumi_devtest_windows_virtual_machine_windows_virtual_machine_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WindowsVirtualMachine(
    String name, {
    WindowsVirtualMachineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:devtest/windowsVirtualMachine:WindowsVirtualMachine',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
          additionalSecretOutputs: const ['password'],
        ) {
    allowClaim = registerOutput<bool?>('allowClaim');
    disallowPublicIpAddress = registerOutput<bool?>('disallowPublicIpAddress');
    fqdn = registerOutput<String>('fqdn');
    galleryImageReference = registerOutput<WindowsVirtualMachineGalleryImageReference>('galleryImageReference', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsVirtualMachineGalleryImageReference.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    inboundNatRules = registerOutput<List<WindowsVirtualMachineInboundNatRule>?>('inboundNatRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WindowsVirtualMachineInboundNatRule>(guardedValue, (value) => WindowsVirtualMachineInboundNatRule.fromMap((value as Map).cast<String, dynamic>())); });
    labName = registerOutput<String>('labName');
    labSubnetName = registerOutput<String>('labSubnetName');
    labVirtualNetworkId = registerOutput<String>('labVirtualNetworkId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    notes = registerOutput<String?>('notes');
    password = registerOutput<String>('password', isSecret: true);
    resourceGroupName = registerOutput<String>('resourceGroupName');
    size = registerOutput<String>('size');
    storageType = registerOutput<String>('storageType');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    uniqueIdentifier = registerOutput<String>('uniqueIdentifier');
    username = registerOutput<String>('username');
  }

  /// Gets an existing [WindowsVirtualMachine] resource's state with the given [name] and [id].
  static WindowsVirtualMachine get(
    String name,
    pulumi.Input<String> id, {
    WindowsVirtualMachineState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return WindowsVirtualMachine._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  WindowsVirtualMachine._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:devtest/windowsVirtualMachine:WindowsVirtualMachine',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowClaim = registerOutput<bool?>('allowClaim');
    disallowPublicIpAddress = registerOutput<bool?>('disallowPublicIpAddress');
    fqdn = registerOutput<String>('fqdn');
    galleryImageReference = registerOutput<WindowsVirtualMachineGalleryImageReference>('galleryImageReference', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsVirtualMachineGalleryImageReference.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    inboundNatRules = registerOutput<List<WindowsVirtualMachineInboundNatRule>?>('inboundNatRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WindowsVirtualMachineInboundNatRule>(guardedValue, (value) => WindowsVirtualMachineInboundNatRule.fromMap((value as Map).cast<String, dynamic>())); });
    labName = registerOutput<String>('labName');
    labSubnetName = registerOutput<String>('labSubnetName');
    labVirtualNetworkId = registerOutput<String>('labVirtualNetworkId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    notes = registerOutput<String?>('notes');
    password = registerOutput<String>('password', isSecret: true);
    resourceGroupName = registerOutput<String>('resourceGroupName');
    size = registerOutput<String>('size');
    storageType = registerOutput<String>('storageType');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    uniqueIdentifier = registerOutput<String>('uniqueIdentifier');
    username = registerOutput<String>('username');
  }

  /// Creates a typed reference to an existing [WindowsVirtualMachine] resource.
  WindowsVirtualMachine.reference(String urn)
    : super(
        'azure:devtest/windowsVirtualMachine:WindowsVirtualMachine',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['password'],
        isResourceReference: true,
      ) {
    allowClaim = registerOutput<bool?>('allowClaim');
    disallowPublicIpAddress = registerOutput<bool?>('disallowPublicIpAddress');
    fqdn = registerOutput<String>('fqdn');
    galleryImageReference = registerOutput<WindowsVirtualMachineGalleryImageReference>('galleryImageReference', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WindowsVirtualMachineGalleryImageReference.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    inboundNatRules = registerOutput<List<WindowsVirtualMachineInboundNatRule>?>('inboundNatRules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WindowsVirtualMachineInboundNatRule>(guardedValue, (value) => WindowsVirtualMachineInboundNatRule.fromMap((value as Map).cast<String, dynamic>())); });
    labName = registerOutput<String>('labName');
    labSubnetName = registerOutput<String>('labSubnetName');
    labVirtualNetworkId = registerOutput<String>('labVirtualNetworkId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    notes = registerOutput<String?>('notes');
    password = registerOutput<String>('password', isSecret: true);
    resourceGroupName = registerOutput<String>('resourceGroupName');
    size = registerOutput<String>('size');
    storageType = registerOutput<String>('storageType');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    uniqueIdentifier = registerOutput<String>('uniqueIdentifier');
    username = registerOutput<String>('username');
  }
}
