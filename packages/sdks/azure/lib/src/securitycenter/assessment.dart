import 'package:pulumi/pulumi.dart' as pulumi;
import 'assessment_args.dart';
import 'assessment_state.dart';
import 'assessment_status.dart';

/// Manages the Security Center Assessment for Azure Security Center.
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
///     sku: "Standard_F2",
///     instances: 1,
///     adminUsername: "adminuser",
///     adminSshKeys: [{
///         username: "adminuser",
///         publicKey: std.file({
///             input: "~/.ssh/id_rsa.pub",
///         }).then(invoke => invoke.result),
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
/// const exampleAssessmentPolicy = new azure.securitycenter.AssessmentPolicy("example", {
///     displayName: "Test Display Name",
///     severity: "Medium",
///     description: "Test Description",
/// });
/// const exampleAssessment = new azure.securitycenter.Assessment("example", {
///     assessmentPolicyId: exampleAssessmentPolicy.id,
///     targetResourceId: exampleLinuxVirtualMachineScaleSet.id,
///     status: {
///         code: "Healthy",
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
///     sku="Standard_F2",
///     instances=1,
///     admin_username="adminuser",
///     admin_ssh_keys=[{
///         "username": "adminuser",
///         "public_key": std.file(input="~/.ssh/id_rsa.pub").result,
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
/// example_assessment_policy = azure.securitycenter.AssessmentPolicy("example",
///     display_name="Test Display Name",
///     severity="Medium",
///     description="Test Description")
/// example_assessment = azure.securitycenter.Assessment("example",
///     assessment_policy_id=example_assessment_policy.id,
///     target_resource_id=example_linux_virtual_machine_scale_set.id,
///     status={
///         "code": "Healthy",
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
///         Sku = "Standard_F2",
///         Instances = 1,
///         AdminUsername = "adminuser",
///         AdminSshKeys = new[]
///         {
///             new Azure.Compute.Inputs.LinuxVirtualMachineScaleSetAdminSshKeyArgs
///             {
///                 Username = "adminuser",
///                 PublicKey = Std.File.Invoke(new()
///                 {
///                     Input = "~/.ssh/id_rsa.pub",
///                 }).Apply(invoke => invoke.Result),
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
///     var exampleAssessmentPolicy = new Azure.SecurityCenter.AssessmentPolicy("example", new()
///     {
///         DisplayName = "Test Display Name",
///         Severity = "Medium",
///         Description = "Test Description",
///     });
///
///     var exampleAssessment = new Azure.SecurityCenter.Assessment("example", new()
///     {
///         AssessmentPolicyId = exampleAssessmentPolicy.Id,
///         TargetResourceId = exampleLinuxVirtualMachineScaleSet.Id,
///         Status = new Azure.SecurityCenter.Inputs.AssessmentStatusArgs
///         {
///             Code = "Healthy",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/securitycenter"
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
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "~/.ssh/id_rsa.pub",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLinuxVirtualMachineScaleSet, err := compute.NewLinuxVirtualMachineScaleSet(ctx, "example", &compute.LinuxVirtualMachineScaleSetArgs{
/// 			Name:              pulumi.String("example-vmss"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Sku:               pulumi.String("Standard_F2"),
/// 			Instances:         pulumi.Int(1),
/// 			AdminUsername:     pulumi.String("adminuser"),
/// 			AdminSshKeys: compute.LinuxVirtualMachineScaleSetAdminSshKeyArray{
/// 				&compute.LinuxVirtualMachineScaleSetAdminSshKeyArgs{
/// 					Username:  pulumi.String("adminuser"),
/// 					PublicKey: pulumi.String(invokeFile.Result),
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
/// 							SubnetId: internal.ID(),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAssessmentPolicy, err := securitycenter.NewAssessmentPolicy(ctx, "example", &securitycenter.AssessmentPolicyArgs{
/// 			DisplayName: pulumi.String("Test Display Name"),
/// 			Severity:    pulumi.String("Medium"),
/// 			Description: pulumi.String("Test Description"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securitycenter.NewAssessment(ctx, "example", &securitycenter.AssessmentArgs{
/// 			AssessmentPolicyId: exampleAssessmentPolicy.ID(),
/// 			TargetResourceId:   exampleLinuxVirtualMachineScaleSet.ID(),
/// 			Status: &securitycenter.AssessmentStatusArgs{
/// 				Code: pulumi.String("Healthy"),
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
///     std = {
///       source = "pulumi/std"
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
///   sku                 = "Standard_F2"
///   instances           = 1
///   admin_username      = "adminuser"
///   admin_ssh_keys {
///     username   = "adminuser"
///     public_key = file("~/.ssh/id_rsa.pub")
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
/// resource "azure_securitycenter_assessmentpolicy" "example" {
///   display_name = "Test Display Name"
///   severity     = "Medium"
///   description  = "Test Description"
/// }
/// resource "azure_securitycenter_assessment" "example" {
///   assessment_policy_id = azure_securitycenter_assessmentpolicy.example.id
///   target_resource_id   = azure_compute_linuxvirtualmachinescaleset.example.id
///   status = {
///     code = "Healthy"
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
/// import com.pulumi.azure.compute.LinuxVirtualMachineScaleSet;
/// import com.pulumi.azure.compute.LinuxVirtualMachineScaleSetArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineScaleSetAdminSshKeyArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineScaleSetSourceImageReferenceArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineScaleSetOsDiskArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineScaleSetNetworkInterfaceArgs;
/// import com.pulumi.azure.compute.inputs.LinuxVirtualMachineScaleSetNetworkInterfaceIpConfigurationArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import com.pulumi.azure.securitycenter.AssessmentPolicy;
/// import com.pulumi.azure.securitycenter.AssessmentPolicyArgs;
/// import com.pulumi.azure.securitycenter.Assessment;
/// import com.pulumi.azure.securitycenter.AssessmentArgs;
/// import com.pulumi.azure.securitycenter.inputs.AssessmentStatusArgs;
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
///         var exampleLinuxVirtualMachineScaleSet = new LinuxVirtualMachineScaleSet("exampleLinuxVirtualMachineScaleSet", LinuxVirtualMachineScaleSetArgs.builder()
///             .name("example-vmss")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .sku("Standard_F2")
///             .instances(1)
///             .adminUsername("adminuser")
///             .adminSshKeys(LinuxVirtualMachineScaleSetAdminSshKeyArgs.builder()
///                 .username("adminuser")
///                 .publicKey(StdFunctions.file(FileArgs.builder()
///                     .input("~/.ssh/id_rsa.pub")
///                     .build()).result())
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
///         var exampleAssessmentPolicy = new AssessmentPolicy("exampleAssessmentPolicy", AssessmentPolicyArgs.builder()
///             .displayName("Test Display Name")
///             .severity("Medium")
///             .description("Test Description")
///             .build());
///
///         var exampleAssessment = new Assessment("exampleAssessment", AssessmentArgs.builder()
///             .assessmentPolicyId(exampleAssessmentPolicy.id())
///             .targetResourceId(exampleLinuxVirtualMachineScaleSet.id())
///             .status(AssessmentStatusArgs.builder()
///                 .code("Healthy")
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
///       sku: Standard_F2
///       instances: 1
///       adminUsername: adminuser
///       adminSshKeys:
///         - username: adminuser
///           publicKey:
///             fn::invoke:
///               function: std:file
///               arguments:
///                 input: ~/.ssh/id_rsa.pub
///               return: result
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
///   exampleAssessmentPolicy:
///     type: azure:securitycenter:AssessmentPolicy
///     name: example
///     properties:
///       displayName: Test Display Name
///       severity: Medium
///       description: Test Description
///   exampleAssessment:
///     type: azure:securitycenter:Assessment
///     name: example
///     properties:
///       assessmentPolicyId: ${exampleAssessmentPolicy.id}
///       targetResourceId: ${exampleLinuxVirtualMachineScaleSet.id}
///       status:
///         code: Healthy
/// ```
///
///
/// ## Import
///
/// Security Assessment can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:securitycenter/assessment:Assessment example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resGroup1/providers/Microsoft.Compute/virtualMachineScaleSets/vmss1/providers/Microsoft.Security/assessments/00000000-0000-0000-0000-000000000000
/// ```
class Assessment extends pulumi.CustomResource {
  /// A map of additional data to associate with the assessment.
  late final pulumi.Output<Map<String, String>?> additionalData;
  /// The ID of the security Assessment policy to apply to this resource. Changing this forces a new security Assessment to be created.
  late final pulumi.Output<String> assessmentPolicyId;
  /// A `status` block as defined below.
  late final pulumi.Output<AssessmentStatus> status;
  /// The ID of the target resource. Changing this forces a new security Assessment to be created.
  late final pulumi.Output<String> targetResourceId;

  /// Creates a new [Assessment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Assessment]. {@macro pulumi_securitycenter_assessment_assessment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Assessment(
    String name, {
    AssessmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:securitycenter/assessment:Assessment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalData = registerOutput<Map<String, String>?>('additionalData');
    assessmentPolicyId = registerOutput<String>('assessmentPolicyId');
    status = registerOutput<AssessmentStatus>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AssessmentStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    targetResourceId = registerOutput<String>('targetResourceId');
  }

  /// Gets an existing [Assessment] resource's state with the given [name] and [id].
  static Assessment get(
    String name,
    pulumi.Input<String> id, {
    AssessmentState? state,
  }) {
    return Assessment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Assessment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:securitycenter/assessment:Assessment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalData = registerOutput<Map<String, String>?>('additionalData');
    assessmentPolicyId = registerOutput<String>('assessmentPolicyId');
    status = registerOutput<AssessmentStatus>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AssessmentStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    targetResourceId = registerOutput<String>('targetResourceId');
  }
}
