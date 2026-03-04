import 'package:pulumi/pulumi.dart' as pulumi;
import 'assignment_virtual_machine_args.dart';
import 'assignment_virtual_machine_state.dart';

/// Manages a maintenance assignment to virtual machine.
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
/// const exampleLinuxVirtualMachine = new azure.compute.LinuxVirtualMachine("example", {
///     name: "example-machine",
///     resourceGroupName: example.name,
///     location: example.location,
///     size: "Standard_F2",
///     adminUsername: "adminuser",
///     networkInterfaceIds: [exampleNetworkInterface.id],
///     adminSshKeys: [{
///         username: "adminuser",
///         publicKey: std.file({
///             input: "~/.ssh/id_rsa.pub",
///         }).then(invoke => invoke.result),
///     }],
///     osDisk: {
///         caching: "ReadWrite",
///         storageAccountType: "Standard_LRS",
///     },
///     sourceImageReference: {
///         publisher: "Canonical",
///         offer: "0001-com-ubuntu-server-jammy",
///         sku: "22_04-lts",
///         version: "latest",
///     },
/// });
/// const exampleConfiguration = new azure.maintenance.Configuration("example", {
///     name: "example-mc",
///     resourceGroupName: example.name,
///     location: example.location,
///     scope: "All",
/// });
/// const exampleAssignmentVirtualMachine = new azure.maintenance.AssignmentVirtualMachine("example", {
///     location: example.location,
///     maintenanceConfigurationId: exampleConfiguration.id,
///     virtualMachineId: exampleLinuxVirtualMachine.id,
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
/// example_linux_virtual_machine = azure.compute.LinuxVirtualMachine("example",
///     name="example-machine",
///     resource_group_name=example.name,
///     location=example.location,
///     size="Standard_F2",
///     admin_username="adminuser",
///     network_interface_ids=[example_network_interface.id],
///     admin_ssh_keys=[{
///         "username": "adminuser",
///         "public_key": std.file(input="~/.ssh/id_rsa.pub").result,
///     }],
///     os_disk={
///         "caching": "ReadWrite",
///         "storage_account_type": "Standard_LRS",
///     },
///     source_image_reference={
///         "publisher": "Canonical",
///         "offer": "0001-com-ubuntu-server-jammy",
///         "sku": "22_04-lts",
///         "version": "latest",
///     })
/// example_configuration = azure.maintenance.Configuration("example",
///     name="example-mc",
///     resource_group_name=example.name,
///     location=example.location,
///     scope="All")
/// example_assignment_virtual_machine = azure.maintenance.AssignmentVirtualMachine("example",
///     location=example.location,
///     maintenance_configuration_id=example_configuration.id,
///     virtual_machine_id=example_linux_virtual_machine.id)
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
///     var exampleLinuxVirtualMachine = new Azure.Compute.LinuxVirtualMachine("example", new()
///     {
///         Name = "example-machine",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Size = "Standard_F2",
///         AdminUsername = "adminuser",
///         NetworkInterfaceIds = new[]
///         {
///             exampleNetworkInterface.Id,
///         },
///         AdminSshKeys = new[]
///         {
///             new Azure.Compute.Inputs.LinuxVirtualMachineAdminSshKeyArgs
///             {
///                 Username = "adminuser",
///                 PublicKey = Std.File.Invoke(new()
///                 {
///                     Input = "~/.ssh/id_rsa.pub",
///                 }).Apply(invoke => invoke.Result),
///             },
///         },
///         OsDisk = new Azure.Compute.Inputs.LinuxVirtualMachineOsDiskArgs
///         {
///             Caching = "ReadWrite",
///             StorageAccountType = "Standard_LRS",
///         },
///         SourceImageReference = new Azure.Compute.Inputs.LinuxVirtualMachineSourceImageReferenceArgs
///         {
///             Publisher = "Canonical",
///             Offer = "0001-com-ubuntu-server-jammy",
///             Sku = "22_04-lts",
///             Version = "latest",
///         },
///     });
///
///     var exampleConfiguration = new Azure.Maintenance.Configuration("example", new()
///     {
///         Name = "example-mc",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Scope = "All",
///     });
///
///     var exampleAssignmentVirtualMachine = new Azure.Maintenance.AssignmentVirtualMachine("example", new()
///     {
///         Location = example.Location,
///         MaintenanceConfigurationId = exampleConfiguration.Id,
///         VirtualMachineId = exampleLinuxVirtualMachine.Id,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/maintenance"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
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
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "~/.ssh/id_rsa.pub",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLinuxVirtualMachine, err := compute.NewLinuxVirtualMachine(ctx, "example", &compute.LinuxVirtualMachineArgs{
/// 			Name:              pulumi.String("example-machine"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Size:              pulumi.String("Standard_F2"),
/// 			AdminUsername:     pulumi.String("adminuser"),
/// 			NetworkInterfaceIds: pulumi.StringArray{
/// 				exampleNetworkInterface.ID(),
/// 			},
/// 			AdminSshKeys: compute.LinuxVirtualMachineAdminSshKeyArray{
/// 				&compute.LinuxVirtualMachineAdminSshKeyArgs{
/// 					Username:  pulumi.String("adminuser"),
/// 					PublicKey: pulumi.String(invokeFile.Result),
/// 				},
/// 			},
/// 			OsDisk: &compute.LinuxVirtualMachineOsDiskArgs{
/// 				Caching:            pulumi.String("ReadWrite"),
/// 				StorageAccountType: pulumi.String("Standard_LRS"),
/// 			},
/// 			SourceImageReference: &compute.LinuxVirtualMachineSourceImageReferenceArgs{
/// 				Publisher: pulumi.String("Canonical"),
/// 				Offer:     pulumi.String("0001-com-ubuntu-server-jammy"),
/// 				Sku:       pulumi.String("22_04-lts"),
/// 				Version:   pulumi.String("latest"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleConfiguration, err := maintenance.NewConfiguration(ctx, "example", &maintenance.ConfigurationArgs{
/// 			Name:              pulumi.String("example-mc"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Scope:             pulumi.String("All"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = maintenance.NewAssignmentVirtualMachine(ctx, "example", &maintenance.AssignmentVirtualMachineArgs{
/// 			Location:                   example.Location,
/// 			MaintenanceConfigurationId: exampleConfiguration.ID(),
/// 			VirtualMachineId:           exampleLinuxVirtualMachine.ID(),
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
/// import com.pulumi.azure.compute.LinuxVirtualMachine;
/// import com.pulumi.azure.compute.LinuxVirtualMachineArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineAdminSshKeyArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineOsDiskArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineSourceImageReferenceArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import com.pulumi.azure.maintenance.Configuration;
/// import com.pulumi.azure.maintenance.ConfigurationArgs;
/// import com.pulumi.azure.maintenance.AssignmentVirtualMachine;
/// import com.pulumi.azure.maintenance.AssignmentVirtualMachineArgs;
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
///         var exampleLinuxVirtualMachine = new LinuxVirtualMachine("exampleLinuxVirtualMachine", LinuxVirtualMachineArgs.builder()
///             .name("example-machine")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .size("Standard_F2")
///             .adminUsername("adminuser")
///             .networkInterfaceIds(exampleNetworkInterface.id())
///             .adminSshKeys(LinuxVirtualMachineAdminSshKeyArgs.builder()
///                 .username("adminuser")
///                 .publicKey(StdFunctions.file(FileArgs.builder()
///                     .input("~/.ssh/id_rsa.pub")
///                     .build()).result())
///                 .build())
///             .osDisk(LinuxVirtualMachineOsDiskArgs.builder()
///                 .caching("ReadWrite")
///                 .storageAccountType("Standard_LRS")
///                 .build())
///             .sourceImageReference(LinuxVirtualMachineSourceImageReferenceArgs.builder()
///                 .publisher("Canonical")
///                 .offer("0001-com-ubuntu-server-jammy")
///                 .sku("22_04-lts")
///                 .version("latest")
///                 .build())
///             .build());
///
///         var exampleConfiguration = new Configuration("exampleConfiguration", ConfigurationArgs.builder()
///             .name("example-mc")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .scope("All")
///             .build());
///
///         var exampleAssignmentVirtualMachine = new AssignmentVirtualMachine("exampleAssignmentVirtualMachine", AssignmentVirtualMachineArgs.builder()
///             .location(example.location())
///             .maintenanceConfigurationId(exampleConfiguration.id())
///             .virtualMachineId(exampleLinuxVirtualMachine.id())
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
///   exampleLinuxVirtualMachine:
///     type: azure:compute:LinuxVirtualMachine
///     name: example
///     properties:
///       name: example-machine
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       size: Standard_F2
///       adminUsername: adminuser
///       networkInterfaceIds:
///         - ${exampleNetworkInterface.id}
///       adminSshKeys:
///         - username: adminuser
///           publicKey:
///             fn::invoke:
///               function: std:file
///               arguments:
///                 input: ~/.ssh/id_rsa.pub
///               return: result
///       osDisk:
///         caching: ReadWrite
///         storageAccountType: Standard_LRS
///       sourceImageReference:
///         publisher: Canonical
///         offer: 0001-com-ubuntu-server-jammy
///         sku: 22_04-lts
///         version: latest
///   exampleConfiguration:
///     type: azure:maintenance:Configuration
///     name: example
///     properties:
///       name: example-mc
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       scope: All
///   exampleAssignmentVirtualMachine:
///     type: azure:maintenance:AssignmentVirtualMachine
///     name: example
///     properties:
///       location: ${example.location}
///       maintenanceConfigurationId: ${exampleConfiguration.id}
///       virtualMachineId: ${exampleLinuxVirtualMachine.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Maintenance` - 2023-04-01
///
/// ## Import
///
/// Maintenance Assignment can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:maintenance/assignmentVirtualMachine:AssignmentVirtualMachine example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resGroup1/providers/Microsoft.Compute/virtualMachines/vm1/providers/Microsoft.Maintenance/configurationAssignments/assign1
/// ```
class AssignmentVirtualMachine extends pulumi.CustomResource {
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;

  /// Specifies the ID of the Maintenance Configuration Resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> maintenanceConfigurationId;

  /// Specifies the Virtual Machine ID to which the Maintenance Configuration will be assigned. Changing this forces a new resource to be created.
  late final pulumi.Output<String> virtualMachineId;

  /// Creates a new [AssignmentVirtualMachine].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AssignmentVirtualMachine]. {@macro pulumi_maintenance_assignment_virtual_machine_assignment_virtual_machine_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AssignmentVirtualMachine(
    String name, {
    AssignmentVirtualMachineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:maintenance/assignmentVirtualMachine:AssignmentVirtualMachine',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    location = registerOutput<String>('location');
    maintenanceConfigurationId = registerOutput<String>(
      'maintenanceConfigurationId',
    );
    virtualMachineId = registerOutput<String>('virtualMachineId');
  }

  /// Gets an existing [AssignmentVirtualMachine] resource's state with the given [name] and [id].
  static AssignmentVirtualMachine get(
    String name,
    pulumi.Input<String> id, {
    AssignmentVirtualMachineState? state,
  }) {
    return AssignmentVirtualMachine._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AssignmentVirtualMachine._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:maintenance/assignmentVirtualMachine:AssignmentVirtualMachine',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    location = registerOutput<String>('location');
    maintenanceConfigurationId = registerOutput<String>(
      'maintenanceConfigurationId',
    );
    virtualMachineId = registerOutput<String>('virtualMachineId');
  }
}
