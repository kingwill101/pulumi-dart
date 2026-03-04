import 'package:pulumi/pulumi.dart' as pulumi;
import 'ddos_protection_plan_args.dart';
import 'ddos_protection_plan_state.dart';

/// Manages an AzureNetwork DDoS Protection Plan.
///
/// &gt; **Note:** Azure only allows `one` DDoS Protection Plan per region.
///
/// &gt; **Note:** The DDoS Protection Plan is a [high-cost service](https://azure.microsoft.com/en-us/pricing/details/ddos-protection/#pricing). Please keep this in mind while testing and learning.
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
/// const exampleDdosProtectionPlan = new azure.network.DdosProtectionPlan("example", {
///     name: "example-protection-plan",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_ddos_protection_plan = azure.network.DdosProtectionPlan("example",
///     name="example-protection-plan",
///     location=example.location,
///     resource_group_name=example.name)
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
///     var exampleDdosProtectionPlan = new Azure.Network.DdosProtectionPlan("example", new()
///     {
///         Name = "example-protection-plan",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
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
/// 		_, err = network.NewDdosProtectionPlan(ctx, "example", &network.DdosProtectionPlanArgs{
/// 			Name:              pulumi.String("example-protection-plan"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
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
/// import com.pulumi.azure.network.DdosProtectionPlan;
/// import com.pulumi.azure.network.DdosProtectionPlanArgs;
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
///         var exampleDdosProtectionPlan = new DdosProtectionPlan("exampleDdosProtectionPlan", DdosProtectionPlanArgs.builder()
///             .name("example-protection-plan")
///             .location(example.location())
///             .resourceGroupName(example.name())
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
///   exampleDdosProtectionPlan:
///     type: azure:network:DdosProtectionPlan
///     name: example
///     properties:
///       name: example-protection-plan
///       location: ${example.location}
///       resourceGroupName: ${example.name}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
///
/// ## Import
///
/// Azure DDoS Protection Plan can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/ddosProtectionPlan:DdosProtectionPlan example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Network/ddosProtectionPlans/testddospplan
/// ```
class DdosProtectionPlan extends pulumi.CustomResource {
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;

  /// Specifies the name of the Network DDoS Protection Plan. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// The name of the resource group in which to create the resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A list of Virtual Network IDs associated with the DDoS Protection Plan.
  late final pulumi.Output<List<String>> virtualNetworkIds;

  /// Creates a new [DdosProtectionPlan].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DdosProtectionPlan]. {@macro pulumi_network_ddos_protection_plan_ddos_protection_plan_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DdosProtectionPlan(
    String name, {
    DdosProtectionPlanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:network/ddosProtectionPlan:DdosProtectionPlan',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
    virtualNetworkIds = registerOutput<List<String>>('virtualNetworkIds');
  }

  /// Gets an existing [DdosProtectionPlan] resource's state with the given [name] and [id].
  static DdosProtectionPlan get(
    String name,
    pulumi.Input<String> id, {
    DdosProtectionPlanState? state,
  }) {
    return DdosProtectionPlan._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DdosProtectionPlan._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:network/ddosProtectionPlan:DdosProtectionPlan',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
    virtualNetworkIds = registerOutput<List<String>>('virtualNetworkIds');
  }
}
