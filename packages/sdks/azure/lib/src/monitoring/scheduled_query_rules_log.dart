import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduled_query_rules_log_args.dart';
import 'scheduled_query_rules_log_criteria.dart';
import 'scheduled_query_rules_log_state.dart';

/// Manages a LogToMetricAction Scheduled Query Rules resource within Azure Monitor.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "monitoring-resources",
///     location: "West Europe",
/// });
/// const exampleAnalyticsWorkspace = new azure.operationalinsights.AnalyticsWorkspace("example", {
///     name: "loganalytics",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "PerGB2018",
///     retentionInDays: 30,
/// });
/// const exampleActionGroup = new azure.monitoring.ActionGroup("example", {
///     name: "example-actiongroup",
///     resourceGroupName: example.name,
///     shortName: "exampleact",
///     webhookReceivers: [{
///         name: "callmyapi",
///         serviceUri: "http://example.com/alert",
///     }],
/// });
/// // Example: Creates alert using the new Scheduled Query Rules metric
/// const exampleMetricAlert = new azure.monitoring.MetricAlert("example", {
///     name: "example-metricalert",
///     resourceGroupName: example.name,
///     scopes: [exampleAnalyticsWorkspace.id],
///     description: "Action will be triggered when Average_% Idle Time metric is less than 10.",
///     frequency: "PT1M",
///     windowSize: "PT5M",
///     criterias: [{
///         metricNamespace: "Microsoft.OperationalInsights/workspaces",
///         metricName: "UsedCapacity",
///         aggregation: "Average",
///         operator: "LessThan",
///         threshold: 10,
///     }],
///     actions: [{
///         actionGroupId: exampleActionGroup.id,
///     }],
/// });
/// // Example: LogToMetric Action for the named Computer
/// const exampleScheduledQueryRulesLog = new azure.monitoring.ScheduledQueryRulesLog("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
///     criteria: {
///         metricName: "Average_% Idle Time",
///         dimensions: [{
///             name: "Computer",
///             operator: "Include",
///             values: ["targetVM"],
///         }],
///     },
///     dataSourceId: exampleAnalyticsWorkspace.id,
///     description: "Scheduled query rule LogToMetric example",
///     enabled: true,
///     tags: {
///         foo: "bar",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="monitoring-resources",
///     location="West Europe")
/// example_analytics_workspace = azure.operationalinsights.AnalyticsWorkspace("example",
///     name="loganalytics",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="PerGB2018",
///     retention_in_days=30)
/// example_action_group = azure.monitoring.ActionGroup("example",
///     name="example-actiongroup",
///     resource_group_name=example.name,
///     short_name="exampleact",
///     webhook_receivers=[{
///         "name": "callmyapi",
///         "service_uri": "http://example.com/alert",
///     }])
/// # Example: Creates alert using the new Scheduled Query Rules metric
/// example_metric_alert = azure.monitoring.MetricAlert("example",
///     name="example-metricalert",
///     resource_group_name=example.name,
///     scopes=[example_analytics_workspace.id],
///     description="Action will be triggered when Average_% Idle Time metric is less than 10.",
///     frequency="PT1M",
///     window_size="PT5M",
///     criterias=[{
///         "metric_namespace": "Microsoft.OperationalInsights/workspaces",
///         "metric_name": "UsedCapacity",
///         "aggregation": "Average",
///         "operator": "LessThan",
///         "threshold": 10,
///     }],
///     actions=[{
///         "action_group_id": example_action_group.id,
///     }])
/// # Example: LogToMetric Action for the named Computer
/// example_scheduled_query_rules_log = azure.monitoring.ScheduledQueryRulesLog("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name,
///     criteria={
///         "metric_name": "Average_% Idle Time",
///         "dimensions": [{
///             "name": "Computer",
///             "operator": "Include",
///             "values": ["targetVM"],
///         }],
///     },
///     data_source_id=example_analytics_workspace.id,
///     description="Scheduled query rule LogToMetric example",
///     enabled=True,
///     tags={
///         "foo": "bar",
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
///         Name = "monitoring-resources",
///         Location = "West Europe",
///     });
///
///     var exampleAnalyticsWorkspace = new Azure.OperationalInsights.AnalyticsWorkspace("example", new()
///     {
///         Name = "loganalytics",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "PerGB2018",
///         RetentionInDays = 30,
///     });
///
///     var exampleActionGroup = new Azure.Monitoring.ActionGroup("example", new()
///     {
///         Name = "example-actiongroup",
///         ResourceGroupName = example.Name,
///         ShortName = "exampleact",
///         WebhookReceivers = new[]
///         {
///             new Azure.Monitoring.Inputs.ActionGroupWebhookReceiverArgs
///             {
///                 Name = "callmyapi",
///                 ServiceUri = "http://example.com/alert",
///             },
///         },
///     });
///
///     // Example: Creates alert using the new Scheduled Query Rules metric
///     var exampleMetricAlert = new Azure.Monitoring.MetricAlert("example", new()
///     {
///         Name = "example-metricalert",
///         ResourceGroupName = example.Name,
///         Scopes = new[]
///         {
///             exampleAnalyticsWorkspace.Id,
///         },
///         Description = "Action will be triggered when Average_% Idle Time metric is less than 10.",
///         Frequency = "PT1M",
///         WindowSize = "PT5M",
///         Criterias = new[]
///         {
///             new Azure.Monitoring.Inputs.MetricAlertCriteriaArgs
///             {
///                 MetricNamespace = "Microsoft.OperationalInsights/workspaces",
///                 MetricName = "UsedCapacity",
///                 Aggregation = "Average",
///                 Operator = "LessThan",
///                 Threshold = 10,
///             },
///         },
///         Actions = new[]
///         {
///             new Azure.Monitoring.Inputs.MetricAlertActionArgs
///             {
///                 ActionGroupId = exampleActionGroup.Id,
///             },
///         },
///     });
///
///     // Example: LogToMetric Action for the named Computer
///     var exampleScheduledQueryRulesLog = new Azure.Monitoring.ScheduledQueryRulesLog("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Criteria = new Azure.Monitoring.Inputs.ScheduledQueryRulesLogCriteriaArgs
///         {
///             MetricName = "Average_% Idle Time",
///             Dimensions = new[]
///             {
///                 new Azure.Monitoring.Inputs.ScheduledQueryRulesLogCriteriaDimensionArgs
///                 {
///                     Name = "Computer",
///                     Operator = "Include",
///                     Values = new[]
///                     {
///                         "targetVM",
///                     },
///                 },
///             },
///         },
///         DataSourceId = exampleAnalyticsWorkspace.Id,
///         Description = "Scheduled query rule LogToMetric example",
///         Enabled = true,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/monitoring"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/operationalinsights"
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
/// 		exampleAnalyticsWorkspace, err := operationalinsights.NewAnalyticsWorkspace(ctx, "example", &operationalinsights.AnalyticsWorkspaceArgs{
/// 			Name:              pulumi.String("loganalytics"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("PerGB2018"),
/// 			RetentionInDays:   pulumi.Int(30),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleActionGroup, err := monitoring.NewActionGroup(ctx, "example", &monitoring.ActionGroupArgs{
/// 			Name:              pulumi.String("example-actiongroup"),
/// 			ResourceGroupName: example.Name,
/// 			ShortName:         pulumi.String("exampleact"),
/// 			WebhookReceivers: monitoring.ActionGroupWebhookReceiverArray{
/// 				&monitoring.ActionGroupWebhookReceiverArgs{
/// 					Name:       pulumi.String("callmyapi"),
/// 					ServiceUri: pulumi.String("http://example.com/alert"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Example: Creates alert using the new Scheduled Query Rules metric
/// 		_, err = monitoring.NewMetricAlert(ctx, "example", &monitoring.MetricAlertArgs{
/// 			Name:              pulumi.String("example-metricalert"),
/// 			ResourceGroupName: example.Name,
/// 			Scopes: pulumi.StringArray{
/// 				exampleAnalyticsWorkspace.ID(),
/// 			},
/// 			Description: pulumi.String("Action will be triggered when Average_% Idle Time metric is less than 10."),
/// 			Frequency:   pulumi.String("PT1M"),
/// 			WindowSize:  pulumi.String("PT5M"),
/// 			Criterias: monitoring.MetricAlertCriteriaArray{
/// 				&monitoring.MetricAlertCriteriaArgs{
/// 					MetricNamespace: pulumi.String("Microsoft.OperationalInsights/workspaces"),
/// 					MetricName:      pulumi.String("UsedCapacity"),
/// 					Aggregation:     pulumi.String("Average"),
/// 					Operator:        pulumi.String("LessThan"),
/// 					Threshold:       pulumi.Float64(10),
/// 				},
/// 			},
/// 			Actions: monitoring.MetricAlertActionArray{
/// 				&monitoring.MetricAlertActionArgs{
/// 					ActionGroupId: exampleActionGroup.ID(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Example: LogToMetric Action for the named Computer
/// 		_, err = monitoring.NewScheduledQueryRulesLog(ctx, "example", &monitoring.ScheduledQueryRulesLogArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Criteria: &monitoring.ScheduledQueryRulesLogCriteriaArgs{
/// 				MetricName: pulumi.String("Average_% Idle Time"),
/// 				Dimensions: monitoring.ScheduledQueryRulesLogCriteriaDimensionArray{
/// 					&monitoring.ScheduledQueryRulesLogCriteriaDimensionArgs{
/// 						Name:     pulumi.String("Computer"),
/// 						Operator: pulumi.String("Include"),
/// 						Values: pulumi.StringArray{
/// 							pulumi.String("targetVM"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			DataSourceId: exampleAnalyticsWorkspace.ID(),
/// 			Description:  pulumi.String("Scheduled query rule LogToMetric example"),
/// 			Enabled:      pulumi.Bool(true),
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
/// import com.pulumi.azure.operationalinsights.AnalyticsWorkspace;
/// import com.pulumi.azure.operationalinsights.AnalyticsWorkspaceArgs;
/// import com.pulumi.azure.monitoring.ActionGroup;
/// import com.pulumi.azure.monitoring.ActionGroupArgs;
/// import com.pulumi.azure.monitoring.inputs.ActionGroupWebhookReceiverArgs;
/// import com.pulumi.azure.monitoring.MetricAlert;
/// import com.pulumi.azure.monitoring.MetricAlertArgs;
/// import com.pulumi.azure.monitoring.inputs.MetricAlertCriteriaArgs;
/// import com.pulumi.azure.monitoring.inputs.MetricAlertActionArgs;
/// import com.pulumi.azure.monitoring.ScheduledQueryRulesLog;
/// import com.pulumi.azure.monitoring.ScheduledQueryRulesLogArgs;
/// import com.pulumi.azure.monitoring.inputs.ScheduledQueryRulesLogCriteriaArgs;
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
///         var exampleAnalyticsWorkspace = new AnalyticsWorkspace("exampleAnalyticsWorkspace", AnalyticsWorkspaceArgs.builder()
///             .name("loganalytics")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("PerGB2018")
///             .retentionInDays(30)
///             .build());
///
///         var exampleActionGroup = new ActionGroup("exampleActionGroup", ActionGroupArgs.builder()
///             .name("example-actiongroup")
///             .resourceGroupName(example.name())
///             .shortName("exampleact")
///             .webhookReceivers(ActionGroupWebhookReceiverArgs.builder()
///                 .name("callmyapi")
///                 .serviceUri("http://example.com/alert")
///                 .build())
///             .build());
///
///         // Example: Creates alert using the new Scheduled Query Rules metric
///         var exampleMetricAlert = new MetricAlert("exampleMetricAlert", MetricAlertArgs.builder()
///             .name("example-metricalert")
///             .resourceGroupName(example.name())
///             .scopes(exampleAnalyticsWorkspace.id())
///             .description("Action will be triggered when Average_% Idle Time metric is less than 10.")
///             .frequency("PT1M")
///             .windowSize("PT5M")
///             .criterias(MetricAlertCriteriaArgs.builder()
///                 .metricNamespace("Microsoft.OperationalInsights/workspaces")
///                 .metricName("UsedCapacity")
///                 .aggregation("Average")
///                 .operator("LessThan")
///                 .threshold(10.0)
///                 .build())
///             .actions(MetricAlertActionArgs.builder()
///                 .actionGroupId(exampleActionGroup.id())
///                 .build())
///             .build());
///
///         // Example: LogToMetric Action for the named Computer
///         var exampleScheduledQueryRulesLog = new ScheduledQueryRulesLog("exampleScheduledQueryRulesLog", ScheduledQueryRulesLogArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .criteria(ScheduledQueryRulesLogCriteriaArgs.builder()
///                 .metricName("Average_% Idle Time")
///                 .dimensions(ScheduledQueryRulesLogCriteriaDimensionArgs.builder()
///                     .name("Computer")
///                     .operator("Include")
///                     .values("targetVM")
///                     .build())
///                 .build())
///             .dataSourceId(exampleAnalyticsWorkspace.id())
///             .description("Scheduled query rule LogToMetric example")
///             .enabled(true)
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
///   exampleAnalyticsWorkspace:
///     type: azure:operationalinsights:AnalyticsWorkspace
///     name: example
///     properties:
///       name: loganalytics
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: PerGB2018
///       retentionInDays: 30
///   exampleActionGroup:
///     type: azure:monitoring:ActionGroup
///     name: example
///     properties:
///       name: example-actiongroup
///       resourceGroupName: ${example.name}
///       shortName: exampleact
///       webhookReceivers:
///         - name: callmyapi
///           serviceUri: http://example.com/alert
///   # Example: Creates alert using the new Scheduled Query Rules metric
///   exampleMetricAlert:
///     type: azure:monitoring:MetricAlert
///     name: example
///     properties:
///       name: example-metricalert
///       resourceGroupName: ${example.name}
///       scopes:
///         - ${exampleAnalyticsWorkspace.id}
///       description: Action will be triggered when Average_% Idle Time metric is less than 10.
///       frequency: PT1M
///       windowSize: PT5M
///       criterias:
///         - metricNamespace: Microsoft.OperationalInsights/workspaces
///           metricName: UsedCapacity
///           aggregation: Average
///           operator: LessThan
///           threshold: 10
///       actions:
///         - actionGroupId: ${exampleActionGroup.id}
///   # Example: LogToMetric Action for the named Computer
///   exampleScheduledQueryRulesLog:
///     type: azure:monitoring:ScheduledQueryRulesLog
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       criteria:
///         metricName: Average_% Idle Time
///         dimensions:
///           - name: Computer
///             operator: Include
///             values:
///               - targetVM
///       dataSourceId: ${exampleAnalyticsWorkspace.id}
///       description: Scheduled query rule LogToMetric example
///       enabled: true
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
/// Scheduled Query Rule Log can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:monitoring/scheduledQueryRulesLog:ScheduledQueryRulesLog example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Insights/scheduledQueryRules/myrulename
/// ```
class ScheduledQueryRulesLog extends pulumi.CustomResource {
  /// A list of IDs of Resources referred into query.
  late final pulumi.Output<List<String>?> authorizedResourceIds;

