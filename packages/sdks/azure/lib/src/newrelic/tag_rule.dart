import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_rule_args.dart';
import 'tag_rule_log_tag_filter.dart';
import 'tag_rule_metric_tag_filter.dart';
import 'tag_rule_state.dart';

/// Manages an Azure Native New Relic Tag Rule.
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
///     location: "East US",
/// });
/// const exampleMonitor = new azure.newrelic.Monitor("example", {
///     name: "example-nrm",
///     resourceGroupName: example.name,
///     location: example.location,
///     plan: {
///         effectiveDate: "2023-06-06T00:00:00Z",
///     },
///     user: {
///         email: "user@example.com",
///         firstName: "Example",
///         lastName: "User",
///         phoneNumber: "+12313803556",
///     },
/// });
/// const exampleTagRule = new azure.newrelic.TagRule("example", {
///     monitorId: exampleMonitor.id,
///     azureActiveDirectoryLogEnabled: true,
///     activityLogEnabled: true,
///     metricEnabled: true,
///     subscriptionLogEnabled: true,
///     logTagFilters: [{
///         name: "key",
///         action: "Include",
///         value: "value",
///     }],
///     metricTagFilters: [{
///         name: "key",
///         action: "Exclude",
///         value: "value",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="East US")
/// example_monitor = azure.newrelic.Monitor("example",
///     name="example-nrm",
///     resource_group_name=example.name,
///     location=example.location,
///     plan={
///         "effective_date": "2023-06-06T00:00:00Z",
///     },
///     user={
///         "email": "user@example.com",
///         "first_name": "Example",
///         "last_name": "User",
///         "phone_number": "+12313803556",
///     })
/// example_tag_rule = azure.newrelic.TagRule("example",
///     monitor_id=example_monitor.id,
///     azure_active_directory_log_enabled=True,
///     activity_log_enabled=True,
///     metric_enabled=True,
///     subscription_log_enabled=True,
///     log_tag_filters=[{
///         "name": "key",
///         "action": "Include",
///         "value": "value",
///     }],
///     metric_tag_filters=[{
///         "name": "key",
///         "action": "Exclude",
///         "value": "value",
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
///         Location = "East US",
///     });
///
///     var exampleMonitor = new Azure.NewRelic.Monitor("example", new()
///     {
///         Name = "example-nrm",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         Plan = new Azure.NewRelic.Inputs.MonitorPlanArgs
///         {
///             EffectiveDate = "2023-06-06T00:00:00Z",
///         },
///         User = new Azure.NewRelic.Inputs.MonitorUserArgs
///         {
///             Email = "user@example.com",
///             FirstName = "Example",
///             LastName = "User",
///             PhoneNumber = "+12313803556",
///         },
///     });
///
///     var exampleTagRule = new Azure.NewRelic.TagRule("example", new()
///     {
///         MonitorId = exampleMonitor.Id,
///         AzureActiveDirectoryLogEnabled = true,
///         ActivityLogEnabled = true,
///         MetricEnabled = true,
///         SubscriptionLogEnabled = true,
///         LogTagFilters = new[]
///         {
///             new Azure.NewRelic.Inputs.TagRuleLogTagFilterArgs
///             {
///                 Name = "key",
///                 Action = "Include",
///                 Value = "value",
///             },
///         },
///         MetricTagFilters = new[]
///         {
///             new Azure.NewRelic.Inputs.TagRuleMetricTagFilterArgs
///             {
///                 Name = "key",
///                 Action = "Exclude",
///                 Value = "value",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/newrelic"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("East US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleMonitor, err := newrelic.NewMonitor(ctx, "example", &newrelic.MonitorArgs{
/// 			Name:              pulumi.String("example-nrm"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			Plan: &newrelic.MonitorPlanArgs{
/// 				EffectiveDate: pulumi.String("2023-06-06T00:00:00Z"),
/// 			},
/// 			User: &newrelic.MonitorUserArgs{
/// 				Email:       pulumi.String("user@example.com"),
/// 				FirstName:   pulumi.String("Example"),
/// 				LastName:    pulumi.String("User"),
/// 				PhoneNumber: pulumi.String("+12313803556"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = newrelic.NewTagRule(ctx, "example", &newrelic.TagRuleArgs{
/// 			MonitorId:                      exampleMonitor.ID(),
/// 			AzureActiveDirectoryLogEnabled: pulumi.Bool(true),
/// 			ActivityLogEnabled:             pulumi.Bool(true),
/// 			MetricEnabled:                  pulumi.Bool(true),
/// 			SubscriptionLogEnabled:         pulumi.Bool(true),
/// 			LogTagFilters: newrelic.TagRuleLogTagFilterArray{
/// 				&newrelic.TagRuleLogTagFilterArgs{
/// 					Name:   pulumi.String("key"),
/// 					Action: pulumi.String("Include"),
/// 					Value:  pulumi.String("value"),
/// 				},
/// 			},
/// 			MetricTagFilters: newrelic.TagRuleMetricTagFilterArray{
/// 				&newrelic.TagRuleMetricTagFilterArgs{
/// 					Name:   pulumi.String("key"),
/// 					Action: pulumi.String("Exclude"),
/// 					Value:  pulumi.String("value"),
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
/// import com.pulumi.azure.newrelic.Monitor;
/// import com.pulumi.azure.newrelic.MonitorArgs;
/// import com.pulumi.azure.newrelic.inputs.MonitorPlanArgs;
/// import com.pulumi.azure.newrelic.inputs.MonitorUserArgs;
/// import com.pulumi.azure.newrelic.TagRule;
/// import com.pulumi.azure.newrelic.TagRuleArgs;
/// import com.pulumi.azure.newrelic.inputs.TagRuleLogTagFilterArgs;
/// import com.pulumi.azure.newrelic.inputs.TagRuleMetricTagFilterArgs;
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
///             .location("East US")
///             .build());
///
///         var exampleMonitor = new Monitor("exampleMonitor", MonitorArgs.builder()
///             .name("example-nrm")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .plan(MonitorPlanArgs.builder()
///                 .effectiveDate("2023-06-06T00:00:00Z")
///                 .build())
///             .user(MonitorUserArgs.builder()
///                 .email("user@example.com")
///                 .firstName("Example")
///                 .lastName("User")
///                 .phoneNumber("+12313803556")
///                 .build())
///             .build());
///
///         var exampleTagRule = new TagRule("exampleTagRule", TagRuleArgs.builder()
///             .monitorId(exampleMonitor.id())
///             .azureActiveDirectoryLogEnabled(true)
///             .activityLogEnabled(true)
///             .metricEnabled(true)
///             .subscriptionLogEnabled(true)
///             .logTagFilters(TagRuleLogTagFilterArgs.builder()
///                 .name("key")
///                 .action("Include")
///                 .value("value")
///                 .build())
///             .metricTagFilters(TagRuleMetricTagFilterArgs.builder()
///                 .name("key")
///                 .action("Exclude")
///                 .value("value")
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
///       location: East US
///   exampleMonitor:
///     type: azure:newrelic:Monitor
///     name: example
///     properties:
///       name: example-nrm
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       plan:
///         effectiveDate: 2023-06-06T00:00:00Z
///       user:
///         email: user@example.com
///         firstName: Example
///         lastName: User
///         phoneNumber: '+12313803556'
///   exampleTagRule:
///     type: azure:newrelic:TagRule
///     name: example
///     properties:
///       monitorId: ${exampleMonitor.id}
///       azureActiveDirectoryLogEnabled: true
///       activityLogEnabled: true
///       metricEnabled: true
///       subscriptionLogEnabled: true
///       logTagFilters:
///         - name: key
///           action: Include
///           value: value
///       metricTagFilters:
///         - name: key
///           action: Exclude
///           value: value
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `NewRelic.Observability` - 2024-03-01
///
/// ## Import
///
/// Azure Native New Relic Tag Rule can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:newrelic/tagRule:TagRule example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/NewRelic.Observability/monitors/monitor1/tagRules/ruleSet1
/// ```
class TagRule extends pulumi.CustomResource {
  /// Whether activity logs from Azure resources should be sent for the Monitor resource. Defaults to `false`.
  late final pulumi.Output<bool?> activityLogEnabled;
  /// Whether Azure Active Directory logs should be sent for the Monitor resource. Defaults to `false`.
  late final pulumi.Output<bool?> azureActiveDirectoryLogEnabled;
  /// A `log_tag_filter` block as defined below.
  late final pulumi.Output<List<TagRuleLogTagFilter>?> logTagFilters;
  /// Whether metrics should be sent for the Monitor resource. Defaults to `false`.
  late final pulumi.Output<bool?> metricEnabled;
  /// A `metric_tag_filter` block as defined below.
  late final pulumi.Output<List<TagRuleMetricTagFilter>?> metricTagFilters;
  /// Specifies the ID of the New Relic Monitor this Tag Rule should be created within. Changing this forces a new Azure Native New Relic Tag Rule to be created.
  late final pulumi.Output<String> monitorId;
  /// Whether subscription logs should be sent for the Monitor resource. Defaults to `false`.
  late final pulumi.Output<bool?> subscriptionLogEnabled;

