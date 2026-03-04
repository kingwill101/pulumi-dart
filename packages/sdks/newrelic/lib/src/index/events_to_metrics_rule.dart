import 'package:pulumi/pulumi.dart' as pulumi;
import 'events_to_metrics_rule_args.dart';
import 'events_to_metrics_rule_state.dart';

/// Use this resource to create, update, and delete New Relic Events to Metrics rules.
///
/// &gt; **IMPORTANT!** Version 2.0.0 of the New Relic Terraform Provider introduces some [additional requirements](https://www.terraform.io/providers/newrelic/newrelic/latest/docs/guides/migration_guide_v2) for configuring the provider.
/// &lt;br&gt;&lt;br&gt;
/// Before upgrading to version 2.0.0 or later, it is recommended to upgrade to the most recent 1.x version of the provider and ensure that your environment successfully runs `pulumi preview` without unexpected changes.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.EventsToMetricsRule("foo", {
///     accountId: "12345",
///     name: "Example events to metrics rule",
///     description: "Example description",
///     nrql: "SELECT uniqueCount(account_id) AS ``Transaction.account_id`` FROM Transaction FACET appName, name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.EventsToMetricsRule("foo",
///     account_id="12345",
///     name="Example events to metrics rule",
///     description="Example description",
///     nrql="SELECT uniqueCount(account_id) AS ``Transaction.account_id`` FROM Transaction FACET appName, name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new NewRelic.EventsToMetricsRule("foo", new()
///     {
///         AccountId = "12345",
///         Name = "Example events to metrics rule",
///         Description = "Example description",
///         Nrql = "SELECT uniqueCount(account_id) AS ``Transaction.account_id`` FROM Transaction FACET appName, name",
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
/// 		_, err := newrelic.NewEventsToMetricsRule(ctx, "foo", &newrelic.EventsToMetricsRuleArgs{
/// 			AccountId:   pulumi.String("12345"),
/// 			Name:        pulumi.String("Example events to metrics rule"),
/// 			Description: pulumi.String("Example description"),
/// 			Nrql:        pulumi.String("SELECT uniqueCount(account_id) AS ``Transaction.account_id`` FROM Transaction FACET appName, name"),
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
/// import com.pulumi.newrelic.EventsToMetricsRule;
/// import com.pulumi.newrelic.EventsToMetricsRuleArgs;
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
///         var foo = new EventsToMetricsRule("foo", EventsToMetricsRuleArgs.builder()
///             .accountId("12345")
///             .name("Example events to metrics rule")
///             .description("Example description")
///             .nrql("SELECT uniqueCount(account_id) AS ``Transaction.account_id`` FROM Transaction FACET appName, name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:EventsToMetricsRule
///     properties:
///       accountId: 12345
///       name: Example events to metrics rule
///       description: Example description
///       nrql: SELECT uniqueCount(account_id) AS ``Transaction.account_id`` FROM Transaction FACET appName, name
/// ```
///
///
/// ## Import
///
/// New Relic Events to Metrics rules can be imported using a concatenated string of the format
/// `&lt;account_id&gt;:&lt;rule_id&gt;`, e.g.
///
/// ```bash
/// $ terraform import newrelic_events_to_metrics_rule.foo 12345:34567
/// ```
class EventsToMetricsRule extends pulumi.CustomResource {
  /// Account with the event and where the metrics will be put.
  late final pulumi.Output<String> accountId;

  /// Provides additional information about the rule.
  late final pulumi.Output<String?> description;

  /// True means this rule is enabled. False means the rule is currently not creating metrics.
  late final pulumi.Output<bool?> enabled;

  /// The name of the rule. This must be unique within an account.
  late final pulumi.Output<String> name;

  /// Explains how to create metrics from events.
  late final pulumi.Output<String> nrql;

  /// The id, uniquely identifying the rule.
  late final pulumi.Output<String> ruleId;

  /// Creates a new [EventsToMetricsRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventsToMetricsRule]. {@macro pulumi_index_events_to_metrics_rule_events_to_metrics_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventsToMetricsRule(
    String name, {
    EventsToMetricsRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'newrelic:index/eventsToMetricsRule:EventsToMetricsRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountId = registerOutput<String>('accountId');
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool?>('enabled');
    this.name = registerOutput<String>('name');
    nrql = registerOutput<String>('nrql');
    ruleId = registerOutput<String>('ruleId');
  }

  /// Gets an existing [EventsToMetricsRule] resource's state with the given [name] and [id].
  static EventsToMetricsRule get(
    String name,
    pulumi.Input<String> id, {
    EventsToMetricsRuleState? state,
  }) {
    return EventsToMetricsRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EventsToMetricsRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'newrelic:index/eventsToMetricsRule:EventsToMetricsRule',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountId = registerOutput<String>('accountId');
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool?>('enabled');
    this.name = registerOutput<String>('name');
    nrql = registerOutput<String>('nrql');
    ruleId = registerOutput<String>('ruleId');
  }
}
