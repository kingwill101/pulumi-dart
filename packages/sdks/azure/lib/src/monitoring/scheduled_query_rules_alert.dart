import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_query_rules_alert_action.dart';
import 'scheduled_query_rules_alert_args.dart';
import 'scheduled_query_rules_alert_state.dart';
import 'scheduled_query_rules_alert_trigger.dart';

/// Manages an AlertingAction Scheduled Query Rules resource within Azure Monitor.
///
/// &gt; **Note:** This resource is using an older AzureRM API version which is known to cause problems e.g. with custom webhook properties not included in triggered alerts. This resource is superseded by the azure.monitoring.ScheduledQueryRulesAlertV2 resource using newer API versions.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as std from "@pulumi/std";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "monitoring-resources",
///     location: "West Europe",
/// });
/// const exampleInsights = new azure.appinsights.Insights("example", {
///     name: "appinsights",
///     location: example.location,
///     resourceGroupName: example.name,
///     applicationType: "web",
/// });
/// const example2 = new azure.appinsights.Insights("example2", {
///     name: "appinsights2",
///     location: example.location,
///     resourceGroupName: example.name,
///     applicationType: "web",
/// });
/// // Example: Alerting Action with result count trigger
/// const exampleScheduledQueryRulesAlert = new azure.monitoring.ScheduledQueryRulesAlert("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
///     action: {
///         actionGroups: [],
///         emailSubject: "Email Header",
///         customWebhookPayload: "{}",
///     },
///     dataSourceId: exampleInsights.id,
///     description: "Alert when total results cross threshold",
///     enabled: true,
///     query: `requests
///   | where tolong(resultCode) >= 500
///   | summarize count() by bin(timestamp, 5m)
/// `,
///     severity: 1,
///     frequency: 5,
///     timeWindow: 30,
///     trigger: {
///         operator: "GreaterThan",
///         threshold: 3,
///     },
///     tags: {
///         foo: "bar",
///     },
/// });
/// // Example: Alerting Action Cross-Resource
/// const example2ScheduledQueryRulesAlert = new azure.monitoring.ScheduledQueryRulesAlert("example2", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
///     authorizedResourceIds: [example2.id],
///     action: {
///         actionGroups: [],
///         emailSubject: "Email Header",
///         customWebhookPayload: "{}",
///     },
///     dataSourceId: exampleInsights.id,
///     description: "Query may access data within multiple resources",
///     enabled: true,
///     query: std.format({
///         input: `let a=requests
///   | where toint(resultCode) >= 500
///   | extend fail=1; let b=app('%s').requests
///   | where toint(resultCode) >= 500 | extend fail=1; a
///   | join b on fail
/// `,
///         args: [example2.id],
///     }).then(invoke => invoke.result),
///     severity: 1,
///     frequency: 5,
///     timeWindow: 30,
///     trigger: {
///         operator: "GreaterThan",
///         threshold: 3,
///     },
///     tags: {
///         foo: "bar",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_std as std
///
/// example = azure.core.ResourceGroup("example",
///     name="monitoring-resources",
///     location="West Europe")
/// example_insights = azure.appinsights.Insights("example",
///     name="appinsights",
///     location=example.location,
///     resource_group_name=example.name,
///     application_type="web")
/// example2 = azure.appinsights.Insights("example2",
///     name="appinsights2",
///     location=example.location,
///     resource_group_name=example.name,
///     application_type="web")
/// # Example: Alerting Action with result count trigger
/// example_scheduled_query_rules_alert = azure.monitoring.ScheduledQueryRulesAlert("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name,
///     action={
///         "action_groups": [],
///         "email_subject": "Email Header",
///         "custom_webhook_payload": "{}",
///     },
///     data_source_id=example_insights.id,
///     description="Alert when total results cross threshold",
///     enabled=True,
///     query="""requests
///   | where tolong(resultCode) >= 500
///   | summarize count() by bin(timestamp, 5m)
/// """,
///     severity=1,
///     frequency=5,
///     time_window=30,
///     trigger={
///         "operator": "GreaterThan",
///         "threshold": 3,
///     },
///     tags={
///         "foo": "bar",
///     })
/// # Example: Alerting Action Cross-Resource
/// example2_scheduled_query_rules_alert = azure.monitoring.ScheduledQueryRulesAlert("example2",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name,
///     authorized_resource_ids=[example2.id],
///     action={
///         "action_groups": [],
///         "email_subject": "Email Header",
///         "custom_webhook_payload": "{}",
///     },
///     data_source_id=example_insights.id,
///     description="Query may access data within multiple resources",
///     enabled=True,
///     query=std.format(input="""let a=requests
///   | where toint(resultCode) >= 500
///   | extend fail=1; let b=app('%s').requests
///   | where toint(resultCode) >= 500 | extend fail=1; a
///   | join b on fail
/// """,
///         args=[example2.id]).result,
///     severity=1,
///     frequency=5,
///     time_window=30,
///     trigger={
///         "operator": "GreaterThan",
///         "threshold": 3,
///     },
///     tags={
///         "foo": "bar",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "monitoring-resources",
///         Location = "West Europe",
///     });
///
///     var exampleInsights = new Azure.AppInsights.Insights("example", new()
///     {
///         Name = "appinsights",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         ApplicationType = "web",
///     });
///
///     var example2 = new Azure.AppInsights.Insights("example2", new()
///     {
///         Name = "appinsights2",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         ApplicationType = "web",
///     });
///
///     // Example: Alerting Action with result count trigger
///     var exampleScheduledQueryRulesAlert = new Azure.Monitoring.ScheduledQueryRulesAlert("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Action = new Azure.Monitoring.Inputs.ScheduledQueryRulesAlertActionArgs
///         {
///             ActionGroups = new() { },
///             EmailSubject = "Email Header",
///             CustomWebhookPayload = "{}",
///         },
///         DataSourceId = exampleInsights.Id,
///         Description = "Alert when total results cross threshold",
///         Enabled = true,
///         Query = @"requests
///   | where tolong(resultCode) >= 500
///   | summarize count() by bin(timestamp, 5m)
/// ",
///         Severity = 1,
///         Frequency = 5,
///         TimeWindow = 30,
///         Trigger = new Azure.Monitoring.Inputs.ScheduledQueryRulesAlertTriggerArgs
///         {
///             Operator = "GreaterThan",
///             Threshold = 3,
///         },
///         Tags =
///         {
///             { "foo", "bar" },
///         },
///     });
///
///     // Example: Alerting Action Cross-Resource
///     var example2ScheduledQueryRulesAlert = new Azure.Monitoring.ScheduledQueryRulesAlert("example2", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AuthorizedResourceIds = new[]
///         {
///             example2.Id,
///         },
///         Action = new Azure.Monitoring.Inputs.ScheduledQueryRulesAlertActionArgs
///         {
///             ActionGroups = new() { },
///             EmailSubject = "Email Header",
///             CustomWebhookPayload = "{}",
///         },
///         DataSourceId = exampleInsights.Id,
///         Description = "Query may access data within multiple resources",
///         Enabled = true,
///         Query = Std.Format.Invoke(new()
///         {
///             Input = @"let a=requests
///   | where toint(resultCode) >= 500
///   | extend fail=1; let b=app('%s').requests
///   | where toint(resultCode) >= 500 | extend fail=1; a
///   | join b on fail
/// ",
///             Args = new[]
///             {
///                 example2.Id,
///             },
///         }).Apply(invoke => invoke.Result),
///         Severity = 1,
///         Frequency = 5,
///         TimeWindow = 30,
///         Trigger = new Azure.Monitoring.Inputs.ScheduledQueryRulesAlertTriggerArgs
///         {
///             Operator = "GreaterThan",
///             Threshold = 3,
///         },
///         Tags =
///         {
///             { "foo", "bar" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/appinsights"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/monitoring"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("monitoring-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleInsights, err := appinsights.NewInsights(ctx, "example", &appinsights.InsightsArgs{
/// 			Name:              pulumi.String("appinsights"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			ApplicationType:   pulumi.String("web"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example2, err := appinsights.NewInsights(ctx, "example2", &appinsights.InsightsArgs{
/// 			Name:              pulumi.String("appinsights2"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			ApplicationType:   pulumi.String("web"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Example: Alerting Action with result count trigger
/// 		_, err = monitoring.NewScheduledQueryRulesAlert(ctx, "example", &monitoring.ScheduledQueryRulesAlertArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Action: &monitoring.ScheduledQueryRulesAlertActionArgs{
/// 				ActionGroups:         pulumi.StringArray{},
/// 				EmailSubject:         pulumi.String("Email Header"),
/// 				CustomWebhookPayload: pulumi.String("{}"),
/// 			},
/// 			DataSourceId: exampleInsights.ID(),
/// 			Description:  pulumi.String("Alert when total results cross threshold"),
/// 			Enabled:      pulumi.Bool(true),
/// 			Query:        pulumi.String("requests\n  | where tolong(resultCode) >= 500\n  | summarize count() by bin(timestamp, 5m)\n"),
/// 			Severity:     pulumi.Int(1),
/// 			Frequency:    pulumi.Int(5),
/// 			TimeWindow:   pulumi.Int(30),
/// 			Trigger: &monitoring.ScheduledQueryRulesAlertTriggerArgs{
/// 				Operator:  pulumi.String("GreaterThan"),
/// 				Threshold: pulumi.Float64(3),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: `let a=requests
///   | where toint(resultCode) >= 500
///   | extend fail=1; let b=app('%s').requests
///   | where toint(resultCode) >= 500 | extend fail=1; a
///   | join b on fail
/// `,
/// 			Args: pulumi.StringArray{
/// 				example2.ID(),
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Example: Alerting Action Cross-Resource
/// 		_, err = monitoring.NewScheduledQueryRulesAlert(ctx, "example2", &monitoring.ScheduledQueryRulesAlertArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AuthorizedResourceIds: pulumi.StringArray{
/// 				example2.ID(),
/// 			},
/// 			Action: &monitoring.ScheduledQueryRulesAlertActionArgs{
/// 				ActionGroups:         pulumi.StringArray{},
/// 				EmailSubject:         pulumi.String("Email Header"),
/// 				CustomWebhookPayload: pulumi.String("{}"),
/// 			},
/// 			DataSourceId: exampleInsights.ID(),
/// 			Description:  pulumi.String("Query may access data within multiple resources"),
/// 			Enabled:      pulumi.Bool(true),
/// 			Query:        pulumi.String(invokeFormat.Result),
/// 			Severity:     pulumi.Int(1),
/// 			Frequency:    pulumi.Int(5),
/// 			TimeWindow:   pulumi.Int(30),
/// 			Trigger: &monitoring.ScheduledQueryRulesAlertTriggerArgs{
/// 				Operator:  pulumi.String("GreaterThan"),
/// 				Threshold: pulumi.Float64(3),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
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
/// import com.pulumi.azure.appinsights.Insights;
/// import com.pulumi.azure.appinsights.InsightsArgs;
/// import com.pulumi.azure.monitoring.ScheduledQueryRulesAlert;
/// import com.pulumi.azure.monitoring.ScheduledQueryRulesAlertArgs;
/// import com.pulumi.azure.monitoring.inputs.ScheduledQueryRulesAlertActionArgs;
/// import com.pulumi.azure.monitoring.inputs.ScheduledQueryRulesAlertTriggerArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FormatArgs;
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
///             .name("monitoring-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleInsights = new Insights("exampleInsights", InsightsArgs.builder()
///             .name("appinsights")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .applicationType("web")
///             .build());
///
///         var example2 = new Insights("example2", InsightsArgs.builder()
///             .name("appinsights2")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .applicationType("web")
///             .build());
///
///         // Example: Alerting Action with result count trigger
///         var exampleScheduledQueryRulesAlert = new ScheduledQueryRulesAlert("exampleScheduledQueryRulesAlert", ScheduledQueryRulesAlertArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .action(ScheduledQueryRulesAlertActionArgs.builder()
///                 .actionGroups()
///                 .emailSubject("Email Header")
///                 .customWebhookPayload("{}")
///                 .build())
///             .dataSourceId(exampleInsights.id())
///             .description("Alert when total results cross threshold")
///             .enabled(true)
///             .query("""
/// requests
///   | where tolong(resultCode) >= 500
///   | summarize count() by bin(timestamp, 5m)
///             """)
///             .severity(1)
///             .frequency(5)
///             .timeWindow(30)
///             .trigger(ScheduledQueryRulesAlertTriggerArgs.builder()
///                 .operator("GreaterThan")
///                 .threshold(3.0)
///                 .build())
///             .tags(Map.of("foo", "bar"))
///             .build());
///
///         // Example: Alerting Action Cross-Resource
///         var example2ScheduledQueryRulesAlert = new ScheduledQueryRulesAlert("example2ScheduledQueryRulesAlert", ScheduledQueryRulesAlertArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .authorizedResourceIds(example2.id())
///             .action(ScheduledQueryRulesAlertActionArgs.builder()
///                 .actionGroups()
///                 .emailSubject("Email Header")
///                 .customWebhookPayload("{}")
///                 .build())
///             .dataSourceId(exampleInsights.id())
///             .description("Query may access data within multiple resources")
///             .enabled(true)
///             .query(StdFunctions.format(FormatArgs.builder()
///                 .input("""
/// let a=requests
///   | where toint(resultCode) >= 500
///   | extend fail=1; let b=app('%s').requests
///   | where toint(resultCode) >= 500 | extend fail=1; a
///   | join b on fail
///                 """)
///                 .args(example2.id())
///                 .build()).result())
///             .severity(1)
///             .frequency(5)
///             .timeWindow(30)
///             .trigger(ScheduledQueryRulesAlertTriggerArgs.builder()
///                 .operator("GreaterThan")
///                 .threshold(3.0)
///                 .build())
///             .tags(Map.of("foo", "bar"))
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
///       name: monitoring-resources
///       location: West Europe
///   exampleInsights:
///     type: azure:appinsights:Insights
///     name: example
///     properties:
///       name: appinsights
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       applicationType: web
///   example2:
///     type: azure:appinsights:Insights
///     properties:
///       name: appinsights2
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       applicationType: web
///   # Example: Alerting Action with result count trigger
///   exampleScheduledQueryRulesAlert:
///     type: azure:monitoring:ScheduledQueryRulesAlert
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       action:
///         actionGroups: []
///         emailSubject: Email Header
///         customWebhookPayload: '{}'
///       dataSourceId: ${exampleInsights.id}
///       description: Alert when total results cross threshold
///       enabled: true # Count all requests with server error result code grouped into 5-minute bins
///       query: |
///         requests
///           | where tolong(resultCode) >= 500
///           | summarize count() by bin(timestamp, 5m)
///       severity: 1
///       frequency: 5
///       timeWindow: 30
///       trigger:
///         operator: GreaterThan
///         threshold: 3
///       tags:
///         foo: bar
///   # Example: Alerting Action Cross-Resource
///   example2ScheduledQueryRulesAlert:
///     type: azure:monitoring:ScheduledQueryRulesAlert
///     name: example2
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       authorizedResourceIds:
///         - ${example2.id}
///       action:
///         actionGroups: []
///         emailSubject: Email Header
///         customWebhookPayload: '{}'
///       dataSourceId: ${exampleInsights.id}
///       description: Query may access data within multiple resources
///       enabled: true # Count requests in multiple log resources and group into 5-minute bins by HTTP operation
///       query:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: |
///               let a=requests
///                 | where toint(resultCode) >= 500
///                 | extend fail=1; let b=app('%s').requests
///                 | where toint(resultCode) >= 500 | extend fail=1; a
///                 | join b on fail
///             args:
///               - ${example2.id}
///           return: result
///       severity: 1
///       frequency: 5
///       timeWindow: 30
///       trigger:
///         operator: GreaterThan
///         threshold: 3
///       tags:
///         foo: bar
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Insights` - 2018-04-16
///
/// ## Import
///
/// Scheduled Query Rule Alerts can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:monitoring/scheduledQueryRulesAlert:ScheduledQueryRulesAlert example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Insights/scheduledQueryRules/myrulename
/// ```
class ScheduledQueryRulesAlert extends pulumi.CustomResource {
  /// An `action` block as defined below.
  late final pulumi.Output<ScheduledQueryRulesAlertAction> action;
  /// List of Resource IDs referred into query.
  late final pulumi.Output<List<String>?> authorizedResourceIds;
  /// Should the alerts in this Metric Alert be auto resolved? Defaults to `false`.
  /// &gt; **Note:** `auto_mitigation_enabled` and `throttling` are mutually exclusive and cannot both be set.
  late final pulumi.Output<bool?> autoMitigationEnabled;
  /// The resource URI over which log search query is to be run. Changing this forces a new resource to be created.
  late final pulumi.Output<String> dataSourceId;
  /// The description of the scheduled query rule.
  late final pulumi.Output<String?> description;
  /// Whether this scheduled query rule is enabled. Default is `true`.
  late final pulumi.Output<bool?> enabled;
  /// Frequency (in minutes) at which rule condition should be evaluated. Values must be between 5 and 1440 (inclusive).
  late final pulumi.Output<int> frequency;
  /// Specifies the Azure Region where the resource should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name of the scheduled query rule. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Log search query.
  late final pulumi.Output<String> query;
  /// The type of query results. Possible values are `ResultCount` and `Number`. Default is `ResultCount`. If set to `ResultCount`, `query` must include an `AggregatedValue` column of a numeric type, for example, `Heartbeat | summarize AggregatedValue = count() by bin(TimeGenerated, 5m)`.
  late final pulumi.Output<String?> queryType;
  /// The name of the resource group in which to create the scheduled query rule instance. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Severity of the alert. Possible values include: 0, 1, 2, 3, or 4.
  late final pulumi.Output<int?> severity;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Time (in minutes) for which Alerts should be throttled or suppressed. Values must be between 0 and 10000 (inclusive).
  late final pulumi.Output<int?> throttling;
  /// Time window for which data needs to be fetched for query (must be greater than or equal to `frequency`). Values must be between 5 and 2880 (inclusive).
  late final pulumi.Output<int> timeWindow;
  /// A `trigger` block as defined below.
  late final pulumi.Output<ScheduledQueryRulesAlertTrigger> trigger;

