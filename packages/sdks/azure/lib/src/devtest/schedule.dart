import 'package:pulumi/pulumi.dart' as pulumi;
import 'schedule_args.dart';
import 'schedule_daily_recurrence.dart';
import 'schedule_hourly_recurrence.dart';
import 'schedule_notification_settings.dart';
import 'schedule_state.dart';
import 'schedule_weekly_recurrence.dart';

/// Manages automated startup and shutdown schedules for Azure Dev Test Lab.
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
/// const exampleLab = new azure.devtest.Lab("example", {
///     name: "YourDevTestLab",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleSchedule = new azure.devtest.Schedule("example", {
///     name: "LabVmAutoStart",
///     location: example.location,
///     resourceGroupName: example.name,
///     labName: exampleLab.name,
///     status: "Enabled",
///     weeklyRecurrence: {
///         time: "1100",
///         weekDays: [
///             "Monday",
///             "Tuesday",
///         ],
///     },
///     timeZoneId: "Pacific Standard Time",
///     taskType: "LabVmsStartupTask",
///     notificationSettings: {},
///     tags: {
///         environment: "Production",
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
/// example_lab = azure.devtest.Lab("example",
///     name="YourDevTestLab",
///     location=example.location,
///     resource_group_name=example.name)
/// example_schedule = azure.devtest.Schedule("example",
///     name="LabVmAutoStart",
///     location=example.location,
///     resource_group_name=example.name,
///     lab_name=example_lab.name,
///     status="Enabled",
///     weekly_recurrence={
///         "time": "1100",
///         "week_days": [
///             "Monday",
///             "Tuesday",
///         ],
///     },
///     time_zone_id="Pacific Standard Time",
///     task_type="LabVmsStartupTask",
///     notification_settings={},
///     tags={
///         "environment": "Production",
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
///     var exampleLab = new Azure.DevTest.Lab("example", new()
///     {
///         Name = "YourDevTestLab",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleSchedule = new Azure.DevTest.Schedule("example", new()
///     {
///         Name = "LabVmAutoStart",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         LabName = exampleLab.Name,
///         Status = "Enabled",
///         WeeklyRecurrence = new Azure.DevTest.Inputs.ScheduleWeeklyRecurrenceArgs
///         {
///             Time = "1100",
///             WeekDays = new[]
///             {
///                 "Monday",
///                 "Tuesday",
///             },
///         },
///         TimeZoneId = "Pacific Standard Time",
///         TaskType = "LabVmsStartupTask",
///         NotificationSettings = null,
///         Tags =
///         {
///             { "environment", "Production" },
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/devtest"
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
/// 		exampleLab, err := devtest.NewLab(ctx, "example", &devtest.LabArgs{
/// 			Name:              pulumi.String("YourDevTestLab"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = devtest.NewSchedule(ctx, "example", &devtest.ScheduleArgs{
/// 			Name:              pulumi.String("LabVmAutoStart"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			LabName:           exampleLab.Name,
/// 			Status:            pulumi.String("Enabled"),
/// 			WeeklyRecurrence: &devtest.ScheduleWeeklyRecurrenceArgs{
/// 				Time: pulumi.String("1100"),
/// 				WeekDays: pulumi.StringArray{
/// 					pulumi.String("Monday"),
/// 					pulumi.String("Tuesday"),
/// 				},
/// 			},
/// 			TimeZoneId:           pulumi.String("Pacific Standard Time"),
/// 			TaskType:             pulumi.String("LabVmsStartupTask"),
/// 			NotificationSettings: &devtest.ScheduleNotificationSettingsArgs{},
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("Production"),
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
/// import com.pulumi.azure.devtest.Lab;
/// import com.pulumi.azure.devtest.LabArgs;
/// import com.pulumi.azure.devtest.Schedule;
/// import com.pulumi.azure.devtest.ScheduleArgs;
/// import com.pulumi.azure.devtest.inputs.ScheduleWeeklyRecurrenceArgs;
/// import com.pulumi.azure.devtest.inputs.ScheduleNotificationSettingsArgs;
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
///         var exampleLab = new Lab("exampleLab", LabArgs.builder()
///             .name("YourDevTestLab")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleSchedule = new Schedule("exampleSchedule", ScheduleArgs.builder()
///             .name("LabVmAutoStart")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .labName(exampleLab.name())
///             .status("Enabled")
///             .weeklyRecurrence(ScheduleWeeklyRecurrenceArgs.builder()
///                 .time("1100")
///                 .weekDays(
///                     "Monday",
///                     "Tuesday")
///                 .build())
///             .timeZoneId("Pacific Standard Time")
///             .taskType("LabVmsStartupTask")
///             .notificationSettings(ScheduleNotificationSettingsArgs.builder()
///                 .build())
///             .tags(Map.of("environment", "Production"))
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
///   exampleLab:
///     type: azure:devtest:Lab
///     name: example
///     properties:
///       name: YourDevTestLab
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleSchedule:
///     type: azure:devtest:Schedule
///     name: example
///     properties:
///       name: LabVmAutoStart
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       labName: ${exampleLab.name}
///       status: Enabled
///       weeklyRecurrence:
///         time: '1100'
///         weekDays:
///           - Monday
///           - Tuesday
///       timeZoneId: Pacific Standard Time
///       taskType: LabVmsStartupTask
///       notificationSettings: {}
///       tags:
///         environment: Production
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DevTestLab` - 2018-09-15
///
/// ## Import
///
/// DevTest Schedule's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:devtest/schedule:Schedule example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.DevTestLab/labs/myDevTestLab/schedules/labvmautostart
/// ```
class Schedule extends pulumi.CustomResource {
  /// The properties of a daily schedule. If the schedule occurs once each day of the week, specify the daily recurrence. A `daily_recurrence` block as defined below.
  late final pulumi.Output<ScheduleDailyRecurrence?> dailyRecurrence;
  /// The properties of an hourly schedule. If the schedule occurs multiple times a day, specify the hourly recurrence. A `hourly_recurrence` block as defined below.
  late final pulumi.Output<ScheduleHourlyRecurrence?> hourlyRecurrence;
  /// The name of the dev test lab. Changing this forces a new resource to be created.
  late final pulumi.Output<String> labName;
  /// The location where the schedule is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name of the dev test lab schedule. Valid value for name depends on the `task_type`. For instance for task_type `LabVmsStartupTask` the name needs to be `LabVmAutoStart`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The notification setting of a schedule. A `notification_settings` block as defined below.
  late final pulumi.Output<ScheduleNotificationSettings> notificationSettings;
  /// The name of the resource group in which to create the dev test lab schedule. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The status of this schedule. Possible values are `Enabled` and `Disabled`. Defaults to `Disabled`.
  late final pulumi.Output<String?> status;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The task type of the schedule. Possible values include `LabVmsShutdownTask` and `LabVmAutoStart`.
  late final pulumi.Output<String> taskType;
  /// The time zone ID (e.g. Pacific Standard time).
  late final pulumi.Output<String> timeZoneId;
  /// The properties of a weekly schedule. If the schedule occurs only some days of the week, specify the weekly recurrence. A `weekly_recurrence` block as defined below.
  late final pulumi.Output<ScheduleWeeklyRecurrence?> weeklyRecurrence;

