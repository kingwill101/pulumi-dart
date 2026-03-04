import 'package:pulumi/pulumi.dart' as pulumi;
import 'nrql_drop_rule_args.dart';
import 'nrql_drop_rule_state.dart';

/// &gt; **WARNING ⚠️** The resource [`newrelic.NrqlDropRule`](https://www.terraform.io/providers/newrelic/newrelic/latest/docs/resources/nrql_drop_rule) is &lt;b&gt;deprecated&lt;/b&gt; and will be removed on &lt;b&gt;June 30, 2026&lt;/b&gt;. While New Relic has automatically migrated your Drop Rules to Pipeline Cloud Rules upstream, you must update your Terraform configuration to continue managing Drop Rules as Pipeline Cloud Rules, using the &lt;b style="color:green;"&gt;new&lt;/b&gt; [`newrelic.PipelineCloudRule`](https://www.terraform.io/providers/newrelic/newrelic/latest/docs/resources/pipeline_cloud_rule) resource.&lt;br&gt;&lt;br&gt;Please see our [migration guide](https://www.terraform.io/providers/newrelic/newrelic/latest/docs/guides/drop_rules_eol_guide) for instructions on switching to the [`newrelic.PipelineCloudRule`](https://www.terraform.io/providers/newrelic/newrelic/latest/docs/resources/pipeline_cloud_rule) resource.
///
/// Use this resource to create, and delete New Relic NRQL Drop Rules.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.NrqlDropRule("foo", {
///     accountId: "12345",
///     description: "Drops all data for MyCustomEvent that comes from the LoadGeneratingApp in the dev environment, because there is too much and we don’t look at it.",
///     action: "drop_data",
///     nrql: "SELECT * FROM MyCustomEvent WHERE appName='LoadGeneratingApp' AND environment='development'",
/// });
/// const bar = new newrelic.NrqlDropRule("bar", {
///     accountId: "12345",
///     description: "Removes the user name and email fields from MyCustomEvent",
///     action: "drop_attributes",
///     nrql: "SELECT userEmail, userName FROM MyCustomEvent",
/// });
/// const baz = new newrelic.NrqlDropRule("baz", {
///     accountId: "12345",
///     description: "Removes containerId from metric aggregates to reduce metric cardinality.",
///     action: "drop_attributes_from_metric_aggregates",
///     nrql: "SELECT containerId FROM Metric",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.NrqlDropRule("foo",
///     account_id="12345",
///     description="Drops all data for MyCustomEvent that comes from the LoadGeneratingApp in the dev environment, because there is too much and we don’t look at it.",
///     action="drop_data",
///     nrql="SELECT * FROM MyCustomEvent WHERE appName='LoadGeneratingApp' AND environment='development'")
/// bar = newrelic.NrqlDropRule("bar",
///     account_id="12345",
///     description="Removes the user name and email fields from MyCustomEvent",
///     action="drop_attributes",
///     nrql="SELECT userEmail, userName FROM MyCustomEvent")
/// baz = newrelic.NrqlDropRule("baz",
///     account_id="12345",
///     description="Removes containerId from metric aggregates to reduce metric cardinality.",
///     action="drop_attributes_from_metric_aggregates",
///     nrql="SELECT containerId FROM Metric")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new NewRelic.NrqlDropRule("foo", new()
///     {
///         AccountId = "12345",
///         Description = "Drops all data for MyCustomEvent that comes from the LoadGeneratingApp in the dev environment, because there is too much and we don’t look at it.",
///         Action = "drop_data",
///         Nrql = "SELECT * FROM MyCustomEvent WHERE appName='LoadGeneratingApp' AND environment='development'",
///     });
///
///     var bar = new NewRelic.NrqlDropRule("bar", new()
///     {
///         AccountId = "12345",
///         Description = "Removes the user name and email fields from MyCustomEvent",
///         Action = "drop_attributes",
///         Nrql = "SELECT userEmail, userName FROM MyCustomEvent",
///     });
///
///     var baz = new NewRelic.NrqlDropRule("baz", new()
///     {
///         AccountId = "12345",
///         Description = "Removes containerId from metric aggregates to reduce metric cardinality.",
///         Action = "drop_attributes_from_metric_aggregates",
///         Nrql = "SELECT containerId FROM Metric",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-newrelic/sdk/v5/go/newrelic"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := newrelic.NewNrqlDropRule(ctx, "foo", &newrelic.NrqlDropRuleArgs{
/// 			AccountId:   pulumi.String("12345"),
/// 			Description: pulumi.String("Drops all data for MyCustomEvent that comes from the LoadGeneratingApp in the dev environment, because there is too much and we don’t look at it."),
/// 			Action:      pulumi.String("drop_data"),
/// 			Nrql:        pulumi.String("SELECT * FROM MyCustomEvent WHERE appName='LoadGeneratingApp' AND environment='development'"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = newrelic.NewNrqlDropRule(ctx, "bar", &newrelic.NrqlDropRuleArgs{
/// 			AccountId:   pulumi.String("12345"),
/// 			Description: pulumi.String("Removes the user name and email fields from MyCustomEvent"),
/// 			Action:      pulumi.String("drop_attributes"),
/// 			Nrql:        pulumi.String("SELECT userEmail, userName FROM MyCustomEvent"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = newrelic.NewNrqlDropRule(ctx, "baz", &newrelic.NrqlDropRuleArgs{
/// 			AccountId:   pulumi.String("12345"),
/// 			Description: pulumi.String("Removes containerId from metric aggregates to reduce metric cardinality."),
/// 			Action:      pulumi.String("drop_attributes_from_metric_aggregates"),
/// 			Nrql:        pulumi.String("SELECT containerId FROM Metric"),
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
/// import com.pulumi.newrelic.NrqlDropRule;
/// import com.pulumi.newrelic.NrqlDropRuleArgs;
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
///         var foo = new NrqlDropRule("foo", NrqlDropRuleArgs.builder()
///             .accountId("12345")
///             .description("Drops all data for MyCustomEvent that comes from the LoadGeneratingApp in the dev environment, because there is too much and we don’t look at it.")
///             .action("drop_data")
///             .nrql("SELECT * FROM MyCustomEvent WHERE appName='LoadGeneratingApp' AND environment='development'")
///             .build());
///
///         var bar = new NrqlDropRule("bar", NrqlDropRuleArgs.builder()
///             .accountId("12345")
///             .description("Removes the user name and email fields from MyCustomEvent")
///             .action("drop_attributes")
///             .nrql("SELECT userEmail, userName FROM MyCustomEvent")
///             .build());
///
///         var baz = new NrqlDropRule("baz", NrqlDropRuleArgs.builder()
///             .accountId("12345")
///             .description("Removes containerId from metric aggregates to reduce metric cardinality.")
///             .action("drop_attributes_from_metric_aggregates")
///             .nrql("SELECT containerId FROM Metric")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:NrqlDropRule
///     properties:
///       accountId: 12345
///       description: Drops all data for MyCustomEvent that comes from the LoadGeneratingApp in the dev environment, because there is too much and we don’t look at it.
///       action: drop_data
///       nrql: SELECT * FROM MyCustomEvent WHERE appName='LoadGeneratingApp' AND environment='development'
///   bar:
///     type: newrelic:NrqlDropRule
///     properties:
///       accountId: 12345
///       description: Removes the user name and email fields from MyCustomEvent
///       action: drop_attributes
///       nrql: SELECT userEmail, userName FROM MyCustomEvent
///   baz:
///     type: newrelic:NrqlDropRule
///     properties:
///       accountId: 12345
///       description: Removes containerId from metric aggregates to reduce metric cardinality.
///       action: drop_attributes_from_metric_aggregates
///       nrql: SELECT containerId FROM Metric
/// ```
///
///
/// ## ⚠️ Upcoming Drop Rules EOL: Transitioning from NRQL Drop Rules to Pipeline Cloud Rules Managed via Terraform
///
/// The resource [`newrelic.NrqlDropRule`](https://www.terraform.io/providers/newrelic/newrelic/latest/docs/resources/nrql_drop_rule) is &lt;b&gt;deprecated&lt;/b&gt; and will be removed on &lt;b&gt;June 30, 2026&lt;/b&gt;. While New Relic has automatically migrated your Drop Rules to Pipeline Cloud Rules upstream, you must update your Terraform configuration to continue managing Drop Rules as Pipeline Cloud Rules, using the &lt;b style="color:green;"&gt;new&lt;/b&gt; [`newrelic.PipelineCloudRule`](https://www.terraform.io/providers/newrelic/newrelic/latest/docs/resources/pipeline_cloud_rule) resource.&lt;br&gt;&lt;br&gt;Please see our [migration guide](https://www.terraform.io/providers/newrelic/newrelic/latest/docs/guides/drop_rules_eol_guide) for instructions on switching to the [`newrelic.PipelineCloudRule`](https://www.terraform.io/providers/newrelic/newrelic/latest/docs/resources/pipeline_cloud_rule) resource.
///
/// While New Relic has automatically migrated your Drop Rules to Pipeline Cloud Rules upstream, you must update your Terraform configuration to continue managing Drop Rules as Pipeline Cloud Rules, using the &lt;b style="color:green;"&gt;new&lt;/b&gt; [`newrelic.PipelineCloudRule`](https://www.terraform.io/providers/newrelic/newrelic/latest/docs/resources/pipeline_cloud_rule) resource.&lt;br&gt;&lt;br&gt;Please see our [migration guide](https://www.terraform.io/providers/newrelic/newrelic/latest/docs/guides/drop_rules_eol_guide) for instructions on switching to the [`newrelic.PipelineCloudRule`](https://www.terraform.io/providers/newrelic/newrelic/latest/docs/resources/pipeline_cloud_rule) resource.
///
/// ## Using `newrelic-cli` to List Out Drop Rules (Deprecated)
///
/// All NRQL Drop Rules associated with a New Relic account may be listed out using the following newrelic-cli command:
/// ```bash
/// newrelic nrql droprules
/// ```
/// This would print all drop rules associated with your New Relic account to the terminal.
/// The number of rules to be printed can be customized using the `limit` argument of this command.
/// For instance, the following command limits the number of drop rules printed to two.
/// ```bash
/// newrelic nrql droprules --limit 2
/// ```
/// More details on the command and its arguments (for instance, the format in which the droprules are to be listed in the terminal, which is JSON by default) can be found in the output of the `newrelic nrql droprules --help` command.
/// If you do not have **newrelic-cli** installed on your device already, head over to [this page](https://github.com/newrelic/newrelic-cli#installation--upgrades) for instructions.
///
/// ## Import
///
/// New Relic NRQL drop rules can be imported using a concatenated string of the format
/// `&lt;account_id&gt;:&lt;rule_id&gt;`, e.g.
///
/// ```bash
/// $ terraform import newrelic_nrql_drop_rule.foo 12345:34567
/// ```
class NrqlDropRule extends pulumi.CustomResource {
  /// Account where the drop rule will be put. Defaults to the account associated with the API key used.
  late final pulumi.Output<String> accountId;

