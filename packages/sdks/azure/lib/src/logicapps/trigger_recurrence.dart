import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_recurrence_args.dart';
import 'trigger_recurrence_schedule.dart';
import 'trigger_recurrence_state.dart';

/// Manages a Recurrence Trigger within a Logic App Workflow
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "workflow-resources",
///     location: "West Europe",
/// });
/// const exampleWorkflow = new azure.logicapps.Workflow("example", {
///     name: "workflow1",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleTriggerRecurrence = new azure.logicapps.TriggerRecurrence("example", {
///     name: "run-every-day",
///     logicAppId: exampleWorkflow.id,
///     frequency: "Day",
///     interval: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="workflow-resources",
///     location="West Europe")
/// example_workflow = azure.logicapps.Workflow("example",
///     name="workflow1",
///     location=example.location,
///     resource_group_name=example.name)
/// example_trigger_recurrence = azure.logicapps.TriggerRecurrence("example",
///     name="run-every-day",
///     logic_app_id=example_workflow.id,
///     frequency="Day",
///     interval=1)
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
///         Name = "workflow-resources",
///         Location = "West Europe",
///     });
///
///     var exampleWorkflow = new Azure.LogicApps.Workflow("example", new()
///     {
///         Name = "workflow1",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleTriggerRecurrence = new Azure.LogicApps.TriggerRecurrence("example", new()
///     {
///         Name = "run-every-day",
///         LogicAppId = exampleWorkflow.Id,
///         Frequency = "Day",
///         Interval = 1,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/logicapps"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("workflow-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleWorkflow, err := logicapps.NewWorkflow(ctx, "example", &logicapps.WorkflowArgs{
/// 			Name:              pulumi.String("workflow1"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = logicapps.NewTriggerRecurrence(ctx, "example", &logicapps.TriggerRecurrenceArgs{
/// 			Name:       pulumi.String("run-every-day"),
/// 			LogicAppId: exampleWorkflow.ID(),
/// 			Frequency:  pulumi.String("Day"),
/// 			Interval:   pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "workflow-resources"
///   location = "West Europe"
/// }
/// resource "azure_logicapps_workflow" "example" {
///   name                = "workflow1"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_logicapps_triggerrecurrence" "example" {
///   name         = "run-every-day"
///   logic_app_id = azure_logicapps_workflow.example.id
///   frequency    = "Day"
///   interval     = 1
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
/// import com.pulumi.azure.logicapps.Workflow;
/// import com.pulumi.azure.logicapps.WorkflowArgs;
/// import com.pulumi.azure.logicapps.TriggerRecurrence;
/// import com.pulumi.azure.logicapps.TriggerRecurrenceArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///             .name("workflow-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleWorkflow = new Workflow("exampleWorkflow", WorkflowArgs.builder()
///             .name("workflow1")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleTriggerRecurrence = new TriggerRecurrence("exampleTriggerRecurrence", TriggerRecurrenceArgs.builder()
///             .name("run-every-day")
///             .logicAppId(exampleWorkflow.id())
///             .frequency("Day")
///             .interval(1)
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
///       name: workflow-resources
///       location: West Europe
///   exampleWorkflow:
///     type: azure:logicapps:Workflow
///     name: example
///     properties:
///       name: workflow1
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleTriggerRecurrence:
///     type: azure:logicapps:TriggerRecurrence
///     name: example
///     properties:
///       name: run-every-day
///       logicAppId: ${exampleWorkflow.id}
///       frequency: Day
///       interval: 1
/// ```
///
///
/// ## Import
///
/// Logic App Recurrence Triggers can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:logicapps/triggerRecurrence:TriggerRecurrence daily /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Logic/workflows/workflow1/triggers/daily
/// ```
///
/// &gt; **NOTE:** This ID is unique to this provider and doesn't directly match to any other resource. To compose this ID, you can take the ID Logic App Workflow and append `/triggers/{name of the trigger}`.
class TriggerRecurrence extends pulumi.CustomResource {
  /// Specifies the Frequency at which this Trigger should be run. Possible values include `Month`, `Week`, `Day`, `Hour`, `Minute` and `Second`.
  late final pulumi.Output<String> frequency;
  /// Specifies interval used for the Frequency, for example a value of `4` for `interval` and `hour` for `frequency` would run the Trigger every 4 hours.
  late final pulumi.Output<int> interval;
  /// Specifies the ID of the Logic App Workflow. Changing this forces a new resource to be created.
  late final pulumi.Output<String> logicAppId;
  /// Specifies the name of the Recurrence Triggers to be created within the Logic App Workflow. Changing this forces a new resource to be created.
  ///
  /// &gt; **NOTE:** This name must be unique across all Triggers within the Logic App Workflow.
  late final pulumi.Output<String> name;
  /// A `schedule` block as specified below.
  late final pulumi.Output<TriggerRecurrenceSchedule?> schedule;
  /// Specifies the start date and time for this trigger in RFC3339 format: `2000-01-02T03:04:05Z`.
  late final pulumi.Output<String?> startTime;
  /// Specifies the time zone for this trigger. Supported time zone options are listed [here](https://support.microsoft.com/en-us/help/973627/microsoft-time-zone-index-values)
  late final pulumi.Output<String> timeZone;

  /// Creates a new [TriggerRecurrence].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TriggerRecurrence]. {@macro pulumi_logicapps_trigger_recurrence_trigger_recurrence_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TriggerRecurrence(
    String name, {
    TriggerRecurrenceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:logicapps/triggerRecurrence:TriggerRecurrence',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    frequency = registerOutput<String>('frequency');
    interval = registerOutput<int>('interval');
    logicAppId = registerOutput<String>('logicAppId');
    this.name = registerOutput<String>('name');
    schedule = registerOutput<TriggerRecurrenceSchedule?>('schedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TriggerRecurrenceSchedule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    startTime = registerOutput<String?>('startTime');
    timeZone = registerOutput<String>('timeZone');
  }

  /// Gets an existing [TriggerRecurrence] resource's state with the given [name] and [id].
  static TriggerRecurrence get(
    String name,
    pulumi.Input<String> id, {
    TriggerRecurrenceState? state,
  }) {
    return TriggerRecurrence._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TriggerRecurrence._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:logicapps/triggerRecurrence:TriggerRecurrence',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    frequency = registerOutput<String>('frequency');
    interval = registerOutput<int>('interval');
    logicAppId = registerOutput<String>('logicAppId');
    this.name = registerOutput<String>('name');
    schedule = registerOutput<TriggerRecurrenceSchedule?>('schedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TriggerRecurrenceSchedule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    startTime = registerOutput<String?>('startTime');
    timeZone = registerOutput<String>('timeZone');
  }
}