  /// Creates a new [Schedule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Schedule]. {@macro pulumi_devtest_schedule_schedule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Schedule(
    String name, {
    ScheduleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:devtest/schedule:Schedule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dailyRecurrence = registerOutput<ScheduleDailyRecurrence?>('dailyRecurrence');
    this.hourlyRecurrence = registerOutput<ScheduleHourlyRecurrence?>('hourlyRecurrence');
    this.labName = registerOutput<String>('labName');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.notificationSettings = registerOutput<ScheduleNotificationSettings>('notificationSettings');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.status = registerOutput<String?>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.taskType = registerOutput<String>('taskType');
    this.timeZoneId = registerOutput<String>('timeZoneId');
    this.weeklyRecurrence = registerOutput<ScheduleWeeklyRecurrence?>('weeklyRecurrence');
  }

  /// Gets an existing [Schedule] resource's state with the given [name] and [id].
  static Schedule get(
    String name,
    pulumi.Input<String> id, {
    ScheduleState? state,
  }) {
    return Schedule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Schedule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:devtest/schedule:Schedule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dailyRecurrence = registerOutput<ScheduleDailyRecurrence?>('dailyRecurrence');
    this.hourlyRecurrence = registerOutput<ScheduleHourlyRecurrence?>('hourlyRecurrence');
    this.labName = registerOutput<String>('labName');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.notificationSettings = registerOutput<ScheduleNotificationSettings>('notificationSettings');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.status = registerOutput<String?>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.taskType = registerOutput<String>('taskType');
    this.timeZoneId = registerOutput<String>('timeZoneId');
    this.weeklyRecurrence = registerOutput<ScheduleWeeklyRecurrence?>('weeklyRecurrence');
  }
}
