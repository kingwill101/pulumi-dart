import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_alert_action.dart';
import 'metric_alert_application_insights_web_test_location_availability_criteria.dart';
import 'metric_alert_args.dart';
import 'metric_alert_criteria.dart';
import 'metric_alert_dynamic_criteria.dart';
import 'metric_alert_state.dart';

/// Manages a Metric Alert within Azure Monitor.
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
/// const toMonitor = new azure.storage.Account("to_monitor", {
///     name: "examplestorageaccount",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountReplicationType: "LRS",
/// });
/// const main = new azure.monitoring.ActionGroup("main", {
///     name: "example-actiongroup",
///     resourceGroupName: example.name,
///     shortName: "exampleact",
///     webhookReceivers: [{
///         name: "callmyapi",
///         serviceUri: "http://example.com/alert",
///     }],
/// });
/// const exampleMetricAlert = new azure.monitoring.MetricAlert("example", {
///     name: "example-metricalert",
///     resourceGroupName: example.name,
///     scopes: [toMonitor.id],
///     description: "Action will be triggered when Transactions count is greater than 50.",
///     criterias: [{
///         metricNamespace: "Microsoft.Storage/storageAccounts",
///         metricName: "Transactions",
///         aggregation: "Total",
///         operator: "GreaterThan",
///         threshold: 50,
///         dimensions: [{
///             name: "ApiName",
///             operator: "Include",
///             values: ["*"],
///         }],
///     }],
///     actions: [{
///         actionGroupId: main.id,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// to_monitor = azure.storage.Account("to_monitor",
///     name="examplestorageaccount",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_replication_type="LRS")
/// main = azure.monitoring.ActionGroup("main",
///     name="example-actiongroup",
///     resource_group_name=example.name,
///     short_name="exampleact",
///     webhook_receivers=[{
///         "name": "callmyapi",
///         "service_uri": "http://example.com/alert",
///     }])
/// example_metric_alert = azure.monitoring.MetricAlert("example",
///     name="example-metricalert",
///     resource_group_name=example.name,
///     scopes=[to_monitor.id],
///     description="Action will be triggered when Transactions count is greater than 50.",
///     criterias=[{
///         "metric_namespace": "Microsoft.Storage/storageAccounts",
///         "metric_name": "Transactions",
///         "aggregation": "Total",
///         "operator": "GreaterThan",
///         "threshold": 50,
///         "dimensions": [{
///             "name": "ApiName",
///             "operator": "Include",
///             "values": ["*"],
///         }],
///     }],
///     actions=[{
///         "action_group_id": main.id,
///     }])
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
///     var toMonitor = new Azure.Storage.Account("to_monitor", new()
///     {
///         Name = "examplestorageaccount",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountReplicationType = "LRS",
///     });
///
///     var main = new Azure.Monitoring.ActionGroup("main", new()
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
///     var exampleMetricAlert = new Azure.Monitoring.MetricAlert("example", new()
///     {
///         Name = "example-metricalert",
///         ResourceGroupName = example.Name,
///         Scopes = new[]
///         {
///             toMonitor.Id,
///         },
///         Description = "Action will be triggered when Transactions count is greater than 50.",
///         Criterias = new[]
///         {
///             new Azure.Monitoring.Inputs.MetricAlertCriteriaArgs
///             {
///                 MetricNamespace = "Microsoft.Storage/storageAccounts",
///                 MetricName = "Transactions",
///                 Aggregation = "Total",
///                 Operator = "GreaterThan",
///                 Threshold = 50,
///                 Dimensions = new[]
///                 {
///                     new Azure.Monitoring.Inputs.MetricAlertCriteriaDimensionArgs
///                     {
///                         Name = "ApiName",
///                         Operator = "Include",
///                         Values = new[]
///                         {
///                             "*",
///                         },
///                     },
///                 },
///             },
///         },
///         Actions = new[]
///         {
///             new Azure.Monitoring.Inputs.MetricAlertActionArgs
///             {
///                 ActionGroupId = main.Id,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/monitoring"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
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
/// 		toMonitor, err := storage.NewAccount(ctx, "to_monitor", &storage.AccountArgs{
/// 			Name:                   pulumi.String("examplestorageaccount"),
/// 			ResourceGroupName:      example.Name,
/// 			Location:               example.Location,
/// 			AccountTier:            pulumi.String("Standard"),
/// 			AccountReplicationType: pulumi.String("LRS"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		main, err := monitoring.NewActionGroup(ctx, "main", &monitoring.ActionGroupArgs{
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
/// 		_, err = monitoring.NewMetricAlert(ctx, "example", &monitoring.MetricAlertArgs{
/// 			Name:              pulumi.String("example-metricalert"),
/// 			ResourceGroupName: example.Name,
/// 			Scopes: pulumi.StringArray{
/// 				toMonitor.ID(),
/// 			},
/// 			Description: pulumi.String("Action will be triggered when Transactions count is greater than 50."),
/// 			Criterias: monitoring.MetricAlertCriteriaArray{
/// 				&monitoring.MetricAlertCriteriaArgs{
/// 					MetricNamespace: pulumi.String("Microsoft.Storage/storageAccounts"),
/// 					MetricName:      pulumi.String("Transactions"),
/// 					Aggregation:     pulumi.String("Total"),
/// 					Operator:        pulumi.String("GreaterThan"),
/// 					Threshold:       pulumi.Float64(50),
/// 					Dimensions: monitoring.MetricAlertCriteriaDimensionArray{
/// 						&monitoring.MetricAlertCriteriaDimensionArgs{
/// 							Name:     pulumi.String("ApiName"),
/// 							Operator: pulumi.String("Include"),
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("*"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Actions: monitoring.MetricAlertActionArray{
/// 				&monitoring.MetricAlertActionArgs{
/// 					ActionGroupId: main.ID(),
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
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.monitoring.ActionGroup;
/// import com.pulumi.azure.monitoring.ActionGroupArgs;
/// import com.pulumi.azure.monitoring.inputs.ActionGroupWebhookReceiverArgs;
/// import com.pulumi.azure.monitoring.MetricAlert;
/// import com.pulumi.azure.monitoring.MetricAlertArgs;
/// import com.pulumi.azure.monitoring.inputs.MetricAlertCriteriaArgs;
/// import com.pulumi.azure.monitoring.inputs.MetricAlertActionArgs;
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
///         var toMonitor = new Account("toMonitor", AccountArgs.builder()
///             .name("examplestorageaccount")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountReplicationType("LRS")
///             .build());
///
///         var main = new ActionGroup("main", ActionGroupArgs.builder()
///             .name("example-actiongroup")
///             .resourceGroupName(example.name())
///             .shortName("exampleact")
///             .webhookReceivers(ActionGroupWebhookReceiverArgs.builder()
///                 .name("callmyapi")
///                 .serviceUri("http://example.com/alert")
///                 .build())
///             .build());
///
///         var exampleMetricAlert = new MetricAlert("exampleMetricAlert", MetricAlertArgs.builder()
///             .name("example-metricalert")
///             .resourceGroupName(example.name())
///             .scopes(toMonitor.id())
///             .description("Action will be triggered when Transactions count is greater than 50.")
///             .criterias(MetricAlertCriteriaArgs.builder()
///                 .metricNamespace("Microsoft.Storage/storageAccounts")
///                 .metricName("Transactions")
///                 .aggregation("Total")
///                 .operator("GreaterThan")
///                 .threshold(50.0)
///                 .dimensions(MetricAlertCriteriaDimensionArgs.builder()
///                     .name("ApiName")
///                     .operator("Include")
///                     .values("*")
///                     .build())
///                 .build())
///             .actions(MetricAlertActionArgs.builder()
///                 .actionGroupId(main.id())
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
///       name: example-resources
///       location: West Europe
///   toMonitor:
///     type: azure:storage:Account
///     name: to_monitor
///     properties:
///       name: examplestorageaccount
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountReplicationType: LRS
///   main:
///     type: azure:monitoring:ActionGroup
///     properties:
///       name: example-actiongroup
///       resourceGroupName: ${example.name}
///       shortName: exampleact
///       webhookReceivers:
///         - name: callmyapi
///           serviceUri: http://example.com/alert
///   exampleMetricAlert:
///     type: azure:monitoring:MetricAlert
///     name: example
///     properties:
///       name: example-metricalert
///       resourceGroupName: ${example.name}
///       scopes:
///         - ${toMonitor.id}
///       description: Action will be triggered when Transactions count is greater than 50.
///       criterias:
///         - metricNamespace: Microsoft.Storage/storageAccounts
///           metricName: Transactions
///           aggregation: Total
///           operator: GreaterThan
///           threshold: 50
///           dimensions:
///             - name: ApiName
///               operator: Include
///               values:
///                 - '*'
///       actions:
///         - actionGroupId: ${main.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Insights` - 2018-03-01
///
/// ## Import
///
/// Metric Alerts can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:monitoring/metricAlert:MetricAlert main /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example-resources/providers/Microsoft.Insights/metricAlerts/example-metricalert
/// ```
class MetricAlert extends pulumi.CustomResource {
  /// One or more `action` blocks as defined below.
  late final pulumi.Output<List<MetricAlertAction>?> actions;
  /// A `application_insights_web_test_location_availability_criteria` block as defined below.
  ///
  /// > **Note:** One of either `criteria`, `dynamic_criteria` or `application_insights_web_test_location_availability_criteria` must be specified.
  late final pulumi.Output<MetricAlertApplicationInsightsWebTestLocationAvailabilityCriteria?> applicationInsightsWebTestLocationAvailabilityCriteria;
  /// Should the alerts in this Metric Alert be auto resolved? Defaults to `true`.
  late final pulumi.Output<bool?> autoMitigate;
  /// One or more (static) `criteria` blocks as defined below.
  ///
  /// > **Note:** One of either `criteria`, `dynamic_criteria` or `application_insights_web_test_location_availability_criteria` must be specified.
  late final pulumi.Output<List<MetricAlertCriteria>?> criterias;
  /// The description of this Metric Alert.
  late final pulumi.Output<String?> description;
  /// A `dynamic_criteria` block as defined below.
  ///
  /// > **Note:** One of either `criteria`, `dynamic_criteria` or `application_insights_web_test_location_availability_criteria` must be specified.
  late final pulumi.Output<MetricAlertDynamicCriteria?> dynamicCriteria;
  /// Should this Metric Alert be enabled? Defaults to `true`.
  late final pulumi.Output<bool?> enabled;
  /// The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are `PT1M`, `PT5M`, `PT15M`, `PT30M` and `PT1H`. Defaults to `PT1M`.
  late final pulumi.Output<String?> frequency;
  /// The name of the Metric Alert. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the resource group in which to create the Metric Alert instance. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A set of strings of resource IDs at which the metric criteria should be applied.
  late final pulumi.Output<List<String>> scopes;
  /// The severity of this Metric Alert. Possible values are `0`, `1`, `2`, `3` and `4`. Defaults to `3`.
  late final pulumi.Output<int?> severity;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The location of the target resource.
  ///
  /// > **Note:** This is Required when using a Subscription as scope, a Resource Group as scope or Multiple Scopes.
  late final pulumi.Output<String> targetResourceLocation;
  /// The resource type (e.g. `Microsoft.Compute/virtualMachines`) of the target resource.
  ///
  /// > **Note:** This is Required when using a Subscription as scope, a Resource Group as scope or Multiple Scopes.
  late final pulumi.Output<String> targetResourceType;
  /// The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than `frequency`. Possible values are `PT1M`, `PT5M`, `PT15M`, `PT30M`, `PT1H`, `PT6H`, `PT12H` and `P1D`. Defaults to `PT5M`.
  late final pulumi.Output<String?> windowSize;

  /// Creates a new [MetricAlert].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MetricAlert]. {@macro pulumi_monitoring_metric_alert_metric_alert_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MetricAlert(
    String name, {
    MetricAlertArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:monitoring/metricAlert:MetricAlert',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.actions = registerOutput<List<MetricAlertAction>?>('actions');
    this.applicationInsightsWebTestLocationAvailabilityCriteria = registerOutput<MetricAlertApplicationInsightsWebTestLocationAvailabilityCriteria?>('applicationInsightsWebTestLocationAvailabilityCriteria');
    this.autoMitigate = registerOutput<bool?>('autoMitigate');
    this.criterias = registerOutput<List<MetricAlertCriteria>?>('criterias');
    this.description = registerOutput<String?>('description');
    this.dynamicCriteria = registerOutput<MetricAlertDynamicCriteria?>('dynamicCriteria');
    this.enabled = registerOutput<bool?>('enabled');
    this.frequency = registerOutput<String?>('frequency');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.scopes = registerOutput<List<String>>('scopes');
    this.severity = registerOutput<int?>('severity');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.targetResourceLocation = registerOutput<String>('targetResourceLocation');
    this.targetResourceType = registerOutput<String>('targetResourceType');
    this.windowSize = registerOutput<String?>('windowSize');
  }

  /// Gets an existing [MetricAlert] resource's state with the given [name] and [id].
  static MetricAlert get(
    String name,
    pulumi.Input<String> id, {
    MetricAlertState? state,
  }) {
    return MetricAlert._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MetricAlert._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:monitoring/metricAlert:MetricAlert',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.actions = registerOutput<List<MetricAlertAction>?>('actions');
    this.applicationInsightsWebTestLocationAvailabilityCriteria = registerOutput<MetricAlertApplicationInsightsWebTestLocationAvailabilityCriteria?>('applicationInsightsWebTestLocationAvailabilityCriteria');
    this.autoMitigate = registerOutput<bool?>('autoMitigate');
    this.criterias = registerOutput<List<MetricAlertCriteria>?>('criterias');
    this.description = registerOutput<String?>('description');
    this.dynamicCriteria = registerOutput<MetricAlertDynamicCriteria?>('dynamicCriteria');
    this.enabled = registerOutput<bool?>('enabled');
    this.frequency = registerOutput<String?>('frequency');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.scopes = registerOutput<List<String>>('scopes');
    this.severity = registerOutput<int?>('severity');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.targetResourceLocation = registerOutput<String>('targetResourceLocation');
    this.targetResourceType = registerOutput<String>('targetResourceType');
    this.windowSize = registerOutput<String?>('windowSize');
  }
}