  /// Creates a new [TagRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TagRule]. {@macro pulumi_newrelic_tag_rule_tag_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TagRule(
    String name, {
    TagRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:newrelic/tagRule:TagRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.activityLogEnabled = registerOutput<bool?>('activityLogEnabled');
    this.azureActiveDirectoryLogEnabled = registerOutput<bool?>('azureActiveDirectoryLogEnabled');
    this.logTagFilters = registerOutput<List<TagRuleLogTagFilter>?>('logTagFilters');
    this.metricEnabled = registerOutput<bool?>('metricEnabled');
    this.metricTagFilters = registerOutput<List<TagRuleMetricTagFilter>?>('metricTagFilters');
    this.monitorId = registerOutput<String>('monitorId');
    this.subscriptionLogEnabled = registerOutput<bool?>('subscriptionLogEnabled');
  }

  /// Gets an existing [TagRule] resource's state with the given [name] and [id].
  static TagRule get(
    String name,
    pulumi.Input<String> id, {
    TagRuleState? state,
  }) {
    return TagRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TagRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:newrelic/tagRule:TagRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.activityLogEnabled = registerOutput<bool?>('activityLogEnabled');
    this.azureActiveDirectoryLogEnabled = registerOutput<bool?>('azureActiveDirectoryLogEnabled');
    this.logTagFilters = registerOutput<List<TagRuleLogTagFilter>?>('logTagFilters');
    this.metricEnabled = registerOutput<bool?>('metricEnabled');
    this.metricTagFilters = registerOutput<List<TagRuleMetricTagFilter>?>('metricTagFilters');
    this.monitorId = registerOutput<String>('monitorId');
    this.subscriptionLogEnabled = registerOutput<bool?>('subscriptionLogEnabled');
  }
}
