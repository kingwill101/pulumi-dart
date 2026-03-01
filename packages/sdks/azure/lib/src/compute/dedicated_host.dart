import 'package:pulumi/pulumi.dart' as pulumi;
import 'dedicated_host_args.dart';
import 'dedicated_host_state.dart';

/// Manage a Dedicated Host within a Dedicated Host Group.
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
/// const exampleDedicatedHostGroup = new azure.compute.DedicatedHostGroup("example", {
///     name: "example-host-group",
///     resourceGroupName: example.name,
///     location: example.location,
///     platformFaultDomainCount: 2,
/// });
/// const exampleDedicatedHost = new azure.compute.DedicatedHost("example", {
///     name: "example-host",
///     location: example.location,
///     dedicatedHostGroupId: exampleDedicatedHostGroup.id,
///     skuName: "DSv3-Type3",
///     platformFaultDomain: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_dedicated_host_group = azure.compute.DedicatedHostGroup("example",
///     name="example-host-group",
///     resource_group_name=example.name,
///     location=example.location,
///     platform_fault_domain_count=2)
/// example_dedicated_host = azure.compute.DedicatedHost("example",
///     name="example-host",
///     location=example.location,
///     dedicated_host_group_id=example_dedicated_host_group.id,
///     sku_name="DSv3-Type3",
///     platform_fault_domain=1)
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
///     var exampleDedicatedHostGroup = new Azure.Compute.DedicatedHostGroup("example", new()
///     {
///         Name = "example-host-group",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         PlatformFaultDomainCount = 2,
///     });
///
///     var exampleDedicatedHost = new Azure.Compute.DedicatedHost("example", new()
///     {
///         Name = "example-host",
///         Location = example.Location,
///         DedicatedHostGroupId = exampleDedicatedHostGroup.Id,
///         SkuName = "DSv3-Type3",
///         PlatformFaultDomain = 1,
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
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDedicatedHostGroup, err := compute.NewDedicatedHostGroup(ctx, "example", &compute.DedicatedHostGroupArgs{
/// 			Name:                     pulumi.String("example-host-group"),
/// 			ResourceGroupName:        example.Name,
/// 			Location:                 example.Location,
/// 			PlatformFaultDomainCount: pulumi.Int(2),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewDedicatedHost(ctx, "example", &compute.DedicatedHostArgs{
/// 			Name:                 pulumi.String("example-host"),
/// 			Location:             example.Location,
/// 			DedicatedHostGroupId: exampleDedicatedHostGroup.ID(),
/// 			SkuName:              pulumi.String("DSv3-Type3"),
/// 			PlatformFaultDomain:  pulumi.Int(1),
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
/// import com.pulumi.azure.compute.DedicatedHostGroup;
/// import com.pulumi.azure.compute.DedicatedHostGroupArgs;
/// import com.pulumi.azure.compute.DedicatedHost;
/// import com.pulumi.azure.compute.DedicatedHostArgs;
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
///         var exampleDedicatedHostGroup = new DedicatedHostGroup("exampleDedicatedHostGroup", DedicatedHostGroupArgs.builder()
///             .name("example-host-group")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .platformFaultDomainCount(2)
///             .build());
///
///         var exampleDedicatedHost = new DedicatedHost("exampleDedicatedHost", DedicatedHostArgs.builder()
///             .name("example-host")
///             .location(example.location())
///             .dedicatedHostGroupId(exampleDedicatedHostGroup.id())
///             .skuName("DSv3-Type3")
///             .platformFaultDomain(1)
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
///   exampleDedicatedHostGroup:
///     type: azure:compute:DedicatedHostGroup
///     name: example
///     properties:
///       name: example-host-group
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       platformFaultDomainCount: 2
///   exampleDedicatedHost:
///     type: azure:compute:DedicatedHost
///     name: example
///     properties:
///       name: example-host
///       location: ${example.location}
///       dedicatedHostGroupId: ${exampleDedicatedHostGroup.id}
///       skuName: DSv3-Type3
///       platformFaultDomain: 1
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Compute` - 2024-03-01
///
/// ## Import
///
/// Dedicated Hosts can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:compute/dedicatedHost:DedicatedHost example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Compute/hostGroups/group1/hosts/host1
/// ```
class DedicatedHost extends pulumi.CustomResource {
  /// Should the Dedicated Host automatically be replaced in case of a Hardware Failure? Defaults to `true`.
  late final pulumi.Output<bool?> autoReplaceOnFailure;
  /// Specifies the ID of the Dedicated Host Group where the Dedicated Host should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> dedicatedHostGroupId;
  /// Specifies the software license type that will be applied to the VMs deployed on the Dedicated Host. Possible values are `None`, `Windows_Server_Hybrid` and `Windows_Server_Perpetual`. Defaults to `None`.
  late final pulumi.Output<String?> licenseType;
  /// Specify the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name of this Dedicated Host. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specify the fault domain of the Dedicated Host Group in which to create the Dedicated Host. Changing this forces a new resource to be created.
  late final pulumi.Output<int> platformFaultDomain;
  /// Specify the SKU name of the Dedicated Host. Possible values are `DADSv5-Type1`, `DASv4-Type1`, `DASv4-Type2`, `DASv5-Type1`, `DCSv2-Type1`, `DDSv4-Type1`, `DDSv4-Type2`, `DDSv5-Type1`, `DSv3-Type1`, `DSv3-Type2`, `DSv3-Type3`, `DSv3-Type4`, `DSv4-Type1`, `DSv4-Type2`, `DSv5-Type1`, `EADSv5-Type1`, `EASv4-Type1`, `EASv4-Type2`, `EASv5-Type1`, `EDSv4-Type1`, `EDSv4-Type2`, `EDSv5-Type1`, `ESv3-Type1`, `ESv3-Type2`, `ESv3-Type3`, `ESv3-Type4`, `ESv4-Type1`, `ESv4-Type2`, `ESv5-Type1`, `FSv2-Type2`, `FSv2-Type3`, `FSv2-Type4`, `FXmds-Type1`, `LSv2-Type1`, `LSv3-Type1`, `MDMSv2MedMem-Type1`, `MDSv2MedMem-Type1`, `MMSv2MedMem-Type1`, `MS-Type1`, `MSm-Type1`, `MSmv2-Type1`, `MSv2-Type1`, `MSv2MedMem-Type1`, `NVASv4-Type1` and `NVSv3-Type1`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> skuName;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [DedicatedHost].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DedicatedHost]. {@macro pulumi_compute_dedicated_host_dedicated_host_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DedicatedHost(
    String name, {
    DedicatedHostArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:compute/dedicatedHost:DedicatedHost',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoReplaceOnFailure = registerOutput<bool?>('autoReplaceOnFailure');
    this.dedicatedHostGroupId = registerOutput<String>('dedicatedHostGroupId');
    this.licenseType = registerOutput<String?>('licenseType');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.platformFaultDomain = registerOutput<int>('platformFaultDomain');
    this.skuName = registerOutput<String>('skuName');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [DedicatedHost] resource's state with the given [name] and [id].
  static DedicatedHost get(
    String name,
    pulumi.Input<String> id, {
    DedicatedHostState? state,
  }) {
    return DedicatedHost._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DedicatedHost._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:compute/dedicatedHost:DedicatedHost',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoReplaceOnFailure = registerOutput<bool?>('autoReplaceOnFailure');
    this.dedicatedHostGroupId = registerOutput<String>('dedicatedHostGroupId');
    this.licenseType = registerOutput<String?>('licenseType');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.platformFaultDomain = registerOutput<int>('platformFaultDomain');
    this.skuName = registerOutput<String>('skuName');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
