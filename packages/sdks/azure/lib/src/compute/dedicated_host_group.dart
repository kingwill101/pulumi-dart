import 'package:pulumi/pulumi.dart' as pulumi;
import 'dedicated_host_group_args.dart';
import 'dedicated_host_group_state.dart';

/// Manage a Dedicated Host Group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-rg-compute",
///     location: "West Europe",
/// });
/// const exampleDedicatedHostGroup = new azure.compute.DedicatedHostGroup("example", {
///     name: "example-dedicated-host-group",
///     resourceGroupName: example.name,
///     location: example.location,
///     platformFaultDomainCount: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-rg-compute",
///     location="West Europe")
/// example_dedicated_host_group = azure.compute.DedicatedHostGroup("example",
///     name="example-dedicated-host-group",
///     resource_group_name=example.name,
///     location=example.location,
///     platform_fault_domain_count=1)
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
///         Name = "example-rg-compute",
///         Location = "West Europe",
///     });
///
///     var exampleDedicatedHostGroup = new Azure.Compute.DedicatedHostGroup("example", new()
///     {
///         Name = "example-dedicated-host-group",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         PlatformFaultDomainCount = 1,
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-rg-compute"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewDedicatedHostGroup(ctx, "example", &compute.DedicatedHostGroupArgs{
/// 			Name:                     pulumi.String("example-dedicated-host-group"),
/// 			ResourceGroupName:        example.Name,
/// 			Location:                 example.Location,
/// 			PlatformFaultDomainCount: pulumi.Int(1),
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
///   name     = "example-rg-compute"
///   location = "West Europe"
/// }
/// resource "azure_compute_dedicatedhostgroup" "example" {
///   name                        = "example-dedicated-host-group"
///   resource_group_name         = azure_core_resourcegroup.example.name
///   location                    = azure_core_resourcegroup.example.location
///   platform_fault_domain_count = 1
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
/// import com.pulumi.azure.compute.DedicatedHostGroup;
/// import com.pulumi.azure.compute.DedicatedHostGroupArgs;
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
///             .name("example-rg-compute")
///             .location("West Europe")
///             .build());
///
///         var exampleDedicatedHostGroup = new DedicatedHostGroup("exampleDedicatedHostGroup", DedicatedHostGroupArgs.builder()
///             .name("example-dedicated-host-group")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .platformFaultDomainCount(1)
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
///       name: example-rg-compute
///       location: West Europe
///   exampleDedicatedHostGroup:
///     type: azure:compute:DedicatedHostGroup
///     name: example
///     properties:
///       name: example-dedicated-host-group
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       platformFaultDomainCount: 1
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Compute` - 2024-03-01
///
/// ## Import
///
/// Dedicated Host Group can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:compute/dedicatedHostGroup:DedicatedHostGroup example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example-rg/providers/Microsoft.Compute/hostGroups/group1
/// ```
class DedicatedHostGroup extends pulumi.CustomResource {
  /// Would virtual machines or virtual machine scale sets be placed automatically on this Dedicated Host Group? Defaults to `false`. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> automaticPlacementEnabled;
  /// The Azure location where the Dedicated Host Group exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name of the Dedicated Host Group. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The number of fault domains that the Dedicated Host Group spans. Changing this forces a new resource to be created.
  late final pulumi.Output<int> platformFaultDomainCount;
  /// Specifies the name of the resource group the Dedicated Host Group is located in. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Specifies the Availability Zone in which this Dedicated Host Group should be located. Changing this forces a new Dedicated Host Group to be created.
  late final pulumi.Output<String?> zone;

  /// Creates a new [DedicatedHostGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DedicatedHostGroup]. {@macro pulumi_compute_dedicated_host_group_dedicated_host_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DedicatedHostGroup(
    String name, {
    DedicatedHostGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:compute/dedicatedHostGroup:DedicatedHostGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    automaticPlacementEnabled = registerOutput<bool?>('automaticPlacementEnabled');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    platformFaultDomainCount = registerOutput<int>('platformFaultDomainCount');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    zone = registerOutput<String?>('zone');
  }

  /// Gets an existing [DedicatedHostGroup] resource's state with the given [name] and [id].
  static DedicatedHostGroup get(
    String name,
    pulumi.Input<String> id, {
    DedicatedHostGroupState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DedicatedHostGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DedicatedHostGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:compute/dedicatedHostGroup:DedicatedHostGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    automaticPlacementEnabled = registerOutput<bool?>('automaticPlacementEnabled');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    platformFaultDomainCount = registerOutput<int>('platformFaultDomainCount');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    zone = registerOutput<String?>('zone');
  }

  /// Creates a typed reference to an existing [DedicatedHostGroup] resource.
  DedicatedHostGroup.reference(String urn)
    : super(
        'azure:compute/dedicatedHostGroup:DedicatedHostGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    automaticPlacementEnabled = registerOutput<bool?>('automaticPlacementEnabled');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    platformFaultDomainCount = registerOutput<int>('platformFaultDomainCount');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    zone = registerOutput<String?>('zone');
  }
}
