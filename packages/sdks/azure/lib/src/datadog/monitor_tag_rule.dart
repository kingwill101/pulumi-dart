import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitor_tag_rule_args.dart';
import 'monitor_tag_rule_state.dart';

/// Manages TagRules on the datadog Monitor.
///
/// ## Example Usage
///
/// ### Adding TagRules on monitor
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-datadog",
///     location: "West US 2",
/// });
/// const exampleMonitor = new azure.datadog.Monitor("example", {
///     name: "example-monitor",
///     resourceGroupName: example.name,
///     location: example.location,
///     datadogOrganization: {
///         apiKey: "XXXX",
///         applicationKey: "XXXX",
///     },
///     user: {
///         name: "Example",
///         email: "abc@xyz.com",
///     },
///     skuName: "Linked",
///     identity: {
///         type: "SystemAssigned",
///     },
/// });
/// const exampleMonitorTagRule = new azure.datadog.MonitorTagRule("example", {
///     datadogMonitorId: exampleMonitor.id,
///     logs: [{
///         subscriptionLogEnabled: true,
///     }],
///     metrics: [{
///         filters: [{
///             name: "Test",
///             value: "Logs",
///             action: "Include",
///         }],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-datadog",
///     location="West US 2")
/// example_monitor = azure.datadog.Monitor("example",
///     name="example-monitor",
///     resource_group_name=example.name,
///     location=example.location,
///     datadog_organization={
///         "api_key": "XXXX",
///         "application_key": "XXXX",
///     },
///     user={
///         "name": "Example",
///         "email": "abc@xyz.com",
///     },
///     sku_name="Linked",
///     identity={
///         "type": "SystemAssigned",
///     })
/// example_monitor_tag_rule = azure.datadog.MonitorTagRule("example",
///     datadog_monitor_id=example_monitor.id,
///     logs=[{
///         "subscription_log_enabled": True,
///     }],
///     metrics=[{
///         "filters": [{
///             "name": "Test",
///             "value": "Logs",
///             "action": "Include",
///         }],
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
///         Name = "example-datadog",
///         Location = "West US 2",
///     });
///
///     var exampleMonitor = new Azure.Datadog.Monitor("example", new()
///     {
///         Name = "example-monitor",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         DatadogOrganization = new Azure.Datadog.Inputs.MonitorDatadogOrganizationArgs
///         {
///             ApiKey = "XXXX",
///             ApplicationKey = "XXXX",
///         },
///         User = new Azure.Datadog.Inputs.MonitorUserArgs
///         {
///             Name = "Example",
///             Email = "abc@xyz.com",
///         },
///         SkuName = "Linked",
///         Identity = new Azure.Datadog.Inputs.MonitorIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///     });
///
///     var exampleMonitorTagRule = new Azure.Datadog.MonitorTagRule("example", new()
///     {
///         DatadogMonitorId = exampleMonitor.Id,
///         Logs = new[]
///         {
///             new Azure.Datadog.Inputs.MonitorTagRuleLogArgs
///             {
///                 SubscriptionLogEnabled = true,
///             },
///         },
///         Metrics = new[]
///         {
///             new Azure.Datadog.Inputs.MonitorTagRuleMetricArgs
///             {
///                 Filters = new[]
///                 {
///                     new Azure.Datadog.Inputs.MonitorTagRuleMetricFilterArgs
///                     {
///                         Name = "Test",
///                         Value = "Logs",
///                         Action = "Include",
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/datadog"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-datadog"),
/// 			Location: pulumi.String("West US 2"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleMonitor, err := datadog.NewMonitor(ctx, "example", &datadog.MonitorArgs{
/// 			Name:              pulumi.String("example-monitor"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			DatadogOrganization: &datadog.MonitorDatadogOrganizationArgs{
/// 				ApiKey:         pulumi.String("XXXX"),
/// 				ApplicationKey: pulumi.String("XXXX"),
/// 			},
/// 			User: &datadog.MonitorUserArgs{
/// 				Name:  pulumi.String("Example"),
/// 				Email: pulumi.String("abc@xyz.com"),
/// 			},
/// 			SkuName: pulumi.String("Linked"),
/// 			Identity: &datadog.MonitorIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datadog.NewMonitorTagRule(ctx, "example", &datadog.MonitorTagRuleArgs{
/// 			DatadogMonitorId: exampleMonitor.ID(),
/// 			Logs: datadog.MonitorTagRuleLogArray{
/// 				&datadog.MonitorTagRuleLogArgs{
/// 					SubscriptionLogEnabled: pulumi.Bool(true),
/// 				},
/// 			},
/// 			Metrics: datadog.MonitorTagRuleMetricArray{
/// 				&datadog.MonitorTagRuleMetricArgs{
/// 					Filters: datadog.MonitorTagRuleMetricFilterArray{
/// 						&datadog.MonitorTagRuleMetricFilterArgs{
/// 							Name:   pulumi.String("Test"),
/// 							Value:  pulumi.String("Logs"),
/// 							Action: pulumi.String("Include"),
/// 						},
/// 					},
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
/// import com.pulumi.azure.datadog.Monitor;
/// import com.pulumi.azure.datadog.MonitorArgs;
/// import com.pulumi.azure.datadog.inputs.MonitorDatadogOrganizationArgs;
/// import com.pulumi.azure.datadog.inputs.MonitorUserArgs;
/// import com.pulumi.azure.datadog.inputs.MonitorIdentityArgs;
/// import com.pulumi.azure.datadog.MonitorTagRule;
/// import com.pulumi.azure.datadog.MonitorTagRuleArgs;
/// import com.pulumi.azure.datadog.inputs.MonitorTagRuleLogArgs;
/// import com.pulumi.azure.datadog.inputs.MonitorTagRuleMetricArgs;
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
///             .name("example-datadog")
///             .location("West US 2")
///             .build());
///
///         var exampleMonitor = new Monitor("exampleMonitor", MonitorArgs.builder()
///             .name("example-monitor")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .datadogOrganization(MonitorDatadogOrganizationArgs.builder()
///                 .apiKey("XXXX")
///                 .applicationKey("XXXX")
///                 .build())
///             .user(MonitorUserArgs.builder()
///                 .name("Example")
///                 .email("abc@xyz.com")
///                 .build())
///             .skuName("Linked")
///             .identity(MonitorIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .build());
///
///         var exampleMonitorTagRule = new MonitorTagRule("exampleMonitorTagRule", MonitorTagRuleArgs.builder()
///             .datadogMonitorId(exampleMonitor.id())
///             .logs(MonitorTagRuleLogArgs.builder()
///                 .subscriptionLogEnabled(true)
///                 .build())
///             .metrics(MonitorTagRuleMetricArgs.builder()
///                 .filters(MonitorTagRuleMetricFilterArgs.builder()
///                     .name("Test")
///                     .value("Logs")
///                     .action("Include")
///                     .build())
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
///       name: example-datadog
///       location: West US 2
///   exampleMonitor:
///     type: azure:datadog:Monitor
///     name: example
///     properties:
///       name: example-monitor
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       datadogOrganization:
///         apiKey: XXXX
///         applicationKey: XXXX
///       user:
///         name: Example
///         email: abc@xyz.com
///       skuName: Linked
///       identity:
///         type: SystemAssigned
///   exampleMonitorTagRule:
///     type: azure:datadog:MonitorTagRule
///     name: example
///     properties:
///       datadogMonitorId: ${exampleMonitor.id}
///       logs:
///         - subscriptionLogEnabled: true
///       metrics:
///         - filters:
///             - name: Test
///               value: Logs
///               action: Include
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Datadog` - 2021-03-01
///
/// ## Import
///
/// Tag Rules on the Datadog Monitor can be imported using the `tag rule resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:datadog/monitorTagRule:MonitorTagRule example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Datadog/monitors/monitor1/tagRules/default
/// ```
class MonitorTagRule extends pulumi.CustomResource {
  /// The Datadog Monitor Id which should be used for this Datadog Monitor Tag Rule. Changing this forces a new Datadog Monitor Tag Rule to be created.
  late final pulumi.Output<String> datadogMonitorId;

  /// A `log` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> logs;

  /// A `metric` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> metrics;

  /// The name of the Tag Rules configuration. The allowed value is `default`. Defaults to `default`.
  late final pulumi.Output<String> name;

  /// Creates a new [MonitorTagRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MonitorTagRule]. {@macro pulumi_datadog_monitor_tag_rule_monitor_tag_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MonitorTagRule(
    String name, {
    MonitorTagRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:datadog/monitorTagRule:MonitorTagRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    datadogMonitorId = registerOutput<String>('datadogMonitorId');
    logs = registerOutput<List<Map<String, dynamic>>?>('logs');
    metrics = registerOutput<List<Map<String, dynamic>>?>('metrics');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [MonitorTagRule] resource's state with the given [name] and [id].
  static MonitorTagRule get(
    String name,
    pulumi.Input<String> id, {
    MonitorTagRuleState? state,
  }) {
    return MonitorTagRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MonitorTagRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:datadog/monitorTagRule:MonitorTagRule',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    datadogMonitorId = registerOutput<String>('datadogMonitorId');
    logs = registerOutput<List<Map<String, dynamic>>?>('logs');
    metrics = registerOutput<List<Map<String, dynamic>>?>('metrics');
    this.name = registerOutput<String>('name');
  }
}
