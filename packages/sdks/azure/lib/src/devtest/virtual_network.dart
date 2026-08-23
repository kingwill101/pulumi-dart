import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_args.dart';
import 'virtual_network_state.dart';
import 'virtual_network_subnet.dart';

/// Manages a Virtual Network within a DevTest Lab.
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
/// 		_, err = devtest.NewVirtualNetwork(ctx, "example", &devtest.VirtualNetworkArgs{
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
/// DevTest Virtual Networks can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:devtest/virtualNetwork:VirtualNetwork network1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DevTestLab/labs/lab1/virtualNetworks/network1
/// ```
class VirtualNetwork extends pulumi.CustomResource {
  /// A description for the Virtual Network.
  late final pulumi.Output<String?> description;
  /// Specifies the name of the Dev Test Lab in which the Virtual Network should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> labName;
  /// Specifies the name of the Dev Test Virtual Network. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the resource group in which the Dev Test Lab resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A `subnet` block as defined below.
  late final pulumi.Output<VirtualNetworkSubnet> subnet;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The unique immutable identifier of the Dev Test Virtual Network.
  late final pulumi.Output<String> uniqueIdentifier;

  /// Creates a new [VirtualNetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualNetwork]. {@macro pulumi_devtest_virtual_network_virtual_network_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualNetwork(
    String name, {
    VirtualNetworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:devtest/virtualNetwork:VirtualNetwork',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    labName = registerOutput<String>('labName');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    subnet = registerOutput<VirtualNetworkSubnet>('subnet', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualNetworkSubnet.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    uniqueIdentifier = registerOutput<String>('uniqueIdentifier');
  }

  /// Gets an existing [VirtualNetwork] resource's state with the given [name] and [id].
  static VirtualNetwork get(
    String name,
    pulumi.Input<String> id, {
    VirtualNetworkState? state,
  }) {
    return VirtualNetwork._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VirtualNetwork._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:devtest/virtualNetwork:VirtualNetwork',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    labName = registerOutput<String>('labName');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    subnet = registerOutput<VirtualNetworkSubnet>('subnet', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualNetworkSubnet.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    uniqueIdentifier = registerOutput<String>('uniqueIdentifier');
  }
}
