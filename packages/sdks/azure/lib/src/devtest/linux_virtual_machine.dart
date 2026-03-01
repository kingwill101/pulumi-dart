import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_virtual_machine_args.dart';
import 'linux_virtual_machine_gallery_image_reference.dart';
import 'linux_virtual_machine_inbound_nat_rule.dart';
import 'linux_virtual_machine_state.dart';

/// Manages a Linux Virtual Machine within a Dev Test Lab.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as std from "@pulumi/std";
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
/// const exampleLinuxVirtualMachine = new azure.devtest.LinuxVirtualMachine("example", {
///     name: "example-vm03",
///     labName: exampleLab.name,
///     resourceGroupName: example.name,
///     location: example.location,
///     size: "Standard_DS2",
///     username: "exampleuser99",
///     sshKey: std.file({
///         input: "~/.ssh/id_rsa.pub",
///     }).then(invoke => invoke.result),
///     labVirtualNetworkId: exampleVirtualNetwork.id,
///     labSubnetName: exampleVirtualNetwork.subnet.apply(subnet => subnet.name),
///     storageType: "Premium",
///     notes: "Some notes about this Virtual Machine.",
///     galleryImageReference: {
///         publisher: "Canonical",
///         offer: "0001-com-ubuntu-server-jammy",
///         sku: "22_04-lts",
///         version: "latest",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_std as std
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
/// example_linux_virtual_machine = azure.devtest.LinuxVirtualMachine("example",
///     name="example-vm03",
///     lab_name=example_lab.name,
///     resource_group_name=example.name,
///     location=example.location,
///     size="Standard_DS2",
///     username="exampleuser99",
///     ssh_key=std.file(input="~/.ssh/id_rsa.pub").result,
///     lab_virtual_network_id=example_virtual_network.id,
///     lab_subnet_name=example_virtual_network.subnet.name,
///     storage_type="Premium",
///     notes="Some notes about this Virtual Machine.",
///     gallery_image_reference={
///         "publisher": "Canonical",
///         "offer": "0001-com-ubuntu-server-jammy",
///         "sku": "22_04-lts",
///         "version": "latest",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Std = Pulumi.Std;
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
///     var exampleLinuxVirtualMachine = new Azure.DevTest.LinuxVirtualMachine("example", new()
///     {
///         Name = "example-vm03",
///         LabName = exampleLab.Name,
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Size = "Standard_DS2",
///         Username = "exampleuser99",
///         SshKey = Std.File.Invoke(new()
///         {
///             Input = "~/.ssh/id_rsa.pub",
///         }).Apply(invoke => invoke.Result),
///         LabVirtualNetworkId = exampleVirtualNetwork.Id,
///         LabSubnetName = exampleVirtualNetwork.Subnet.Apply(subnet => subnet.Name),
///         StorageType = "Premium",
///         Notes = "Some notes about this Virtual Machine.",
///         GalleryImageReference = new Azure.DevTest.Inputs.LinuxVirtualMachineGalleryImageReferenceArgs
///         {
///             Publisher = "Canonical",
///             Offer = "0001-com-ubuntu-server-jammy",
///             Sku = "22_04-lts",
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
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
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
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "~/.ssh/id_rsa.pub",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = devtest.NewLinuxVirtualMachine(ctx, "example", &devtest.LinuxVirtualMachineArgs{
/// 			Name:                pulumi.String("example-vm03"),
/// 			LabName:             exampleLab.Name,
/// 			ResourceGroupName:   example.Name,
/// 			Location:            example.Location,
/// 			Size:                pulumi.String("Standard_DS2"),
/// 			Username:            pulumi.String("exampleuser99"),
/// 			SshKey:              pulumi.String(invokeFile.Result),
/// 			LabVirtualNetworkId: exampleVirtualNetwork.ID(),
/// 			LabSubnetName: pulumi.String(exampleVirtualNetwork.Subnet.ApplyT(func(subnet devtest.VirtualNetworkSubnet) (*string, error) {
/// 				return &subnet.Name, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			StorageType: pulumi.String("Premium"),
/// 			Notes:       pulumi.String("Some notes about this Virtual Machine."),
/// 			GalleryImageReference: &devtest.LinuxVirtualMachineGalleryImageReferenceArgs{
/// 				Publisher: pulumi.String("Canonical"),
/// 				Offer:     pulumi.String("0001-com-ubuntu-server-jammy"),
/// 				Sku:       pulumi.String("22_04-lts"),
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
/// import com.pulumi.azure.devtest.Lab;
/// import com.pulumi.azure.devtest.LabArgs;
/// import com.pulumi.azure.devtest.VirtualNetwork;
/// import com.pulumi.azure.devtest.VirtualNetworkArgs;
/// import com.pulumi.azure.devtest.inputs.VirtualNetworkSubnetArgs;
/// import com.pulumi.azure.devtest.LinuxVirtualMachine;
/// import com.pulumi.azure.devtest.LinuxVirtualMachineArgs;
/// import com.pulumi.azure.devtest.inputs.LinuxVirtualMachineGalleryImageReferenceArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
///         var exampleLinuxVirtualMachine = new LinuxVirtualMachine("exampleLinuxVirtualMachine", LinuxVirtualMachineArgs.builder()
///             .name("example-vm03")
///             .labName(exampleLab.name())
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .size("Standard_DS2")
///             .username("exampleuser99")
///             .sshKey(StdFunctions.file(FileArgs.builder()
///                 .input("~/.ssh/id_rsa.pub")
///                 .build()).result())
///             .labVirtualNetworkId(exampleVirtualNetwork.id())
///             .labSubnetName(exampleVirtualNetwork.subnet().applyValue(_subnet -> _subnet.name()))
///             .storageType("Premium")
///             .notes("Some notes about this Virtual Machine.")
///             .galleryImageReference(LinuxVirtualMachineGalleryImageReferenceArgs.builder()
///                 .publisher("Canonical")
///                 .offer("0001-com-ubuntu-server-jammy")
///                 .sku("22_04-lts")
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
///   exampleLinuxVirtualMachine:
///     type: azure:devtest:LinuxVirtualMachine
///     name: example
///     properties:
///       name: example-vm03
///       labName: ${exampleLab.name}
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       size: Standard_DS2
///       username: exampleuser99
///       sshKey:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: ~/.ssh/id_rsa.pub
///           return: result
///       labVirtualNetworkId: ${exampleVirtualNetwork.id}
///       labSubnetName: ${exampleVirtualNetwork.subnet.name}
///       storageType: Premium
///       notes: Some notes about this Virtual Machine.
///       galleryImageReference:
///         publisher: Canonical
///         offer: 0001-com-ubuntu-server-jammy
///         sku: 22_04-lts
///         version: latest
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DevTestLab` - 2018-09-15
///
/// ## Import
///
/// Dev Test Linux Virtual Machines can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:devtest/linuxVirtualMachine:LinuxVirtualMachine machine1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DevTestLab/labs/lab1/virtualMachines/machine1
/// ```
class LinuxVirtualMachine extends pulumi.CustomResource {
  /// Can this Virtual Machine be claimed by users? Defaults to `true`.
  late final pulumi.Output<bool?> allowClaim;
  /// Should the Virtual Machine be created without a Public IP Address? Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> disallowPublicIpAddress;
  /// The FQDN of the Virtual Machine.
  late final pulumi.Output<String> fqdn;
  /// A `gallery_image_reference` block as defined below.
  late final pulumi.Output<LinuxVirtualMachineGalleryImageReference> galleryImageReference;
  /// One or more `inbound_nat_rule` blocks as defined below. Changing this forces a new resource to be created.
  ///
  /// > **Note:** If any `inbound_nat_rule` blocks are specified then `disallow_public_ip_address` must be set to `true`.
  late final pulumi.Output<List<LinuxVirtualMachineInboundNatRule>?> inboundNatRules;
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
  /// > **Note:** The validation requirements for the Name change based on the `os_type` used in this Virtual Machine. For a Linux VM the name must be between 1-62 characters, and for a Windows VM the name must be between 1-15 characters. It must begin and end with a letter or number, and cannot be all numbers.
  late final pulumi.Output<String> name;
  /// Any notes about the Virtual Machine.
  late final pulumi.Output<String?> notes;
  /// The Password associated with the `username` used to login to this Virtual Machine. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> password;
  /// The name of the resource group in which the Dev Test Lab resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The Machine Size to use for this Virtual Machine, such as `Standard_F2`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> size;
  /// The SSH Key associated with the `username` used to login to this Virtual Machine. Changing this forces a new resource to be created.
  ///
  /// > **Note:** One or either `password` or `ssh_key` must be specified.
  late final pulumi.Output<String?> sshKey;
  /// The type of Storage to use on this Virtual Machine. Possible values are `Standard` and `Premium`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> storageType;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The unique immutable identifier of the Virtual Machine.
  late final pulumi.Output<String> uniqueIdentifier;
  /// The Username associated with the local administrator on this Virtual Machine. Changing this forces a new resource to be created.
  late final pulumi.Output<String> username;

  /// Creates a new [LinuxVirtualMachine].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LinuxVirtualMachine]. {@macro pulumi_devtest_linux_virtual_machine_linux_virtual_machine_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LinuxVirtualMachine(
    String name, {
    LinuxVirtualMachineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:devtest/linuxVirtualMachine:LinuxVirtualMachine',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowClaim = registerOutput<bool?>('allowClaim');
    this.disallowPublicIpAddress = registerOutput<bool?>('disallowPublicIpAddress');
    this.fqdn = registerOutput<String>('fqdn');
    this.galleryImageReference = registerOutput<LinuxVirtualMachineGalleryImageReference>('galleryImageReference');
    this.inboundNatRules = registerOutput<List<LinuxVirtualMachineInboundNatRule>?>('inboundNatRules');
    this.labName = registerOutput<String>('labName');
    this.labSubnetName = registerOutput<String>('labSubnetName');
    this.labVirtualNetworkId = registerOutput<String>('labVirtualNetworkId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.notes = registerOutput<String?>('notes');
    this.password = registerOutput<String?>('password');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.size = registerOutput<String>('size');
    this.sshKey = registerOutput<String?>('sshKey');
    this.storageType = registerOutput<String>('storageType');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.uniqueIdentifier = registerOutput<String>('uniqueIdentifier');
    this.username = registerOutput<String>('username');
  }

  /// Gets an existing [LinuxVirtualMachine] resource's state with the given [name] and [id].
  static LinuxVirtualMachine get(
    String name,
    pulumi.Input<String> id, {
    LinuxVirtualMachineState? state,
  }) {
    return LinuxVirtualMachine._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LinuxVirtualMachine._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:devtest/linuxVirtualMachine:LinuxVirtualMachine',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowClaim = registerOutput<bool?>('allowClaim');
    this.disallowPublicIpAddress = registerOutput<bool?>('disallowPublicIpAddress');
    this.fqdn = registerOutput<String>('fqdn');
    this.galleryImageReference = registerOutput<LinuxVirtualMachineGalleryImageReference>('galleryImageReference');
    this.inboundNatRules = registerOutput<List<LinuxVirtualMachineInboundNatRule>?>('inboundNatRules');
    this.labName = registerOutput<String>('labName');
    this.labSubnetName = registerOutput<String>('labSubnetName');
    this.labVirtualNetworkId = registerOutput<String>('labVirtualNetworkId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.notes = registerOutput<String?>('notes');
    this.password = registerOutput<String?>('password');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.size = registerOutput<String>('size');
    this.sshKey = registerOutput<String?>('sshKey');
    this.storageType = registerOutput<String>('storageType');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.uniqueIdentifier = registerOutput<String>('uniqueIdentifier');
    this.username = registerOutput<String>('username');
  }
}
