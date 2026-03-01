import 'package:pulumi/pulumi.dart' as pulumi;
import 'local_rulestack_prefix_list_args.dart';
import 'local_rulestack_prefix_list_state.dart';

/// Manages a Palo Alto Local Rulestack Prefix List.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "rg-example",
///     location: "West Europe",
/// });
/// const exampleLocalRulestack = new azure.paloalto.LocalRulestack("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const exampleLocalRulestackPrefixList = new azure.paloalto.LocalRulestackPrefixList("example", {
///     name: "example",
///     rulestackId: exampleLocalRulestack.id,
///     prefixLists: ["10.0.1.0/24"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="rg-example",
///     location="West Europe")
/// example_local_rulestack = azure.paloalto.LocalRulestack("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location)
/// example_local_rulestack_prefix_list = azure.paloalto.LocalRulestackPrefixList("example",
///     name="example",
///     rulestack_id=example_local_rulestack.id,
///     prefix_lists=["10.0.1.0/24"])
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
///         Name = "rg-example",
///         Location = "West Europe",
///     });
///
///     var exampleLocalRulestack = new Azure.PaloAlto.LocalRulestack("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var exampleLocalRulestackPrefixList = new Azure.PaloAlto.LocalRulestackPrefixList("example", new()
///     {
///         Name = "example",
///         RulestackId = exampleLocalRulestack.Id,
///         PrefixLists = new[]
///         {
///             "10.0.1.0/24",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/paloalto"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("rg-example"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLocalRulestack, err := paloalto.NewLocalRulestack(ctx, "example", &paloalto.LocalRulestackArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = paloalto.NewLocalRulestackPrefixList(ctx, "example", &paloalto.LocalRulestackPrefixListArgs{
/// 			Name:        pulumi.String("example"),
/// 			RulestackId: exampleLocalRulestack.ID(),
/// 			PrefixLists: pulumi.StringArray{
/// 				pulumi.String("10.0.1.0/24"),
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
/// import com.pulumi.azure.paloalto.LocalRulestack;
/// import com.pulumi.azure.paloalto.LocalRulestackArgs;
/// import com.pulumi.azure.paloalto.LocalRulestackPrefixList;
/// import com.pulumi.azure.paloalto.LocalRulestackPrefixListArgs;
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
///             .name("rg-example")
///             .location("West Europe")
///             .build());
///
///         var exampleLocalRulestack = new LocalRulestack("exampleLocalRulestack", LocalRulestackArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var exampleLocalRulestackPrefixList = new LocalRulestackPrefixList("exampleLocalRulestackPrefixList", LocalRulestackPrefixListArgs.builder()
///             .name("example")
///             .rulestackId(exampleLocalRulestack.id())
///             .prefixLists("10.0.1.0/24")
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
///       name: rg-example
///       location: West Europe
///   exampleLocalRulestack:
///     type: azure:paloalto:LocalRulestack
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   exampleLocalRulestackPrefixList:
///     type: azure:paloalto:LocalRulestackPrefixList
///     name: example
///     properties:
///       name: example
///       rulestackId: ${exampleLocalRulestack.id}
///       prefixLists:
///         - 10.0.1.0/24
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `PaloAltoNetworks.Cloudngfw` - 2022-08-29
///
/// ## Import
///
/// Palo Alto Local Rulestack Prefix Lists can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:paloalto/localRulestackPrefixList:LocalRulestackPrefixList example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/PaloAltoNetworks.Cloudngfw/localRulestacks/myLocalRulestack/prefixLists/myFQDNList1
/// ```
class LocalRulestackPrefixList extends pulumi.CustomResource {
  /// The comment for Audit purposes.
  late final pulumi.Output<String?> auditComment;
  /// The description for the Prefix List.
  late final pulumi.Output<String?> description;
  /// The name which should be used for this Palo Alto Local Rulestack Prefix List.
  late final pulumi.Output<String> name;
  /// Specifies a list of Prefixes.
  late final pulumi.Output<List<String>> prefixLists;
  /// The ID of the Local Rulestack on which to create this Prefix List. Changing this forces a new Palo Alto Local Rulestack Prefix List to be created.
  late final pulumi.Output<String> rulestackId;

  /// Creates a new [LocalRulestackPrefixList].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LocalRulestackPrefixList]. {@macro pulumi_paloalto_local_rulestack_prefix_list_local_rulestack_prefix_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LocalRulestackPrefixList(
    String name, {
    LocalRulestackPrefixListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:paloalto/localRulestackPrefixList:LocalRulestackPrefixList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.auditComment = registerOutput<String?>('auditComment');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.prefixLists = registerOutput<List<String>>('prefixLists');
    this.rulestackId = registerOutput<String>('rulestackId');
  }

  /// Gets an existing [LocalRulestackPrefixList] resource's state with the given [name] and [id].
  static LocalRulestackPrefixList get(
    String name,
    pulumi.Input<String> id, {
    LocalRulestackPrefixListState? state,
  }) {
    return LocalRulestackPrefixList._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LocalRulestackPrefixList._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:paloalto/localRulestackPrefixList:LocalRulestackPrefixList',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.auditComment = registerOutput<String?>('auditComment');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.prefixLists = registerOutput<List<String>>('prefixLists');
    this.rulestackId = registerOutput<String>('rulestackId');
  }
}
