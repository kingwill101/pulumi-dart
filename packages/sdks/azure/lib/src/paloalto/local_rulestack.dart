import 'package:pulumi/pulumi.dart' as pulumi;
import 'local_rulestack_args.dart';
import 'local_rulestack_state.dart';

/// Manages a Palo Alto Networks Rulestack.
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
/// 		_, err = paloalto.NewLocalRulestack(ctx, "example", &paloalto.LocalRulestackArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
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
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `PaloAltoNetworks.Cloudngfw` - 2022-08-29
///
/// ## Import
///
/// Palo Alto Networks Rulestacks can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:paloalto/localRulestack:LocalRulestack example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/PaloAltoNetworks.Cloudngfw/localRulestacks/myLocalRulestack
/// ```
class LocalRulestack extends pulumi.CustomResource {
  /// The setting to use for Anti-Spyware. Possible values include `BestPractice`, and `Custom`.
  late final pulumi.Output<String?> antiSpywareProfile;

  /// The setting to use for Anti-Virus. Possible values include `BestPractice`, and `Custom`.
  late final pulumi.Output<String?> antiVirusProfile;

  /// The description for this Local Rulestack.
  late final pulumi.Output<String?> description;

  /// TThe setting to use for DNS Subscription. Possible values include `BestPractice`, and `Custom`.
  late final pulumi.Output<String?> dnsSubscription;

  /// The setting to use for the File Blocking Profile. Possible values include `BestPractice`, and `Custom`.
  late final pulumi.Output<String?> fileBlockingProfile;

  /// The Azure Region where the Palo Alto Networks Rulestack should exist. Changing this forces a new Palo Alto Networks Rulestack to be created.
  late final pulumi.Output<String> location;

  /// The name which should be used for this Palo Alto Networks Rulestack. Changing this forces a new Palo Alto Networks Rulestack to be created.
  late final pulumi.Output<String> name;

  /// The name of the Resource Group where the Palo Alto Networks Rulestack should exist. Changing this forces a new Palo Alto Networks Rulestack to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// The setting to use for the URL Filtering Profile. Possible values include `BestPractice`, and `Custom`.
  late final pulumi.Output<String?> urlFilteringProfile;

  /// The setting to use for the Vulnerability Profile. Possible values include `BestPractice`, and `Custom`.
  late final pulumi.Output<String?> vulnerabilityProfile;

  /// Creates a new [LocalRulestack].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LocalRulestack]. {@macro pulumi_paloalto_local_rulestack_local_rulestack_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LocalRulestack(
    String name, {
    LocalRulestackArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:paloalto/localRulestack:LocalRulestack',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    antiSpywareProfile = registerOutput<String?>('antiSpywareProfile');
    antiVirusProfile = registerOutput<String?>('antiVirusProfile');
    description = registerOutput<String?>('description');
    dnsSubscription = registerOutput<String?>('dnsSubscription');
    fileBlockingProfile = registerOutput<String?>('fileBlockingProfile');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    urlFilteringProfile = registerOutput<String?>('urlFilteringProfile');
    vulnerabilityProfile = registerOutput<String?>('vulnerabilityProfile');
  }

  /// Gets an existing [LocalRulestack] resource's state with the given [name] and [id].
  static LocalRulestack get(
    String name,
    pulumi.Input<String> id, {
    LocalRulestackState? state,
  }) {
    return LocalRulestack._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LocalRulestack._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:paloalto/localRulestack:LocalRulestack',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    antiSpywareProfile = registerOutput<String?>('antiSpywareProfile');
    antiVirusProfile = registerOutput<String?>('antiVirusProfile');
    description = registerOutput<String?>('description');
    dnsSubscription = registerOutput<String?>('dnsSubscription');
    fileBlockingProfile = registerOutput<String?>('fileBlockingProfile');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    urlFilteringProfile = registerOutput<String?>('urlFilteringProfile');
    vulnerabilityProfile = registerOutput<String?>('vulnerabilityProfile');
  }
}
