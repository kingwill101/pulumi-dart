import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_configuration_assignment_args.dart';
import 'virtual_machine_configuration_assignment_configuration.dart';
import 'virtual_machine_configuration_assignment_state.dart';

/// Applies a Guest Configuration Policy to a Virtual Machine.
///
/// &gt; **Note:** You can create Guest Configuration Policies without defining a `azure.compute.Extension` resource, however the policies will not be executed until a `azure.compute.Extension` has been provisioned to the virtual machine.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-gca",
///     location: "West Europe",
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "example-vnet",
///     location: example.location,
///     resourceGroupName: example.name,
///     addressSpaces: ["10.0.0.0/16"],
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "internal",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.2.0/24"],
/// });
/// const exampleNetworkInterface = new azure.network.NetworkInterface("example", {
///     name: "example-nic",
///     resourceGroupName: example.name,
///     location: example.location,
///     ipConfigurations: [{
///         name: "internal",
///         subnetId: exampleSubnet.id,
///         privateIpAddressAllocation: "Dynamic",
///     }],
/// });
/// const exampleWindowsVirtualMachine = new azure.compute.WindowsVirtualMachine("example", {
///     name: "examplevm",
///     resourceGroupName: example.name,
///     location: example.location,
///     size: "Standard_F2",
///     adminUsername: "adminuser",
///     adminPassword: "P@$$w0rd1234!",
///     networkInterfaceIds: [exampleNetworkInterface.id],
///     identity: {
///         type: "SystemAssigned",
///     },
///     osDisk: {
///         caching: "ReadWrite",
///         storageAccountType: "Standard_LRS",
///     },
///     sourceImageReference: {
///         publisher: "MicrosoftWindowsServer",
///         offer: "WindowsServer",
///         sku: "2019-Datacenter",
///         version: "latest",
///     },
/// });
/// const exampleExtension = new azure.compute.Extension("example", {
///     name: "AzurePolicyforWindows",
///     virtualMachineId: exampleWindowsVirtualMachine.id,
///     publisher: "Microsoft.GuestConfiguration",
///     type: "ConfigurationforWindows",
///     typeHandlerVersion: "1.29",
///     autoUpgradeMinorVersion: true,
/// });
/// const exampleVirtualMachineConfigurationAssignment = new azure.policy.VirtualMachineConfigurationAssignment("example", {
///     name: "AzureWindowsBaseline",
///     location: exampleWindowsVirtualMachine.location,
///     virtualMachineId: exampleWindowsVirtualMachine.id,
///     configuration: {
///         assignmentType: "ApplyAndMonitor",
///         version: "1.*",
///         parameters: [
///             {
///                 name: "Minimum Password Length;ExpectedValue",
///                 value: "16",
///             },
///             {
///                 name: "Minimum Password Age;ExpectedValue",
///                 value: "0",
///             },
///             {
///                 name: "Maximum Password Age;ExpectedValue",
///                 value: "30,45",
///             },
///             {
///                 name: "Enforce Password History;ExpectedValue",
///                 value: "10",
///             },
///             {
///                 name: "Password Must Meet Complexity Requirements;ExpectedValue",
///                 value: "1",
///             },
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-gca",
///     location="West Europe")
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="example-vnet",
///     location=example.location,
///     resource_group_name=example.name,
///     address_spaces=["10.0.0.0/16"])
/// example_subnet = azure.network.Subnet("example",
///     name="internal",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.2.0/24"])
/// example_network_interface = azure.network.NetworkInterface("example",
///     name="example-nic",
///     resource_group_name=example.name,
///     location=example.location,
///     ip_configurations=[{
///         "name": "internal",
///         "subnet_id": example_subnet.id,
///         "private_ip_address_allocation": "Dynamic",
///     }])
/// example_windows_virtual_machine = azure.compute.WindowsVirtualMachine("example",
///     name="examplevm",
///     resource_group_name=example.name,
///     location=example.location,
///     size="Standard_F2",
///     admin_username="adminuser",
///     admin_password="P@$$w0rd1234!",
///     network_interface_ids=[example_network_interface.id],
///     identity={
///         "type": "SystemAssigned",
///     },
///     os_disk={
///         "caching": "ReadWrite",
///         "storage_account_type": "Standard_LRS",
///     },
///     source_image_reference={
///         "publisher": "MicrosoftWindowsServer",
///         "offer": "WindowsServer",
///         "sku": "2019-Datacenter",
///         "version": "latest",
///     })
/// example_extension = azure.compute.Extension("example",
///     name="AzurePolicyforWindows",
///     virtual_machine_id=example_windows_virtual_machine.id,
///     publisher="Microsoft.GuestConfiguration",
///     type="ConfigurationforWindows",
///     type_handler_version="1.29",
///     auto_upgrade_minor_version=True)
/// example_virtual_machine_configuration_assignment = azure.policy.VirtualMachineConfigurationAssignment("example",
///     name="AzureWindowsBaseline",
///     location=example_windows_virtual_machine.location,
///     virtual_machine_id=example_windows_virtual_machine.id,
///     configuration={
///         "assignment_type": "ApplyAndMonitor",
///         "version": "1.*",
///         "parameters": [
///             {
///                 "name": "Minimum Password Length;ExpectedValue",
///                 "value": "16",
///             },
///             {
///                 "name": "Minimum Password Age;ExpectedValue",
///                 "value": "0",
///             },
///             {
///                 "name": "Maximum Password Age;ExpectedValue",
///                 "value": "30,45",
///             },
///             {
///                 "name": "Enforce Password History;ExpectedValue",
///                 "value": "10",
///             },
///             {
///                 "name": "Password Must Meet Complexity Requirements;ExpectedValue",
///                 "value": "1",
///             },
///         ],
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
///         Name = "example-gca",
///         Location = "West Europe",
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "example-vnet",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
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
///         ResourceGroupName = example.Name,
///         Location = example.Location,
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
///         Name = "examplevm",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Size = "Standard_F2",
///         AdminUsername = "adminuser",
///         AdminPassword = "P@$$w0rd1234!",
///         NetworkInterfaceIds = new[]
///         {
///             exampleNetworkInterface.Id,
///         },
///         Identity = new Azure.Compute.Inputs.WindowsVirtualMachineIdentityArgs
///         {
///             Type = "SystemAssigned",
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
///             Sku = "2019-Datacenter",
///             Version = "latest",
///         },
///     });
///
///     var exampleExtension = new Azure.Compute.Extension("example", new()
///     {
///         Name = "AzurePolicyforWindows",
///         VirtualMachineId = exampleWindowsVirtualMachine.Id,
///         Publisher = "Microsoft.GuestConfiguration",
///         Type = "ConfigurationforWindows",
///         TypeHandlerVersion = "1.29",
///         AutoUpgradeMinorVersion = true,
///     });
///
///     var exampleVirtualMachineConfigurationAssignment = new Azure.Policy.VirtualMachineConfigurationAssignment("example", new()
///     {
///         Name = "AzureWindowsBaseline",
///         Location = exampleWindowsVirtualMachine.Location,
///         VirtualMachineId = exampleWindowsVirtualMachine.Id,
///         Configuration = new Azure.Policy.Inputs.VirtualMachineConfigurationAssignmentConfigurationArgs
///         {
///             AssignmentType = "ApplyAndMonitor",
///             Version = "1.*",
///             Parameters = new[]
///             {
///                 new Azure.Policy.Inputs.VirtualMachineConfigurationAssignmentConfigurationParameterArgs
///                 {
///                     Name = "Minimum Password Length;ExpectedValue",
///                     Value = "16",
///                 },
///                 new Azure.Policy.Inputs.VirtualMachineConfigurationAssignmentConfigurationParameterArgs
///                 {
///                     Name = "Minimum Password Age;ExpectedValue",
///                     Value = "0",
///                 },
///                 new Azure.Policy.Inputs.VirtualMachineConfigurationAssignmentConfigurationParameterArgs
///                 {
///                     Name = "Maximum Password Age;ExpectedValue",
///                     Value = "30,45",
///                 },
///                 new Azure.Policy.Inputs.VirtualMachineConfigurationAssignmentConfigurationParameterArgs
///                 {
///                     Name = "Enforce Password History;ExpectedValue",
///                     Value = "10",
///                 },
///                 new Azure.Policy.Inputs.VirtualMachineConfigurationAssignmentConfigurationParameterArgs
///                 {
///                     Name = "Password Must Meet Complexity Requirements;ExpectedValue",
///                     Value = "1",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/policy"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-gca"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name:              pulumi.String("example-vnet"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
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
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
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
/// 		exampleWindowsVirtualMachine, err := compute.NewWindowsVirtualMachine(ctx, "example", &compute.WindowsVirtualMachineArgs{
/// 			Name:              pulumi.String("examplevm"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Size:              pulumi.String("Standard_F2"),
/// 			AdminUsername:     pulumi.String("adminuser"),
/// 			AdminPassword:     pulumi.String("P@$$w0rd1234!"),
/// 			NetworkInterfaceIds: pulumi.StringArray{
/// 				exampleNetworkInterface.ID(),
/// 			},
/// 			Identity: &compute.WindowsVirtualMachineIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 			OsDisk: &compute.WindowsVirtualMachineOsDiskArgs{
/// 				Caching:            pulumi.String("ReadWrite"),
/// 				StorageAccountType: pulumi.String("Standard_LRS"),
/// 			},
/// 			SourceImageReference: &compute.WindowsVirtualMachineSourceImageReferenceArgs{
/// 				Publisher: pulumi.String("MicrosoftWindowsServer"),
/// 				Offer:     pulumi.String("WindowsServer"),
/// 				Sku:       pulumi.String("2019-Datacenter"),
/// 				Version:   pulumi.String("latest"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewExtension(ctx, "example", &compute.ExtensionArgs{
/// 			Name:                    pulumi.String("AzurePolicyforWindows"),
/// 			VirtualMachineId:        exampleWindowsVirtualMachine.ID(),
/// 			Publisher:               pulumi.String("Microsoft.GuestConfiguration"),
/// 			Type:                    pulumi.String("ConfigurationforWindows"),
/// 			TypeHandlerVersion:      pulumi.String("1.29"),
/// 			AutoUpgradeMinorVersion: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = policy.NewVirtualMachineConfigurationAssignment(ctx, "example", &policy.VirtualMachineConfigurationAssignmentArgs{
/// 			Name:             pulumi.String("AzureWindowsBaseline"),
/// 			Location:         exampleWindowsVirtualMachine.Location,
/// 			VirtualMachineId: exampleWindowsVirtualMachine.ID(),
/// 			Configuration: &policy.VirtualMachineConfigurationAssignmentConfigurationArgs{
/// 				AssignmentType: pulumi.String("ApplyAndMonitor"),
/// 				Version:        pulumi.String("1.*"),
/// 				Parameters: policy.VirtualMachineConfigurationAssignmentConfigurationParameterArray{
/// 					&policy.VirtualMachineConfigurationAssignmentConfigurationParameterArgs{
/// 						Name:  pulumi.String("Minimum Password Length;ExpectedValue"),
/// 						Value: pulumi.String("16"),
/// 					},
/// 					&policy.VirtualMachineConfigurationAssignmentConfigurationParameterArgs{
/// 						Name:  pulumi.String("Minimum Password Age;ExpectedValue"),
/// 						Value: pulumi.String("0"),
/// 					},
/// 					&policy.VirtualMachineConfigurationAssignmentConfigurationParameterArgs{
/// 						Name:  pulumi.String("Maximum Password Age;ExpectedValue"),
/// 						Value: pulumi.String("30,45"),
/// 					},
/// 					&policy.VirtualMachineConfigurationAssignmentConfigurationParameterArgs{
/// 						Name:  pulumi.String("Enforce Password History;ExpectedValue"),
/// 						Value: pulumi.String("10"),
/// 					},
/// 					&policy.VirtualMachineConfigurationAssignmentConfigurationParameterArgs{
/// 						Name:  pulumi.String("Password Must Meet Complexity Requirements;ExpectedValue"),
/// 						Value: pulumi.String("1"),
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
/// import com.pulumi.azure.compute.inputs.WindowsVirtualMachineIdentityArgs;
/// import com.pulumi.azure.compute.inputs.WindowsVirtualMachineOsDiskArgs;
/// import com.pulumi.azure.compute.inputs.WindowsVirtualMachineSourceImageReferenceArgs;
/// import com.pulumi.azure.compute.Extension;
/// import com.pulumi.azure.compute.ExtensionArgs;
/// import com.pulumi.azure.policy.VirtualMachineConfigurationAssignment;
/// import com.pulumi.azure.policy.VirtualMachineConfigurationAssignmentArgs;
/// import com.pulumi.azure.policy.inputs.VirtualMachineConfigurationAssignmentConfigurationArgs;
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
///             .name("example-gca")
///             .location("West Europe")
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("example-vnet")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .addressSpaces("10.0.0.0/16")
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
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .ipConfigurations(NetworkInterfaceIpConfigurationArgs.builder()
///                 .name("internal")
///                 .subnetId(exampleSubnet.id())
///                 .privateIpAddressAllocation("Dynamic")
///                 .build())
///             .build());
///
///         var exampleWindowsVirtualMachine = new WindowsVirtualMachine("exampleWindowsVirtualMachine", WindowsVirtualMachineArgs.builder()
///             .name("examplevm")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .size("Standard_F2")
///             .adminUsername("adminuser")
///             .adminPassword("P@$$w0rd1234!")
///             .networkInterfaceIds(exampleNetworkInterface.id())
///             .identity(WindowsVirtualMachineIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .osDisk(WindowsVirtualMachineOsDiskArgs.builder()
///                 .caching("ReadWrite")
///                 .storageAccountType("Standard_LRS")
///                 .build())
///             .sourceImageReference(WindowsVirtualMachineSourceImageReferenceArgs.builder()
///                 .publisher("MicrosoftWindowsServer")
///                 .offer("WindowsServer")
///                 .sku("2019-Datacenter")
///                 .version("latest")
///                 .build())
///             .build());
///
///         var exampleExtension = new Extension("exampleExtension", ExtensionArgs.builder()
///             .name("AzurePolicyforWindows")
///             .virtualMachineId(exampleWindowsVirtualMachine.id())
///             .publisher("Microsoft.GuestConfiguration")
///             .type("ConfigurationforWindows")
///             .typeHandlerVersion("1.29")
///             .autoUpgradeMinorVersion(true)
///             .build());
///
///         var exampleVirtualMachineConfigurationAssignment = new VirtualMachineConfigurationAssignment("exampleVirtualMachineConfigurationAssignment", VirtualMachineConfigurationAssignmentArgs.builder()
///             .name("AzureWindowsBaseline")
///             .location(exampleWindowsVirtualMachine.location())
///             .virtualMachineId(exampleWindowsVirtualMachine.id())
///             .configuration(VirtualMachineConfigurationAssignmentConfigurationArgs.builder()
///                 .assignmentType("ApplyAndMonitor")
///                 .version("1.*")
///                 .parameters(
///                     VirtualMachineConfigurationAssignmentConfigurationParameterArgs.builder()
///                         .name("Minimum Password Length;ExpectedValue")
///                         .value("16")
///                         .build(),
///                     VirtualMachineConfigurationAssignmentConfigurationParameterArgs.builder()
///                         .name("Minimum Password Age;ExpectedValue")
///                         .value("0")
///                         .build(),
///                     VirtualMachineConfigurationAssignmentConfigurationParameterArgs.builder()
///                         .name("Maximum Password Age;ExpectedValue")
///                         .value("30,45")
///                         .build(),
///                     VirtualMachineConfigurationAssignmentConfigurationParameterArgs.builder()
///                         .name("Enforce Password History;ExpectedValue")
///                         .value("10")
///                         .build(),
///                     VirtualMachineConfigurationAssignmentConfigurationParameterArgs.builder()
///                         .name("Password Must Meet Complexity Requirements;ExpectedValue")
///                         .value("1")
///                         .build())
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
///       name: example-gca
///       location: West Europe
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: example-vnet
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       addressSpaces:
///         - 10.0.0.0/16
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
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       ipConfigurations:
///         - name: internal
///           subnetId: ${exampleSubnet.id}
///           privateIpAddressAllocation: Dynamic
///   exampleWindowsVirtualMachine:
///     type: azure:compute:WindowsVirtualMachine
///     name: example
///     properties:
///       name: examplevm
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       size: Standard_F2
///       adminUsername: adminuser
///       adminPassword: P@$$w0rd1234!
///       networkInterfaceIds:
///         - ${exampleNetworkInterface.id}
///       identity:
///         type: SystemAssigned
///       osDisk:
///         caching: ReadWrite
///         storageAccountType: Standard_LRS
///       sourceImageReference:
///         publisher: MicrosoftWindowsServer
///         offer: WindowsServer
///         sku: 2019-Datacenter
///         version: latest
///   exampleExtension:
///     type: azure:compute:Extension
///     name: example
///     properties:
///       name: AzurePolicyforWindows
///       virtualMachineId: ${exampleWindowsVirtualMachine.id}
///       publisher: Microsoft.GuestConfiguration
///       type: ConfigurationforWindows
///       typeHandlerVersion: '1.29'
///       autoUpgradeMinorVersion: 'true'
///   exampleVirtualMachineConfigurationAssignment:
///     type: azure:policy:VirtualMachineConfigurationAssignment
///     name: example
///     properties:
///       name: AzureWindowsBaseline
///       location: ${exampleWindowsVirtualMachine.location}
///       virtualMachineId: ${exampleWindowsVirtualMachine.id}
///       configuration:
///         assignmentType: ApplyAndMonitor
///         version: 1.*
///         parameters:
///           - name: Minimum Password Length;ExpectedValue
///             value: '16'
///           - name: Minimum Password Age;ExpectedValue
///             value: '0'
///           - name: Maximum Password Age;ExpectedValue
///             value: 30,45
///           - name: Enforce Password History;ExpectedValue
///             value: '10'
///           - name: Password Must Meet Complexity Requirements;ExpectedValue
///             value: '1'
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Compute` - 2024-04-05
///
/// ## Import
///
/// Policy Virtual Machine Configuration Assignments can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:policy/virtualMachineConfigurationAssignment:VirtualMachineConfigurationAssignment example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Compute/virtualMachines/vm1/providers/Microsoft.GuestConfiguration/guestConfigurationAssignments/assignment1
/// ```
class VirtualMachineConfigurationAssignment extends pulumi.CustomResource {
  /// A `configuration` block as defined below.
  late final pulumi.Output<VirtualMachineConfigurationAssignmentConfiguration>
  configuration;

  /// The Azure location where the Policy Virtual Machine Configuration Assignment should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;

  /// The name of the Guest Configuration that will be assigned in this Guest Configuration Assignment. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// The resource ID of the Policy Virtual Machine which this Guest Configuration Assignment should apply to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> virtualMachineId;

  /// Creates a new [VirtualMachineConfigurationAssignment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualMachineConfigurationAssignment]. {@macro pulumi_policy_virtual_machine_configuration_assignment_virtual_machine_configuration_assignment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualMachineConfigurationAssignment(
    String name, {
    VirtualMachineConfigurationAssignmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:policy/virtualMachineConfigurationAssignment:VirtualMachineConfigurationAssignment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    configuration =
        registerOutput<VirtualMachineConfigurationAssignmentConfiguration>(
          'configuration',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return VirtualMachineConfigurationAssignmentConfiguration.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    virtualMachineId = registerOutput<String>('virtualMachineId');
  }

  /// Gets an existing [VirtualMachineConfigurationAssignment] resource's state with the given [name] and [id].
  static VirtualMachineConfigurationAssignment get(
    String name,
    pulumi.Input<String> id, {
    VirtualMachineConfigurationAssignmentState? state,
  }) {
    return VirtualMachineConfigurationAssignment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VirtualMachineConfigurationAssignment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:policy/virtualMachineConfigurationAssignment:VirtualMachineConfigurationAssignment',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    configuration =
        registerOutput<VirtualMachineConfigurationAssignmentConfiguration>(
          'configuration',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return VirtualMachineConfigurationAssignmentConfiguration.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    virtualMachineId = registerOutput<String>('virtualMachineId');
  }
}
