import 'package:pulumi/pulumi.dart' as pulumi;
import 'schedule_args.dart';
import 'schedule_monthly_occurrence.dart';
import 'schedule_state.dart';

/// Manages a Automation Schedule.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "tfex-automation-account",
///     location: "West Europe",
/// });
/// const exampleAccount = new azure.automation.Account("example", {
///     name: "tfex-automation-account",
///     location: example.location,
///     resourceGroupName: example.name,
///     skuName: "Basic",
/// });
/// const exampleSchedule = new azure.automation.Schedule("example", {
///     name: "tfex-automation-schedule",
///     resourceGroupName: example.name,
///     automationAccountName: exampleAccount.name,
///     frequency: "Week",
///     interval: 1,
///     timezone: "Australia/Perth",
///     startTime: "2014-04-15T18:00:15+02:00",
///     description: "This is an example schedule",
///     weekDays: ["Friday"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="tfex-automation-account",
///     location="West Europe")
/// example_account = azure.automation.Account("example",
///     name="tfex-automation-account",
///     location=example.location,
///     resource_group_name=example.name,
///     sku_name="Basic")
/// example_schedule = azure.automation.Schedule("example",
///     name="tfex-automation-schedule",
///     resource_group_name=example.name,
///     automation_account_name=example_account.name,
///     frequency="Week",
///     interval=1,
///     timezone="Australia/Perth",
///     start_time="2014-04-15T18:00:15+02:00",
///     description="This is an example schedule",
///     week_days=["Friday"])
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
///         Name = "tfex-automation-account",
///         Location = "West Europe",
///     });
///
///     var exampleAccount = new Azure.Automation.Account("example", new()
///     {
///         Name = "tfex-automation-account",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SkuName = "Basic",
///     });
///
///     var exampleSchedule = new Azure.Automation.Schedule("example", new()
///     {
///         Name = "tfex-automation-schedule",
///         ResourceGroupName = example.Name,
///         AutomationAccountName = exampleAccount.Name,
///         Frequency = "Week",
///         Interval = 1,
///         Timezone = "Australia/Perth",
///         StartTime = "2014-04-15T18:00:15+02:00",
///         Description = "This is an example schedule",
///         WeekDays = new[]
///         {
///             "Friday",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/automation"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("tfex-automation-account"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccount, err := automation.NewAccount(ctx, "example", &automation.AccountArgs{
/// 			Name:              pulumi.String("tfex-automation-account"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("Basic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = automation.NewSchedule(ctx, "example", &automation.ScheduleArgs{
/// 			Name:                  pulumi.String("tfex-automation-schedule"),
/// 			ResourceGroupName:     example.Name,
/// 			AutomationAccountName: exampleAccount.Name,
/// 			Frequency:             pulumi.String("Week"),
/// 			Interval:              pulumi.Int(1),
/// 			Timezone:              pulumi.String("Australia/Perth"),
/// 			StartTime:             pulumi.String("2014-04-15T18:00:15+02:00"),
/// 			Description:           pulumi.String("This is an example schedule"),
/// 			WeekDays: pulumi.StringArray{
/// 				pulumi.String("Friday"),
/// 			},
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
///   name     = "tfex-automation-account"
///   location = "West Europe"
/// }
/// resource "azure_automation_account" "example" {
///   name                = "tfex-automation-account"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku_name            = "Basic"
/// }
/// resource "azure_automation_schedule" "example" {
///   name                    = "tfex-automation-schedule"
///   resource_group_name     = azure_core_resourcegroup.example.name
///   automation_account_name = azure_automation_account.example.name
///   frequency               = "Week"
///   interval                = 1
///   timezone                = "Australia/Perth"
///   start_time              = "2014-04-15T18:00:15+02:00"
///   description             = "This is an example schedule"
///   week_days               = ["Friday"]
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
/// import com.pulumi.azure.automation.Account;
/// import com.pulumi.azure.automation.AccountArgs;
/// import com.pulumi.azure.automation.Schedule;
/// import com.pulumi.azure.automation.ScheduleArgs;
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
///             .name("tfex-automation-account")
///             .location("West Europe")
///             .build());
///
///         var exampleAccount = new Account("exampleAccount", AccountArgs.builder()
///             .name("tfex-automation-account")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .skuName("Basic")
///             .build());
///
///         var exampleSchedule = new Schedule("exampleSchedule", ScheduleArgs.builder()
///             .name("tfex-automation-schedule")
///             .resourceGroupName(example.name())
///             .automationAccountName(exampleAccount.name())
///             .frequency("Week")
///             .interval(1)
///             .timezone("Australia/Perth")
///             .startTime("2014-04-15T18:00:15+02:00")
///             .description("This is an example schedule")
///             .weekDays("Friday")
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
///       name: tfex-automation-account
///       location: West Europe
///   exampleAccount:
///     type: azure:automation:Account
///     name: example
///     properties:
///       name: tfex-automation-account
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       skuName: Basic
///   exampleSchedule:
///     type: azure:automation:Schedule
///     name: example
///     properties:
///       name: tfex-automation-schedule
///       resourceGroupName: ${example.name}
///       automationAccountName: ${exampleAccount.name}
///       frequency: Week
///       interval: 1
///       timezone: Australia/Perth
///       startTime: 2014-04-15T18:00:15+02:00
///       description: This is an example schedule
///       weekDays:
///         - Friday
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Automation` - 2024-10-23
///
/// ## Import
///
/// Automation Schedule can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:automation/schedule:Schedule schedule1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Automation/automationAccounts/account1/schedules/schedule1
/// ```
class Schedule extends pulumi.CustomResource {
  /// The name of the automation account in which the Schedule is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> automationAccountName;
  /// A description for this Schedule.
  late final pulumi.Output<String?> description;
  /// The end time of the schedule.
  late final pulumi.Output<String> expiryTime;
  /// The frequency of the schedule. - can be either `OneTime`, `Day`, `Hour`, `Week`, or `Month`.
  late final pulumi.Output<String> frequency;
  /// The number of `frequency`s between runs. Only valid when frequency is `Day`, `Hour`, `Week`, or `Month` and defaults to `1`.
  late final pulumi.Output<int> interval;
  /// List of days of the month that the job should execute on. Must be between `1` and `31`. `-1` for last day of the month. Only valid when frequency is `Month`.
  late final pulumi.Output<List<int>?> monthDays;
  /// One `monthlyOccurrence` blocks as defined below to specifies occurrences of days within a month. Only valid when frequency is `Month`. The `monthlyOccurrence` block supports fields documented below.
  late final pulumi.Output<ScheduleMonthlyOccurrence?> monthlyOccurrence;
  /// Specifies the name of the Schedule. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the resource group in which the Schedule is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Start time of the schedule. Must be at least five minutes in the future. Defaults to seven minutes in the future from the time the resource is created.
  late final pulumi.Output<String> startTime;
  /// The timezone of the start time. Defaults to `Etc/UTC`. For possible values see: &lt;https://docs.microsoft.com/en-us/rest/api/maps/timezone/gettimezoneenumwindows&gt;
  late final pulumi.Output<String?> timezone;
  /// List of days of the week that the job should execute on. Only valid when frequency is `Week`. Possible values are `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday` and `Sunday`.
  late final pulumi.Output<List<String>?> weekDays;

