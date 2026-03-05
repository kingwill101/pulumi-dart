import 'package:pulumi/pulumi.dart' as pulumi;
import 'local_rulestack_rule_args.dart';
import 'local_rulestack_rule_category.dart';
import 'local_rulestack_rule_destination.dart';
import 'local_rulestack_rule_source.dart';
import 'local_rulestack_rule_state.dart';

/// Manages a Palo Alto Local Rulestack Rule.
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
///     name: "lrs-example",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const exampleLocalRulestackRule = new azure.paloalto.LocalRulestackRule("example", {
///     name: "example-rule",
///     rulestackId: exampleLocalRulestack.id,
///     priority: 1000,
///     action: "Allow",
///     protocol: "application-default",
///     applications: ["any"],
///     source: {
///         cidrs: ["10.0.0.0/8"],
///     },
///     destination: {
///         cidrs: ["192.168.16.0/24"],
///     },
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
///     name="lrs-example",
///     resource_group_name=example.name,
///     location=example.location)
/// example_local_rulestack_rule = azure.paloalto.LocalRulestackRule("example",
///     name="example-rule",
///     rulestack_id=example_local_rulestack.id,
///     priority=1000,
///     action="Allow",
///     protocol="application-default",
///     applications=["any"],
///     source={
///         "cidrs": ["10.0.0.0/8"],
///     },
///     destination={
///         "cidrs": ["192.168.16.0/24"],
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
///         Name = "rg-example",
///         Location = "West Europe",
///     });
///
///     var exampleLocalRulestack = new Azure.PaloAlto.LocalRulestack("example", new()
///     {
///         Name = "lrs-example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var exampleLocalRulestackRule = new Azure.PaloAlto.LocalRulestackRule("example", new()
///     {
///         Name = "example-rule",
///         RulestackId = exampleLocalRulestack.Id,
///         Priority = 1000,
///         Action = "Allow",
///         Protocol = "application-default",
///         Applications = new[]
///         {
///             "any",
///         },
///         Source = new Azure.PaloAlto.Inputs.LocalRulestackRuleSourceArgs
///         {
///             Cidrs = new[]
///             {
///                 "10.0.0.0/8",
///             },
///         },
///         Destination = new Azure.PaloAlto.Inputs.LocalRulestackRuleDestinationArgs
///         {
///             Cidrs = new[]
///             {
///                 "192.168.16.0/24",
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
/// 			Name:              pulumi.String("lrs-example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = paloalto.NewLocalRulestackRule(ctx, "example", &paloalto.LocalRulestackRuleArgs{
/// 			Name:        pulumi.String("example-rule"),
/// 			RulestackId: exampleLocalRulestack.ID(),
/// 			Priority:    pulumi.Int(1000),
/// 			Action:      pulumi.String("Allow"),
/// 			Protocol:    pulumi.String("application-default"),
/// 			Applications: pulumi.StringArray{
/// 				pulumi.String("any"),
/// 			},
/// 			Source: &paloalto.LocalRulestackRuleSourceArgs{
/// 				Cidrs: pulumi.StringArray{
/// 					pulumi.String("10.0.0.0/8"),
/// 				},
/// 			},
/// 			Destination: &paloalto.LocalRulestackRuleDestinationArgs{
/// 				Cidrs: pulumi.StringArray{
/// 					pulumi.String("192.168.16.0/24"),
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
/// import com.pulumi.azure.paloalto.LocalRulestack;
/// import com.pulumi.azure.paloalto.LocalRulestackArgs;
/// import com.pulumi.azure.paloalto.LocalRulestackRule;
/// import com.pulumi.azure.paloalto.LocalRulestackRuleArgs;
/// import com.pulumi.azure.paloalto.inputs.LocalRulestackRuleSourceArgs;
/// import com.pulumi.azure.paloalto.inputs.LocalRulestackRuleDestinationArgs;
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
///             .name("lrs-example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var exampleLocalRulestackRule = new LocalRulestackRule("exampleLocalRulestackRule", LocalRulestackRuleArgs.builder()
///             .name("example-rule")
///             .rulestackId(exampleLocalRulestack.id())
///             .priority(1000)
///             .action("Allow")
///             .protocol("application-default")
///             .applications("any")
///             .source(LocalRulestackRuleSourceArgs.builder()
///                 .cidrs("10.0.0.0/8")
///                 .build())
///             .destination(LocalRulestackRuleDestinationArgs.builder()
///                 .cidrs("192.168.16.0/24")
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
///       name: rg-example
///       location: West Europe
///   exampleLocalRulestack:
///     type: azure:paloalto:LocalRulestack
///     name: example
///     properties:
///       name: lrs-example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   exampleLocalRulestackRule:
///     type: azure:paloalto:LocalRulestackRule
///     name: example
///     properties:
///       name: example-rule
///       rulestackId: ${exampleLocalRulestack.id}
///       priority: 1000
///       action: Allow
///       protocol: application-default
///       applications:
///         - any
///       source:
///         cidrs:
///           - 10.0.0.0/8
///       destination:
///         cidrs:
///           - 192.168.16.0/24
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
/// Palo Alto Local Rulestack Rules can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:paloalto/localRulestackRule:LocalRulestackRule example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/PaloAltoNetworks.Cloudngfw/localRulestacks/myLocalRulestack/localRules/myRule1
/// ```
class LocalRulestackRule extends pulumi.CustomResource {
  /// The action to take on the rule being triggered. Possible values are `Allow`, `DenyResetBoth`, `DenyResetServer` and `DenySilent`.
  late final pulumi.Output<String> action;

  /// Specifies a list of Applications.
  late final pulumi.Output<List<String>> applications;

  /// The comment for Audit purposes.
  late final pulumi.Output<String?> auditComment;

