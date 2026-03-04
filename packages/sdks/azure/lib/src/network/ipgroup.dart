import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipgroup_args.dart';
import 'ipgroup_state.dart';

/// Manages an IP group that contains a list of CIDRs and/or IP addresses.
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
///     location: "West Europe",
/// });
/// const exampleIPGroup = new azure.network.IPGroup("example", {
///     name: "example1-ipgroup",
///     location: example.location,
///     resourceGroupName: example.name,
///     cidrs: [
///         "192.168.0.1",
///         "172.16.240.0/20",
///         "10.48.0.0/12",
///     ],
///     tags: {
///         environment: "Production",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="West Europe")
/// example_ip_group = azure.network.IPGroup("example",
///     name="example1-ipgroup",
///     location=example.location,
///     resource_group_name=example.name,
///     cidrs=[
///         "192.168.0.1",
///         "172.16.240.0/20",
///         "10.48.0.0/12",
///     ],
///     tags={
///         "environment": "Production",
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
///         Name = "example-rg",
///         Location = "West Europe",
///     });
///
///     var exampleIPGroup = new Azure.Network.IPGroup("example", new()
///     {
///         Name = "example1-ipgroup",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Cidrs = new[]
///         {
///             "192.168.0.1",
///             "172.16.240.0/20",
///             "10.48.0.0/12",
///         },
///         Tags =
///         {
///             { "environment", "Production" },
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-rg"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewIPGroup(ctx, "example", &network.IPGroupArgs{
/// 			Name:              pulumi.String("example1-ipgroup"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Cidrs: pulumi.StringArray{
/// 				pulumi.String("192.168.0.1"),
/// 				pulumi.String("172.16.240.0/20"),
/// 				pulumi.String("10.48.0.0/12"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("Production"),
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
/// import com.pulumi.azure.network.IPGroup;
/// import com.pulumi.azure.network.IPGroupArgs;
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
///             .name("example-rg")
///             .location("West Europe")
///             .build());
///
///         var exampleIPGroup = new IPGroup("exampleIPGroup", IPGroupArgs.builder()
///             .name("example1-ipgroup")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .cidrs(
///                 "192.168.0.1",
///                 "172.16.240.0/20",
///                 "10.48.0.0/12")
///             .tags(Map.of("environment", "Production"))
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
///       location: West Europe
///   exampleIPGroup:
///     type: azure:network:IPGroup
///     name: example
///     properties:
///       name: example1-ipgroup
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       cidrs:
///         - 192.168.0.1
///         - 172.16.240.0/20
///         - 10.48.0.0/12
///       tags:
///         environment: Production
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
/// IP Groups can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/iPGroup:IPGroup ipgroup1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/ipGroups/myIpGroup
/// ```
class IPGroup extends pulumi.CustomResource {
  /// A list of CIDRs or IP addresses.
  ///
  /// &gt; **Note:** The AzureRM Terraform provider provides cidr support via the standalone resource azure.network.IPGroupCIDR and in-line within this resource using the `cidrs` property. You cannot use both methods simultaneously. If cidrs are set via the resource `azure.network.IPGroupCIDR` then `ignore_changes` should be used in the ip group configuration.
  late final pulumi.Output<List<String>?> cidrs;

  /// A list of ID of Firewall.
  late final pulumi.Output<List<String>> firewallIds;

  /// A list of ID of Firewall Policy`.
  late final pulumi.Output<List<String>> firewallPolicyIds;

  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;

  /// Specifies the name of the IP group. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// The name of the resource group in which to create the IP group. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [IPGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IPGroup]. {@macro pulumi_network_i_pgroup_ipgroup_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IPGroup(
    String name, {
    IPGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:network/iPGroup:IPGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cidrs = registerOutput<List<String>?>('cidrs');
    firewallIds = registerOutput<List<String>>('firewallIds');
    firewallPolicyIds = registerOutput<List<String>>('firewallPolicyIds');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [IPGroup] resource's state with the given [name] and [id].
  static IPGroup get(
    String name,
    pulumi.Input<String> id, {
    IPGroupState? state,
  }) {
    return IPGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IPGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:network/iPGroup:IPGroup',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cidrs = registerOutput<List<String>?>('cidrs');
    firewallIds = registerOutput<List<String>>('firewallIds');
    firewallPolicyIds = registerOutput<List<String>>('firewallPolicyIds');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