  /// Creates a new [Schedule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Schedule]. {@macro pulumi_automation_schedule_schedule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Schedule(
    String name, {
    ScheduleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:automation/schedule:Schedule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    automationAccountName = registerOutput<String>('automationAccountName');
    description = registerOutput<String?>('description');
    expiryTime = registerOutput<String>('expiryTime');
    frequency = registerOutput<String>('frequency');
    interval = registerOutput<int>('interval');
    monthDays = registerOutput<List<int>?>('monthDays');
    monthlyOccurrence = registerOutput<ScheduleMonthlyOccurrence?>('monthlyOccurrence', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScheduleMonthlyOccurrence.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    startTime = registerOutput<String>('startTime');
    timezone = registerOutput<String?>('timezone');
    weekDays = registerOutput<List<String>?>('weekDays');
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
          'azure:automation/schedule:Schedule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    automationAccountName = registerOutput<String>('automationAccountName');
    description = registerOutput<String?>('description');
    expiryTime = registerOutput<String>('expiryTime');
    frequency = registerOutput<String>('frequency');
    interval = registerOutput<int>('interval');
    monthDays = registerOutput<List<int>?>('monthDays');
    monthlyOccurrence = registerOutput<ScheduleMonthlyOccurrence?>('monthlyOccurrence', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScheduleMonthlyOccurrence.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    startTime = registerOutput<String>('startTime');
    timezone = registerOutput<String?>('timezone');
    weekDays = registerOutput<List<String>?>('weekDays');
  }
}
