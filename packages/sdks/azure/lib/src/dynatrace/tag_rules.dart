import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_rules_args.dart';
import 'tag_rules_log_rule.dart';
import 'tag_rules_metric_rule.dart';
import 'tag_rules_state.dart';

/// Manages Dynatrace tag rules.
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
/// const exampleMonitor = new azure.dynatrace.Monitor("example", {
///     name: "exmpledynatracemonitor",
///     resourceGroupName: example.name,
///     location: test.location,
///     monitoringEnabled: true,
///     marketplaceSubscriptionStatus: "Active",
///     identity: {
///         type: "SystemAssigned",
///     },
///     user: {
///         firstName: "Alice",
///         lastName: "Bobab",
///         email: "alice@microsoft.com",
///         phoneNumber: "123456",
///         country: "westus",
///     },
///     plan: {
///         usageType: "COMMITTED",
///         billingCycle: "MONTHLY",
///         plan: "azureportalintegration_privatepreview@TIDhjdtn7tfnxcy",
///         effectiveDate: "2019-08-30T15:14:33Z",
///     },
/// });
/// const exampleTagRules = new azure.dynatrace.TagRules("example", {
///     name: "default",
///     monitorId: testAzurermDynatraceMonitors.id,
///     logRule: {
///         filteringTags: [{
///             name: "Environment",
///             value: "Prod",
///             action: "Include",
///         }],
///         sendAzureActiveDirectoryLogsEnabled: true,
///         sendActivityLogsEnabled: true,
///         sendSubscriptionLogsEnabled: true,
///     },
///     metricRule: {
///         filteringTags: [{
///             name: "Environment",
///             value: "Prod",
///             action: "Include",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_monitor = azure.dynatrace.Monitor("example",
///     name="exmpledynatracemonitor",
///     resource_group_name=example.name,
///     location=test["location"],
///     monitoring_enabled=True,
///     marketplace_subscription_status="Active",
///     identity={
///         "type": "SystemAssigned",
///     },
///     user={
///         "first_name": "Alice",
///         "last_name": "Bobab",
///         "email": "alice@microsoft.com",
///         "phone_number": "123456",
///         "country": "westus",
///     },
///     plan={
///         "usage_type": "COMMITTED",
///         "billing_cycle": "MONTHLY",
///         "plan": "azureportalintegration_privatepreview@TIDhjdtn7tfnxcy",
///         "effective_date": "2019-08-30T15:14:33Z",
///     })
/// example_tag_rules = azure.dynatrace.TagRules("example",
///     name="default",
///     monitor_id=test_azurerm_dynatrace_monitors["id"],
///     log_rule={
///         "filtering_tags": [{
///             "name": "Environment",
///             "value": "Prod",
///             "action": "Include",
///         }],
///         "send_azure_active_directory_logs_enabled": True,
///         "send_activity_logs_enabled": True,
///         "send_subscription_logs_enabled": True,
///     },
///     metric_rule={
///         "filtering_tags": [{
///             "name": "Environment",
///             "value": "Prod",
///             "action": "Include",
///         }],
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
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleMonitor = new Azure.Dynatrace.Monitor("example", new()
///     {
///         Name = "exmpledynatracemonitor",
///         ResourceGroupName = example.Name,
///         Location = test.Location,
///         MonitoringEnabled = true,
///         MarketplaceSubscriptionStatus = "Active",
///         Identity = new Azure.Dynatrace.Inputs.MonitorIdentityArgs
///         {
///             Type = "SystemAssigned",
///         },
///         User = new Azure.Dynatrace.Inputs.MonitorUserArgs
///         {
///             FirstName = "Alice",
///             LastName = "Bobab",
///             Email = "alice@microsoft.com",
///             PhoneNumber = "123456",
///             Country = "westus",
///         },
///         Plan = new Azure.Dynatrace.Inputs.MonitorPlanArgs
///         {
///             UsageType = "COMMITTED",
///             BillingCycle = "MONTHLY",
///             Plan = "azureportalintegration_privatepreview@TIDhjdtn7tfnxcy",
///             EffectiveDate = "2019-08-30T15:14:33Z",
///         },
///     });
///
///     var exampleTagRules = new Azure.Dynatrace.TagRules("example", new()
///     {
///         Name = "default",
///         MonitorId = testAzurermDynatraceMonitors.Id,
///         LogRule = new Azure.Dynatrace.Inputs.TagRulesLogRuleArgs
///         {
///             FilteringTags = new[]
///             {
///                 new Azure.Dynatrace.Inputs.TagRulesLogRuleFilteringTagArgs
///                 {
///                     Name = "Environment",
///                     Value = "Prod",
///                     Action = "Include",
///                 },
///             },
///             SendAzureActiveDirectoryLogsEnabled = true,
///             SendActivityLogsEnabled = true,
///             SendSubscriptionLogsEnabled = true,
///         },
///         MetricRule = new Azure.Dynatrace.Inputs.TagRulesMetricRuleArgs
///         {
///             FilteringTags = new[]
///             {
///                 new Azure.Dynatrace.Inputs.TagRulesMetricRuleFilteringTagArgs
///                 {
///                     Name = "Environment",
///                     Value = "Prod",
///                     Action = "Include",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/dynatrace"
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
/// 		_, err = dynatrace.NewMonitor(ctx, "example", &dynatrace.MonitorArgs{
/// 			Name:                          pulumi.String("exmpledynatracemonitor"),
/// 			ResourceGroupName:             example.Name,
/// 			Location:                      pulumi.Any(test.Location),
/// 			MonitoringEnabled:             pulumi.Bool(true),
/// 			MarketplaceSubscriptionStatus: "Active",
/// 			Identity: &dynatrace.MonitorIdentityArgs{
/// 				Type: pulumi.String("SystemAssigned"),
/// 			},
/// 			User: &dynatrace.MonitorUserArgs{
/// 				FirstName:   pulumi.String("Alice"),
/// 				LastName:    pulumi.String("Bobab"),
/// 				Email:       pulumi.String("alice@microsoft.com"),
/// 				PhoneNumber: pulumi.String("123456"),
/// 				Country:     pulumi.String("westus"),
/// 			},
/// 			Plan: &dynatrace.MonitorPlanArgs{
/// 				UsageType:     pulumi.String("COMMITTED"),
/// 				BillingCycle:  pulumi.String("MONTHLY"),
/// 				Plan:          pulumi.String("azureportalintegration_privatepreview@TIDhjdtn7tfnxcy"),
/// 				EffectiveDate: pulumi.String("2019-08-30T15:14:33Z"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dynatrace.NewTagRules(ctx, "example", &dynatrace.TagRulesArgs{
/// 			Name:      pulumi.String("default"),
/// 			MonitorId: pulumi.Any(testAzurermDynatraceMonitors.Id),
/// 			LogRule: &dynatrace.TagRulesLogRuleArgs{
/// 				FilteringTags: dynatrace.TagRulesLogRuleFilteringTagArray{
/// 					&dynatrace.TagRulesLogRuleFilteringTagArgs{
/// 						Name:   pulumi.String("Environment"),
/// 						Value:  pulumi.String("Prod"),
/// 						Action: pulumi.String("Include"),
/// 					},
/// 				},
/// 				SendAzureActiveDirectoryLogsEnabled: pulumi.Bool(true),
/// 				SendActivityLogsEnabled:             pulumi.Bool(true),
/// 				SendSubscriptionLogsEnabled:         pulumi.Bool(true),
/// 			},
/// 			MetricRule: &dynatrace.TagRulesMetricRuleArgs{
/// 				FilteringTags: dynatrace.TagRulesMetricRuleFilteringTagArray{
/// 					&dynatrace.TagRulesMetricRuleFilteringTagArgs{
/// 						Name:   pulumi.String("Environment"),
/// 						Value:  pulumi.String("Prod"),
/// 						Action: pulumi.String("Include"),
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
/// import com.pulumi.azure.dynatrace.Monitor;
/// import com.pulumi.azure.dynatrace.MonitorArgs;
/// import com.pulumi.azure.dynatrace.inputs.MonitorIdentityArgs;
/// import com.pulumi.azure.dynatrace.inputs.MonitorUserArgs;
/// import com.pulumi.azure.dynatrace.inputs.MonitorPlanArgs;
/// import com.pulumi.azure.dynatrace.TagRules;
/// import com.pulumi.azure.dynatrace.TagRulesArgs;
/// import com.pulumi.azure.dynatrace.inputs.TagRulesLogRuleArgs;
/// import com.pulumi.azure.dynatrace.inputs.TagRulesMetricRuleArgs;
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
///         var exampleMonitor = new Monitor("exampleMonitor", MonitorArgs.builder()
///             .name("exmpledynatracemonitor")
///             .resourceGroupName(example.name())
///             .location(test.location())
///             .monitoringEnabled(true)
///             .marketplaceSubscriptionStatus("Active")
///             .identity(MonitorIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .user(MonitorUserArgs.builder()
///                 .firstName("Alice")
///                 .lastName("Bobab")
///                 .email("alice@microsoft.com")
///                 .phoneNumber("123456")
///                 .country("westus")
///                 .build())
///             .plan(MonitorPlanArgs.builder()
///                 .usageType("COMMITTED")
///                 .billingCycle("MONTHLY")
///                 .plan("azureportalintegration_privatepreview@TIDhjdtn7tfnxcy")
///                 .effectiveDate("2019-08-30T15:14:33Z")
///                 .build())
///             .build());
///
///         var exampleTagRules = new TagRules("exampleTagRules", TagRulesArgs.builder()
///             .name("default")
///             .monitorId(testAzurermDynatraceMonitors.id())
///             .logRule(TagRulesLogRuleArgs.builder()
///                 .filteringTags(TagRulesLogRuleFilteringTagArgs.builder()
///                     .name("Environment")
///                     .value("Prod")
///                     .action("Include")
///                     .build())
///                 .sendAzureActiveDirectoryLogsEnabled(true)
///                 .sendActivityLogsEnabled(true)
///                 .sendSubscriptionLogsEnabled(true)
///                 .build())
///             .metricRule(TagRulesMetricRuleArgs.builder()
///                 .filteringTags(TagRulesMetricRuleFilteringTagArgs.builder()
///                     .name("Environment")
///                     .value("Prod")
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
///       name: example-resources
///       location: West Europe
///   exampleMonitor:
///     type: azure:dynatrace:Monitor
///     name: example
///     properties:
///       name: exmpledynatracemonitor
///       resourceGroupName: ${example.name}
///       location: ${test.location}
///       monitoringEnabled: true
///       marketplaceSubscriptionStatus: Active
///       identity:
///         type: SystemAssigned
///       user:
///         firstName: Alice
///         lastName: Bobab
///         email: alice@microsoft.com
///         phoneNumber: '123456'
///         country: westus
///       plan:
///         usageType: COMMITTED
///         billingCycle: MONTHLY
///         plan: azureportalintegration_privatepreview@TIDhjdtn7tfnxcy
///         effectiveDate: 2019-08-30T15:14:33Z
///   exampleTagRules:
///     type: azure:dynatrace:TagRules
///     name: example
///     properties:
///       name: default
///       monitorId: ${testAzurermDynatraceMonitors.id}
///       logRule:
///         filteringTags:
///           - name: Environment
///             value: Prod
///             action: Include
///         sendAzureActiveDirectoryLogsEnabled: true
///         sendActivityLogsEnabled: true
///         sendSubscriptionLogsEnabled: true
///       metricRule:
///         filteringTags:
///           - name: Environment
///             value: Prod
///             action: Include
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Dynatrace.Observability` - 2023-04-27
///
/// ## Import
///
/// Dynatrace tag rules can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:dynatrace/tagRules:TagRules example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/resGroup1/providers/Dynatrace.Observability/monitors/monitor1/tagRules/tagRules1
/// ```
class TagRules extends pulumi.CustomResource {
  /// Set of rules for sending logs for the Monitor resource. A `log_rule` block as defined below.
  late final pulumi.Output<TagRulesLogRule?> logRule;
  /// Set of rules for sending metrics for the Monitor resource. A `metric_rule` block as defined below.
  late final pulumi.Output<TagRulesMetricRule?> metricRule;
  /// Name of the Dynatrace monitor. Changing this forces a new resource to be created.
  late final pulumi.Output<String> monitorId;
  /// Name of the Dynatrace tag rules. Currently, the only supported value is `default`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// Creates a new [TagRules].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TagRules]. {@macro pulumi_dynatrace_tag_rules_tag_rules_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TagRules(
    String name, {
    TagRulesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:dynatrace/tagRules:TagRules',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    logRule = registerOutput<TagRulesLogRule?>('logRule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TagRulesLogRule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    metricRule = registerOutput<TagRulesMetricRule?>('metricRule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TagRulesMetricRule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    monitorId = registerOutput<String>('monitorId');
    this.name = registerOutput<String>('name');
  }

  /// Gets an existing [TagRules] resource's state with the given [name] and [id].
  static TagRules get(
    String name,
    pulumi.Input<String> id, {
    TagRulesState? state,
  }) {
    return TagRules._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TagRules._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:dynatrace/tagRules:TagRules',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    logRule = registerOutput<TagRulesLogRule?>('logRule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TagRulesLogRule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    metricRule = registerOutput<TagRulesMetricRule?>('metricRule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TagRulesMetricRule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    monitorId = registerOutput<String>('monitorId');
    this.name = registerOutput<String>('name');
  }
}