  /// An action type specifying how to apply the NRQL string (either `drop_data`, `drop_attributes`, or ` drop_attributes_from_metric_aggregates`).
  late final pulumi.Output<String> action;

  /// The description of the drop rule.
  late final pulumi.Output<String?> description;

  /// A NRQL string that specifies what data types to drop.
  late final pulumi.Output<String> nrql;

  /// The ID (GUID) of the corresponding Pipeline Cloud Rule, (migrated upstream by New Relic, in light of the upcoming EOL, as stated in the Deprecation Warning above). This can be used to import the corresponding Pipeline Cloud Rule as a [`newrelic.PipelineCloudRule`](https://www.terraform.io/providers/newrelic/newrelic/latest/docs/resources/pipeline_cloud_rule) resource, as explained in our Drop Rules EOL Migration Guide.
  late final pulumi.Output<String> pipelineCloudRuleEntityId;

  /// The id, uniquely identifying the rule.
  late final pulumi.Output<String> ruleId;

  /// Creates a new [NrqlDropRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NrqlDropRule]. {@macro pulumi_index_nrql_drop_rule_nrql_drop_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NrqlDropRule(
    String name, {
    NrqlDropRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'newrelic:index/nrqlDropRule:NrqlDropRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountId = registerOutput<String>('accountId');
    action = registerOutput<String>('action');
    description = registerOutput<String?>('description');
    nrql = registerOutput<String>('nrql');
    pipelineCloudRuleEntityId = registerOutput<String>(
      'pipelineCloudRuleEntityId',
    );
    ruleId = registerOutput<String>('ruleId');
  }

  /// Gets an existing [NrqlDropRule] resource's state with the given [name] and [id].
  static NrqlDropRule get(
    String name,
    pulumi.Input<String> id, {
    NrqlDropRuleState? state,
  }) {
    return NrqlDropRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NrqlDropRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'newrelic:index/nrqlDropRule:NrqlDropRule',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountId = registerOutput<String>('accountId');
    action = registerOutput<String>('action');
    description = registerOutput<String?>('description');
    nrql = registerOutput<String>('nrql');
    pipelineCloudRuleEntityId = registerOutput<String>(
      'pipelineCloudRuleEntityId',
    );
    ruleId = registerOutput<String>('ruleId');
  }
}
