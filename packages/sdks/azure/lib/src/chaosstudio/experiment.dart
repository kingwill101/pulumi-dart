import 'package:pulumi/pulumi.dart' as pulumi;
import 'experiment_args.dart';
import 'experiment_identity.dart';
import 'experiment_selector.dart';
import 'experiment_state.dart';
import 'experiment_step.dart';

/// Manages a Chaos Studio Experiment.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example",
///     location: "westeurope",
/// });
/// const exampleUserAssignedIdentity = new azure.authorization.UserAssignedIdentity("example", {
///     resourceGroupName: example.name,
///     location: example.location,
///     name: "example",
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "example",
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
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
///     ipConfigurations: [{
///         name: "example",
///         subnetId: exampleSubnet.id,
///         privateIpAddressAllocation: "Dynamic",
///     }],
/// });
/// const exampleLinuxVirtualMachine = new azure.compute.LinuxVirtualMachine("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
///     size: "Standard_F2",
///     adminUsername: "adminuser",
///     adminPassword: "example",
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
/// const exampleTarget = new azure.chaosstudio.Target("example", {
///     location: example.location,
///     targetResourceId: exampleLinuxVirtualMachine.id,
///     targetType: "Microsoft-VirtualMachine",
/// });
/// const exampleCapability = new azure.chaosstudio.Capability("example", {
///     chaosStudioTargetId: exampleTarget.id,
///     capabilityType: "Shutdown-1.0",
/// });
/// const exampleExperiment = new azure.chaosstudio.Experiment("example", {
///     location: example.location,
///     name: "example",
///     resourceGroupName: example.name,
///     identity: {
///         type: "SystemAssigned",
///     },
///     selectors: [{
///         name: "Selector1",
///         chaosStudioTargetIds: [exampleTarget.id],
///     }],
///     steps: [{
///         name: "example",
///         branches: [{
///             name: "example",
///             actions: [{
///                 urn: exampleCapability.capabilityUrn,
///                 selectorName: "Selector1",
///                 parameters: {
///                     abruptShutdown: "false",
///                 },
///                 actionType: "continuous",
///                 duration: "PT10M",
///             }],
///         }],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example",
///     location="westeurope")
/// example_user_assigned_identity = azure.authorization.UserAssignedIdentity("example",
///     resource_group_name=example.name,
///     location=example.location,
///     name="example")
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="example",
///     address_spaces=["10.0.0.0/16"],
///     location=example.location,
///     resource_group_name=example.name)
/// example_subnet = azure.network.Subnet("example",
///     name="internal",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.2.0/24"])
/// example_network_interface = azure.network.NetworkInterface("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name,
///     ip_configurations=[{
///         "name": "example",
///         "subnet_id": example_subnet.id,
///         "private_ip_address_allocation": "Dynamic",
///     }])
/// example_linux_virtual_machine = azure.compute.LinuxVirtualMachine("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location,
///     size="Standard_F2",
///     admin_username="adminuser",
///     admin_password="example",
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
/// example_target = azure.chaosstudio.Target("example",
///     location=example.location,
///     target_resource_id=example_linux_virtual_machine.id,
///     target_type="Microsoft-VirtualMachine")
/// example_capability = azure.chaosstudio.Capability("example",
///     chaos_studio_target_id=example_target.id,
///     capability_type="Shutdown-1.0")
/// example_experiment = azure.chaosstudio.Experiment("example",
///     location=example.location,
///     name="example",
///     resource_group_name=example.name,
///     identity={
///         "type": "SystemAssigned",
///     },
///     selectors=[{
///         "name": "Selector1",
///         "chaos_studio_target_ids": [example_target.id],
///     }],
///     steps=[{
///         "name": "example",
///         "branches": [{
///             "name": "example",
///             "actions": [{
///                 "urn": example_capability.capability_urn,
///                 "selector_name": "Selector1",
///                 "parameters": {
///                     "abruptShutdown": "false",
///                 },
///                 "action_type": "continuous",
///                 "duration": "PT10M",
///             }],
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
///         Name = "example",
///         Location = "westeurope",
///     });
///
///     var exampleUserAssignedIdentity = new Azure.Authorization.UserAssignedIdentity("example", new()
///     {
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Name = "example",
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "example",
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
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         IpConfigurations = new[]
///         {
///             new Azure.Network.Inputs.NetworkInterfaceIpConfigurationArgs
///             {
///                 Name = "example",
///                 SubnetId = exampleSubnet.Id,
///                 PrivateIpAddressAllocation = "Dynamic",
///             },
///         },
///     });
///
///     var exampleLinuxVirtualMachine = new Azure.Compute.LinuxVirtualMachine("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Size = "Standard_F2",
///         AdminUsername = "adminuser",
///         AdminPassword = "example",
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
///     var exampleTarget = new Azure.ChaosStudio.Target("example", new()
///     {
///         Location = example.Location,
///         TargetResourceId = exampleLinuxVirtualMachine.Id,
///         TargetType = "Microsoft-VirtualMachine",
///     });
///
///     var exampleCapability = new Azure.ChaosStudio.Capability("example", new()
///     {
///         ChaosStudioTargetId = exampleTarget.Id,
///         CapabilityType = "Shutdown-1.0",
///     });
///
///     var exampleExperiment = new Azure.ChaosStudio.Experiment("example", new()
///     {
///         Location = example.Location,
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Identity = new Azure.ChaosStudio.Inputs.ExperimentIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///         Selectors = new[]
///         {
///             new Azure.ChaosStudio.Inputs.ExperimentSelectorArgs
///             {
///                 Name = "Selector1",
///                 ChaosStudioTargetIds = new[]
///                 {
///                     exampleTarget.Id,
///                 },
///             },
///         },
///         Steps = new[]
///         {
///             new Azure.ChaosStudio.Inputs.ExperimentStepArgs
///             {
///                 Name = "example",
///                 Branches = new[]
///                 {
///                     new Azure.ChaosStudio.Inputs.ExperimentStepBranchArgs
///                     {
///                         Name = "example",
///                         Actions = new[]
///                         {
///                             new Azure.ChaosStudio.Inputs.ExperimentStepBranchActionArgs
///                             {
///                                 Urn = exampleCapability.CapabilityUrn,
///                                 SelectorName = "Selector1",
///                                 Parameters =
///                                 {
///                                     { "abruptShutdown", "false" },
///                                 },
///                                 ActionType = "continuous",
///                                 Duration = "PT10M",
///                             },
///                         },
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/chaosstudio"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/compute"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example"),
/// 			Location: pulumi.String("westeurope"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = authorization.NewUserAssignedIdentity(ctx, "example", &authorization.UserAssignedIdentityArgs{
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Name:              pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name: pulumi.String("example"),
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
/// 			Name:              pulumi.String("example"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			IpConfigurations: network.NetworkInterfaceIpConfigurationArray{
/// 				&network.NetworkInterfaceIpConfigurationArgs{
/// 					Name:                       pulumi.String("example"),
/// 					SubnetId:                   exampleSubnet.ID().ToIDOutput().ToStringOutput(),
/// 					PrivateIpAddressAllocation: pulumi.String("Dynamic"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLinuxVirtualMachine, err := compute.NewLinuxVirtualMachine(ctx, "example", &compute.LinuxVirtualMachineArgs{
/// 			Name:                          pulumi.String("example"),
/// 			ResourceGroupName:             example.Name,
/// 			Location:                      example.Location,
/// 			Size:                          pulumi.String("Standard_F2"),
/// 			AdminUsername:                 pulumi.String("adminuser"),
/// 			AdminPassword:                 pulumi.String("example"),
/// 			DisablePasswordAuthentication: pulumi.Bool(false),
/// 			NetworkInterfaceIds: pulumi.StringArray{
/// 				exampleNetworkInterface.ID().ToIDOutput().ToStringOutput(),
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
/// 		exampleTarget, err := chaosstudio.NewTarget(ctx, "example", &chaosstudio.TargetArgs{
/// 			Location:         example.Location,
/// 			TargetResourceId: exampleLinuxVirtualMachine.ID().ToIDOutput().ToStringOutput(),
/// 			TargetType:       pulumi.String("Microsoft-VirtualMachine"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleCapability, err := chaosstudio.NewCapability(ctx, "example", &chaosstudio.CapabilityArgs{
/// 			ChaosStudioTargetId: exampleTarget.ID().ToIDOutput().ToStringOutput(),
/// 			CapabilityType:      pulumi.String("Shutdown-1.0"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = chaosstudio.NewExperiment(ctx, "example", &chaosstudio.ExperimentArgs{
/// 			Location:          example.Location,
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			Identity: &chaosstudio.ExperimentIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 			Selectors: chaosstudio.ExperimentSelectorArray{
/// 				&chaosstudio.ExperimentSelectorArgs{
/// 					Name: pulumi.String("Selector1"),
/// 					ChaosStudioTargetIds: pulumi.StringArray{
/// 						exampleTarget.ID().ToIDOutput().ToStringOutput(),
/// 					},
/// 				},
/// 			},
/// 			Steps: chaosstudio.ExperimentStepArray{
/// 				&chaosstudio.ExperimentStepArgs{
/// 					Name: pulumi.String("example"),
/// 					Branches: chaosstudio.ExperimentStepBranchArray{
/// 						&chaosstudio.ExperimentStepBranchArgs{
/// 							Name: pulumi.String("example"),
/// 							Actions: chaosstudio.ExperimentStepBranchActionArray{
/// 								&chaosstudio.ExperimentStepBranchActionArgs{
/// 									Urn:          exampleCapability.CapabilityUrn,
/// 									SelectorName: pulumi.String("Selector1"),
/// 									Parameters: pulumi.StringMap{
/// 										"abruptShutdown": pulumi.String("false"),
/// 									},
/// 									ActionType: pulumi.String("continuous"),
/// 									Duration:   pulumi.String("PT10M"),
/// 								},
/// 							},
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
///   name     = "example"
///   location = "westeurope"
/// }
/// resource "azure_authorization_userassignedidentity" "example" {
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   name                = "example"
/// }
/// resource "azure_network_virtualnetwork" "example" {
///   name                = "example"
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
///   name                = "example"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   ip_configurations {
///     name                          = "example"
///     subnet_id                     = azure_network_subnet.example.id
///     private_ip_address_allocation = "Dynamic"
///   }
/// }
/// resource "azure_compute_linuxvirtualmachine" "example" {
///   name                            = "example"
///   resource_group_name             = azure_core_resourcegroup.example.name
///   location                        = azure_core_resourcegroup.example.location
///   size                            = "Standard_F2"
///   admin_username                  = "adminuser"
///   admin_password                  = "example"
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
/// resource "azure_chaosstudio_target" "example" {
///   location           = azure_core_resourcegroup.example.location
///   target_resource_id = azure_compute_linuxvirtualmachine.example.id
///   target_type        = "Microsoft-VirtualMachine"
/// }
/// resource "azure_chaosstudio_capability" "example" {
///   chaos_studio_target_id = azure_chaosstudio_target.example.id
///   capability_type        = "Shutdown-1.0"
/// }
/// resource "azure_chaosstudio_experiment" "example" {
///   location            = azure_core_resourcegroup.example.location
///   name                = "example"
///   resource_group_name = azure_core_resourcegroup.example.name
///   identity = {
///     type = "SystemAssigned"
///   }
///   selectors {
///     name                    = "Selector1"
///     chaos_studio_target_ids = [azure_chaosstudio_target.example.id]
///   }
///   steps {
///     name = "example"
///     branches {
///       name = "example"
///       actions {
///         urn           = azure_chaosstudio_capability.example.capability_urn
///         selector_name = "Selector1"
///         parameters = {
///           "abruptShutdown" = "false"
///         }
///         action_type = "continuous"
///         duration    = "PT10M"
///       }
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
/// import com.pulumi.azure.authorization.UserAssignedIdentity;
/// import com.pulumi.azure.authorization.UserAssignedIdentityArgs;
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
/// import com.pulumi.azure.chaosstudio.Target;
/// import com.pulumi.azure.chaosstudio.TargetArgs;
/// import com.pulumi.azure.chaosstudio.Capability;
/// import com.pulumi.azure.chaosstudio.CapabilityArgs;
/// import com.pulumi.azure.chaosstudio.Experiment;
/// import com.pulumi.azure.chaosstudio.ExperimentArgs;
/// import com.pulumi.azure.chaosstudio.inputs.ExperimentIdentityArgs;
/// import com.pulumi.azure.chaosstudio.inputs.ExperimentSelectorArgs;
/// import com.pulumi.azure.chaosstudio.inputs.ExperimentStepArgs;
/// import com.pulumi.azure.chaosstudio.inputs.ExperimentStepBranchArgs;
/// import com.pulumi.azure.chaosstudio.inputs.ExperimentStepBranchActionArgs;
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
///             .name("example")
///             .location("westeurope")
///             .build());
///
///         var exampleUserAssignedIdentity = new UserAssignedIdentity("exampleUserAssignedIdentity", UserAssignedIdentityArgs.builder()
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .name("example")
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("example")
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
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .ipConfigurations(NetworkInterfaceIpConfigurationArgs.builder()
///                 .name("example")
///                 .subnetId(exampleSubnet.id())
///                 .privateIpAddressAllocation("Dynamic")
///                 .build())
///             .build());
///
///         var exampleLinuxVirtualMachine = new LinuxVirtualMachine("exampleLinuxVirtualMachine", LinuxVirtualMachineArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .size("Standard_F2")
///             .adminUsername("adminuser")
///             .adminPassword("example")
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
///         var exampleTarget = new Target("exampleTarget", TargetArgs.builder()
///             .location(example.location())
///             .targetResourceId(exampleLinuxVirtualMachine.id())
///             .targetType("Microsoft-VirtualMachine")
///             .build());
///
///         var exampleCapability = new Capability("exampleCapability", CapabilityArgs.builder()
///             .chaosStudioTargetId(exampleTarget.id())
///             .capabilityType("Shutdown-1.0")
///             .build());
///
///         var exampleExperiment = new Experiment("exampleExperiment", ExperimentArgs.builder()
///             .location(example.location())
///             .name("example")
///             .resourceGroupName(example.name())
///             .identity(ExperimentIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .selectors(ExperimentSelectorArgs.builder()
///                 .name("Selector1")
///                 .chaosStudioTargetIds(exampleTarget.id())
///                 .build())
///             .steps(ExperimentStepArgs.builder()
///                 .name("example")
///                 .branches(ExperimentStepBranchArgs.builder()
///                     .name("example")
///                     .actions(ExperimentStepBranchActionArgs.builder()
///                         .urn(exampleCapability.capabilityUrn())
///                         .selectorName("Selector1")
///                         .parameters(Map.of("abruptShutdown", "false"))
///                         .actionType("continuous")
///                         .duration("PT10M")
///                         .build())
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
///       name: example
///       location: westeurope
///   exampleUserAssignedIdentity:
///     type: azure:authorization:UserAssignedIdentity
///     name: example
///     properties:
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       name: example
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: example
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
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       ipConfigurations:
///         - name: example
///           subnetId: ${exampleSubnet.id}
///           privateIpAddressAllocation: Dynamic
///   exampleLinuxVirtualMachine:
///     type: azure:compute:LinuxVirtualMachine
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       size: Standard_F2
///       adminUsername: adminuser
///       adminPassword: example
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
///   exampleTarget:
///     type: azure:chaosstudio:Target
///     name: example
///     properties:
///       location: ${example.location}
///       targetResourceId: ${exampleLinuxVirtualMachine.id}
///       targetType: Microsoft-VirtualMachine
///   exampleCapability:
///     type: azure:chaosstudio:Capability
///     name: example
///     properties:
///       chaosStudioTargetId: ${exampleTarget.id}
///       capabilityType: Shutdown-1.0
///   exampleExperiment:
///     type: azure:chaosstudio:Experiment
///     name: example
///     properties:
///       location: ${example.location}
///       name: example
///       resourceGroupName: ${example.name}
///       identity:
///         type: SystemAssigned
///       selectors:
///         - name: Selector1
///           chaosStudioTargetIds:
///             - ${exampleTarget.id}
///       steps:
///         - name: example
///           branches:
///             - name: example
///               actions:
///                 - urn: ${exampleCapability.capabilityUrn}
///                   selectorName: Selector1
///                   parameters:
///                     abruptShutdown: 'false'
///                   actionType: continuous
///                   duration: PT10M
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Chaos` - 2023-11-01
///
/// ## Import
///
/// Chaos Studio Experiments can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:chaosstudio/experiment:Experiment example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Chaos/experiments/experiment1
/// ```
class Experiment extends pulumi.CustomResource {
  /// A `identity` block as defined below.
  late final pulumi.Output<ExperimentIdentity?> identity;
  /// The Azure Region where the Chaos Studio Experiment should exist. Changing this forces a new Chaos Studio Experiment to be created.
  late final pulumi.Output<String> location;
  /// The name which should be used for this Chaos Studio Experiment. Changing this forces a new Chaos Studio Experiment to be created.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group where the Chaos Studio Experiment should exist. Changing this forces a new Chaos Studio Experiment to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// One or more `selectors` blocks as defined below.
  late final pulumi.Output<List<ExperimentSelector>> selectors;
  /// One or more `steps` blocks as defined below.
  late final pulumi.Output<List<ExperimentStep>> steps;

  /// Creates a new [Experiment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Experiment]. {@macro pulumi_chaosstudio_experiment_experiment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Experiment(
    String name, {
    ExperimentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:chaosstudio/experiment:Experiment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    identity = registerOutput<ExperimentIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExperimentIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    selectors = registerOutput<List<ExperimentSelector>>('selectors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ExperimentSelector>(guardedValue, (value) => ExperimentSelector.fromMap((value as Map).cast<String, dynamic>())); });
    steps = registerOutput<List<ExperimentStep>>('steps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ExperimentStep>(guardedValue, (value) => ExperimentStep.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [Experiment] resource's state with the given [name] and [id].
  static Experiment get(
    String name,
    pulumi.Input<String> id, {
    ExperimentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Experiment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Experiment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:chaosstudio/experiment:Experiment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    identity = registerOutput<ExperimentIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExperimentIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    selectors = registerOutput<List<ExperimentSelector>>('selectors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ExperimentSelector>(guardedValue, (value) => ExperimentSelector.fromMap((value as Map).cast<String, dynamic>())); });
    steps = registerOutput<List<ExperimentStep>>('steps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ExperimentStep>(guardedValue, (value) => ExperimentStep.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [Experiment] resource.
  Experiment.reference(String urn)
    : super(
        'azure:chaosstudio/experiment:Experiment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    identity = registerOutput<ExperimentIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExperimentIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    selectors = registerOutput<List<ExperimentSelector>>('selectors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ExperimentSelector>(guardedValue, (value) => ExperimentSelector.fromMap((value as Map).cast<String, dynamic>())); });
    steps = registerOutput<List<ExperimentStep>>('steps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ExperimentStep>(guardedValue, (value) => ExperimentStep.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
