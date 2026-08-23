import 'package:pulumi/pulumi.dart' as pulumi;
import 'automanage_configuration_assignment_args.dart';
import 'automanage_configuration_assignment_state.dart';

/// Manages a Virtual Machine Automanage Configuration Profile Assignment.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-rg",
///     location: "westus",
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "examplevnet",
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
///     name: "exampleni",
///     location: example.location,
///     resourceGroupName: example.name,
///     ipConfigurations: [{
///         name: "internal",
///         subnetId: exampleSubnet.id,
///         privateIpAddressAllocation: "Dynamic",
///     }],
/// });
/// const exampleLinuxVirtualMachine = new azure.compute.LinuxVirtualMachine("example", {
///     name: "examplevm",
///     resourceGroupName: example.name,
///     location: example.location,
///     size: "Standard_D4_v5",
///     adminUsername: "adminuser",
///     adminPassword: "P@$$w0rd1234!",
///     disablePasswordAuthentication: false,
///     networkInterfaceIds: [exampleNetworkInterface.id],
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
/// const exampleConfiguration = new azure.automanage.Configuration("example", {
///     name: "exampleconfig",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const exampleAutomanageConfigurationAssignment = new azure.compute.AutomanageConfigurationAssignment("example", {
///     virtualMachineId: exampleLinuxVirtualMachine.id,
///     configurationId: exampleConfiguration.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="westus")
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="examplevnet",
///     address_spaces=["10.0.0.0/16"],
///     location=example.location,
///     resource_group_name=example.name)
/// example_subnet = azure.network.Subnet("example",
///     name="internal",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.2.0/24"])
/// example_network_interface = azure.network.NetworkInterface("example",
///     name="exampleni",
///     location=example.location,
///     resource_group_name=example.name,
///     ip_configurations=[{
///         "name": "internal",
///         "subnet_id": example_subnet.id,
///         "private_ip_address_allocation": "Dynamic",
///     }])
/// example_linux_virtual_machine = azure.compute.LinuxVirtualMachine("example",
///     name="examplevm",
///     resource_group_name=example.name,
///     location=example.location,
///     size="Standard_D4_v5",
///     admin_username="adminuser",
///     admin_password="P@$$w0rd1234!",
///     disable_password_authentication=False,
///     network_interface_ids=[example_network_interface.id],
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
/// example_configuration = azure.automanage.Configuration("example",
///     name="exampleconfig",
///     resource_group_name=example.name,
///     location=example.location)
/// example_automanage_configuration_assignment = azure.compute.AutomanageConfigurationAssignment("example",
///     virtual_machine_id=example_linux_virtual_machine.id,
///     configuration_id=example_configuration.id)
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
///         Name = "example-rg",
///         Location = "westus",
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "examplevnet",
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
///         Name = "exampleni",
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
///         Name = "examplevm",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Size = "Standard_D4_v5",
///         AdminUsername = "adminuser",
///         AdminPassword = "P@$$w0rd1234!",
///         DisablePasswordAuthentication = false,
///         NetworkInterfaceIds = new[]
///         {
///             exampleNetworkInterface.Id,
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
///     var exampleConfiguration = new Azure.Automanage.Configuration("example", new()
///     {
///         Name = "exampleconfig",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var exampleAutomanageConfigurationAssignment = new Azure.Compute.AutomanageConfigurationAssignment("example", new()
///     {
///         VirtualMachineId = exampleLinuxVirtualMachine.Id,
///         ConfigurationId = exampleConfiguration.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/automanage"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-rg"),
/// 			Location: pulumi.String("westus"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name: pulumi.String("examplevnet"),
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
/// 			Name:              pulumi.String("exampleni"),
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
/// 		exampleLinuxVirtualMachine, err := compute.NewLinuxVirtualMachine(ctx, "example", &compute.LinuxVirtualMachineArgs{
/// 			Name:                          pulumi.String("examplevm"),
/// 			ResourceGroupName:             example.Name,
/// 			Location:                      example.Location,
/// 			Size:                          pulumi.String("Standard_D4_v5"),
/// 			AdminUsername:                 pulumi.String("adminuser"),
/// 			AdminPassword:                 pulumi.String("P@$$w0rd1234!"),
/// 			DisablePasswordAuthentication: pulumi.Bool(false),
/// 			NetworkInterfaceIds: pulumi.StringArray{
/// 				exampleNetworkInterface.ID(),
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
/// 		exampleConfiguration, err := automanage.NewConfiguration(ctx, "example", &automanage.ConfigurationArgs{
/// 			Name:              pulumi.String("exampleconfig"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewAutomanageConfigurationAssignment(ctx, "example", &compute.AutomanageConfigurationAssignmentArgs{
/// 			VirtualMachineId: exampleLinuxVirtualMachine.ID(),
/// 			ConfigurationId:  exampleConfiguration.ID(),
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
///   name     = "example-rg"
///   location = "westus"
/// }
/// resource "azure_network_virtualnetwork" "example" {
///   name                = "examplevnet"
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
/// resource "azure_network_networkinterface" "example" {
///   name                = "exampleni"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   ip_configurations {
///     name                          = "internal"
///     subnet_id                     = azure_network_subnet.example.id
///     private_ip_address_allocation = "Dynamic"
///   }
/// }
/// resource "azure_compute_linuxvirtualmachine" "example" {
///   name                            = "examplevm"
///   resource_group_name             = azure_core_resourcegroup.example.name
///   location                        = azure_core_resourcegroup.example.location
///   size                            = "Standard_D4_v5"
///   admin_username                  = "adminuser"
///   admin_password                  = "P@$$w0rd1234!"
///   disable_password_authentication = false
///   network_interface_ids           = [azure_network_networkinterface.example.id]
///   os_disk = {
///     caching              = "ReadWrite"
///     storage_account_type = "Standard_LRS"
///   }
///   source_image_reference = {
///     publisher = "Canonical"
///     offer     = "0001-com-ubuntu-server-jammy"
///     sku       = "22_04-lts"
///     version   = "latest"
///   }
/// }
/// resource "azure_automanage_configuration" "example" {
///   name                = "exampleconfig"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
/// }
/// resource "azure_compute_automanageconfigurationassignment" "example" {
///   virtual_machine_id = azure_compute_linuxvirtualmachine.example.id
///   configuration_id   = azure_automanage_configuration.example.id
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
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineOsDiskArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineSourceImageReferenceArgs;
/// import com.pulumi.azure.automanage.Configuration;
/// import com.pulumi.azure.automanage.ConfigurationArgs;
/// import com.pulumi.azure.compute.AutomanageConfigurationAssignment;
/// import com.pulumi.azure.compute.AutomanageConfigurationAssignmentArgs;
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
///             .name("example-rg")
///             .location("westus")
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("examplevnet")
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
///             .name("exampleni")
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
///             .name("examplevm")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .size("Standard_D4_v5")
///             .adminUsername("adminuser")
///             .adminPassword("P@$$w0rd1234!")
///             .disablePasswordAuthentication(false)
///             .networkInterfaceIds(exampleNetworkInterface.id())
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
///             .name("exampleconfig")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var exampleAutomanageConfigurationAssignment = new AutomanageConfigurationAssignment("exampleAutomanageConfigurationAssignment", AutomanageConfigurationAssignmentArgs.builder()
///             .virtualMachineId(exampleLinuxVirtualMachine.id())
///             .configurationId(exampleConfiguration.id())
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
///       name: example-rg
///       location: westus
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: examplevnet
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
///       name: exampleni
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
///       name: examplevm
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       size: Standard_D4_v5
///       adminUsername: adminuser
///       adminPassword: P@$$w0rd1234!
///       disablePasswordAuthentication: false
///       networkInterfaceIds:
///         - ${exampleNetworkInterface.id}
///       osDisk:
///         caching: ReadWrite
///         storageAccountType: Standard_LRS
///       sourceImageReference:
///         publisher: Canonical
///         offer: 0001-com-ubuntu-server-jammy
///         sku: 22_04-lts
///         version: latest
///   exampleConfiguration:
///     type: azure:automanage:Configuration
///     name: example
///     properties:
///       name: exampleconfig
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   exampleAutomanageConfigurationAssignment:
///     type: azure:compute:AutomanageConfigurationAssignment
///     name: example
///     properties:
///       virtualMachineId: ${exampleLinuxVirtualMachine.id}
///       configurationId: ${exampleConfiguration.id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Compute` - 2022-05-04
///
/// ## Import
///
/// Virtual Machine Automanage Configuration Profile Assignment can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:compute/automanageConfigurationAssignment:AutomanageConfigurationAssignment example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Compute/virtualMachines/vm1/providers/Microsoft.AutoManage/configurationProfileAssignments/default
/// ```
class AutomanageConfigurationAssignment extends pulumi.CustomResource {
  /// The ARM resource ID of the Automanage Configuration to assign to the Virtual Machine. Changing this forces a new resource to be created.
  late final pulumi.Output<String> configurationId;
  /// The ARM resource ID of the Virtual Machine to assign the Automanage Configuration to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> virtualMachineId;

  /// Creates a new [AutomanageConfigurationAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AutomanageConfigurationAssignment]. {@macro pulumi_compute_automanage_configuration_assignment_automanage_configuration_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AutomanageConfigurationAssignment(
    String name, {
    AutomanageConfigurationAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:compute/automanageConfigurationAssignment:AutomanageConfigurationAssignment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    configurationId = registerOutput<String>('configurationId');
    virtualMachineId = registerOutput<String>('virtualMachineId');
  }

  /// Gets an existing [AutomanageConfigurationAssignment] resource's state with the given [name] and [id].
  static AutomanageConfigurationAssignment get(
    String name,
    pulumi.Input<String> id, {
    AutomanageConfigurationAssignmentState? state,
  }) {
    return AutomanageConfigurationAssignment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AutomanageConfigurationAssignment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:compute/automanageConfigurationAssignment:AutomanageConfigurationAssignment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    configurationId = registerOutput<String>('configurationId');
    virtualMachineId = registerOutput<String>('virtualMachineId');
  }
}