  /// Creates a new [ScheduledQueryRulesAlert].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ScheduledQueryRulesAlert]. {@macro pulumi_monitoring_scheduled_query_rules_alert_scheduled_query_rules_alert_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ScheduledQueryRulesAlert(
    String name, {
    ScheduledQueryRulesAlertArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:monitoring/scheduledQueryRulesAlert:ScheduledQueryRulesAlert',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    action = registerOutput<ScheduledQueryRulesAlertAction>('action', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScheduledQueryRulesAlertAction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    authorizedResourceIds = registerOutput<List<String>?>('authorizedResourceIds');
    autoMitigationEnabled = registerOutput<bool?>('autoMitigationEnabled');
    dataSourceId = registerOutput<String>('dataSourceId');
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool?>('enabled');
    frequency = registerOutput<int>('frequency');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    query = registerOutput<String>('query');
    queryType = registerOutput<String?>('queryType');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    severity = registerOutput<int?>('severity');
    tags = registerOutput<Map<String, String>?>('tags');
    throttling = registerOutput<int?>('throttling');
    timeWindow = registerOutput<int>('timeWindow');
    trigger = registerOutput<ScheduledQueryRulesAlertTrigger>('trigger', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScheduledQueryRulesAlertTrigger.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [ScheduledQueryRulesAlert] resource's state with the given [name] and [id].
  static ScheduledQueryRulesAlert get(
    String name,
    pulumi.Input<String> id, {
    ScheduledQueryRulesAlertState? state,
  }) {
    return ScheduledQueryRulesAlert._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ScheduledQueryRulesAlert._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:monitoring/scheduledQueryRulesAlert:ScheduledQueryRulesAlert',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    action = registerOutput<ScheduledQueryRulesAlertAction>('action', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScheduledQueryRulesAlertAction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    authorizedResourceIds = registerOutput<List<String>?>('authorizedResourceIds');
    autoMitigationEnabled = registerOutput<bool?>('autoMitigationEnabled');
    dataSourceId = registerOutput<String>('dataSourceId');
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool?>('enabled');
    frequency = registerOutput<int>('frequency');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    query = registerOutput<String>('query');
    queryType = registerOutput<String?>('queryType');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    severity = registerOutput<int?>('severity');
    tags = registerOutput<Map<String, String>?>('tags');
    throttling = registerOutput<int?>('throttling');
    timeWindow = registerOutput<int>('timeWindow');
    trigger = registerOutput<ScheduledQueryRulesAlertTrigger>('trigger', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScheduledQueryRulesAlertTrigger.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