  /// A `category` block as defined below.
  late final pulumi.Output<LocalRulestackRuleCategory?> category;

  /// The type of Decryption to perform on the rule. Possible values include `SSLInboundInspection`, `SSLOutboundInspection`, and `None`. Defaults to `None`.
  late final pulumi.Output<String?> decryptionRuleType;

  /// The description for the rule.
  late final pulumi.Output<String?> description;

  /// One or more `destination` blocks as defined below.
  late final pulumi.Output<LocalRulestackRuleDestination> destination;

  /// Should this Rule be enabled? Defaults to `true`.
  late final pulumi.Output<bool?> enabled;

  /// The ID of the certificate for inbound inspection. Only valid when `decryption_rule_type` is set to `SSLInboundInspection`.
  late final pulumi.Output<String?> inspectionCertificateId;

  /// Should Logging be enabled? Defaults to `false`.
  late final pulumi.Output<bool?> loggingEnabled;

  /// The name which should be used for this Palo Alto Local Rulestack Rule.
  late final pulumi.Output<String> name;

  /// Should the inverse of the Destination configuration be used. Defaults to `false`.
  late final pulumi.Output<bool?> negateDestination;

  /// Should the inverse of the Source configuration be used. Defaults to `false`.
  late final pulumi.Output<bool?> negateSource;

  /// The Priority of this rule. Rules are executed in numerical order. Possible values are between 1 and 1000000. Changing this forces a new Palo Alto Local Rulestack Rule to be created.
  ///
  /// &gt; **Note:** This is the primary identifier of a rule, as such it is not possible to change the Priority of a rule once created.
  late final pulumi.Output<int> priority;

  /// The Protocol and port to use in the form `[protocol]:[port_number]` e.g. `TCP:8080` or `UDP:53`. Conflicts with `protocol_ports`.
  ///
  /// &gt; **Note:** In 4.0 or later versions, the default of `protocol` will no longer be set by provider, exactly one of `protocol` and `protocol_ports` must be specified. You need to explicitly specify `protocol="application-default"` to keep the the current default of the `protocol`.
  late final pulumi.Output<String?> protocol;

  /// Specifies a list of Protocol:Port entries. E.g. `[ "TCP:80", "UDP:5431" ]`. Conflicts with `protocol`.
  late final pulumi.Output<List<String>?> protocolPorts;

  /// The ID of the Local Rulestack in which to create this Rule. Changing this forces a new Palo Alto Local Rulestack Rule to be created.
  late final pulumi.Output<String> rulestackId;

  /// One or more `source` blocks as defined below.
  late final pulumi.Output<LocalRulestackRuleSource> source;

  /// A mapping of tags which should be assigned to the Palo Alto Local Rulestack Rule.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [LocalRulestackRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LocalRulestackRule]. {@macro pulumi_paloalto_local_rulestack_rule_local_rulestack_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LocalRulestackRule(
    String name, {
    LocalRulestackRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:paloalto/localRulestackRule:LocalRulestackRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    action = registerOutput<String>('action');
    applications = registerOutput<List<String>>('applications');
    auditComment = registerOutput<String?>('auditComment');
    category = registerOutput<LocalRulestackRuleCategory?>(
      'category',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LocalRulestackRuleCategory.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    decryptionRuleType = registerOutput<String?>('decryptionRuleType');
    description = registerOutput<String?>('description');
    destination = registerOutput<LocalRulestackRuleDestination>(
      'destination',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LocalRulestackRuleDestination.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    enabled = registerOutput<bool?>('enabled');
    inspectionCertificateId = registerOutput<String?>(
      'inspectionCertificateId',
    );
    loggingEnabled = registerOutput<bool?>('loggingEnabled');
    this.name = registerOutput<String>('name');
    negateDestination = registerOutput<bool?>('negateDestination');
    negateSource = registerOutput<bool?>('negateSource');
    priority = registerOutput<int>('priority');
    protocol = registerOutput<String?>('protocol');
    protocolPorts = registerOutput<List<String>?>('protocolPorts');
    rulestackId = registerOutput<String>('rulestackId');
    source = registerOutput<LocalRulestackRuleSource>(
      'source',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LocalRulestackRuleSource.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [LocalRulestackRule] resource's state with the given [name] and [id].
  static LocalRulestackRule get(
    String name,
    pulumi.Input<String> id, {
    LocalRulestackRuleState? state,
  }) {
    return LocalRulestackRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LocalRulestackRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:paloalto/localRulestackRule:LocalRulestackRule',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    action = registerOutput<String>('action');
    applications = registerOutput<List<String>>('applications');
    auditComment = registerOutput<String?>('auditComment');
    category = registerOutput<LocalRulestackRuleCategory?>(
      'category',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LocalRulestackRuleCategory.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    decryptionRuleType = registerOutput<String?>('decryptionRuleType');
    description = registerOutput<String?>('description');
    destination = registerOutput<LocalRulestackRuleDestination>(
      'destination',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LocalRulestackRuleDestination.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    enabled = registerOutput<bool?>('enabled');
    inspectionCertificateId = registerOutput<String?>(
      'inspectionCertificateId',
    );
    loggingEnabled = registerOutput<bool?>('loggingEnabled');
    this.name = registerOutput<String>('name');
    negateDestination = registerOutput<bool?>('negateDestination');
    negateSource = registerOutput<bool?>('negateSource');
    priority = registerOutput<int>('priority');
    protocol = registerOutput<String?>('protocol');
    protocolPorts = registerOutput<List<String>?>('protocolPorts');
    rulestackId = registerOutput<String>('rulestackId');
    source = registerOutput<LocalRulestackRuleSource>(
      'source',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return LocalRulestackRuleSource.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