  /// A `criteria` block as defined below.
  late final pulumi.Output<ScheduledQueryRulesLogCriteria> criteria;

  /// The resource URI over which log search query is to be run. Changing this forces a new resource to be created.
  late final pulumi.Output<String> dataSourceId;

  /// The description of the scheduled query rule.
  late final pulumi.Output<String?> description;

  /// Whether this scheduled query rule is enabled. Default is `true`.
  late final pulumi.Output<bool?> enabled;

  /// Specifies the Azure Region where the resource should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;

  /// The name of the scheduled query rule. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// The name of the resource group in which to create the scheduled query rule instance. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [ScheduledQueryRulesLog].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ScheduledQueryRulesLog]. {@macro pulumi_monitoring_scheduled_query_rules_log_scheduled_query_rules_log_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ScheduledQueryRulesLog(
    String name, {
    ScheduledQueryRulesLogArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:monitoring/scheduledQueryRulesLog:ScheduledQueryRulesLog',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    authorizedResourceIds = registerOutput<List<String>?>(
      'authorizedResourceIds',
    );
    criteria = registerOutput<ScheduledQueryRulesLogCriteria>('criteria');
    dataSourceId = registerOutput<String>('dataSourceId');
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool?>('enabled');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [ScheduledQueryRulesLog] resource's state with the given [name] and [id].
  static ScheduledQueryRulesLog get(
    String name,
    pulumi.Input<String> id, {
    ScheduledQueryRulesLogState? state,
  }) {
    return ScheduledQueryRulesLog._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ScheduledQueryRulesLog._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:monitoring/scheduledQueryRulesLog:ScheduledQueryRulesLog',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    authorizedResourceIds = registerOutput<List<String>?>(
      'authorizedResourceIds',
    );
    criteria = registerOutput<ScheduledQueryRulesLogCriteria>('criteria');
    dataSourceId = registerOutput<String>('dataSourceId');
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool?>('enabled');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
