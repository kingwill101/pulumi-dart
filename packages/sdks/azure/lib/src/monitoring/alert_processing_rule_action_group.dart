import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_processing_rule_action_group_args.dart';
import 'alert_processing_rule_action_group_condition.dart';
import 'alert_processing_rule_action_group_schedule.dart';
import 'alert_processing_rule_action_group_state.dart';

/// Manages an Alert Processing Rule which apply action group.
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
/// const exampleActionGroup = new azure.monitoring.ActionGroup("example", {
///     name: "example-action-group",
///     resourceGroupName: example.name,
///     shortName: "action",
/// });
/// const exampleAlertProcessingRuleActionGroup = new azure.monitoring.AlertProcessingRuleActionGroup("example", {
///     name: "example",
///     resourceGroupName: "example",
///     scopes: [example.id],
///     addActionGroupIds: [exampleActionGroup.id],
///     condition: {
///         targetResourceType: {
///             operator: "Equals",
///             values: ["Microsoft.Compute/VirtualMachines"],
///         },
///         severity: {
///             operator: "Equals",
///             values: [
///                 "Sev0",
///                 "Sev1",
///                 "Sev2",
///             ],
///         },
///     },
///     schedule: {
///         effectiveFrom: "2022-01-01T01:02:03",
///         effectiveUntil: "2022-02-02T01:02:03",
///         timeZone: "Pacific Standard Time",
///         recurrence: {
///             dailies: [{
///                 startTime: "17:00:00",
///                 endTime: "09:00:00",
///             }],
///             weeklies: [{
///                 daysOfWeeks: [
///                     "Saturday",
///                     "Sunday",
///                 ],
///             }],
///         },
///     },
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
///     name="example-resources",
///     location="West Europe")
/// example_action_group = azure.monitoring.ActionGroup("example",
///     name="example-action-group",
///     resource_group_name=example.name,
///     short_name="action")
/// example_alert_processing_rule_action_group = azure.monitoring.AlertProcessingRuleActionGroup("example",
///     name="example",
///     resource_group_name="example",
///     scopes=[example.id],
///     add_action_group_ids=[example_action_group.id],
///     condition={
///         "target_resource_type": {
///             "operator": "Equals",
///             "values": ["Microsoft.Compute/VirtualMachines"],
///         },
///         "severity": {
///             "operator": "Equals",
///             "values": [
///                 "Sev0",
///                 "Sev1",
///                 "Sev2",
///             ],
///         },
///     },
///     schedule={
///         "effective_from": "2022-01-01T01:02:03",
///         "effective_until": "2022-02-02T01:02:03",
///         "time_zone": "Pacific Standard Time",
///         "recurrence": {
///             "dailies": [{
///                 "start_time": "17:00:00",
///                 "end_time": "09:00:00",
///             }],
///             "weeklies": [{
///                 "days_of_weeks": [
///                     "Saturday",
///                     "Sunday",
///                 ],
///             }],
///         },
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
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleActionGroup = new Azure.Monitoring.ActionGroup("example", new()
///     {
///         Name = "example-action-group",
///         ResourceGroupName = example.Name,
///         ShortName = "action",
///     });
///
///     var exampleAlertProcessingRuleActionGroup = new Azure.Monitoring.AlertProcessingRuleActionGroup("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = "example",
///         Scopes = new[]
///         {
///             example.Id,
///         },
///         AddActionGroupIds = new[]
///         {
///             exampleActionGroup.Id,
///         },
///         Condition = new Azure.Monitoring.Inputs.AlertProcessingRuleActionGroupConditionArgs
///         {
///             TargetResourceType = new Azure.Monitoring.Inputs.AlertProcessingRuleActionGroupConditionTargetResourceTypeArgs
///             {
///                 Operator = "Equals",
///                 Values = new[]
///                 {
///                     "Microsoft.Compute/VirtualMachines",
///                 },
///             },
///             Severity = new Azure.Monitoring.Inputs.AlertProcessingRuleActionGroupConditionSeverityArgs
///             {
///                 Operator = "Equals",
///                 Values = new[]
///                 {
///                     "Sev0",
///                     "Sev1",
///                     "Sev2",
///                 },
///             },
///         },
///         Schedule = new Azure.Monitoring.Inputs.AlertProcessingRuleActionGroupScheduleArgs
///         {
///             EffectiveFrom = "2022-01-01T01:02:03",
///             EffectiveUntil = "2022-02-02T01:02:03",
///             TimeZone = "Pacific Standard Time",
///             Recurrence = new Azure.Monitoring.Inputs.AlertProcessingRuleActionGroupScheduleRecurrenceArgs
///             {
///                 Dailies = new[]
///                 {
///                     new Azure.Monitoring.Inputs.AlertProcessingRuleActionGroupScheduleRecurrenceDailyArgs
///                     {
///                         StartTime = "17:00:00",
///                         EndTime = "09:00:00",
///                     },
///                 },
///                 Weeklies = new[]
///                 {
///                     new Azure.Monitoring.Inputs.AlertProcessingRuleActionGroupScheduleRecurrenceWeeklyArgs
///                     {
///                         DaysOfWeeks = new[]
///                         {
///                             "Saturday",
///                             "Sunday",
///                         },
///                     },
///                 },
///             },
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/monitoring"
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
/// 		exampleActionGroup, err := monitoring.NewActionGroup(ctx, "example", &monitoring.ActionGroupArgs{
/// 			Name:              pulumi.String("example-action-group"),
/// 			ResourceGroupName: example.Name,
/// 			ShortName:         pulumi.String("action"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = monitoring.NewAlertProcessingRuleActionGroup(ctx, "example", &monitoring.AlertProcessingRuleActionGroupArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: pulumi.String("example"),
/// 			Scopes: pulumi.StringArray{
/// 				example.ID(),
/// 			},
/// 			AddActionGroupIds: pulumi.StringArray{
/// 				exampleActionGroup.ID(),
/// 			},
/// 			Condition: &monitoring.AlertProcessingRuleActionGroupConditionArgs{
/// 				TargetResourceType: &monitoring.AlertProcessingRuleActionGroupConditionTargetResourceTypeArgs{
/// 					Operator: pulumi.String("Equals"),
/// 					Values: pulumi.StringArray{
/// 						pulumi.String("Microsoft.Compute/VirtualMachines"),
/// 					},
/// 				},
/// 				Severity: &monitoring.AlertProcessingRuleActionGroupConditionSeverityArgs{
/// 					Operator: pulumi.String("Equals"),
/// 					Values: pulumi.StringArray{
/// 						pulumi.String("Sev0"),
/// 						pulumi.String("Sev1"),
/// 						pulumi.String("Sev2"),
/// 					},
/// 				},
/// 			},
/// 			Schedule: &monitoring.AlertProcessingRuleActionGroupScheduleArgs{
/// 				EffectiveFrom:  pulumi.String("2022-01-01T01:02:03"),
/// 				EffectiveUntil: pulumi.String("2022-02-02T01:02:03"),
/// 				TimeZone:       pulumi.String("Pacific Standard Time"),
/// 				Recurrence: &monitoring.AlertProcessingRuleActionGroupScheduleRecurrenceArgs{
/// 					Dailies: monitoring.AlertProcessingRuleActionGroupScheduleRecurrenceDailyArray{
/// 						&monitoring.AlertProcessingRuleActionGroupScheduleRecurrenceDailyArgs{
/// 							StartTime: pulumi.String("17:00:00"),
/// 							EndTime:   pulumi.String("09:00:00"),
/// 						},
/// 					},
/// 					Weeklies: monitoring.AlertProcessingRuleActionGroupScheduleRecurrenceWeeklyArray{
/// 						&monitoring.AlertProcessingRuleActionGroupScheduleRecurrenceWeeklyArgs{
/// 							DaysOfWeeks: pulumi.StringArray{
/// 								pulumi.String("Saturday"),
/// 								pulumi.String("Sunday"),
/// 							},
/// 						},
/// 					},
/// 				},
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
/// import com.pulumi.azure.monitoring.ActionGroup;
/// import com.pulumi.azure.monitoring.ActionGroupArgs;
/// import com.pulumi.azure.monitoring.AlertProcessingRuleActionGroup;
/// import com.pulumi.azure.monitoring.AlertProcessingRuleActionGroupArgs;
/// import com.pulumi.azure.monitoring.inputs.AlertProcessingRuleActionGroupConditionArgs;
/// import com.pulumi.azure.monitoring.inputs.AlertProcessingRuleActionGroupConditionTargetResourceTypeArgs;
/// import com.pulumi.azure.monitoring.inputs.AlertProcessingRuleActionGroupConditionSeverityArgs;
/// import com.pulumi.azure.monitoring.inputs.AlertProcessingRuleActionGroupScheduleArgs;
/// import com.pulumi.azure.monitoring.inputs.AlertProcessingRuleActionGroupScheduleRecurrenceArgs;
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
///         var exampleActionGroup = new ActionGroup("exampleActionGroup", ActionGroupArgs.builder()
///             .name("example-action-group")
///             .resourceGroupName(example.name())
///             .shortName("action")
///             .build());
///
///         var exampleAlertProcessingRuleActionGroup = new AlertProcessingRuleActionGroup("exampleAlertProcessingRuleActionGroup", AlertProcessingRuleActionGroupArgs.builder()
///             .name("example")
///             .resourceGroupName("example")
///             .scopes(example.id())
///             .addActionGroupIds(exampleActionGroup.id())
///             .condition(AlertProcessingRuleActionGroupConditionArgs.builder()
///                 .targetResourceType(AlertProcessingRuleActionGroupConditionTargetResourceTypeArgs.builder()
///                     .operator("Equals")
///                     .values("Microsoft.Compute/VirtualMachines")
///                     .build())
///                 .severity(AlertProcessingRuleActionGroupConditionSeverityArgs.builder()
///                     .operator("Equals")
///                     .values(
///                         "Sev0",
///                         "Sev1",
///                         "Sev2")
///                     .build())
///                 .build())
///             .schedule(AlertProcessingRuleActionGroupScheduleArgs.builder()
///                 .effectiveFrom("2022-01-01T01:02:03")
///                 .effectiveUntil("2022-02-02T01:02:03")
///                 .timeZone("Pacific Standard Time")
///                 .recurrence(AlertProcessingRuleActionGroupScheduleRecurrenceArgs.builder()
///                     .dailies(AlertProcessingRuleActionGroupScheduleRecurrenceDailyArgs.builder()
///                         .startTime("17:00:00")
///                         .endTime("09:00:00")
///                         .build())
///                     .weeklies(AlertProcessingRuleActionGroupScheduleRecurrenceWeeklyArgs.builder()
///                         .daysOfWeeks(
///                             "Saturday",
///                             "Sunday")
///                         .build())
///                     .build())
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
///       name: example-resources
///       location: West Europe
///   exampleActionGroup:
///     type: azure:monitoring:ActionGroup
///     name: example
///     properties:
///       name: example-action-group
///       resourceGroupName: ${example.name}
///       shortName: action
///   exampleAlertProcessingRuleActionGroup:
///     type: azure:monitoring:AlertProcessingRuleActionGroup
///     name: example
///     properties:
///       name: example
///       resourceGroupName: example
///       scopes:
///         - ${example.id}
///       addActionGroupIds:
///         - ${exampleActionGroup.id}
///       condition:
///         targetResourceType:
///           operator: Equals
///           values:
///             - Microsoft.Compute/VirtualMachines
///         severity:
///           operator: Equals
///           values:
///             - Sev0
///             - Sev1
///             - Sev2
///       schedule:
///         effectiveFrom: 2022-01-01T01:02:03
///         effectiveUntil: 2022-02-02T01:02:03
///         timeZone: Pacific Standard Time
///         recurrence:
///           dailies:
///             - startTime: 17:00:00
///               endTime: 09:00:00
///           weeklies:
///             - daysOfWeeks:
///                 - Saturday
///                 - Sunday
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
/// * `Microsoft.AlertsManagement` - 2021-08-08
///
/// ## Import
///
/// Alert Processing Rules can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:monitoring/alertProcessingRuleActionGroup:AlertProcessingRuleActionGroup example /subscriptions/12345678-1234-9876-4563-123456789012/resourceGroups/group1/providers/Microsoft.AlertsManagement/actionRules/actionRule1
/// ```
class AlertProcessingRuleActionGroup extends pulumi.CustomResource {
  /// Specifies a list of Action Group IDs.
  late final pulumi.Output<List<String>> addActionGroupIds;

  /// A `condition` block as defined below.
  late final pulumi.Output<AlertProcessingRuleActionGroupCondition?> condition;

  /// Specifies a description for the Alert Processing Rule.
  late final pulumi.Output<String?> description;

  /// Should the Alert Processing Rule be enabled? Defaults to `true`.
  late final pulumi.Output<bool?> enabled;

  /// The name which should be used for this Alert Processing Rule. Changing this forces a new Alert Processing Rule to be created.
  late final pulumi.Output<String> name;

  /// The name of the Resource Group where the Alert Processing Rule should exist. Changing this forces a new Alert Processing Rule to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// A `schedule` block as defined below.
  late final pulumi.Output<AlertProcessingRuleActionGroupSchedule?> schedule;

  /// A list of resource IDs which will be the target of alert processing rule.
  late final pulumi.Output<List<String>> scopes;

  /// A mapping of tags which should be assigned to the Alert Processing Rule.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [AlertProcessingRuleActionGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AlertProcessingRuleActionGroup]. {@macro pulumi_monitoring_alert_processing_rule_action_group_alert_processing_rule_action_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AlertProcessingRuleActionGroup(
    String name, {
    AlertProcessingRuleActionGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:monitoring/alertProcessingRuleActionGroup:AlertProcessingRuleActionGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    addActionGroupIds = registerOutput<List<String>>('addActionGroupIds');
    condition = registerOutput<AlertProcessingRuleActionGroupCondition?>(
      'condition',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AlertProcessingRuleActionGroupCondition.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool?>('enabled');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    schedule = registerOutput<AlertProcessingRuleActionGroupSchedule?>(
      'schedule',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AlertProcessingRuleActionGroupSchedule.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    scopes = registerOutput<List<String>>('scopes');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [AlertProcessingRuleActionGroup] resource's state with the given [name] and [id].
  static AlertProcessingRuleActionGroup get(
    String name,
    pulumi.Input<String> id, {
    AlertProcessingRuleActionGroupState? state,
  }) {
    return AlertProcessingRuleActionGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AlertProcessingRuleActionGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:monitoring/alertProcessingRuleActionGroup:AlertProcessingRuleActionGroup',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    addActionGroupIds = registerOutput<List<String>>('addActionGroupIds');
    condition = registerOutput<AlertProcessingRuleActionGroupCondition?>(
      'condition',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AlertProcessingRuleActionGroupCondition.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool?>('enabled');
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    schedule = registerOutput<AlertProcessingRuleActionGroupSchedule?>(
      'schedule',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AlertProcessingRuleActionGroupSchedule.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    scopes = registerOutput<List<String>>('scopes');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
